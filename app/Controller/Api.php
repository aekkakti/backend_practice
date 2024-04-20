<?php

namespace Controller;

use Model\User;
use Src\Auth\Auth;
use Src\Request;
use Src\Validator\Validator;
use Src\View;

class Api
{
    public function index(): void
    {
        $users = User::all()->toArray();

        (new View())->toJSON($users);
    }

    public function echo(Request $request): void
    {
        (new View())->toJSON($request->all());
    }

    public function login(Request $request)
    {
        $credentials = $request->all();

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            $token = uniqid();

            $user->api_token = hash('md5', $token);
            $user->save();

            (new View())->toJSON(['token' => $token], 200);
        }

        (new View())->toJSON(['message' => 'Unauthorized'], 401);
    }

    public function addWorker(Request $request)
    {
        if ($request->method === 'POST') {
                $validator = new Validator($request->all(), [
                    'role_id' => [],
                    'surname' => ['required'],
                    'name' => ['required'],
                    'patronymic' => [],
                    'nickname' => ['required', 'unique:users,nickname'],
                    'email' => ['required'],
                    'password' => ['required'],
                ], [
                    'required' => 'Поле :field пустое',
                    'unique' => 'Поле :field должно быть уникальным',
                ]);

        if ($validator->fails()) {
                (new View())->toJSON(['message' => $validator->errors()], 422);
            }

        if (User::create($request->all())) {
                (new View())->toJSON(['message' => "Worker added"], 200);
            }
        }
    }


}
