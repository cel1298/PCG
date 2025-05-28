<?php include('refresh.php'); ?>
<?php  include('header.php'); ?>
<?php  include('../session.php'); ?>
    <body>
		<?php include('navbar.php') ?>
        <div class="container-fluid">
            <div class="row-fluid">
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
								$query = mysqli_query($conn,"select * from borrow where employee_number='$empno' and file_status = 'borrowed' ")or die(mysqli_error());
								$count = mysqli_num_rows($query);
								?>
								
                                <div class="span3">
                                    <!-- Pie chart code commented out -->
                                    <!-- <div class="chart" data-percent="<?php echo $count; ?>"><?php echo $count; ?></div> -->
                                    
                                    <!-- Progress bar added -->
                                    <div class="progress-bar-wrapper">
                                        <progress value="<?php echo $count; ?>" max="100"><?php echo $count; ?></progress>
                                        <div class="progress-count"><?php echo $count; ?></div>
                                    </div>
                                    
                                    <div class="chart-bottom-heading"><strong>Files in Possesion</strong>
                                    </div>
                                </div>
								
								<?php 
								$query1 = mysqli_query($conn,"select * from borrow_request where employee_number='$empno' and status = 'not_confirmed'")or die(mysqli_error());
								$count1 = mysqli_num_rows($query1);
								?>
								
                                <div class="span3">
                                    <!-- Pie chart code commented out -->
                                    <!-- <div class="chart" data-percent="<?php echo $count1; ?>"><?php echo $count1; ?></div> -->
                                    
                                    <!-- Progress bar added -->
                                    <div class="progress-bar-wrapper">
                                        <progress value="<?php echo $count1; ?>" max="100"><?php echo $count1; ?></progress>
                                        <div class="progress-count"><?php echo $count1; ?></div>
                                    </div>
                                    <div class="chart-bottom-heading"><strong>Pending Borrow Requests</strong>
                                    </div>
                                </div>
								
								<?php 
								$query2 = mysqli_query($conn,"select * from return_request where employee_number='$empno' and status = 'not_confirmed'")or die(mysqli_error());
								$count2 = mysqli_num_rows($query2);
								?>
								
                                <div class="span3">
                                    <!-- Pie chart code commented out -->
                                    <!-- <div class="chart" data-percent="<?php echo $count2; ?>"><?php echo $count2; ?></div> -->
                                    
                                    <!-- Progress bar added -->
                                    <div class="progress-bar-wrapper">
                                        <progress value="<?php echo $count2; ?>" max="100"><?php echo $count2; ?></progress>
                                        <div class="progress-count"><?php echo $count2; ?></div>
                                    </div>
                                    <div class="chart-bottom-heading"><strong>Pending Return Requests</strong>
                                    </div>
                                </div>	

								<?php 
								$query3 = mysqli_query($conn,"select * from file where status = 'returned'")or die(mysqli_error());
								$count3 = mysqli_num_rows($query3);
								?>
								
                                <div class="span3">
                                    <!-- Pie chart code commented out -->
                                    <!-- <div class="chart" data-percent="<?php echo $count3; ?>"><?php echo $count3; ?></div> -->
                                    
                                    <!-- Progress bar added -->
                                    <div class="progress-bar-wrapper">
                                        <progress value="<?php echo $count3; ?>" max="100"><?php echo $count3; ?></progress>
                                        <div class="progress-count"><?php echo $count3; ?></div>
                                    </div>
                                    <div class="chart-bottom-heading"><strong>Free Files</strong>
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
	
	<style>
        /* Style for progress bar container */
        .progress-bar-wrapper {
            position: relative;
        }

        /* Style for the progress bar */
        progress {
            width: 100%;
            height: 30px;
            border-radius: 5px;
            background-color: #f0f0f0;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
        }

        /* Style for the filled part of the progress bar */
        progress::-webkit-progress-bar {
            background-color: #f0f0f0;
            border-radius: 5px;
        }

        progress::-webkit-progress-value {
            background-color: #4caf50;  /* Green */
            border-radius: 5px;
        }

        progress::-moz-progress-bar {
            background-color: #4caf50;
            border-radius: 5px;
        }

        /* Style for displaying count inside the progress bar */
        .progress-count {
            position: absolute;
            top: 0;
            left: 50%;
            transform: translateX(-50%);
            font-weight: bold;
            color: #333;
            line-height: 30px; /* Align count in the center */
        }

        /* Add some space below the progress bars */
        .chart-bottom-heading {
            margin-top: 10px;
            text-align: center;
        }
    </style>
    </body>

</html>
