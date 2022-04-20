<h2>Корзина</h2>
<?php foreach ($basket as $value) : ?>
    <div>
        <?= $value['name'] ?><br>
        price: <?= $value['price'] ?><br>
        <a href="/c=basket&a=???&id=<?= $value['basket_id'] ?>">УДАЛИТЬ</a>
    </div>
    <hr>
<?php endforeach; ?>
<button class='formOrder'>Оформить заказ</button>
<form class='hidden' id='formWithPhone' action='#' method='post'>
    <input name='phone' placeholder="Введите ваш номер телефона">
    <input type="submit" name="ok">
</form>