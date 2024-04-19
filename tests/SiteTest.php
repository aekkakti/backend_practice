<?php

use Model\Building;
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

    }


    public static function additionProvider(): array
    {
        return [
            ['GET', ['surname' => '', 'name' => '', 'nickname' => '', 'email' => '', 'password' => ''],
                '<h3></h3>'
            ],
            ['POST', ['surname' => '', 'name' => '', 'nickname' => '', 'email' => '', 'password' => ''],
                '<h3>{"surname":["Поле surname пустое"],"name":["Поле name пустое"],"nickname":["Поле nickname пустое"],"email":["Поле email пустое"],"password":["Поле password пустое"]}</h3>',
            ],
            ['POST', ['role_id' => '2', 'surname' => 'Иванов', 'name' => 'Иван', 'patronymic' => 'Иванович',
                'nickname' => 'admin', 'email' => 'admin2@gmail.com', 'password' => 'admin2'],
                '<h3>{"nickname":["Поле nickname должно быть уникальным"]}</h3>',
            ],
            ['POST', ['role_id' => '2', 'surname' => 'Иванов', 'name' => 'Иван', 'patronymic' => 'Иванович',
                'nickname' => md5(time()), 'email' => 'admin3@gmail.com', 'password' => 'admin2'],
                '<h3></h3>'
            ],
        ];
    }

    #[DataProvider('createProvider')]
    public function testBuilding(string $httpMethod, array $buildingData, string $message): void
    {
        if ($buildingData['address_building'] === '123') {
            $buildingData['nickname'] = Building::get()->first()->address_building;
        }

        $request = $this->createMock(\Src\Request::class);
        $request->expects($this->any())
            ->method('all')
            ->willReturn($buildingData);
        $request->method = $httpMethod;

        $result = (new \Controller\Site())->workspace_worker($request);

        if (!empty($result)) {
            $message = '/' . preg_quote($message, '/') . '/';
            $this->expectOutputRegex($message);
            return;
        }

        $this->assertTrue((bool)Building::where('address_building', $buildingData['address_building'])->count());
        Building::where('address_building', $buildingData['address_building'])->delete();

    }


    public static function createProvider(): array
    {
        return [
            ['GET', ['name_building' => '', 'address_building' => ''],
                '<h3></h3>'
            ],
            ['POST', ['name_building' => '', 'address_building' => ''],
                '<h3>{"name_building":["Поле name_building пустое"],"address_building":["Поле address_building пустое"]}</h3>',
            ],
            ['POST', ['name_building' => '234', 'address_building' => '123'],
                '<h3>{"address_building":["Поле address_building должно быть уникальным"]}</h3>',
            ],
            ['POST', ['name_building' => '234', 'address_building' => md5(time())],
                '<h3></h3>'
            ],
        ];
    }


    protected function setUp(): void
    {

        $_SERVER['DOCUMENT_ROOT'] = '/srv/users/uupfacvi/dugtijn-m1';

        $GLOBALS['app'] = new Src\Application(new Src\Settings([
            'app' => include $_SERVER['DOCUMENT_ROOT'] . '/backend_practice/config/app.php',
            'db' => include $_SERVER['DOCUMENT_ROOT'] . '/backend_practice/config/db.php',
            'path' => include $_SERVER['DOCUMENT_ROOT'] . '/backend_practice/config/path.php',
        ]));

        if (!function_exists('app')) {
            function app()
            {
                return $GLOBALS['app'];
            }
        }
    }

}