<header>
    <a href="<?= app()->route->getUrl('/profile') ?>" class="linkNavigation">Профиль</a>
    <a href="<?= app()->route->getUrl('/workspace_admin') ?>" class="linkNavigation">Рабочая область</a>
    <a href="<?= app()->route->getUrl('/logout') ?>" class="linkNavigation">Выход <img src="../../public/img/logout_icon.jpg" alt="Нет изображения" class="logoutIcon"></a>

</header>
<div class="addWorker">
    <h3><?= $message ?? ''; ?></h3>
    <h2 class="c-g">Добавление нового сотрудника</h2>
    <form method="post" class="addWorkerForm">
        <input name="csrf_token" type="hidden" value="<?= app()->auth::generateCSRF() ?>"/>
        <div class="addWorkerForm1">
            <p>Логин</p> <input type="text" name="nickname"><br><br>
            <p>Пароль</p> <input type="password" name="password"><br><br>
        </div>
        <select name="role_id" hidden><br><br>
            <option value="2">Сотрудник деканата</option>
        </select>
        <div class="addWorkerForm2">
            <p>E-mail</p> <input type="email" name="email"><br><br>
            <p>Фамилия</p><input type="text" name="surname"><br><br>
        </div>
        <div class="addWorkerForm3">
            <p>Имя</p> <input type="text" name="name" ><br><br>
            <p>Отчество</p> <input type="text" name="patronymic"><br><br>
        </div>
        <button class="createWorkerButton">Создание</button>
    </form>
</div>


<div class="allWorkers">
    <h2 class="c-g fs-30px">Все сотрудники деканата</h2>
    <?php
    foreach ($allWorkers as $worker) {
        if ($worker->role_id == 2) {
            echo '<div class="worker">';
            echo '<img src="../../public/img/user_little_icon.png" alt="Нет изображения" class="userLittleIcon">';
            echo '<div class = "workerInfo">';
            echo '<p class="infoText">ФИО: ' . $worker->surname . ' ' . $worker->name . ' ' . $worker->patronymic . '</p>';
            echo '<p class="infoText">Логин: ' . $worker->nickname . '</p>';
            echo '<p class="infoText">Пароль: ' . $worker->password . '</p>';
            echo '</div>';
            echo '</div> <br><br>';
        }
    }
    ?>

</div>