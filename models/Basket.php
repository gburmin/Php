<?php

namespace app\models;

use app\engine\Db;

class Basket extends DBModel
{
    protected $id;
    protected $session_id;
    protected $product_id;

    protected $props = [
        'session_id' => false,
        'product_id' => false
    ];

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
