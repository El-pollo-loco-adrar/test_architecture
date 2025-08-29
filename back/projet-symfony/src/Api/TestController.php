<?php
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class TestController extends AbstractController
{
    #[Route('/api/hello', name: 'api_hello')]
    public function hello(): JsonResponse
    {
        return $this->json([
            'message' => 'Hello depuis Symfony 🚀(TestController.php)'
        ]);
    }
}