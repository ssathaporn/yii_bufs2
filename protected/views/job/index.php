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
                echo CHtml::beginForm('', 'get', array(
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
                    <dd><?php echo CHtml::activeDropDownList($model, 'sl_nationality', CHtml::listData($nationality, 'id', 'nation_th_name'), array('empty' => 'สัญชาติทั้งหมด')); ?></dd>
                </dl>  

                <dl>
                    <dt><?php echo CHtml::activeLabel($model, 'sl_degree'); ?></dt>
                    <dd><?php echo CHtml::activeDropDownList($model, 'sl_degree', CHtml::listData($degree, 'id', 'degree_th_name'), array('empty' => 'ระดับการศึกษาทั้งหมด')); ?></dd>
                </dl>               

                <dl>
                    <dt class="dt_age"><?php echo CHtml::activeLabel($model, 'sl_age'); ?></dt>
                    <dd class="dd_age"><?php echo CHtml::activeDropDownList($model, 'sl_age', array('' => 'ไม่จำกัด', '1' => '18-25', '2' => '26-30', '3' => '31-35', '4' => 'มากกว่า 35 ปี')); ?></dd>
                    <dt class="dt_gender"><?php echo CHtml::activeLabel($model, 'sl_gender'); ?></dt>
                    <dd class="dd_gender"><?php echo CHtml::activeDropDownList($model, 'sl_gender', array('' => 'ทุกเพศ', 'male' => 'ผู้ชาย', 'female' => 'ผู้หญิง')); ?></dd>
                </dl>                  

                <dl>
                    <dt><?php echo CHtml::activeLabel($model, 'sl_category'); ?></dt>
                    <dd><?php echo CHtml::activeDropDownList($model, 'sl_category', CHtml::listData($category, 'id', 'category_th_name'), array('empty' => 'สาขาวิชาทั้งหมด')); ?></dd>
                </dl>               

                <dl>
                    <dt><?php echo CHtml::activeLabel($model, 'sl_language'); ?></dt>
                    <dd><?php echo CHtml::activeDropDownList($model, 'sl_language', CHtml::listData($language, 'id', 'language_th_name'), array('empty' => 'ไม่ระบุ')); ?></dd>
                </dl>

                <?php echo CHtml::submitButton('ค้นหา', array('class' => 'submit')); ?>        
                <?php echo CHtml::endForm(); ?>
            </div>
        </div>

        <?php foreach ($results as $result): ?>
            <?php
            $interest_position = "";
            if ($result->interest_position1 != '') {
                $interest_position .= $result->interest_position1;
            }
            if ($result->interest_position2 != '') {
                $interest_position .= ", " . $result->interest_position2;
            }
            if ($result->interest_position3 != '') {
                $interest_position .= ", " . $result->interest_position2;
            }

            $language = "";
            if ($result->language1 != '') {
                $language .= $result->lang1->language_th_name;
            }
            if ($result->language2 != '') {
                $language .= ', ' . $result->lang2->language_th_name;
            }
            ?>
            <div class="jobResult-wrap">
                <div class="jobResult-image">
                    <?php if ($result->gender == 'male'): ?>
                        <img src="<?php echo Yii::app()->request->baseUrl . "/images/blank_male.jpg" ?>">
                    <?php else : ?>
                        <img src="<?php echo Yii::app()->request->baseUrl . "/images/blank_female.jpg" ?>">
                    <?php endif; ?>
                </div>
                <div class="jobResult-description">
                    <p class="title-position">
                        ตำแหน่งงานที่สนใจ : <?php echo $interest_position; ?>
                    </p>
                    <ul>
                        <li>สัญชาติ : <?php echo $result->nation->nation_th_name; ?></li>
                        <li>อายุ : <?php echo $result->age . " ปี" ?></li>                            
                    </ul>
                    <ul>
                        <li>วุฒิการศึกษา : <?php echo $result->edu->degree_th_name ?></li>
                        <li>สาขา : <?php echo $result->edu_cate->category_th_name ?></li>
                    </ul>
                    <ul class="language">
                        <li>ความสามารถด้านภาษา : <?php echo $language; ?></li>
                    </ul>
                </div>
            </div>
        <?php endforeach; ?>

        <div class='pagi'>
            <?php
            $this->widget('CLinkPager', array(
                'pages' => $pages,
                'header' => false,
                'cssFile' => Yii::app()->request->baseUrl . "/css/main.css",
            ));
            ?>
        </div>

    </div>
</div>
