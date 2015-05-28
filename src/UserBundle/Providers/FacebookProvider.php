<?php

namespace UserBundle\Providers;

use HWI\Bundle\OAuthBundle\OAuth\Response\UserResponseInterface;
use UserBundle\Entity\User;

class FacebookProvider
{
    /**
     * setUserData - This method use Facebook GraphAPI for get and set User data
     *
     * @param  User                  $user
     * @param  UserResponseInterface $response
     * @return User
     */
    public function setUserData(User $user, UserResponseInterface $response)
    {
        $username = $response->getUsername();
        $responseArray = $response->getResponse();

        $user->setFirstName($responseArray['first_name']);
        $user->setLastName($responseArray['last_name']);
        $user->setEmail('id'.$user->getFacebookId().'@example.com');
        $user->setUsername($username);
        $user->setPassword($username);
        $user->setEnabled(true);
        $user->setAvatar('http://graph.facebook.com/'.$username.'/picture?width=200&height=200');

        return $user;
    }
}
