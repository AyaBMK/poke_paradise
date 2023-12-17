<?php

namespace App\Controller;

use App\Entity\Product;
use App\Repository\ProductRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProductController extends AbstractController
{
    #[Route('/products', name: 'app_product')]
    public function index(ProductRepository $productRepository): Response
    {
        $products = $productRepository->findAll();

        return $this->render('product/index.html.twig', [
            'products' => $products,
        ]);
    }

    #[Route('/products/{id}', name: 'app_product_item')]
    public function item(Product $product, ProductRepository $productRepository): Response
    {

         $category = $product->getCategory(); 

         $similarProducts = $productRepository->findBy(['category' => $category], ['id' => 'DESC'], 4);
 
        return $this->render('product/item.html.twig', [
            'product' => $product,
            'similarProducts' => $similarProducts,
        ]);
    }
}
