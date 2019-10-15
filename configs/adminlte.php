<?php

return [
    'modules' => [
        'admin' => [
            'class' => 'yiiapps\adminlte\Module',
            'layout' => 'main',
            'menus' => [], //详见 mdmsoft/yii2-admin
        ],
    ],
    'aliases' => [
        '@yiiapps/adminlte' => '@vendor/yiiapps/adminlte-asset-ext',
    ],
    'components' => [
        'user' => [
            'identityClass' => 'mdm\admin\models\User',
            'loginUrl' => ['site/login'],
            'enableAutoLogin' => false,
        ],
        'authManager' => [
            'class' => 'yiiapps\adminlte\DbManager',
            'itemTable' => 'admin_auth_item',
            'itemChildTable' => 'admin_auth_item_child',
            'assignmentTable' => 'admin_auth_assignment',
            'ruleTable' => 'admin_auth_rule',
        ],
    ],
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
        'allowActions' => [
            'gii/*',
            'admin/user/login',
        ],
    ],
    'params' => [
        'mdm.admin.configs' => [
            'userTable' => 'admin_users',
            'menuTable' => 'admin_menus',
            'defaultUserStatus' => 10, // 0 = inactive, 10 = active
        ],
    ],
];
