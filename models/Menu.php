<?php
namespace yiiapps\adminlte\models;

class Menu extends \mdm\admin\models\Menu
{
    public function rules()
    {
        return [
            [['name'], 'required'],
            [['parent_name'], 'in',
                'range' => static::find()->select(['name'])->column(),
                'message' => 'Menu "{value}" not found.'],
            [['parent', 'route', 'data', 'order'], 'default'],
            [['parent'], 'filterParent', 'when' => function () {
                return !$this->isNewRecord;
            }],
            [['order'], 'integer'],
            [['visible'], 'integer'],
            [['route'], 'in',
                'range' => static::getSavedRoutes(),
                'message' => 'Route "{value}" not found.'],
        ];
    }
}
