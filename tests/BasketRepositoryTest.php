<?php

use PHPUnit\Framework\TestCase;

use app\models\repositories\BasketRepository;

class BasketRepositoryTest extends TestCase
{
    /**
     * @dataProvider providerBasketKeys
     */
    function testBasketKeys($key)
    {
        $session_id = '111';
        $basket = (new BasketRepository())->getBasket($session_id);
        $this->assertArrayHasKey($key, $basket[0]);
    }

    public function providerBasketKeys()
    {
        return array(
            array('name'),
            array('production_id'),
            array('prod_id'),
            array('description')
        );
    }
}
