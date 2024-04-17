<?php

use Model\User;
use PHPUnit\Framework\TestCase;

class SiteTest extends TestCase
{

    #[DataProvider('additionProvider')]
    public function testSignup(string $httpMethod, array $userData, string $message): void
    {
        if ($userData['nickname'] === 'admin') {
            $userData['nickname'] = User::get()->first()->nickname;
        }

        $request = $this->createMock(\Src\Request::class);
        $request->expects($this->any())
            ->method('all')
            ->willReturn($userData);
        $request->method = $httpMethod;

        $result = (new \Controller\Site())->workspace_admin($request);

        if (!empty($result)) {
            $message = '/' . preg_quote($message, '/') . '/';
            $this->expectOutputRegex($message);
            return;
        }

        $this->assertTrue((bool)User::where('nickname', $userData['nickname'])->count());
        User::where('nickname', $userData['nickname'])->delete();

    }


    public static function additionProvider(): array
    {
        return [
            ['GET', ['nickname' => '', 'password' => '', 'email' => '', 'surname' => '', 'name' => '', 'patronymic' => ''],
                '<h3></h3>'
            ],
            ['POST', ['nickname' => '', 'password' => '', 'email' => '', 'surname' => '', 'name' => '', 'patronymic' => ''],
                '<h3>{"nickname":["Поле nickname пусто"],"password":["Поле password пусто"],"email":["Поле email пусто"], 
                "surname":["Поле surname пусто"], "name":["Поле name пусто"], "patronymic":["Поле patronymic пусто"]}</h3>',
            ],
            ['POST', ['nickname' => 'admin', 'password' => 'admin2', 'email' => 'admin2@gmail.com',
                'surname' => 'Иванов', 'name' => 'Иван', 'patronymic' => 'Иванович'],
                '<h3>{"nickname":["Поле nickname должно быть уникально"]}</h3>',
            ],
        ];
    }

    protected function setUp(): void
    {

        $_SERVER['DOCUMENT_ROOT'] = '/C:/xampp/htdocs/backend_practice';

   
       $GLOBALS['app'] = new Src\Application(new Src\Settings([
           'app' => include $_SERVER['DOCUMENT_ROOT'] . '/../backend_practice/config/app.php',
           'db' => include $_SERVER['DOCUMENT_ROOT'] . '/../backend_practice/config/db.php',
           'path' => include $_SERVER['DOCUMENT_ROOT'] . '/../backend_practice/config/path.php',
       ]));

       if (!function_exists('app')) {
           function app()
           {
               return $GLOBALS['app'];
           }
       }
    }

}