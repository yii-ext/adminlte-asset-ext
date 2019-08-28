<?php
use yiiapps\adminlte\components\MenuHelper;
$menus = [
    ['label' => 'Menu Yii2', 'options' => ['class' => 'header']],
    ['label' => 'Gii', 'icon' => 'file-code-o', 'url' => ['/gii']],
    ['label' => 'Debug', 'icon' => 'dashboard', 'url' => ['/debug']],
    ['label' => 'Login', 'url' => ['site/login'], 'visible' => Yii::$app->user->isGuest],
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
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<?=$directoryAsset;?>/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p>Alexander Pierce</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>
        <!-- /.search form -->

        <?=yiiapps\adminlte\widgets\Menu::widget(
    [
        'options' => ['class' => 'sidebar-menu tree', 'data-widget' => 'tree'],
        'items' => $menus,
    ]
);?>

    </section>

</aside>
