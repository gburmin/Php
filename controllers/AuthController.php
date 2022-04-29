<?php

namespace app\controllers;

use app\engine\Request;
use app\models\User;
use app\engine\Session;

class AuthController extends Controller
{
    public function actionLogin()
    {
        $login = (new Request())->getParams()['login'];
        $pass = (new Request())->getParams()['pass'];
        if (User::Auth($login, $pass)) {
            header("Location: /");
            die();
        } else {
            die("Не верный логин пароль");
        }
    }

    public function actionLogout()
    {
        $session = new Session();
        $session->regenerate();
        $session->destroy();
        header("Location: /");
        die();
    }
}
