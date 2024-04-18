<?php

use Model\User;
use PHPUnit\Framework\TestCase;
use PHPUnit\Framework\Attributes\DataProvider;

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

        $this->assertContains($message, xdebug_get_headers());
    }


    public static function additionProvider(): array
    {
        return [
            ['GET', ['surname' => '', 'name' => '', 'patronymic' => '', 'nickname' => '', 'email' => '', 'password' => ''],
                '<h3></h3>'
            ],
            ['POST', ['surname' => '', 'name' => '', 'patronymic' => '', 'nickname' => '', 'email' => '', 'password' => ''],
                '<h3>{"surname":["Поле surname пусто"],"name":["Поле name пусто"],"patronymic":["Поле patronymic пусто"], 
                "nickname":["Поле nickname пусто"], "email":["Поле email пусто"], "password":["Поле password пусто"]}</h3>',
            ],
            ['POST', ['role_id' => '2', 'surname' => 'Иванов', 'name' => 'Иван', 'patronymic' => 'Иванович',
                'nickname' => 'admin2', 'email' => 'admin2@gmail.com', 'password' => 'admin2'],
                '<h3>{"nickname":["Поле nickname должно быть уникально"]}</h3>',
            ],
            ['POST', ['role_id' => '2', 'surname' => 'Иванов', 'name' => 'Иван', 'patronymic' => 'Иванович',
                'nickname' => md5(time()), 'email' => 'admin3@gmail.com', 'password' => 'admin2'],
                'Location: /backend_practice/views/site/workspace',
            ],
        ];
    }


    protected function setUp(): void
    {

        $_SERVER['DOCUMENT_ROOT'] = 'C:/xampp/htdocs/backend_practice';


       $GLOBALS['app'] = new Src\Application(new Src\Settings([
           'app' => include $_SERVER['DOCUMENT_ROOT'] . '/config/app.php',
           'db' => include $_SERVER['DOCUMENT_ROOT'] . '/config/db.php',
           'path' => include $_SERVER['DOCUMENT_ROOT'] . '/config/path.php',
       ]));

       if (!function_exists('app')) {
           function app()
           {
               return $GLOBALS['app'];
           }
       }
    }

}