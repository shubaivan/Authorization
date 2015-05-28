<?php

namespace Artel\ProfileBundle\Controller;

use Artel\ProfileBundle\Form\DeveloperPersonalInformationType;
use Artel\ProfileBundle\Form\DeveloperProfessionalSkillsType;
use Artel\ProfileBundle\Form\DeveloperType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DeveloperProfileController extends Controller
{
    protected $template = 'Developer';

    public function indexAction($id)
    {
        $profileRepository = $this->get('artel.profile.developer.repository');
        $developer = $profileRepository->findOneById($id);

        if (! $developer) {
            throw $this->createNotFoundException('Unable to find a profile.');
        }

        $formType = new DeveloperPersonalInformationType();
        $form = $this->createForm($formType, $developer);
        $personalInformationForm = $form->createView();

        $formType = new DeveloperProfessionalSkillsType();
        $form = $this->createForm($formType, $developer);
        $professionalSkillsForm = $form->createView();

        return $this->render('ArtelProfileBundle:'.$this->template.':index.html.twig',array(
            'developer' => $developer,
            'infoForm' => $personalInformationForm,
            'skillsForm' => $professionalSkillsForm
        ));
    }

    public function submitPersonalInformationAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $request = $this->get('request');
        $developer = $em->getRepository('ArtelProfileBundle:Developer')->findOneById($id);

        if (! $developer) {
            throw $this->createNotFoundException('Unable to find a profile.');
        }

        $form = $this->createForm(new DeveloperPersonalInformationType(), $developer);
        $form->handleRequest($request);

        if ($form->isValid()) {
            $em->flush();

            return $this->redirect($this->generateUrl('artel_profile_homepage', array('id' => $id)).'#personal-information');
        }

        $response = $this->render('ArtelProfileBundle:'.$this->template.':form_personal_information.html.html.twig',array(
            'form' => $form->createView(),
            'developer' => $developer
        ));

        return $response;
    }

    public function submitProfessionalSkillsAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $request = $this->get('request');
        $developer = $em->getRepository('ArtelProfileBundle:Developer')->findOneById($id);

        if (! $developer) {
            throw $this->createNotFoundException('Unable to find a profile.');
        }

        $form = $this->createForm(new DeveloperProfessionalSkillsType(), $developer);
        $form->handleRequest($request);

        if ($form->isValid()) {
            $em->flush();

            return $this->redirect($this->generateUrl('artel_profile_homepage', array('id' => $id)).'#professional-skills');
        }

        $response = $this->render('ArtelProfileBundle:'.$this->template.':form_professional_skills.html.twig',array(
            'form' => $form->createView(),
            'developer' => $developer
        ));

        return $response;
    }

    public function photoUploadAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $request = $this->get('request');
        $developer = $em->getRepository('ArtelProfileBundle:Developer')->findOneById($id);

        if (! $developer) {
            throw $this->createNotFoundException('Unable to find a profile.');
        }

        $img = $developer->getImage();
        if($img && file_exists($img)) {
            unlink($img);
        }

        $uploader = $this->get('artel.profile.file_uploader');
        $path = $uploader->uploadImage($request->files->get('file'));

        $developer->setImage($path['url']);

//        $em->persist($developer);
        $em->flush();

        return new Response('/'.$path['url']);
    }
}
