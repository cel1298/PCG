<?php include('header.php'); ?>
<?php include('../session.php'); ?>
<?php include('navbar.php'); ?>
<style>
@media print {
    body * {
        visibility: hidden;
    }
    h1, h1 * {
        visibility: visible;
    }
    table, table * {
        visibility: visible;
    }
    h1, table {
        position: absolute;
        left: 0;
        width: 100%;
    }
    h1 {
        top: 0;
        margin-bottom: 0; /* spacing between heading and table */
        text-align: center;
        font-size: 24px;
    }
    table {
        top: .5in; /* ensure table appears after the heading */
        border-collapse: collapse;
        font-size: 12px;
        table-layout: fixed;
    }
    table th, table td {
        border: 1px solid #000;
        padding: 6px;
        text-align: left;
        word-wrap: break-word;
    }
}
</style>
    <div class="container">
		<div class="margin-top">
			<div class="row">	
			<div class="span12">	

						<div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                        <div class="muted pull-left"><b>Coast Guard Document Tracking System Personel Report</b></div>
                        </div>
                        <div class="block-content collapse in">

								    <ul class="nav nav-pills">
									<li class="active"><a href="dashboard.php" style="color: black;" onmouseover="this.style.color='black'" onmouseout="this.style.color='white'"><b>BACK</b></a></li>
										<li ><a href="reports.php">STAFF REPORT</a></li>
										<li   class="active"><a href="file_report.php">FILES REPORT</a></li>
										<li><a href="borrowed_report.php">TRACK BORROWED FILES</a></li>
										<li><a href="borrowed_requests.php">TRACK BORROW REQUESTS</a></li>
										<li><a href="returned_requests.php">RETURN REQUEST REPORT</a></li>
									</ul>
						<!--  -->
						<center class="title">
						<h1>FILES LIST</h1>
						</center>
                            <table cellpadding="0" cellspacing="0" border="0" class="table  table-bordered" id="example">
								<div class="pull-right">
								<a href="" onclick="window.print()" class="btn btn-info"><i class="icon-print icon-large"></i> Print</a>
								</div>							
                                <thead>
                                    <tr>
											
												<th>SERIAL NUMBER</th>
												<th>FILE NAME</th>
												<!--<th>TRADE NAME</th>-->
												<th>TYPE</th>
												<th>CATEGORY</th>
												<th>BLOCK</th>
												<th>STATUS</th>
												
										   </tr>
										</thead>
										<tbody>

							<?php
									$user_query = mysqli_query($conn,"select * from file ")or die(mysqli_error());
									while($row = mysqli_fetch_array($user_query)){
													$id = $row['file_id'];
													$mytrade=$row['trade_name'];
													
											if ($mytrade==""){
												$trade_name ="-";
												
											}else{
												$trade_name =$mytrade;
											}
	
													?>
													
												<tr>
												

												<td><?php echo $row['tin_number']; ?></td>
												<td><?php echo $row['file_name'];?></td>
												<!--<td><?php echo $trade_name;?></td> -->
												<td><?php echo $row['file_type'];?></td>
												<td><?php echo $row['file_category'];?></td>
												<td><?php echo $row['block'];?></td>
												<td><?php echo $row['status']; ?></td>

												</tr>
									<?php } ?>
										 </tbody>
                            </table>
							
			
			</div>		
			</div>
		</div>
    </div>
<?php include('footer.php') ?>