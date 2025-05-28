<!DOCTYPE html>
<html>
<head>
    <title>Font Awesome Icons</title>
	<!-- Meta Tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

    <div class="span3" id="sidebar">
        <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
            <li class="active">
			<!--<a href="dashboard.php"><i class="icon-chevron-right"></i><i class="fa-solid fa-house-chimney" style="font-size:20px;color:white"></i>&nbsp;&nbsp;&nbsp; Dashboard</a> -->
					<a href="dashboard.php"><i class="icon-chevron-right"></i><img src="layout.png" style="width:20px;height:20px;">&nbsp;&nbsp;&nbsp; Dashboard</a>
            </li>

            <li>
             <!--   <a href="admin_user.php"><i class="icon-chevron-right"></i><i class="fa fa-user-plus"style="font-size:20px;color: #1951f2"></i>&nbsp;&nbsp; Add Staff</a> -->
				<a href="admin_user.php"><i class="icon-chevron-right"></i><img src="add-user.png" style="width:20px;height:20px;">&nbsp;&nbsp;&nbsp; Add Staff</a>
            </li>

            <li>
              <!--  <a href="user_log.php"><i class="icon-chevron-right"></i><i class="fa-solid fa-book-open-reader" style="font-size:20px;color: #1951f2"></i></i></i>&nbsp;&nbsp;&nbsp; User Log</a> -->
				<a href="user_log.php"><i class="icon-chevron-right"></i><img src="log.png" style="width:20px;height:20px;">&nbsp;&nbsp;&nbsp; User Log</a>
            </li>

            <li>
              <!--  <a href="password.php"><i class="icon-chevron-right"></i><i class="fa fa-key" style="font-size:20px;color: #1951f2"></i></i> &nbsp; Reset Password</a> -->
				<a href="password.php"><i class="icon-chevron-right"></i><img src="reset.png" style="width:20px;height:20px;">&nbsp;&nbsp;&nbsp; Reset Password</a>
            </li>

            <li>
              <!--  <a href="reports.php"><i class="icon-chevron-right"></i><i class="fa fa-map-marker" style="font-size:20px;color: #1951f2"></i></i>&nbsp;&nbsp;&nbsp; Files Reports Tracking</a> -->
				<a href="reports.php"><i class="icon-chevron-right"></i><img src="report.png" style="width:20px;height:20px;">&nbsp;&nbsp;&nbsp; Files Report Tracking</a>
            </li>
			
			<li>
              <!--  <a href="reports.php"><i class="icon-chevron-right"></i><i class="fa fa-map-marker" style="font-size:20px;color: #1951f2"></i></i>&nbsp;&nbsp;&nbsp; Files Reports Tracking</a> -->
				<a href="../public_file/index.php"><i class="icon-chevron-right"></i><img src="music.png" style="width:20px;height:20px;">&nbsp;&nbsp;&nbsp; Files Repository</a>
            </li>
		<!--	<a href="dashboard.php"><i class="icon-chevron-right"></i><i class="fa-solid fa-house-chimney" style="font-size:20px;color:white"></i>&nbsp;&nbsp;&nbsp; Dashboard</a>

            </li>

            <li>
                <a href="admin_user.php"><i class="icon-chevron-right"></i><i class="fa fa-user-plus"style="font-size:20px;color: #1951f2"></i>&nbsp;&nbsp; Add Staff</a>
            </li>

            <li>
                <a href="user_log.php"><i class="icon-chevron-right"></i><i class="fa-solid fa-book-open-reader" style="font-size:20px;color: #1951f2"></i></i></i>&nbsp;&nbsp;&nbsp; User Log</a>
            </li>

            <li>
                <a href="password.php"><i class="icon-chevron-right"></i><i class="fa fa-key" style="font-size:20px;color: #1951f2"></i></i> &nbsp; Reset Password</a>
            </li>

            <li>
                <a href="reports.php"><i class="icon-chevron-right"></i><i class="fa fa-map-marker" style="font-size:20px;color: #1951f2"></i>
				</i>&nbsp;&nbsp;&nbsp; Files Reports Tracking</a>
            </li> -->

            <li>
             <!--   <a href="online.php"><i class="icon-chevron-right"></i><i class="fa-solid fa-earth-americas" style="font-size:20px;color: #1951f2"></i>&nbsp;&nbsp; Online (
                    <?php 
                        $received = mysqli_query($conn,"SELECT * FROM staff WHERE online = 'yes'")or die(mysqli_error());
                        $receiveda = mysqli_num_rows($received);
                        echo '<font color="Red">' . $receiveda . '</font>';
                    ?>  ) -->
					<a href="online.php"><i class="icon-chevron-right"></i><img src="user.png" style="width:20px;height:20px;">&nbsp;&nbsp;&nbsp; Online (
                    <?php 
                        $received = mysqli_query($conn,"SELECT * FROM staff WHERE online = 'yes'")or die(mysqli_error());
                        $receiveda = mysqli_num_rows($received);
                        echo '<font color="Red">' . $receiveda . '</font>';
                    ?>  )
                </a>
            </li>

        </ul>
    </div>

</body>
</html>
