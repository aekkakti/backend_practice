<?php
$auth = new \Collect\Collect();
if (!$auth->isLogged()):
    ?>
<div class="container">
    <div class="frame b-w">
        <h2 class="authText b-w">Авторизация</h2><br><br>
        <div class="login_form b-w">
            <form method="post" class="b-w inputLoginForm">
                <input name="csrf_token" type="hidden" value="<?= app()->auth::generateCSRF() ?>"/>
                <label>Логин <input type="text" name="nickname"></label><br><br>
                <label>Пароль <input type="password" name="password"></label><br><br>
                <input type="submit" class="submitInput" value="Авторизация">
            </form>
        </div>
    </div>
</div>
<?php endif;