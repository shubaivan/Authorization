<?php

namespace Artel\ProfileBundle\Controller;

use Artel\ProfileBundle\Form\DeveloperAvatarType;
use Artel\ProfileBundle\Form\DeveloperPersonalInformationType;
use Artel\ProfileBundle\Form\DeveloperProfessionalSkillsType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Artel\ProfileBundle\Form\DeveloperCvType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use UserBundle\Entity\User;

class DeveloperProfileController extends Controller
{
    protected $template = 'Developer';

    public function indexAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $request = $this->get('request');
        $developer = $em->getRepository('UserBundle:User')->findOneById($id);

        if (! $developer) {
            throw $this->createNotFoundException('Unable to find a profile.');
        }

        $formType = new DeveloperPersonalInformationType();
        $form = $this->createForm($formType, $developer);
        $personalInformationForm = $form->createView();

        $formType = new DeveloperProfessionalSkillsType();
        $form = $this->createForm($formType, $developer);
        $professionalSkillsForm = $form->createView();

        $form = $this->createForm(new DeveloperCvType());

        return $this->render('ArtelProfileBundle:'.$this->template.':index.html.twig',array(
            'developer' => $developer,
            'infoForm' => $personalInformationForm,
            'skillsForm' => $professionalSkillsForm,
            "CvForm" => $form->createView(),
        ));
    }

    public function submitPersonalInformationAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $request = $this->get('request');
        $developer = $em->getRepository('UserBundle:User')->findOneById($id);

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
        $developer = $em->getRepository('UserBundle:User')->findOneById($id);

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
        $developer = $em->getRepository('UserBundle:User')->findOneById($id);

        $url = sprintf(
            '%s%s',
            $this->container->getParameter('acme_storage.amazon_s3.base_url'),
            $this->getPhotoUploader()->upload($request->files->get('file'))
        );
//        dump($url);exit;
        $developer->setAvatar($url);
        $em->persist($developer);

        $em->flush();

        return new Response($url);
    }

    public function addAction($id)
    {
        $em = $this->getDoctrine()->getManager();
        $request = $this->get('request');
        $developer = $em->getRepository('UserBundle:User')->findOneById($id);

        $form = $this->createForm(new DeveloperCvType(), array());

        if ($request->isMethod('POST')) {
            $form->bind($request);
            if ($form->isValid()) {
                $data = $form->getData();
                $url = sprintf(
                    '%s%s',
                    $this->container->getParameter('acme_storage.amazon_s3.base_url'),
                    $this->getPhotoUploader()->uploadFromUrl($data['photo'])
                );

                dump($url);

                $developer->setCvUri($url);
                $em->persist($developer);
                $em->flush();

//                return $this->redirect($this->get('router')->generate('artel_profile_homepage'));
                return $this->redirect($this->generateUrl('artel_profile_homepage', array('id' => $id)));
            }
        }

        return array(
            "form" => $form->createView(),
        );
    }

    /**
     * @return \StorageBundle\Upload\PhotoUploader
     */
    protected function getPhotoUploader()
    {
        return $this->get('acme_storage.photo_uploader');
    }
}
