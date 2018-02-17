<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Book;
use AppBundle\Form\Type\CustomerType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class FormController extends Controller
{
    /**
     * @Route("/", name="book_form")
     */
    public function formAction(Request $request)
    {
      $books = $this->getDoctrine()
              ->getRepository(Book::class)
              ->findAll();

        $form = $this->createForm(CustomerType::class);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
          $em = $this->getDoctrine()->getManager();
          $product = $form->getData();

          $em->persist($product);
          $em->flush();

          $this->addFlash('success', 'Užsakymas atliktas!');
          //return $this->redirectToRoute('book_orders');
        }

        return $this->render('form/index.html.twig', [
            'forma' => $form->createView(), 'books' => $books
        ]);
    }

}
