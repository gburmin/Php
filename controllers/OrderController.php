<?php

namespace app\controllers;

use app\engine\Request;
use app\engine\Session;
use app\models\repositories\OrderRepository;
use app\models\entities\Order;
use app\models\repositories\UserRepository;

class OrderController extends Controller
{
    public function actionIndex()
    {
        $order = (new OrderRepository())->getAll();
        echo $this->render('order', [
            'order' => $order,
            'isAdmin' => (new UserRepository())->isAdmin(),
        ]);
    }

    public function actionFormOrder()
    {
        $phone = (new Request)->getParams()['phone'];
        $session_id = (new Session)->getId();

        $order = new Order($session_id, $phone);
        (new OrderRepository())->save($order);

        $response = [
            'status' => 'ok'
        ];
        echo json_encode($response, JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
        $session = new Session();
        $session->regenerate();
        die();
    }

    public function actionDetails()
    {
        $id = (new Request)->getParams()['id'];
        $details = (new OrderRepository())->getOne($id);
        $session_id = $details->session_id;
        $orderDetails = (new OrderRepository())->getOrder($session_id);
        echo $this->render('details', [
            'orderDetails' => $orderDetails,
            'isAdmin' => (new UserRepository())->isAdmin(),
        ]);
    }
}
