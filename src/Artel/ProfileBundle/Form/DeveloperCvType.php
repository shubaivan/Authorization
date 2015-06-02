<?php
namespace Artel\ProfileBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolverInterface;
use Artel\ProfileBundle\Entity\Photo;

class AddPhotoType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add('photo', 'file', array(
                'label' => 'Photo',
            ))
            ->add('save', 'submit');
    }

//    public function setDefaultOptions(OptionsResolverInterface $resolver)
//    {
//        $resolver->setDefaults(array(
//            'data_class' => 'Artel\ProfileBundle\Entity\Photo',
//        ));
//    }

    public function getName()
    {
        return 'photo';
    }
}
