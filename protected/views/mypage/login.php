<!-- location -->
<div id="location">
    <a href="<?php echo Yii::app()->request->baseUrl; ?>"><span class="lohome"></span> หน้าหลัก</a>
    <span class="no lobul">></span>
    <a href="index.php?r=mypage"> หน้าสมาชิก</a>
    <span class="no lobul">></span>
    <a href="index.php?r=mypage/login"> เข้าสู่ระบบ</a>
</div>
<!-- location -->

<div id="content_text">
    <div class="loginWrap">
        <h1><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_login.gif" ?>" alt="members login"></h1>
        <div class="login">
            <h2><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_headerlogin.png" ?>" alt="เข้าสู่ระบบ"></h2>
            <p><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_login2.png" ?>" alt="คุณสามารถเข้าถึงข้อมูลต่างๆ และตั้งกระทู้ตอบถามได้เพียงคุณล็อคอินเข้าสู่ระบบ"></p>
            <div class="loginBox">
                <dl>
                    <dt><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_username.png" ?>" alt="ชื่อผู้ใช้งาน"></dt>
                    <dd><input type="text" name="input_username" id="input_username"></dd>
                </dl>
                <dl>
                    <dt><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_password.png" ?>" alt="รหัสผ่าน"></dt>
                    <dd><input type="password" name="input_password" id="input_password"></dd>
                </dl>
                <span class="submit-login">
                    <input type="image" src="<?php echo Yii::app()->request->baseUrl . "/images/login/btn_login.png" ?>">
                </span>
                <ul>
                    <li><a href="index.php?r=mypage/register"><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_register.png" ?>" alt="สมัครสมาชิก"></a></li>
                    <li><a href="index.php?r=mypage/forgetpass"><img src="<?php echo Yii::app()->request->baseUrl . "/images/login/txt_forgetpass.png" ?>" alt="ลืมรหัสผ่าน"></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>