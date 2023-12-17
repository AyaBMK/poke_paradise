<?php

namespace App\DataFixtures;

use App\Entity\Product;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use App\Entity\Category;
 

class AppFixtures extends Fixture
{
    private const NB_PRODUCT = 10;  
    private const NB_CATEGORIES = 3;
    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create("fr_FR");

        $roles = [
            'ROLE_USER',
            'ROLE_ADMIN'
        ];
        for ($i = 0; $i < 5; $i++) {
            $user = new User();
            $user->setEmail($faker->email())
                ->setPassword('test')
                ->setRoles([$faker->randomElement($roles)]);
            $manager->persist($user);
        }

        $categories = [];

        for ($i = 0; $i < self::NB_CATEGORIES; $i++) {
            $category = new Category();
            $category->setName($faker->realTextBetween(3, 10));

            $manager->persist($category);
            $categories[] = $category;
        }

        for ($i = 0; $i < self::NB_PRODUCT; $i++) {
            $plate = new Product();
            $plate->setName($faker->realText(50))
                ->setDescription($faker->realTextBetween(250, 500))
                ->setPrice($faker->numberBetween(1, 60))
                ->setImage($faker->imageUrl(40, 40, 'abstract', true, 'foods'))
                ->setCategory($faker->randomElement($categories));
            $manager->persist($plate);
        }

        $manager->flush();
    }
}
