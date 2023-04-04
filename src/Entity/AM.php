<?php

namespace App\Entity;

use App\Repository\AmRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: AmRepository::class)]
class Am
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    private ?string $actor = null;

    #[ORM\Column(length: 255)]
    private ?string $movie = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getActor(): ?string
    {
        return $this->actor;
    }

    public function setActor(string $actor): self
    {
        $this->actor = $actor;

        return $this;
    }

    public function getMovie(): ?string
    {
        return $this->movie;
    }

    public function setMovie(string $movie): self
    {
        $this->movie = $movie;

        return $this;
    }
}
