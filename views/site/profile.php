<?php
if (app()->auth::check()):
?>
<header>
    <a href="<?= app()->route->getUrl('/profile') ?>" class="linkNavigation">Профиль</a>
    <a href="<?= app()->route->getUrl('/workspace') ?>" class="linkNavigation">Рабочая область</a>
    <a href="<?= app()->route->getUrl('/logout') ?>" class="linkNavigation">Выход <img src="../../public/img/logout_icon.jpg" alt="Нет изображения" class="logoutIcon"></a>

</header>
<main>
    <p class="FIOUser noneLeft"><?= app()->auth::user()->surname ?> <?= app()->auth::user()->name ?> <?= app()->auth::user()->patronymic ?></p>
    <p class="roleUser noneLeft">Роль: администратор/сотрудник</p>
    <img src="../../public/img/user_icon.png" alt="Нет изображения" class="userIcon">
    <form method="post" class="changeInfoForm">
        <div class="changeInfoForm1">
            <p class="noneLeft">Логин</p> <input type="text" name="nickname"><br><br>
            <p class="noneLeft">E-mail</p> <input type="email" name="email"><br><br>
            <p class="noneLeft">Пароль</p> <input type="password" name="password"><br><br>
        </div>
        <div class="changeInfoForm2">
            <p class="noneLeft">Фамилия</p><input type="text" name="surname"><br><br>
            <p class="noneLeft">Имя</p> <input type="text" name="name"><br><br>
            <p class="noneLeft">Отчество</p> <input type="text" name="patronymic"><br><br>
        </div>
        <div class="changeInfoForm3">
            <p class="noneLeft">Изменить аватарку</p>
            <div class="fileName">Файл не выбран</div>
            <label for="file-upload" class="inputAvatarButton">
                Выберите файл
            </label>
            <input id="file-upload" type="file" />

            <button class="saveChangesProfile">Сохранить изменения</button>
        </div>


    </form>
</main>

<?php
else:
    ?>
    <h3 class="youNotAuthorizedText">Вы не авторизованы</h3>
    <a href="<?= app()->route->getUrl('/login'); ?>"><input type="submit" class="submitInput goToAuth" value="Авторизация"></a>

<?php
endif;
?>