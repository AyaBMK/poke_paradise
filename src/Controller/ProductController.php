<?php

namespace App\Controller;

use App\Entity\Product;
use App\Repository\CategoryRepository;
use App\Repository\ProductRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
class ProductController extends AbstractController
{
    #[Route('/products', name: 'app_product')]
public function index(Request $request, ProductRepository $productRepository): Response
{
    // $categoryId = $request->query->get('category');
    // $categories = $categoryRepository->findAll();

    // if ($categoryId) {
    //     $products = $productRepository->findByCategory($categoryId);
    // } else {
        $products = $productRepository->findAll();
    // }

    return $this->render('product/index.html.twig', [
        'products' => $products, 
        // 'categories' => $categories,
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
