<?php
namespace AppBundle\Controller;

use AppBundle\Entity\Comment;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route as Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method as Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template as Template;
use AppBundle\Form\Type\AddCommentType;

/**
 * @Route("/comment")
 */
class CommentController extends Controller
{
    /**
     * @Route("/{slug}/add", name="comment_add")
     * @Method({"POST"})
     */
    public function createIssueAction($slug, Request $request)
    {
        $comment = new Comment();

        $form = $this->createForm(new AddCommentType(), $comment);

        $form->handleRequest($request);

        if ($form->isValid()) {
            $comment->setAuthor($this->getUser());
            $comment->setPhoto($this->getDoctrine()->getRepository('AppBundle:Photo')->findOneBySlug($slug));

            $em = $this->getDoctrine()->getManager();
            $em->persist($comment);
            $em->flush();

            $photo = $this->getDoctrine()->getRepository('AppBundle:Photo')->findBySlug($slug);

            $comment = array();

            for ($i = 0; $i < count($photo[0]->getComment()); $i++) {
                $comment[$i]["author"] = $photo[0]->getComment()[$i]->getAuthor()->getFirstName();
                $comment[$i]["text"] = $photo[0]->getComment()[$i]->getText();
                $comment[$i]["createdAt"] = $photo[0]->getComment()[$i]->getCreatedAt()->format("d.m.Y H:i:s");
            }

            return new JsonResponse($comment);
        }

        return new JsonResponse([], 500);
    }

    /**
     * @Route("/last/{count}", defaults={"count" = 10} ,requirements={"count" = "\d+"} , name="comment_last")
     * @Method({"GET"})
     * @Template()
     */
    public function lastAction($count)
    {
        $issues = $this->getDoctrine()->getRepository('AppBundle:Comment')->findBy([], ['id' => 'DESC'], $count);

        return array(
            "issues" => $issues,
        );
    }
}
