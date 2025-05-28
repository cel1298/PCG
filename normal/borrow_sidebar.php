 <div class="span3" id="sidebar">
                    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                      <li> <a href="dashboard.php"><i class="icon-chevron-right"></i><img src="data.png" style="width:20px;height:20px;">&nbsp;&nbsp;&nbsp; Dashboard</a> </li>
					<li class="active">
                            <a href="borrow_file.php"><i class="icon-chevron-right"></i><img src="nfolder.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Borrow File</a>
                        </li>
						<li>
                            <a href="return_file.php"><i class="icon-chevron-right"></i><img src="xxfolder.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Return File</a>
                        </li>
						<li>
                            <a href="nor_public_file/index.php"><i class="icon-chevron-right"></i><img src="music.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Files Repository</a>
                        </li>
						<li >
                            <a href="files_in.php"><i class="icon-chevron-right"></i><img src="xxxfolder.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Files In Possesion (
							<?php 
					$received = mysqli_query($conn,"select * from borrow where file_status='borrowed' and employee_number='$empno'")or die(mysqli_error());
					$receiveda = mysqli_num_rows($received);
					echo '<font color="Red">'  . $receiveda .'</font>';

							?> )
							
							</a>
                        </li>
						<li >
                            <a href="pending_borrow.php"><i class="icon-chevron-right"></i><img src="xfolder.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Pending to Borrow (
							<?php 
					$received = mysqli_query($conn,"SELECT * FROM borrow_request WHERE status = 'not_confirmed' and employee_number='$empno'")or die(mysqli_error());
					$receiveda = mysqli_num_rows($received);
					echo '<font color="Red">'  . $receiveda .'</font>';

							?>  )</a>
				
                        </li>	
						<li >
                            <a href="pending_return.php"><i class="icon-chevron-right"></i><img src="qfolder.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Pending to Return (
							<?php 
					$received = mysqli_query($conn,"SELECT * FROM return_request WHERE status = 'not_confirmed' and employee_number='$empno'")or die(mysqli_error());
					$receiveda = mysqli_num_rows($received);
					echo '<font color="Red">'  . $receiveda .'</font>';

							?>  )</a>
							
                        </li>
						<li>
                            <a href="user_report.php"><i class="icon-chevron-right"></i><img src="documentation.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Borrow History</a>
                        </li>
                    </ul>
                </div>