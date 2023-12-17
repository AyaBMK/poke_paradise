<?php

namespace App\Controller;

use App\Entity\Newsletter;
use App\Form\NewsletterType;
use App\Services\NewsletterSubscription;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\EventDispatcher\EventDispatcherInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class NewsletterController extends AbstractController
{
    #[Route('/newsletter', name: 'newsletter')]
    public function newsletterSubscribe(Request $request, EntityManagerInterface $em, NewsletterSubscription $newsletterSubscription): Response
    {

        $newsletter = new Newsletter();
        $form = $this->createForm(NewsletterType::class, $newsletter);

        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $newsletter->setSubscribed(true);
            $newsletter->setSubscriptionDate(new \DateTime());
            $em->persist($newsletter);
            $em->flush();
            $this->addFlash('success', 'Merci pour votre inscription!');


            // $newsletterSubscription->confirmSubscription($newsletter);
            return $this->redirectToRoute('thank_you');

        }

        return $this->renderForm('newsletter/index.html.twig', [
            'newsletter_form' => $form
        ]);
        
    }

    #[Route('/newsletter/confirm', name: 'thank_you')]
    public function subscribeConfirm(): Response
    {
        return $this->render('newsletter/thank_you.html.twig');
    }
}
