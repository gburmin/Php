<?php

namespace app\controllers;

use app\engine\Request;
use app\engine\Session;
use app\models\repositories\BasketRepository;
use app\models\entities\Basket;
use app\models\repositories\OrderRepository;
use app\models\entities\Order;

class BasketController extends Controller
{
    public function actionIndex()
    {
        $session_id = (new Session)->getId();
        $basket = (new BasketRepository())->getBasket($session_id);
        echo $this->render('basket', [
            'basket' => $basket
        ]);
    }

    public function actionAdd()
    {
        $id = (new Request)->getParams()['id'];
        $session_id = (new Session)->getId();

        $basket = new Basket($session_id, $id);
        (new BasketRepository())->save($basket);

        $response = [
            'status' => 'ok',
            'count' => (new BasketRepository())->getCountWhere('session_id', $session_id)
        ];

        echo json_encode($response, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
        die();
    }

    public function actionDelete()
    {
        $id = (new Request)->getParams()['id'];
        $basket = (new BasketRepository())->getOne($id);
        $session_id = (new Session())->getId();

        if ($session_id == $basket->session_id) {
            (new BasketRepository())->delete($basket);
        }

        $response = [
            'status' => 'ok',
            'count' => (new BasketRepository())->getCountWhere('session_id', $session_id)
        ];

        echo json_encode($response, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
        die();
    }
}
