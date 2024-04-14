<?php
if (app()->auth::check() && app()->auth->user()->role_id == 1):
?>
<header>
    <a href="<?= app()->route->getUrl('/profile') ?>" class="linkNavigation">Профиль</a>
    <a href="<?= app()->route->getUrl('/workspace_admin') ?>" class="linkNavigation">Рабочая область</a>
    <a href="<?= app()->route->getUrl('/logout') ?>" class="linkNavigation">Выход <img src="../../public/img/logout_icon.jpg" alt="Нет изображения" class="logoutIcon"></a>

</header>

    <main style="position: relative; left: 50px; width: 1500px">
        <p class="FIOUser noneLeft"><?= app()->auth::user()->surname ?> <?= app()->auth::user()->name ?> <?= app()->auth::user()->patronymic ?></p>
            <p class="roleUser noneLeft">Роль: Администратор</p>
        <img src="<?= $userAvatar ?>" alt="Аватар пользователя" class="userIcon">
        <form method="post" class="changeInfoForm" enctype="multipart/form-data">
            <input name="csrf_token" type="hidden" value="<?= app()->auth::generateCSRF() ?>"/>
            <div class="changeInfoForm1">
                <p class="noneLeft">Логин</p> <input value="<?= app()->auth::user()->nickname ?>" disabled><br><br>
                <p class="noneLeft">E-mail</p> <input type="email" name="email" value="<?= app()->auth::user()->email ?>"><br><br>
                <p class="noneLeft">Пароль</p> <input type="password" name="password" value="<?= app()->auth::user()->password ?>"><br><br>
            </div>
            <div class="changeInfoForm2">
                <p class="noneLeft">Фамилия</p><input type="text" name="surname" value="<?= app()->auth::user()->surname ?>"><br><br>
                <p class="noneLeft">Имя</p> <input type="text" name="name" value="<?= app()->auth::user()->name ?>"><br><br>
                <p class="noneLeft">Отчество</p> <input type="text" name="patronymic" value="<?= app()->auth::user()->patronymic ?>"><br><br>
            </div>
            <div class="changeInfoForm3">
                <p class="noneLeft">Изменить аватарку</p>
                <div class="fileName"></div>
                <label for="file-upload" class="inputAvatarButton">
                    Выберите файл
                </label>
                <input type="file" name="avatar" id="file-upload"  />

                <button class="saveChangesProfile">Сохранить изменения</button>
            </div>
        </form>
    </main>

<?php
    elseif (app()->auth::check() && app()->auth->user()->role_id == 2):
?>
    <header>
        <a href="<?= app()->route->getUrl('/profile') ?>" class="linkNavigation">Профиль</a>
        <a href="<?= app()->route->getUrl('/workspace_worker') ?>" class="linkNavigation">Рабочая область</a>
        <a href="<?= app()->route->getUrl('/logout') ?>" class="linkNavigation">Выход <img src="../../public/img/logout_icon.jpg" alt="Нет изображения" class="logoutIcon"></a>
    </header>

        <main>
            <p class="FIOUser noneLeft"><?= app()->auth::user()->surname ?> <?= app()->auth::user()->name ?> <?= app()->auth::user()->patronymic ?></p>
            <p class="roleUser noneLeft">Роль: Сотрудник</p>
            <img src="../../public/img/user_icon.png" alt="Нет изображения" class="userIcon">
            <form method="post" class="changeInfoForm">
                <input name="csrf_token" type="hidden" value="<?= app()->auth::generateCSRF() ?>"/>
                <div class="changeInfoForm1">
                    <p class="noneLeft">Логин</p> <input type="text" name="nickname" value="<?= app()->auth::user()->nickname ?>"><br><br>
                    <p class="noneLeft">E-mail</p> <input type="email" name="email" value="<?= app()->auth::user()->email ?>"><br><br>
                    <p class="noneLeft">Пароль</p> <input type="password" name="password" value="<?= app()->auth::user()->password ?>"><br><br>
                </div>
                <div class="changeInfoForm2">
                    <p class="noneLeft">Фамилия</p><input type="text" name="surname" value="<?= app()->auth::user()->surname ?>"><br><br>
                    <p class="noneLeft">Имя</p> <input type="text" name="name" value="<?= app()->auth::user()->name ?>"><br><br>
                    <p class="noneLeft">Отчество</p> <input type="text" name="patronymic" value="<?= app()->auth::user()->patronymic ?>"><br><br>
                </div>
                <div class="changeInfoForm3">
                    <p class="noneLeft">Изменить аватарку</p>
                    <div class="fileName"><?= app()->auth::user()->avatar ?></div>
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