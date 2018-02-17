<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Customer;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class OrderController extends Controller
  {
    /**
     * @Route("/orders", name="book_orders")
     */
public function showAction(Request $request)
  {
     $em = $this->getDoctrine()->getManager();
     $queryBuilder = $em->getRepository('AppBundle:Customer')
						            ->createQueryBuilder('bp')
						            ->orderBy('bp.id', 'DESC');

		 if ($request->query->getAlnum('search'))
		   {
			   $queryBuilder->where('bp.firstname LIKE :firstname')
						          ->setParameter('firstname', '%' . $request->query->getAlnum('search') . '%');
       }
				 $query = $queryBuilder->getQuery();

			   $paginator  = $this->get('knp_paginator');

         $result = $paginator->paginate($query,$request->query->getInt('page', 1),10);

         return $this->render('form/orders.html.twig',
				   ['bookorders' => $result]);
    }

public function searchAction(Request $request)
		    {
				  //	var_dump($request);
          return $this->render('form/search.html.twig');
		    }
}
