<?php

namespace App\Entity;

use App\Repository\BiensRepository;
use Doctrine\ORM\Mapping as ORM;
use Cocur\Slugify\Slugify;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;

/**
 * @ORM\Entity(repositoryClass=BiensRepository::class)
 * @UniqueEntity("titre")
 */
class Biens
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @Assert\Length(min=5, max=255)
     * @ORM\Column(type="string", length=100)
     */
    private $titre;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $description;

    /**
     * @ORM\Column(type="integer")
     * @Assert\Range(min=10, max=500)
     */
    private $surface;

    /**
     * @ORM\Column(type="integer")
     */
    private $nbPieces;

    /**
     * @ORM\Column(type="integer")
     */
    private $nbChambres;

    /**
     * @ORM\Column(type="integer")
     */
    private $etages;

    /**
     * @ORM\Column(type="integer")
     */
    private $prix;

    /**
     * @ORM\Column(type="string", length=100)
     */
    private $ville;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $adresse;

    /**
     * @Assert\Regex("/^[0-9]{5}$/")
     * @ORM\Column(type="string", length=255)
     */
    private $cp;

    /**
     * @ORM\Column(type="boolean", options={"default": false})
     */
    private $vendu = false;

    /**
     * @ORM\Column(type="datetime")
     */
    private $date_creation;

    public function __construct()
    {
        $this->date_creation = new \DateTime();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitre(): ?string
    {
        return $this->titre;
    }

    public function setTitre(string $titre): self
    {
        $this->titre = $titre;

        return $this;
    }

    public function getSlug(): string
    {
        return (new Slugify())->slugify($this->titre);
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getSurface(): ?int
    {
        return $this->surface;
    }

    public function setSurface(int $surface): self
    {
        $this->surface = $surface;

        return $this;
    }

    public function getNbPieces(): ?int
    {
        return $this->nbPieces;
    }

    public function setNbPieces(int $nbPieces): self
    {
        $this->nbPieces = $nbPieces;

        return $this;
    }

    public function getNbChambres(): ?int
    {
        return $this->nbChambres;
    }

    public function setNbChambres(int $nbChambres): self
    {
        $this->nbChambres = $nbChambres;

        return $this;
    }

    public function getEtages(): ?int
    {
        return $this->etages;
    }

    public function setEtages(int $etages): self
    {
        $this->etages = $etages;

        return $this;
    }

    public function getPrix(): ?int
    {
        return $this->prix;
    }

    public function setPrix(int $prix): self
    {
        $this->prix = $prix;

        return $this;
    }

    public function getFormattedPrice(): string
    {
        return number_format($this->prix, 0, '', ' ');
    }

    public function getVille(): ?string
    {
        return $this->ville;
    }

    public function setVille(string $ville): self
    {
        $this->ville = $ville;

        return $this;
    }

    public function getAdresse(): ?string
    {
        return $this->adresse;
    }

    public function setAdresse(string $adresse): self
    {
        $this->adresse = $adresse;

        return $this;
    }

    public function getCp(): ?string
    {
        return $this->cp;
    }

    public function setCp(string $cp): self
    {
        $this->cp = $cp;

        return $this;
    }

    public function getVendu(): ?bool
    {
        return $this->vendu;
    }

    public function setVendu(bool $vendu): self
    {
        $this->vendu = $vendu;

        return $this;
    }

    public function getDateCreation(): ?\DateTimeInterface
    {
        return $this->date_creation;
    }

    public function setDateCreation(\DateTimeInterface $date_creation): self
    {
        $this->date_creation = $date_creation;

        return $this;
    }
}
