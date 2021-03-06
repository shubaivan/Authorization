<?php

namespace UserBundle\Entity;

use FOS\UserBundle\Model\User as BaseUser;
use Doctrine\ORM\Mapping as ORM;
use Gedmo\Mapping\Annotation as Gedmo;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity
 * @ORM\Table(name="fos_user")
 */
class User extends BaseUser
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;
    /**
     * @ORM\Column(type="string")
     */
    protected $firstName;
    /**
     * @ORM\Column(type="string")
     */
    protected $lastName;

    /**
     * @ORM\Column(type="string")
     */
    public $avatar;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $facebookId;
    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $facebookAccessToken;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $vkontakteId;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $vkontakteAccessToken;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $linkedinId;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $linkedinAccessToken;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $githubId;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $githubAccessToken;

    /**
     * @Gedmo\Slug(fields={"firstName", "lastName"})
     * @ORM\Column(type="string")
     */
    protected $slug;

    /**
     * @var string
     *
     * @ORM\Column(name="country", type="string", length=255, nullable=true)
     */
    private $country;

    /**
     * @var string
     *
     * @ORM\Column(name="skype", type="string", length=255, nullable=true)
     * @Assert\Length(min=3, max=255)
     */
    protected $skype;

    /**
     * @var string
     *
     * @ORM\Column(name="telephone", type="string", length=255, nullable=true)
     * @Assert\Length(min=3, max=255)
     */
    protected $telephone;

    /**
     * @var string
     *
     * @ORM\Column(name="level", type="string", length=10, nullable=true)
     */
    private $level;

    /**
     * @var string
     *
     * @ORM\Column(name="qualification", type="string", length=80, nullable=true)
     */
    private $qualification;

    /**
     * @var string
     *
     * @ORM\Column(name="main_skill", type="string", length=80, nullable=true)
     */
    private $main_skill;

    /**
     * @var string
     *
     * @ORM\Column(name="skills", type="array", nullable=true)
     */
    private $skills = array();

    /**
     * @var string
     *
     * @ORM\Column(name="english", type="string", length=30, nullable=true)
     */
    private $english;

    /**
     * @var integer
     *
     * @ORM\Column(name="rate", type="smallint", nullable=true)
     */
    private $rate;

    /**
     * @var string
     *
     * @ORM\Column(name="cv_uri", type="string", length=255, nullable=true)
     */
    private $cvUri;

    /**
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Photo", inversedBy="author")
     */
    protected $photo;

    /**
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Comment", inversedBy="author")
     */
    protected $comment;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    protected $textCv;

    /**
     * @var string
     *
     * @ORM\Column(name="cv_dir_uri", type="string", length=255, nullable=true)
     */
    private $cvDirUri;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $socialNetworkUrl;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $gender;

    /**
     * @ORM\Column(type="string", nullable=true)
     */
    protected $socialNetworkName;

    public function isFakeEmail()
    {
        return false === strpos($this->email, '@example.com') && $this->email ? false : true;
    }

    public function isFakeUsername()
    {
        return (($this->username == $this->vkontakteId) || ($this->username == $this->facebookId));
    }

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set firstName
     *
     * @param  string $firstName
     * @return User
     */
    public function setFirstName($firstName)
    {
        $this->firstName = $firstName;

        return $this;
    }

    /**
     * Get firstName
     *
     * @return string
     */
    public function getFirstName()
    {
        return $this->firstName;
    }

    /**
     * Set lastName
     *
     * @param  string $lastName
     * @return User
     */
    public function setLastName($lastName)
    {
        $this->lastName = $lastName;

        return $this;
    }

    /**
     * Get lastName
     *
     * @return string
     */
    public function getLastName()
    {
        return $this->lastName;
    }

    /**
     * Set avatar
     *
     * @param  string $avatar
     * @return User
     */
    public function setAvatar($avatar)
    {
        $this->avatar = $avatar;

        return $this;
    }

    /**
     * Get avatar
     *
     * @return string
     */
    public function getAvatar()
    {
        return $this->avatar;
    }

    /**
     * Set facebookId
     *
     * @param  string $facebookId
     * @return User
     */
    public function setFacebookId($facebookId)
    {
        $this->facebookId = $facebookId;

        return $this;
    }

    /**
     * Get facebookId
     *
     * @return string
     */
    public function getFacebookId()
    {
        return $this->facebookId;
    }

    /**
     * Set facebookAccessToken
     *
     * @param  string $facebookAccessToken
     * @return User
     */
    public function setFacebookAccessToken($facebookAccessToken)
    {
        $this->facebookAccessToken = $facebookAccessToken;

        return $this;
    }

    /**
     * Get facebookAccessToken
     *
     * @return string
     */
    public function getFacebookAccessToken()
    {
        return $this->facebookAccessToken;
    }

    /**
     * Set vkontakteId
     *
     * @param  string $vkontakteId
     * @return User
     */
    public function setVkontakteId($vkontakteId)
    {
        $this->vkontakteId = $vkontakteId;

        return $this;
    }

    /**
     * Get vkontakteId
     *
     * @return string
     */
    public function getVkontakteId()
    {
        return $this->vkontakteId;
    }

    /**
     * Set vkontakteAccessToken
     *
     * @param  string $vkontakteAccessToken
     * @return User
     */
    public function setVkontakteAccessToken($vkontakteAccessToken)
    {
        $this->vkontakteAccessToken = $vkontakteAccessToken;

        return $this;
    }

    /**
     * Get vkontakteAccessToken
     *
     * @return string
     */
    public function getVkontakteAccessToken()
    {
        return $this->vkontakteAccessToken;
    }

    /**
     * Set slug
     *
     * @param  string $slug
     * @return User
     */
    public function setSlug($slug)
    {
        $this->slug = $slug;

        return $this;
    }

    /**
     * Get slug
     *
     * @return string
     */
    public function getSlug()
    {
        return $this->slug;
    }

    /**
     * Set linkedinId
     *
     * @param string $linkedinId
     *
     * @return User
     */
    public function setLinkedinId($linkedinId)
    {
        $this->linkedinId = $linkedinId;

        return $this;
    }

    /**
     * Get linkedinId
     *
     * @return string
     */
    public function getLinkedinId()
    {
        return $this->linkedinId;
    }

    /**
     * Set linkedinAccessToken
     *
     * @param string $linkedinAccessToken
     *
     * @return User
     */
    public function setLinkedinAccessToken($linkedinAccessToken)
    {
        $this->linkedinAccessToken = $linkedinAccessToken;

        return $this;
    }

    /**
     * Get linkedinAccessToken
     *
     * @return string
     */
    public function getLinkedinAccessToken()
    {
        return $this->linkedinAccessToken;
    }

    /**
     * Set country
     *
     * @param string $country
     *
     * @return User
     */
    public function setCountry($country)
    {
        $this->country = $country;

        return $this;
    }

    /**
     * Get country
     *
     * @return string
     */
    public function getCountry()
    {
        return $this->country;
    }

    /**
     * Set skype
     *
     * @param string $skype
     *
     * @return User
     */
    public function setSkype($skype)
    {
        $this->skype = $skype;

        return $this;
    }

    /**
     * Get skype
     *
     * @return string
     */
    public function getSkype()
    {
        return $this->skype;
    }

    /**
     * Set telephone
     *
     * @param string $telephone
     *
     * @return User
     */
    public function setTelephone($telephone)
    {
        $this->telephone = $telephone;

        return $this;
    }

    /**
     * Get telephone
     *
     * @return string
     */
    public function getTelephone()
    {
        return $this->telephone;
    }

    /**
     * Set level
     *
     * @param string $level
     *
     * @return User
     */
    public function setLevel($level)
    {
        $this->level = $level;

        return $this;
    }

    /**
     * Get level
     *
     * @return string
     */
    public function getLevel()
    {
        return $this->level;
    }

    /**
     * Set qualification
     *
     * @param string $qualification
     *
     * @return User
     */
    public function setQualification($qualification)
    {
        $this->qualification = $qualification;

        return $this;
    }

    /**
     * Get qualification
     *
     * @return string
     */
    public function getQualification()
    {
        return $this->qualification;
    }

    /**
     * Set mainSkill
     *
     * @param string $mainSkill
     *
     * @return User
     */
    public function setMainSkill($mainSkill)
    {
        $this->main_skill = $mainSkill;

        return $this;
    }

    /**
     * Get mainSkill
     *
     * @return string
     */
    public function getMainSkill()
    {
        return $this->main_skill;
    }

    /**
     * Set skills
     *
     * @param array $skills
     *
     * @return User
     */
    public function setSkills($skills)
    {
        $this->skills = $skills;

        return $this;
    }

    /**
     * Get skills
     *
     * @return array
     */
    public function getSkills()
    {
        return $this->skills;
    }

    /**
     * Set english
     *
     * @param string $english
     *
     * @return User
     */
    public function setEnglish($english)
    {
        $this->english = $english;

        return $this;
    }

    /**
     * Get english
     *
     * @return string
     */
    public function getEnglish()
    {
        return $this->english;
    }

    /**
     * Set rate
     *
     * @param integer $rate
     *
     * @return User
     */
    public function setRate($rate)
    {
        $this->rate = $rate;

        return $this;
    }

    /**
     * Get rate
     *
     * @return integer
     */
    public function getRate()
    {
        return $this->rate;
    }

    /**
     * Set cvUri
     *
     * @param string $cvUri
     *
     * @return User
     */
    public function setCvUri($cvUri)
    {
        $this->cvUri = $cvUri;

        return $this;
    }

    /**
     * Get cvUri
     *
     * @return string
     */
    public function getCvUri()
    {
        return $this->cvUri;
    }

    /**
     * Add photo
     *
     * @param \AppBundle\Entity\Photo $photo
     *
     * @return User
     */
    public function addPhoto(\AppBundle\Entity\Photo $photo)
    {
        $this->photo[] = $photo;

        return $this;
    }

    /**
     * Remove photo
     *
     * @param \AppBundle\Entity\Photo $photo
     */
    public function removePhoto(\AppBundle\Entity\Photo $photo)
    {
        $this->photo->removeElement($photo);
    }

    /**
     * Get photo
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getPhoto()
    {
        return $this->photo;
    }

    /**
     * Add comment
     *
     * @param \AppBundle\Entity\Comment $comment
     *
     * @return User
     */
    public function addComment(\AppBundle\Entity\Comment $comment)
    {
        $this->comment[] = $comment;

        return $this;
    }

    /**
     * Remove comment
     *
     * @param \AppBundle\Entity\Comment $comment
     */
    public function removeComment(\AppBundle\Entity\Comment $comment)
    {
        $this->comment->removeElement($comment);
    }

    /**
     * Get comment
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getComment()
    {
        return $this->comment;
    }

    /**
     * Set textCv
     *
     * @param string $textCv
     *
     * @return User
     */
    public function setTextCv($textCv)
    {
        $this->textCv = $textCv;

        return $this;
    }

    /**
     * Get textCv
     *
     * @return string
     */
    public function getTextCv()
    {
        return $this->textCv;
    }

    /**
     * Set cvDirUri
     *
     * @param string $cvDirUri
     *
     * @return User
     */
    public function setCvDirUri($cvDirUri)
    {
        $this->cvDirUri = $cvDirUri;

        return $this;
    }

    /**
     * Get cvDirUri
     *
     * @return string
     */
    public function getCvDirUri()
    {
        return $this->cvDirUri;
    }

    /**
     * Set socialNetworkUrl
     *
     * @param string $socialNetworkUrl
     *
     * @return User
     */
    public function setSocialNetworkUrl($socialNetworkUrl)
    {
        $this->socialNetworkUrl = $socialNetworkUrl;

        return $this;
    }

    /**
     * Get socialNetworkUrl
     *
     * @return string
     */
    public function getSocialNetworkUrl()
    {
        return $this->socialNetworkUrl;
    }

    /**
     * Set gender
     *
     * @param string $gender
     *
     * @return User
     */
    public function setGender($gender)
    {
        $this->gender = $gender;

        return $this;
    }

    /**
     * Get gender
     *
     * @return string
     */
    public function getGender()
    {
        return $this->gender;
    }

    /**
     * Set socialNetworkName
     *
     * @param string $socialNetworkName
     *
     * @return User
     */
    public function setSocialNetworkName($socialNetworkName)
    {
        $this->socialNetworkName = $socialNetworkName;

        return $this;
    }

    /**
     * Get socialNetworkName
     *
     * @return string
     */
    public function getSocialNetworkName()
    {
        return $this->socialNetworkName;
    }

    /**
     * Set githubId
     *
     * @param string $githubId
     *
     * @return User
     */
    public function setGithubId($githubId)
    {
        $this->githubId = $githubId;

        return $this;
    }

    /**
     * Get githubId
     *
     * @return string
     */
    public function getGithubId()
    {
        return $this->githubId;
    }

    /**
     * Set githubAccessToken
     *
     * @param string $githubAccessToken
     *
     * @return User
     */
    public function setGithubAccessToken($githubAccessToken)
    {
        $this->githubAccessToken = $githubAccessToken;

        return $this;
    }

    /**
     * Get githubAccessToken
     *
     * @return string
     */
    public function getGithubAccessToken()
    {
        return $this->githubAccessToken;
    }
}
