<?php

namespace app\models;

use app\engine\Db;

class Basket extends DBModel
{
    public $id;
    public $session_id;
    public $product_id;


    public static function getBasket()
    {
        $sql = "SELECT basket.id as basket_id, products.id as products_id, name, priceInBasket as price FROM `basket`, `products` WHERE basket.product_id = products.id";
        return Db::getInstance()->queryAll($sql);
    }

    public static function getTableName()
    {
        return 'basket';
    }
}
