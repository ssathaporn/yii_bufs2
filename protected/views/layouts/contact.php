<?php $this->beginContent('//layouts/main'); ?>
<div id="body_wrap_line"></div>

<div id="body_wrap">
    <div id="body_left">
        <div id="sidebar">
            <h2 class="sidetitle"><a href="index.php?r=contact">ติดต่อเรา</a></h2>
        </div>
    </div>

    <div id="body_content">
        <?php echo $content; ?>
    </div>
    <div id="clear_div"></div>
</div>

<?php $this->endContent(); ?>

<!-- Include Footer -->
<?php echo $this->renderPartial('//layouts/_footer'); ?>

<script>
    $(document).ready(function() {
        $('#body_wrap_line').css('background-image', 'url(<?php echo Yii::app()->request->baseUrl . "/images/intro/intro_linebg.jpg" ?>)');
    });
</script>
