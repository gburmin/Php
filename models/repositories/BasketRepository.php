<?php

namespace app\models\repositories;

use app\engine\Db;
use app\models\entities\Basket;
use app\models\Repository;

class BasketRepository extends Repository
{
    public static function getBasket($session_id)
    {
        $sql = "SELECT basket.id as basket_id, products.id prod_id, products.name, products.description, products.price FROM `basket`,`products` WHERE `session_id` = :session_id AND basket.product_id = products.id";
        return Db::getInstance()->queryAll($sql, ['session_id' => $session_id]);
    }

    protected function getEntityClass()
    {
        return Basket::class;
    }

    public function getTableName()
    {
        return 'basket';
    }
}
