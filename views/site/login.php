<?php
if (!app()->auth::check()):
    ?>
<div class="frame">
    <div class="login_form">
        <h2>Авторизация</h2>
        <form method="post">
            <label>Имя пользователя <input type="text" name="nickname"></label><br><br>
            <label>Пароль <input type="password" name="password"></label><br><br>
            <button>Авторизация</button>
        </form>
    </div>
</div>
<?php endif;