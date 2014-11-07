<!-- location -->
<div id="location">
    <a href="<?php echo Yii::app()->request->baseUrl; ?>"><span class="lohome"></span> หน้าหลัก</a>
    <span class="no lobul">></span>
    <a href="index.php?r=contact"> ติดต่อเรา</a>
</div>
<!-- location -->

<div id="content_text">
    <div id="contentTitle">
        <h2>ติดต่อเรา</h2>
    </div>

    <div class="contArea">
        <img src="<?php echo Yii::app()->request->baseUrl."/images/contact/contact_img1.png"; ?>">
        <img src="<?php echo Yii::app()->request->baseUrl."/images/contact/contact_img2.png"; ?>">
        <!--<div id="contactFormBox">
            <?php
            $form = $this->beginWidget('CActiveForm', array(
                'id' => 'contact-form',
                'enableAjaxValidation' => true,
            ));
            ?>

            <?php echo $form->errorSummary($model); ?>

            <dl>
                <dt><?php echo CHtml::activeLabel($model, 'name'); ?></dt>
                <dd><?php echo CHtml::activeTextField($model, 'name') ?></dd>
            </dl>
            <dl>
                <dt><?php echo CHtml::activeLabel($model, 'tel'); ?></dt>
                <dd><?php echo CHtml::activeTextField($model, 'tel') ?></dd>
            </dl>
            <dl>
                <dt><?php echo CHtml::activeLabel($model, 'email'); ?></dt>
                <dd><?php echo CHtml::activeEmailField($model, 'email') ?></dd>
            </dl>
            <dl>
                <dt><?php echo CHtml::activeLabel($model, 'title'); ?></dt>
                <dd><?php echo CHtml::activeTextField($model, 'title') ?></dd>
            </dl>
            <dl>
                <dt><?php echo CHtml::activeLabel($model, 'message'); ?></dt>
                <dd><?php echo CHtml::activeTextArea($model, 'message') ?></dd>
            </dl>

            <?php echo CHtml::submitButton('send') ?>

            <?php $this->endWidget(); ?>          
        </div> -->
    </div>
</div>