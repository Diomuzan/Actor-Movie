<?php
namespace App\Controller;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Doctrine\ORM\EntityManagerInterface;

class ActorMovieController extends AbstractController
{
#[Route ('/Actor & Movie' , name: 'Actor & Movie')]
public function actor(EntityManagerInterface $entityManager): Response {
$cn = $entityManager->getConnection();
$sql = "SELECT * from am WHERE id IN (1, 2, 3, 4, 5);";
$st = $cn->prepare($sql);
$result = $st->executeQuery();
$am = $result->fetchAllAssociative();
return $this->render("Actor_&_Movie.html.twig", ['am' => $am]);
}
}
?>