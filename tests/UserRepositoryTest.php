<?php

use PHPUnit\Framework\TestCase;

use app\models\repositories\UserRepository;

class UserRepositoryTest extends TestCase
{
    /**
     * @dataProvider providerAuth
     */
    function testAuth($login, $pass)
    {
        $login1 = (new UserRepository())->Auth($login, $pass);
        $this->assertTrue($login1);
    }

    public function providerAuth()
    {
        return array(
            array('user', 321),
            array('user', 123),
            array('admin', 123)
        );
    }
}
