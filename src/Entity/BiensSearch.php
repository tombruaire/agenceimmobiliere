<?php

namespace App\Entity;

use Symfony\Component\Validator\Constraints as Assert;

class BiensSearch
{

    /**
     * @var int|null
     */
    private $maxPrice;

    /**
     * @var int|null
     * @Assert\Range(min=10, max=400)
     */
    private $minSurface;

    /**
     * @var string
     */
    private $ville;

    /**
     * @return int|null
     */
    public function getMaxPrice(): ?int
    {
        return $this->maxPrice;
    }

    /**
     * @param int|null $maxPrice
     * @return BiensSearch
     */
    public function setMaxPrice(int $maxPrice): BiensSearch
    {
        $this->maxPrice = $maxPrice;
        return $this;
    }

    /**
     * @return string
     */
    public function getVille(): ?string
    {
        return $this->ville;
    }

    /**
     * @param string $ville
     * @return BiensSearch
     */
    public function setVille(string $ville): BiensSearch
    {
        $this->ville = $ville;
        return $this;
    }

    /**
     * @return int|null
     */
    public function getMinSurface(): ?int
    {
        return $this->minSurface;
    }

    /**
     * @param int|null $minSurface
     * @return BiensSearch
     */
    public function setMinSurface(int $minSurface): BiensSearch
    {
        $this->minSurface = $minSurface;
        return $this;
    }

}