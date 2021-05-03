<?php

namespace App\Form;

use App\Entity\Biens;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class BiensType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('titre')
            ->add('description')
            ->add('surface')
            ->add('nbPieces')
            ->add('nbChambres')
            ->add('etages')
            ->add('prix')
            ->add('ville')
            ->add('adresse')
            ->add('cp')
            ->add('vendu')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Biens::class,
            'translation_domain' => 'forms'
        ]);
    }

}
