<?php

namespace App\Controller;

use App\Entity\Biens;
use App\Entity\BiensSearch;
use App\Form\BiensSearchType;
use App\Repository\BiensRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class BiensController extends AbstractController
{

    /**
     * @var BiensRepository
     */
    private $biens;

    /**
     * @var EntityManagerInterface
     */
    private $em;

    public function __construct(BiensRepository $biens, EntityManagerInterface $em)
    {
        $this->biens = $biens;
        $this->em = $em;
    }

    /**
     * @Route("/biens", name="biens.index")
     * @return Response
     */
    public function index(PaginatorInterface $paginator, Request $request): Response
    {
        $search = new BiensSearch();
        $form = $this->createForm(BiensSearchType::class, $search);
        $form->handleRequest($request);
        $biens = $paginator->paginate(
            $this->biens->findAllVisibleQuery($search),
            $request->query->getInt('page', 1),
            9
        );
        return $this->render('biens/index.html.twig', [
            'current_page' => 'active',
            'biens' => $biens,
            'form' => $form->createView()
        ]);
    }

    /**
     * @Route("/biens/{slug}-{id}", name="biens.show", requirements={"slug": "[a-z0-9\-]*"})
     * @param Biens $biens
     * @return Response
     */
    public function show(Biens $biens, string $slug): Response
    {
        if ($biens->getSlug() !== $slug) {
            return $this->redirectToRoute('biens.show', [
                'id' => $biens->getId(),
                'slug' => $biens->getSlug()
            ], 301);
        }
        return $this->render('biens/show.html.twig', [
            'biens' => $biens,
            'current_page' => 'active'
        ]);
    }

}