<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pop it MVC</title>
</head>
<body>
<header>
    <nav>
        <a href="<?= app()->route->getUrl('/hello') ?>" class="t-d-n">Главная</a>
        <?php
        if (!app()->auth::check()):
            ?>
            <a href="<?= app()->route->getUrl('/login') ?>">Вход</a>
        <?php
        else:
            ?>
            <a href="<?= app()->route->getUrl('/signup') ?>">Добавить пользователя   </a>
            <a href="<?= app()->route->getUrl('/logout') ?>">Выход (<?= app()->auth::user()->nickname ?>)</a>
        <?php
        endif;
        ?>
    </nav>
</header>
<main>
    <?= $content ?? '' ?>
</main>

</body>
</html>
