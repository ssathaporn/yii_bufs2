<div id="top_bar">
    <div class="wrap">
        <ul class="language-menu">
            <li>เลือกภาษา</li>
            <li>|</li>
            <li><a href="<?php echo Yii::app()->controller->createUrl('Site/SwitchLanguage', array('language' => 'th')) ?>"><img src="<?php echo Yii::app()->request->baseUrl . "/images/language/flag_thai.png" ?>"></a></li>
            <li><a href="<?php echo Yii::app()->controller->createUrl('Site/SwitchLanguage', array('language' => 'ko_KR')) ?>"><img src="<?php echo Yii::app()->request->baseUrl . "/images/language/flag_korea.jpg" ?>"></a></li>           
        </ul>
    </div>
</div>

<div id="header">
    <div class="header">
        <div class="logo">
            <a href="<?php echo Yii::app()->request->baseUrl ?>"><img src="<?php echo Yii::app()->request->baseUrl . "/images/logo.jpg" ?>"></a>
        </div>
    </div>
    <div id="gnb_wrap">
        <ul id="gnb">
            <li class="sub1">
                <a href="<?php echo Yii::app()->request->baseUrl; ?>">หน้าหลัก</a>
            </li>
            <li class="sub2">
                <a href="index.php?r=intro">เกี่ยวกับBUFS</a>
                <ul id="sub2" class="type_b">
                    <li><a href="index.php?r=intro/president">สารจากอธิการบดี</a></li>
                    <li><a href="index.php?r=intro/presidentchart">อดีตอธิการบดี</a></li>
                    <li><a href="index.php?r=intro">ปรัชญาและเป้าหมายของมหาวิทยาลัย</a></li>
                    <li><a href="index.php?r=intro/purpose">วัตถุประสงค์และกลยุทธ</a></li>
                    <li><a href="index.php?r=intro/targetcharacter">ลักษณะเป้าหมาย</a></li>
                    <li><a href="http://www.bufs.ac.kr/html/01_intro/intro_02_06.aspx">สัญลักษณ์</a></li>
                    <li><a href="index.php?r=intro/history">ประวัติความเป็นมา</a></li>
                    <li><a href="index.php?r=intro/orzchart">ผังการบริหาร</a></li>
                    <li><a href="index.php?r=intro/routemap">เส้นทางการเดินทาง</a></li>
                </ul>
            </li>
            <li class="sub3">
                <a href="index.php?r=vision">วิสัยทัศน์การศึกษา</a>
                <ul id="sub3" class="type_b">
                    <li><a href="index.php?r=vision">วิสัยทัศน์การศึกษา</a></li>
                    <li><a href="index.php?r=vision/studentexchange">โครงการแลกเปลี่ยนนักศึกษา</a></li>
                    <li><a href="index.php?r=vision/campusnamsadong">วิทยาเขตนัมซาดง</a></li>
                    <li><a href="index.php?r=vision/internationalteacher">คณาจารย์ผู้เชี่ยวชาญระดับสากล</a></li>
                    <li><a href="index.php?r=vision/associate">หน่วยงานสมทบ</a></li>
                    <li><a href="index.php?r=vision/intertnationalresearch">ศูนย์วิจัยภาคนานาชาติศึกษาแลัวัฒนธรรมศึกษา</a></li>
                </ul>
            </li>
            <li class="sub4">
                <a href="index.php?r=course">หลักสูตรการศึกษา</a>
                <ul id="sub4" class="type_b">
                    <li><a href="index.php?r=course">สำหรับนักเรียนไทย</a></li>
                    <li><a href="index.php?r=course/coursekoreanstudent">สำหรับนักเรียนเกาหลี</a></li>
                </ul>
            </li>
            <li class="sub5">
                <a href="index.php?r=job">ข้อมูลงาน</a>
                <ul id="sub5" class="type_b">
                    <li><a href="index.php?r=job">หาบุคลากร</a></li>
                    <li><a href="index.php?r=job/agreement">นโยบายและข้อตกลง</a></li>
                </ul>
            </li>
            <li class="sub6">
                <a href="index.php?r=community">ชุมชน</a>
                <ul id="sub6" class="type_b">
                    <li><a href="index.php?r=community">ประกาศ</a></li>
                    <li><a href="index.php?r=community/publicrelation">ประชาสัมพันธ์</a></li>
                    <li><a href="index.php?r=community/qna">Q&A</a></li>
                </ul>
            </li>
            <li class="sub7">
                <a href="index.php?r=contact">ติดต่อเรา</a>
            </li>  
        </ul>
    </div>
</div>

