<?php
namespace App\Controller;
use App\Entity\ActorMovie;
use App\Entity\Am;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use Doctrine\ORM\EntityManagerInterface;

class ActorMovieController extends AbstractController {
#[Route ('/Actor & Movie' , name: 'Actor & Movie')]
public function actor(EntityManagerInterface $em , int $id): Response {
    if ($id !== null) {
        $am = $entityManager->getRepository(ActorMovie::class)->find($id);
    } else {
        $am = $entityManager->getRepository(ActorMovie::class)->findAll();
    }

return $this->render("Actor_&_Movie.html.twig", ['am' => $am]);
}
}
?>