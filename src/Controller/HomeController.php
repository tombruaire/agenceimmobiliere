<?php

namespace App\Controller;

use App\Repository\BiensRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{

    /**
     * @Route("/", name="home")
     * @param BiensRepository $biens
     * @return Response
     */
    public function index(BiensRepository $biens): Response
    {
        $lesbiens = $biens->findLatest();
        return $this->render('pages/home.html.twig', [
            'lesbiens' => $lesbiens
        ]);
    }

}