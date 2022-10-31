<?php

namespace app\models\entities;

use app\models\Model;

class Order extends Model
{
    protected $id;
    protected $session_id;
    protected $phone;

    protected $props = [
        'session_id' => false,
        'phone' => false
    ];

    public function __construct($session_id = null, $phone = null)
    {
        $this->session_id = $session_id;
        $this->phone = $phone;
    }
}
