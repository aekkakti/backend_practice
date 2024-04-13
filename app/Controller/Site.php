<?php

namespace Controller;

use Src\Validator\Validator;
use Src\View;
use Src\Request;
use Model\User;
use Model\Building;
use Src\Auth\Auth;
class Site
{
    public function hello()
    {
        return (new View())->render('site.hello',['message' => 'Сайт для работы с учебно-методическим управлением, перейдите в профиль для работы']);
    }

    public function profile(Request $request): string
    {
        return (new View())->render('site.profile');
    }

    public function workspace_admin(Request $request): string {

        if ($request->method === 'POST') {
            $validator = new Validator($request->all(), [
                'role_id' => [],
                'surname' => ['required'],
                'name' => ['required'],
                'patronymic' => [],
                'nickname' => ['required', 'unique:users,nickname'],
                'email' => ['required'],
                'password' => ['required'],
                'avatar' => []
            ], [
                'required' => 'Поле :field пустое',
                'unique' => 'Поле :field должно быть уникальным',
            ]);

            var_dump($validator->errors());

            if ($validator->fails()) {
                return new View('site.workspace',
                    ['message' => $validator->errors(), JSON_UNESCAPED_UNICODE]);
            }

            if (User::create($request->all())) {
                app()->route->redirect('/profile');
            }
        }

        $allWorkers = User::all();


        return (new View())->render('site.workspace', ['allWorkers' => $allWorkers]);
    }

    public function login(Request $request): string
    {
        if ($request->method === 'GET') {
            return new View('site.login');
        }
        if (Auth::attempt($request->all())) {
            app()->route->redirect('/profile');
        }
        return new View('site.login', ['message' => 'Неправильные логин или пароль']);
    }

    public function logout(): void
    {
        Auth::logout();
        app()->route->redirect('/');
    }

    public function room()
    {
        return (new View())->render('site.room');
    }

    public function workspace_worker(Request $request):string
    {
        if ($request->method === 'POST') {
            $validator = new Validator($request->all(), [
                'name' => ['required'],
                'address' => ['required'],
            ], [
                'required' => 'Поле :field пустое',
            ]);

            var_dump($validator->errors());

            if ($validator->fails()) {
                return new View('site.workspace',
                    ['message' => $validator->errors(), JSON_UNESCAPED_UNICODE]);
            }

            if (Building::create($request->all())) {
                app()->route->redirect('/profile');
            }
        }

        $allBuildings = Building::all();

        return (new View())->render('site.workspace',['allBuildings' => $allBuildings]);
    }


}