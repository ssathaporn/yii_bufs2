<!-- location -->
<div id="location">
    <a href="<?php echo Yii::app()->request->baseUrl; ?>"><span class="lohome"></span> หน้าหลัก</a>
    <span class="no lobul">></span>
    <a href="index.php?r=mypage"> หน้าสมาชิก</a>
    <span class="no lobul">></span>
    <a href="index.php?r=mypage/login"> เข้าสู่ระบบ</a>
</div>
<!-- location -->

<?php
echo "<pre>";
print_r($_POST);
echo "</pre>";
?>

<div id="content_text">
    <div class="loginWrap">
        <h1><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_login.gif" ?>" alt="members login"></h1>
        <div class="login">
            <h2><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_headerlogin.png" ?>" alt="เข้าสู่ระบบ"></h2>
            <p><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_login2.png" ?>" alt="คุณสามารถเข้าถึงข้อมูลต่างๆ และตั้งกระทู้ตอบถามได้เพียงคุณล็อคอินเข้าสู่ระบบ"></p>  
            <div class="loginBox">
                <?php
                $form = $this->beginWidget('CActiveForm', array(
                    'id' => 'login-form',
                    'enableClientValidation' => true,
                    'clientOptions' => array(
                        'validateOnSubmit' => true,
                    ),
                    'errorMessageCssClass' => 'txt_red'
                ));
                ?>
                <dl>
                    <dt><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_username.png" ?>" alt="ชื่อผู้ใช้งาน"></dt>
                    <dd>
                        <?php echo $form->textField($model, 'username'); ?>
                        <?php echo $form->error($model, 'username'); ?> 
                    </dd>
                </dl>
                <dl>
                    <dt><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_password.png" ?>" alt="รหัสผ่าน"></dt>
                    <dd>
                        <?php echo $form->passwordField($model, 'password'); ?>
                        <?php echo $form->error($model, 'password'); ?>
                    </dd>
                </dl>

                <?php echo CHtml::submitButton('Login', array('class' => 'submit-login')); ?>  

                <ul>
                    <li><a href="index.php?r=mypage/register"><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_register.png" ?>" alt="สมัครสมาชิก"></a></li>
                    <li><a href="index.php?r=mypage/forgetpass"><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_forgetpass.png" ?>" alt="ลืมรหัสผ่าน"></a></li>
                </ul>
                <?php $this->endWidget(); ?>
            </div>
        </div>
    </div>
</div>