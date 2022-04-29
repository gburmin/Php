<?php

session_start();

use app\engine\Autoload;
use app\models\{Product, User};
use app\engine\Render;
use app\engine\TwigRender;
use app\engine\Request;


//TODO добавьте абсолютные пути
include "../engine/Autoload.php";
require_once '../vendor/autoload.php';
include "../config/config.php";

spl_autoload_register([new Autoload(), 'loadClass']);

$request = new Request();

$controllerName = $request->getControllerName() ?: 'product';
$actionName = $request->getActionName();

$controllerClass = CONTROLLER_NAMESPACE . ucfirst($controllerName) . "Controller";

if (class_exists($controllerClass)) {
    $controller = new $controllerClass(new TwigRender());
    $controller->runAction($actionName);
} else {
    die("Нет такого контроллера");
}
