<?php

namespace App\Repository;

use App\Entity\Biens;
use App\Entity\BiensSearch;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\Query;
use Doctrine\ORM\QueryBuilder;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Biens|null find($id, $lockMode = null, $lockVersion = null)
 * @method Biens|null findOneBy(array $criteria, array $orderBy = null)
 * @method Biens[]    findAll()
 * @method Biens[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class BiensRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Biens::class);
    }

    /**
     * @param BiensSearch $search
     * @return Query
     */
    public function findAllVisibleQuery(BiensSearch $search): Query
    {
        $requete = $this->findVisibleQuery();

        if ($search->getMaxPrice()) {
            $requete = $requete
                ->andWhere('b.prix <= :maxprice')
                ->setParameter('maxprice', $search->getMaxPrice());
        }

        if ($search->getMinSurface()) {
            $requete = $requete
                ->andWhere('b.surface >= :minsurface')
                ->setParameter('minsurface', $search->getMinSurface());
        }

        if ($search->getVille()) {
            $requete = $requete
                ->Where('b.ville = :ville')
                ->setParameter('ville', $search->getVille());
        }

        return $requete->getQuery();
    }

    /**
     * @return Biens[]
     */
    public function findLatest(): array
    {
        return $this->findVisibleQuery()
            ->where('b.vendu = false')
            ->setMaxResults(4)
            ->getQuery()
            ->getResult();
    }

    private function findVisibleQuery(): QueryBuilder
    {
        return $this->createQueryBuilder('b')
            ->where('b.vendu = false');
    }

    // /**
    //  * @return Biens[] Returns an array of Biens objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('b')
            ->andWhere('b.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('b.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Biens
    {
        return $this->createQueryBuilder('b')
            ->andWhere('b.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
