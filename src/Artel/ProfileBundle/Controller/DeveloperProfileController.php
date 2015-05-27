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
        $formType = new DeveloperPersonalInformationType();
        $developer = $profileRepository->findOneById($id);

        $form = $this->createForm($formType, $developer);
        $personalInformationForm = $form->createView();

        $formType = new DeveloperProfessionalSkillsType();
        $form = $this->createForm($formType, $developer);
        $professionalSkillsForm = $form->createView();

//        dump($developer);
//        die;
        return $this->render('ArtelProfileBundle:'.$this->template.':index.html.twig',array(
            'developer' => $developer,
            'infoForm' => $personalInformationForm,
            'skillsForm' => $professionalSkillsForm
        ));
    }

    public function editFormAction($id)
    {
        $formType = new DeveloperType();
        $profileRepository = $this->get('artel.profile.developer.repository');
        $developer = $profileRepository->findOneById($id);

        $form = $this->createForm($formType, $developer);
        $response = $this->render('ArtelProfileBundle:'.$this->template.':form.html.twig',array(
            'form' => $form->createView(),
            'developer' => $developer
        ));

        return $response;
    }

    public function personalInformationAction($id)
    {
        $formType = new DeveloperPersonalInformationType();
        $profileRepository = $this->get('artel.profile.developer.repository');
        $developer = $profileRepository->findOneById($id);

        $form = $this->createForm($formType, $developer);
        $response = $this->render('ArtelProfileBundle:'.$this->template.':form_personal_information.html.twig',array(
            'form' => $form->createView(),
            'developer' => $developer
        ));

        return $response;
    }

    public function professionalSkillsAction($id)
    {
        $formType = new DeveloperProfessionalSkillsType();
        $profileRepository = $this->get('artel.profile.developer.repository');
        $developer = $profileRepository->findOneById($id);

        $form = $this->createForm($formType, $developer);
        $response = $this->render('ArtelProfileBundle:'.$this->template.':form_professional_skills.html.twig',array(
            'form' => $form->createView(),
            'developer' => $developer
        ));

        return $response;
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

            return $this->redirect($this->generateUrl('artel_profile_homepage', array('id' => $id)));
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

            return $this->redirect($this->generateUrl('artel_profile_homepage', array('id' => $id)));
        }

        $response = $this->render('ArtelProfileBundle:'.$this->template.':form_professional_skills.html.twig',array(
            'form' => $form->createView(),
            'developer' => $developer
        ));

        return $response;
    }
}
