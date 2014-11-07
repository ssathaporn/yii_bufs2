<!-- location -->
<div id="location">
    <a href="<?php echo Yii::app()->request->baseUrl; ?>"><span class="lohome"></span> หน้าหลัก</a>
    <span class="no lobul">></span>
    <a href="index.php?r=job"> ข้อมูลงาน</a>
    <span class="no lobul">></span>
    <a href="index.php?r=job"> หาบุคลากร</a>
</div>
<!-- location -->

<div id="jobFormBox">
    <div class="contArea">
        <div class="jobForm-header">
            <h2>ยินดีต้อนรับเข้าสู่ระบบ <span class="txt_orange">ค้นหาบุคลากร</span></h2>
        </div>

        <div class="jobForm-wrap">
            <p class="jobForm-searchHeader">ค้นหา</p>
            <div id="jobSearchBox">
                <?php
                echo CHtml::beginForm('', 'post', array(
                    'id' => 'frm_search'
                ));
                ?>

                <?php echo CHtml::errorSummary($model); ?>

                <dl>
                    <dt><?php echo CHtml::activeLabel($model, 'sl_position'); ?></dt>
                    <dd><?php echo CHtml::activeDropDownList($model, 'sl_position', CHtml::listData($position, 'id', 'position_th_name'), array('empty' => 'ตำแหน่งงานทั้งหมด')); ?></dd>
                </dl>

                <dl>
                    <dt><?php echo CHtml::activeLabel($model, 'sl_nationality'); ?></dt>
                    <dd><?php echo CHtml::activeDropDownList($model, 'sl_nationality', array('' => 'สัญชาติทั้งหมด', 'th' => 'ไทย', 'ke' => 'เกาหลี')); ?></dd>
                </dl>  

                <dl>
                    <dt><?php echo CHtml::activeLabel($model, 'sl_education'); ?></dt>
                    <dd><?php echo CHtml::activeDropDownList($model, 'sl_education', CHtml::listData($education, 'id', 'education_th_name'), array('empty' => 'ระดับการศึกษาทั้งหมด')); ?></dd>
                </dl>               

                <dl>
                    <dt class="dt_age"><?php echo CHtml::activeLabel($model, 'sl_age'); ?></dt>
                    <dd class="dd_age"><?php echo CHtml::activeDropDownList($model, 'sl_age', array('' => 'ไม่จำกัด', '18-25' => '18-25', '26-30' => '26-30', '31-35' => '31-35')); ?></dd>
                    <dt class="dt_gender"><?php echo CHtml::activeLabel($model, 'sl_gender'); ?></dt>
                    <dd class="dd_gender"><?php echo CHtml::activeDropDownList($model, 'sl_gender', array('' => 'ทุกเพศ', 'male' => 'ผู้ชาย', 'female' => 'ผู้หญิง')); ?></dd>
                </dl>                  

                <dl>
                    <dt><?php echo CHtml::activeLabel($model, 'sl_branch'); ?></dt>
                    <dd><?php echo CHtml::activeDropDownList($model, 'sl_branch', CHtml::listData($branchs, 'id', 'branch_th_name'), array('empty' => 'สาขาวิชาทั้งหมด')); ?></dd>
                </dl>               

                <dl>
                    <dt><?php echo CHtml::activeLabel($model, 'sl_language'); ?></dt>
                    <dd><?php echo CHtml::activeDropDownList($model, 'sl_language', array('' => 'ไม่ระบุ', 'th' => 'ภาษาไทย', 'kr' => 'ภาษาเกาหลี')); ?></dd>
                </dl>

                <?php echo CHtml::submitButton('ค้นหา', array('class' => 'submit')); ?>        
                <?php echo CHtml::endForm(); ?>
            </div>
        </div>

        <img src="<?php echo Yii::app()->baseUrl . '/images/job/job_img2.png' ?>">
    </div>
</div>
