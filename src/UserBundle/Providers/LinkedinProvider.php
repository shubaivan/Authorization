<?php

namespace UserBundle\Providers;

use HWI\Bundle\OAuthBundle\OAuth\Response\UserResponseInterface;
use UserBundle\Entity\User;

class LinkedinProvider
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
        $username = $response->getRealName();

//        $responseArray = $response->getResponse();
        dump($response);

        return $user;
    }
}
