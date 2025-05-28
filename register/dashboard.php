<?php include('refresh.php'); ?>
<?php  include('header.php'); ?>
<?php  include('../session.php'); ?>

<style>
    .progress-bar-wrapper {
        margin-top: 20px;
        position: relative;
    }

    progress {
        width: 100%;
        height: 45px;
        border-radius: 5px;
        background-color: #f0f0f0;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
    }

    progress::-webkit-progress-bar {
        background-color: #f0f0f0;
        border-radius: 5px;
    }

    progress::-webkit-progress-value {
        background-color: #4caf50;
        border-radius: 5px;
    }

    progress::-moz-progress-bar {
        background-color: #4caf50;
        border-radius: 5px;
    }

    .progress-count {
        position: absolute;
        top: 20%;
        left: 50%;
        transform: translateX(-50%);
        font-weight: bold;
        color: #333;
        line-height: 30px;
    }

    .chart-bottom-heading {
        margin-top: 20px;
        text-align: center;
    }
</style>

    <body >
		<?php include('navbar.php') ?>
        <div class="container-fluid">
            <div class="row-fluid" >
					<?php include('sidebar_dashboard.php'); ?>
                <!--/span-->
                <div class="span9" id="content">
						<div class="row-fluid"></div>
						
                    <div class="row-fluid">
            
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">STATISTICS</div>
                            </div>
                            <div class="block-content collapse in">
							        <div class="span12">
						
									<?php 
$query1 = mysqli_query($conn,"select * from file") or die(mysqli_error());
$count1 = mysqli_num_rows($query1);
?>

<div class="span3">
    <div class="progress-bar-wrapper">
        <progress max="100" value="<?php echo $count1; ?>"></progress>
        <div class="progress-count"><?php echo $count1; ?></div>
    </div>
    <div class="chart-bottom-heading"><strong>FILES</strong></div>
</div>

<?php 
$query2 = mysqli_query($conn,"select * from borrow_request where status='not_confirmed'") or die(mysqli_error());
$count2 = mysqli_num_rows($query2);
?>

<div class="span3">
    <div class="progress-bar-wrapper">
        <progress max="100" value="<?php echo $count2; ?>"></progress>
        <div class="progress-count"><?php echo $count2; ?></div>
    </div>
    <div class="chart-bottom-heading"><strong>BORROW REQUESTS</strong></div>
</div>

<?php 
$query3 = mysqli_query($conn,"select * from return_request where status='not_confirmed'") or die(mysqli_error());
$count3 = mysqli_num_rows($query3);
?>

<div class="span3">
    <div class="progress-bar-wrapper">
        <progress max="100" value="<?php echo $count3; ?>"></progress>
        <div class="progress-count"><?php echo $count3; ?></div>
    </div>
    <div class="chart-bottom-heading"><strong>RETURN REQUESTS</strong></div>
</div>

<?php 
$query4 = mysqli_query($conn,"select * from file where status='borrowed'") or die(mysqli_error());
$count4 = mysqli_num_rows($query4);
?>

<div class="span3">
    <div class="progress-bar-wrapper">
        <progress max="100" value="<?php echo $count4; ?>"></progress>
        <div class="progress-count"><?php echo $count4; ?></div>
    </div>
    <div class="chart-bottom-heading"><strong>BORROWED FILES</strong></div>
</div>

<?php 
$query5 = mysqli_query($conn,"select * from file where status = 'returned'") or die(mysqli_error());
$count5 = mysqli_num_rows($query5);
?>

<div class="span3">
    <div class="progress-bar-wrapper">
        <progress max="100" value="<?php echo $count5; ?>"></progress>
        <div class="progress-count"><?php echo $count5; ?></div>
    </div>
    <div class="chart-bottom-heading"><strong>FREE FILES</strong></div>
</div>
                                </div>
											
											
						
                            </div>
                        </div>
                        <!-- /block -->
						
                    </div>
                    </div>
                
                </div>
            </div>
    
         <?php include('footer.php'); ?>
        </div>
	<?php include('script.php'); ?>
    </body>

</html>