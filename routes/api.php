<?php

Route::prefix('v1')
    ->middleware('api')
    ->group(base_path('routes/api/v1'));

Route::prefix('v2')
    ->middleware('api')
    ->group(base_path('routes/api/v2'));
