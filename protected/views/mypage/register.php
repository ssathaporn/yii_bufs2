<!-- location -->
<div id="location">
    <a href="<?php echo Yii::app()->request->baseUrl; ?>"><span class="lohome"></span> หน้าหลัก</a>
    <span class="no lobul">></span>
    <a href="index.php?r=mypage"> หน้าสมาชิก</a>
    <span class="no lobul">></span>
    <a href="index.php?r=mypage/register"> สมัครสมาชิก</a>
</div>
<!-- location -->

<div id="content_text">
    <?php if (Yii::app()->user->hasFlash('success')): ?>
        <div class="alert alert-success">
            <?php echo Yii::app()->user->getFlash('success'); ?>
        </div>
    <?php else : ?>
        <div class="registerBox">
            <?php
            $form = $this->beginWidget('CActiveForm', array(
                'id' => 'register-form',
                'enableAjaxValidation' => true,
                'enableClientValidation' => true,
                'errorMessageCssClass' => 'txt_red'
            ));
            ?>
            <?php echo $form->errorSummary($model); ?>
            <table class="tbl_register">
                <tr>
                    <td class="title"><?php echo $form->label($model, 'local_fname'); ?></td>
                    <td>            
                        <?php echo $form->textField($model, 'local_fname'); ?>
                        <?php echo $form->error($model, 'local_fname'); ?>
                    </td>
                    <td class="title"><?php echo $form->label($model, 'local_lname'); ?></td>
                    <td>
                        <?php echo $form->textField($model, 'local_lname'); ?>
                        <?php echo $form->error($model, 'local_lname'); ?>
                    </td>              
                </tr>
                <tr>
                    <td class="title"><?php echo $form->label($model, 'en_fname'); ?></td>
                    <td>            
                        <?php echo $form->textField($model, 'en_fname'); ?>
                        <?php echo $form->error($model, 'en_fname'); ?>
                    </td>
                    <td class="title"><?php echo $form->label($model, 'en_lname'); ?></td>
                    <td>
                        <?php echo $form->textField($model, 'en_lname'); ?>
                        <?php echo $form->error($model, 'en_lname'); ?>
                    </td>              
                </tr>
                <tr>
                    <td class="title"><?php echo $form->label($model, 'gender'); ?></td>
                    <td>            
                        <?php echo $form->radioButtonList($model, 'gender', array('male' => 'ชาย', 'female' => 'หญิง'), array('separator' => '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;')); ?>
                        <?php echo $form->error($model, 'gender'); ?>
                    </td>
                    <td class="title"><?php echo $form->label($model, 'nationality'); ?></td>
                    <td>            
                        <?php echo $form->radioButtonList($model, 'nationality', array('th' => 'ไทย', 'kr' => 'เกาหลี'), array('separator' => '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;')); ?>
                        <?php echo $form->error($model, 'nationality'); ?>
                    </td>                
                </tr>
                <tr>
                    <td class="title"><?php echo $form->label($model, 'birthday'); ?></td>
                    <td colspan="3">
                        <?php
                        $this->widget('zii.widgets.jui.CJuiDatePicker', array(
                            'model' => $model,
                            'name' => 'birthday',
                            'language' => 'th',
                            'options' => array(
                                'yearRange' => '-50:+0',
                                'dateFormat' => 'yy-mm-dd',
                                'changeYear' => true,
                                'changeMonth' => true
                            ),
                            'htmlOptions' => array(
                                'style' => 'width: 175px'
                            )
                        ));
                        ?>
                        <?php echo $form->error($model, 'birthday'); ?>
                    </td>           
                </tr>

                <tr class="user">
                    <td class="title"><?php echo $form->label($model, 'username'); ?></td>
                    <td>            
                        <?php echo $form->textField($model, 'username'); ?>
                        <?php echo $form->error($model, 'username'); ?>
                    </td>
                    <td class="title"><?php echo $form->label($model, 'password'); ?></td>
                    <td>
                        <?php echo $form->passwordField($model, 'password'); ?>
                        <?php echo $form->error($model, 'password'); ?>
                    </td>              
                </tr>
                <tr>
                    <td class="title"><?php echo $form->label($model, 'email'); ?></td>
                    <td>            
                        <?php echo $form->emailField($model, 'email'); ?>
                        <?php echo $form->error($model, 'email'); ?>
                    </td> 
                    <td class="title"><?php echo $form->label($model, 'telephone'); ?></td>
                    <td>            
                        <?php echo $form->textField($model, 'telephone'); ?>
                        <?php echo $form->error($model, 'telephone'); ?>
                    </td> 
                </tr>  
            </table>

            <dl>
                <dt class="tc"><?php echo CHtml::submitButton('สมัครสมาชิก'); ?></dt>
            </dl>
            <?php $this->endWidget(); ?>
        </div>
    <?php endif; ?>
</div>