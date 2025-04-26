<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::middleware('web')
    ->group(function () {
        require __DIR__.'/web/auth.php';
        require __DIR__.'/web/dashboard.php';
        require __DIR__.'/web/users.php';
    });
