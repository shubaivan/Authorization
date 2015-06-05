<?php
/**
 * Created by PhpStorm.
 * User: ivan
 * Date: 12.12.14
 * Time: 15:54
 */
namespace AppBundle\Controller;

use AppBundle\Form\Type\AddCommentType;
use AppBundle\Form\Type\AddPhotoType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route as Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method as Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template as Template;
use AppBundle\Entity\Photo;

class PhotoController extends Controller
{
    /**
     * @Route("/", name="homepage")
     * @Method({"GET"})
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $photo = $em->getRepository('AppBundle:Photo')->findBy([], ['id' => 'DESC']);

        return array(
            "photos" => $photo,
        );
    }

    /**
     * @Route("/photo/add", name="photo_add_get")
     * @Method(methods={"GET", "POST"})
     * @Template()
     */

    public function addAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $post = new Photo();

        $form = $this->createForm(new AddPhotoType(), array());

        if ($request->isMethod('POST')) {
            $form->bind($request);
            if ($form->isValid()) {
                $data = $form->getData();
                $array_title = $form->getNormData();

                $url = sprintf(
                    '%s%s',
                    $this->container->getParameter('acme_storage.amazon_s3.base_url'),
                    $this->getPhotoUploader()->upload($data['photo'])
                );

                    foreach ($array_title as $key => $title) {
                        if ($key == 'title') {
//                        dump($projectName);
                           $title;
                            break;
                        }
                    }
                    foreach ($array_title as $key => $text) {
                        if ($key == 'text') {
                            //                        dump($projectName);
                            $text;
                            break;
                        }
                    }
//                dump($array_title, $title, $text);exit;
                $post->setPhoto($url);
                $post->setTitle($title);
                $post->setText($text);
                $post->setAuthor($this->getUser());
                $em->persist($post);
                $em->flush();

                return $this->redirect($this->get('router')->generate('homepage'));
            }
        }

        return array(
            "form" => $form->createView(),
        );
    }

    /**
     * @Route("/photo/{slug}/", name="view_photo")
     * @Method({"GET"})
     * @Template()
     */
    public function viewAction($slug)
    {
        $photo = $this->getDoctrine()->getRepository('AppBundle:Photo')->findOneBy(['slug' => $slug]);

        $form = $this->createForm(new AddCommentType());

        return array(
            "photo" => $photo,
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
