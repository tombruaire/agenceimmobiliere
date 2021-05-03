<?php

namespace App\DataFixtures;

use App\Entity\Biens;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;

class BiensFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = Factory::create('fr_FR');
        for ($i=0; $i<100; $i++) {
            $biens = new Biens();
            $biens
                ->setTitre($faker->words(3, true))
                ->setDescription($faker->sentences(3, true))
                ->setSurface($faker->numberBetween(20, 350))
                ->setNbPieces($faker->numberBetween(2, 10))
                ->setNbChambres($faker->numberBetween(1, 9))
                ->setEtages($faker->numberBetween(0, 15))
                ->setPrix($faker->numberBetween(100000, 1000000))
                ->setVille($faker->city)
                ->setAdresse($faker->address)
                ->setCp($faker->postcode)
                ->setVendu(false);
            $manager->persist($biens);
        }
        $manager->flush();
    }
}
