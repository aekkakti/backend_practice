<div>
    <a href="<?= app()->route->getUrl('/profile') ?>" class="linkNavigation">Профиль</a>
    <a href="<?= app()->route->getUrl('/workspace_worker') ?>" class="linkNavigation">Рабочая область</a>
    <a href="<?= app()->route->getUrl('/logout') ?>" class="linkNavigation">Выход <img src="/backend_practice/public/img/logout_icon.jpg" alt="Нет изображения" class="logoutIcon"></a>
</div>
<div class="searchForm">
    <form method="GET" class="search">
        <p><input type="text" name="search" placeholder="Поиск по названию"></p>
        <button type="submit" class="searchButton">Найти</button>
    </form>
</div>

<div class="addNewBuilding">
    <h2 class="c-g">Добавление нового здания</h2>
    <h3><?= $message ?? ''; ?></h3>
    <form method="POST" class="addNewBuildingForm" enctype="multipart/form-data">
        <input name="csrf_token" type="hidden" value="<?= app()->auth::generateCSRF() ?>"/>
        <p>Название</p> <input type="text" name="name_building"><br>
        <p>Адрес</p> <input type="text" name="address_building"><br>
        <p>Добавить фото</p>
        <div class="fileName"></div>
        <label for="file-upload" class="inputAvatarButton">
            Выберите файл
        </label>
        <input type="file" name="image_path" id="file-upload" />
        <button class="createBuildingButton">Создание</button>
    </form>
</div>

<div class="allBuildings">
    <h2 class="c-g fs-30px allBuildingsText">Все здания</h2>
    <?php if (isset($building)): ?>
        <div class="building">
            <img src="/backend_practice/public/img/building_little_icon.png" alt="Нет изображения" class="userLittleIcon">
            <div class="buildingInfo">
                <p class="infoText">Название: <?= $building->name_building ?></p>
                <p class="infoText">Адрес: <?= $building->address_building ?></p>
            </div>
            <form method="GET" action="<?= app()->route->getUrl('/room/' . $building->build_id) ?>">
                <button type="submit" class="moreDetails">Подробнее</button>
                <input type="hidden" name="countAreaAndSeats" value="<?= $building->build_id ?>">
            </form>
        </div><br><br>
    <?php elseif (isset($allBuildings)): ?>
        <?php foreach ($allBuildings as $building): ?>
            <div class="building">
                <img src="/backend_practice/public/img/building_little_icon.png" alt="Нет изображения" class="userLittleIcon">
                <div class="buildingInfo">
                    <p class="infoText">Название: <?= $building->name_building ?></p>
                    <p class="infoText">Адрес: <?= $building->address_building ?></p>
                </div>
                <form method="GET" action="<?= app()->route->getUrl('/room/' . $building->build_id) ?>">
                    <button type="submit" class="moreDetails">Подробнее</button>
                    <input type="hidden" name="countAreaAndSeats" value="<?= $building->build_id ?>">
                </form>
            </div><br><br>
        <?php endforeach; ?>
    <?php endif; ?>
</div>