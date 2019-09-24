<?php
use yiiapps\adminlte\components\MenuHelper;
$menus = [
    // ['label' => 'Menu Yii2', 'options' => ['class' => 'header']],
    // ['label' => 'Gii', 'icon' => 'file-code-o', 'url' => ['/gii']],
    ['label' => '修改密码', 'icon' => 'file-code-o', 'url' => ['site/changePassword']],
    // ['label' => 'Debug', 'icon' => 'dashboard', 'url' => ['/debug']],
    // ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
];
$menus2 = MenuHelper::getAssignedMenu(Yii::$app->user->id);
foreach ($menus2 as $key => $value) {
    $value['icon'] = 'share';
    $value['url'] = '#';
    $menus2[$key] = $value;
}
$menus = array_merge($menus, $menus2);
// var_dump($menus);exit;
?>
<aside class="main-sidebar">
    <section class="sidebar">
        <?=yiiapps\adminlte\widgets\Menu::widget(
    [
        'options' => ['class' => 'sidebar-menu tree', 'data-widget' => 'tree'],
        'items' => $menus,
    ]
);?>

    </section>

</aside>
