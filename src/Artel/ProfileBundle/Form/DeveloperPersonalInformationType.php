<?php
namespace Artel\ProfileBundle\Form;

use Symfony\Component\Form\AbstractType,
    Symfony\Component\Form\FormBuilderInterface,
    Symfony\Component\OptionsResolver\OptionsResolverInterface;

class DeveloperPersonalInformationType extends AbstractType
{
    /**
     * @param FormBuilderInterface $builder
     * @param array $options
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
			->add('firstname', null, array('label' => 'First Name', 'max_length' => 255, 'required' => false))
			->add('lastname', null, array('label' => 'Last Name', 'max_length' => 255, 'required' => false))
            ->add('email', null, array('label' => 'Email', 'max_length' => 255, 'required' => false))
            ->add('country', 'choice', array('label' => 'Country', 'max_length' => 255, 'required' => false,
				'choices'   => array('Ukraine' => 'Ukraine', 'Russia' => 'Russia', 'Belarus' => 'Belarus', 'Crimea' => 'Crimea')))
            ->add('company', null, array('label' => 'Company', 'max_length' => 255))
            ->add('skype', null, array('label' => 'Skype', 'max_length' => 255, 'required' => false))
            ->add('telephone', null, array('label' => 'Telephone', 'max_length' => 255, 'required' => false))
            ->add('save', 'submit');
    }

    /**
     * @param OptionsResolverInterface $resolver
     */
    public function setDefaultOptions(OptionsResolverInterface $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'Artel\ProfileBundle\Entity\Developer',
            'validation_groups' => array('personal_information')
        ));
    }

    /**
     * @return string
     */
    public function getName()
    {
        return 'developer_personal_information';
    }
}
