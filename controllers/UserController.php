<?php

namespace yiiexttbq\adminlte\controllers;

use mdm\admin\models\form\Signup;
use mdm\admin\models\User;
use yii\helpers\Url;
use yii\web\Controller;

/**
 * User controller
 */
class UserController extends \mdm\admin\controllers\UserController
{

    /**
     * Signup new user
     * @return string
     */
    public function actionSignup()
    {
        $model = new Signup();
        if ($model->load(\Yii::$app->getRequest()->post())) {
            if ($user = $model->signup()) {
                return $this->redirect(Url::to(['user/index']));
            }
        }

        return $this->render('signup', [
            'model' => $model,
        ]);
    }
}
