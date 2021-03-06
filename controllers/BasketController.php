<?php

namespace app\controllers;

use app\models\Basket;

class BasketController extends Controller
{
    public function actionBasket()
    {
        $basket = Basket::getBasket();
        echo $this->render('basket/basket', [
            'basket' => $basket
        ]);
    }
}
