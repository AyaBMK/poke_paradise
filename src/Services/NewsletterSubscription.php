<?php

namespace App\Services; 

use App\Entity\Newsletter;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\MailerInterface;
use Symfony\Component\Mime\Email;
use Symfony\Component\Routing\Annotation\Route;

class NewsletterSubscription
{

    public function __construct(
        private  MailerInterface $mailer
    ){

    }

    public function confirmSubscription(Newsletter $newsletter): void
    {
        
        $email = (new Email())
            ->from("admin@mycorp.com") 
            ->to($newsletter->getEmail())
            ->subject('Inscriptions dans newsletter')
            ->text('Merci pour votre inscription dans notre newsletter ! ')
            ->html('<h1>Merci pour votre inscription dans notre newsletter !</h1>');

        $this->mailer->send($email);
    }
}
