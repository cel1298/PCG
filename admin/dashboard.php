<?php include('refresh.php'); ?>
<?php include('header.php'); ?>
<?php include('../session.php'); ?>

<style>
        /* Style for progress bar container */
        .progress-bar-wrapper {
            margin-top: 20px;
            position: relative;
            
        }

        /* Style for the progress bar */
        progress {
            width: 100%;
            height: 45px;
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
            top: 20%;
            left: 50%;
            transform: translateX(-50%);
            font-weight: bold;
            color: #333;
            line-height: 30px; /* Align count in the center */
        }

        /* Add some space below the progress bars */
        .chart-bottom-heading {
            margin-top: 20px;
            text-align: center;
        }
    </style>
<body>
    
    <?php include('navbar.php') ?>
    <div class="container-fluid" id="">
        <div class="row-fluid">
            <?php include('sidebar_dashboard.php'); ?>
            <!--/span-->
            <div class="span9" id="content">
                <div class="row-fluid"></div>
                <div class="row-fluid">
                    <!-- block -->
                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div class="muted pull-left"><b>DASHBOARD STATISTICS REPORT TRACKING</b></div>
                        </div>
                        <div class="block-content collapse in">
                            <div class="span12">

                                <?php 
                                $query_reg_teacher = mysqli_query($conn,"select * from staff where status = 'administrator'  ")or die(mysqli_error());
                                $count_reg_teacher = mysqli_num_rows($query_reg_teacher);
                                ?>

							 
                                <div class="span3">
                                    <div class="progress-bar-wrapper">
                                        <progress value="<?php echo $count_reg_teacher; ?>" max="100"></progress>
                                        <span class="progress-count"><?php echo $count_reg_teacher; ?></span>
                                    </div>
                                    <div class="chart-bottom-heading"><strong>Administrators</strong></div>
                                </div>
				
								
                                <?php 
                                $query_teacher = mysqli_query($conn,"select * from staff where status = 'register'")or die(mysqli_error());
                                $count_teacher = mysqli_num_rows($query_teacher);
                                ?>


                                <div class="span3">
                                    <div class="progress-bar-wrapper">
                                        <progress value="<?php echo $count_teacher; ?>" max="100"></progress>
                                        <span class="progress-count"><?php echo $count_teacher; ?></span>
                                    </div>
                                    <div class="chart-bottom-heading"><strong>Register</strong></div>
                                </div>



                                <?php 
                                $query_s = mysqli_query($conn,"select * from staff where status = 'supervisor'")or die(mysqli_error());
                                $count_s = mysqli_num_rows($query_s);
                                ?>

                               <!-- <div class="span3">
                                    <div class="progress-bar-wrapper">
                                        <progress value="<?php echo $count_s; ?>" max="100"></progress>
                                        <span class="progress-count"><?php echo $count_s; ?></span>
                                    </div>
                                    <div class="chart-bottom-heading"><strong>Supervisors</strong></div>
                                </div> -->
                                
                                <?php 
                                $query_student = mysqli_query($conn,"select * from staff where status = 'normal'")or die(mysqli_error());
                                $count_student = mysqli_num_rows($query_student);
                                ?>

                                <div class="span3">
                                    <div class="progress-bar-wrapper">
                                        <progress value="<?php echo $count_student; ?>" max="100"></progress>
                                        <span class="progress-count"><?php echo $count_student; ?></span>
                                    </div>
                                    <div class="chart-bottom-heading"><strong>Normal Personnel</strong></div>
                                </div>
                                
                                <?php 
                                $query_student = mysqli_query($conn,"select * from file")or die(mysqli_error());
                                $count_student = mysqli_num_rows($query_student);
                                ?>

                                <div class="span3">
                                    <div class="progress-bar-wrapper">
                                        <progress value="<?php echo $count_student; ?>" max="100"></progress>
                                        <span class="progress-count"><?php echo $count_student; ?></span>
                                    </div>
                                    <div class="chart-bottom-heading"><strong>Files</strong></div>
                                </div>
                                
                                <?php 
                                $query_class = mysqli_query($conn,"select * from file where status = 'borrowed'")or die(mysqli_error());
                                $count_class = mysqli_num_rows($query_class);
                                ?>

                                <div class="span3">
                                    <div class="progress-bar-wrapper">
                                        <progress value="<?php echo $count_class; ?>" max="100"></progress>
                                        <span class="progress-count"><?php echo $count_class; ?></span>
                                    </div>
                                    <div class="chart-bottom-heading"><strong>Borrowed Files</strong></div>
                                </div>
                                
                                <?php 
                                $query_class = mysqli_query($conn,"select * from file where status = 'returned'")or die(mysqli_error());
                                $count_class = mysqli_num_rows($query_class);
                                ?>

                                <div class="span3">
                                    <div class="progress-bar-wrapper">
                                        <progress value="<?php echo $count_class; ?>" max="100"></progress>
                                        <span class="progress-count"><?php echo $count_class; ?></span>
                                    </div>
                                    <div class="chart-bottom-heading"><strong>Files not Borrowed</strong></div>
                                </div>
    
                            </div>
                        </div>
                    </div>
                    <!-- /block -->
                </div>
            </div>
        </div>
    
     <?php include('footer.php'); ?>
    </div>
    <?php include('script.php'); ?>

</body>
</html>
