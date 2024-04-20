<?php

namespace Middlewares;

use Src\Auth\Auth;
use Src\Request;
use Src\View;

class TokenMiddleware
{
    public function handle(Request $request): void
    {
        if (!Auth::checkToken()){
            (new View())->toJSON(['message' => "Not authenticated"], 401);
        }
    }

}