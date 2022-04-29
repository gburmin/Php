<?php

namespace app\models;

use app\engine\Session;

class User extends DBModel
{
    protected $id;
    protected $login;
    protected $pass;

    protected $props = [
        'login' => false,
        'pass' => false
    ];

    public function __construct($login = null, $pass = null)
    {
        $this->login = $login;
        $this->pass = $pass;
    }

    public static function Auth($login, $pass)
    {
        $user = User::getWhere('login', $login);
        if ($user != false && password_verify($pass, $user->pass)) {
            $session = new Session();
            $session->set('login', $login);
            return true;
        }
        return false;
    }

    public static function isAuth()
    {
        return isset($_SESSION['login']);
    }

    public static function getName()
    {
        return $_SESSION['login'];
    }


    protected static function getTableName()
    {
        return 'users';
    }
}
