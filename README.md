basic模版安装方式
php composer.phar create-project --prefer-dist --stability=dev yiisoft/yii2-app-basic [项目名称]

安装
composer require yiiapps/adminlte-asset-ext
php init

配置
在config/web.php 中加入:
$config['modules']['admin'] = [
    'class' => 'yiiapps\adminlte\Module',
    'layout' => 'main',
    'menus' => [], //详见 mdmsoft/yii2-admin
];
$config['aliases']['@yiiapps/adminlte'] = '@vendor/yiiapps/adminlte-asset-ext';
$config['components']['user'] = [
    'identityClass' => 'mdm\admin\models\User',
    'loginUrl' => ['admin/user/login'],
    'enableAutoLogin' => false,
];
$config['components']['authManager'] = [
    'class' => 'yii\rbac\DbManager',
];
$config['as access'] = [
    'class' => 'mdm\admin\components\AccessControl',
    'allowActions' => [
        'site/*',
    ],
];

设置数据库
参考yii文档
导入190523.sql文件

测试:
登录: http://domain/admin/user/login
username: admin  pw: 111111