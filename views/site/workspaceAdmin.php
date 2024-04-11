
<?php
if (app()->auth::check()):
    ?>
    <header>
        <a href="<?= app()->route->getUrl('/profile') ?>" class="linkNavigation">Профиль</a>
        <a href="<?= app()->route->getUrl('/admin') ?>" class="linkNavigation">Рабочая область</a>
        <a href="<?= app()->route->getUrl('/logout') ?>" class="linkNavigation">Выход <img src="../../public/img/logout_icon.jpg" alt="Нет изображения" class="logoutIcon"></a>

    </header>
    <main>
        <h2>Добавление нового сотрудника</h2>
        <form method="post">
            <p>Фамилия</p> <br><br><input type="text" name="surname" required><br><br>
            <p>Имя</p> <input type="text" name="name" required><br><br>
            <p>Отчество</p> <input type="text" name="patronymic"><br><br>
            <p>Логин</p> <input type="text" name="nickname" required><br><br>
            <p>Адрес электронной почты</p> <input type="email" name="email"><br><br>
            <p>Пароль</p> <input type="password" name="password" required><br><br>
            <button>Создать пользователя</button>
        </form>
    </main>

<?php
else:

    ?>
    <h3>Вы не авторизованы</h3>
    <a href="/login"><input type="submit" class="submitInput" value="Авторизация"></a>

<?php
endif;
?>