<?php

namespace app\controllers;

use app\engine\Render;
use app\engine\TwigRender;
use app\interfaces\IRender;
use app\models\repositories\BasketRepository;
use app\models\repositories\UserRepository;

abstract class Controller
{
    private $action;
    private $defaultAction = 'index';
    private $render;


    public function __construct(IRender $render)
    {
        $this->render = $render;
    }


    public function runAction($action)
    {
        $this->action = $action ?: $this->defaultAction;
        $method = 'action' . ucfirst($this->action);
        if (method_exists($this, $method)) {
            $this->$method();
        } else {
            die('404 нет такого экшена');
        }
    }

    public function render($template, $params = [])
    {
        return $this->renderTemplate('layouts/main', [
            'menu' => $this->renderTemplate('menu', [
                'userName' => (new UserRepository())->getName(),
                'isAuth' => (new UserRepository())->isAuth(),
                'isAdmin' => (new UserRepository())->isAdmin(),
                'count' => (new BasketRepository())->getCountWhere('session_id', session_id())
            ]),
            'content' => $this->renderTemplate($template, $params)
        ]);
    }


    public function renderTemplate($template, $params = [])
    {
        return $this->render->renderTemplate($template, $params);
    }
}
