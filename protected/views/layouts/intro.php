<?php $this->beginContent('//layouts/main'); ?>
<div id="body_wrap_line"></div>

<div id="body_wrap">
    <div id="body_left">
        <div id="sidebar">
            <h2 class="sidetitle"><a href="index.php?r=intro">เกี่ยวกับBUFS</a></h2>
            <div id="sidemeu">
                <ul>
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
            </div>
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
