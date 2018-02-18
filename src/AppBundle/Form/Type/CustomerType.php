<?php

namespace AppBundle\Form\Type;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class CustomerType extends AbstractType
{

    public function buildForm(FormBuilderInterface $builder, array $options)
    {

        $builder
           ->add('firstname', TextType::class, [
               'label' => 'form.labels.firstname'
           ])
           ->add('lastname', TextType::class, [
               'label' => 'form.labels.lastname'
           ])
           ->add('email', EmailType::class, [
               'label' => 'form.labels.email'
           ])
           ->add('phone', TextType::class, [
               'label' => 'form.labels.phone'
           ])
           ->add('address', TextType::class, [
               'label' => 'form.labels.address'
           ])
           ->add('city', ChoiceType::class, [
               'placeholder' => 'city.names.pasirinkti',
               'label' => 'form.labels.city',
               'choices' => array(
        'city.names.Vilnius' => 'Vilnius',
        'city.names.Kaunas' => 'Kaunas',
        'city.names.Panevezys'   => 'Panevėžys',
        'city.names.Siauliai' => 'Šiauliai',
        'city.names.Zarasai' => 'Zarasai',
        'city.names.Prienai' => 'Prienai',
        'city.names.Jonava'   => 'Jonava',
        'city.names.Radviliskis' => 'Radviliškis',
        'city.names.Alytus' => 'Alytus',
        'city.names.Birzai' => 'Biržai',
        'city.names.Ukmerge' => 'Ukmergė',
        'city.names.Druskininkai' => 'Druskininkai',
        'city.names.Elektrenai' => 'Elektrėnai',
        'city.names.Jurbarkas' => 'Jurbarkas',
        'city.names.Plunge' => 'Plungė',
        'city.names.Visaginas' => 'Visaginas',
        'city.names.Kedainiai' => 'Kėdainiai',
        'city.names.Silutė' => 'Šilutė',
        'city.names.Silalė' => 'Šilalė'
    )
           ])
           ->add('postalcode', TextType::class, [
               'label' => 'form.labels.postalcode'
           ])
           ->add('isbn', HiddenType::class)
           ->add('submit', SubmitType::class, [
               'label' => 'form.labels.submit',
               'attr' => [
                   'class' => 'btn btn-primary pull-right'
                 ]
           ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
      $resolver->setDefaults([
        'data_class' => 'AppBundle\Entity\Customer',
        'csrf_protection' => false
      ]);
    }
}
