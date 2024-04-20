<?php

use Src\Route;

Route::add('POST', '/login_api', [Controller\Api::class, 'login']);
Route::add(['GET', 'POST'], '/add_worker', [Controller\Api::class, 'addWorker']);
Route::add('POST', '/echo', [Controller\Api::class, 'echo']);
