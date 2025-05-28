<?php include('header2.php'); ?>
<?php include('../session.php'); ?>
<?php $tin_number=$_GET['id']; ?>
<body>
    <?php include('navbar.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <?php include('return_sidebar.php'); ?>
            <div class="span3" id="adduser">
                <?php include('complete_return2.php'); ?>           
            </div>
            <div class="span3" id=""></div>
            <div class="span3" id="">
                <div class="row-fluid">
                    <!-- block -->
                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div class="muted pull-left">Files in Possession</div>
                        </div>
                        <div class="block-content collapse in">
                            <div class="span12">
                                <div class="block-content collapse in">
                                    <div class="span12">
                                        <?php 
                                        $query= mysqli_query($conn,"select * from staff where staff_id = '$session_id'")or die(mysqli_error());
                                        $row = mysqli_fetch_array($query);
                                        $user = $row['emplnumber'];
                                        ?>        

                                        <?php 
                                        $query_student = mysqli_query($conn,"select * from borrow where employee_number = '$empno' and file_status='borrowed'")or die(mysqli_error());
                                        $count_student = mysqli_num_rows($query_student);
                                        $total_files = 10; // Set the total number of files as needed
                                        $percent = ($count_student / $total_files) * 100;
                                        ?>

                                        <div class="span6">
                                            <div class="progress">
                                                <div class="progress-bar" role="progressbar" aria-valuenow="<?php echo $percent; ?>" aria-valuemin="0" aria-valuemax="100" style="width: <?php echo $percent; ?>%;">
                                                    <?php echo $count_student; ?> files borrowed
                                                </div>
                                            </div>
                                            <div class="chart-bottom-heading"><strong>Files</strong></div>
                                        </div>
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
