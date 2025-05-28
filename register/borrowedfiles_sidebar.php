     <div class="span3" id="sidebar">
                     </ul>
          
                    <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
                        <li > <a href="dashboard.php"><i class="icon-chevron-right"></i><img src="layout.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Dashboard</a> </li>
						<li >
                            <a href="borrow_request.php"><i class="icon-chevron-right"></i><img src="receive.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Borrow Requests (
							<?php 
					$received = mysqli_query($conn,"SELECT * FROM borrow_request WHERE status = 'not_confirmed'")or die(mysqli_error());
					$receiveda = mysqli_num_rows($received);
					echo '<font color="Red">'  . $receiveda .'</font>';

							?>  )</a>
                        </li>
						<li>
                            <a href="return_request.php"><i class="icon-chevron-right"></i><img src="download.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Return Requests ( 
							<?php
					$received = mysqli_query($conn,"SELECT * FROM return_request WHERE status = 'not_confirmed'")or die(mysqli_error());
					$receiveda = mysqli_num_rows($received);
					echo '<font color="Red">'  . $receiveda .'</font>';

							?>  )</a>
                        </li>
						<li >
                            <a href="file.php"><i class="icon-chevron-right"></i><img src="add-file.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Add File</a>
                        </li>
						<li class="active" >
                            <a href="borrowed_files.php"><i class="icon-chevron-right"></i><img src="data-transfer.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Borrowed Files</a>
                        </li>
						<li >
                            <a href="returned_files.php"><i class="icon-chevron-right"></i><img src="folder.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Free Files</a>
                        </li>
							<li>
                            <a href="search.php"><i class="icon-chevron-right"></i><img src="folder1.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Search File</a>
                        </li>
						</li>
							<li>
                            <a href="reg_public_file/index.php"><i class="icon-chevron-right"></i><img src="music.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; File Repository</a>
                        </li>
						<li>
                            <a href="borrowed_report.php"><i class="icon-chevron-right"></i><img src="returnhistory.png" style="width:20px;height:20px;"></i>&nbsp;&nbsp;&nbsp; Files History</a>
                        </li>


                    </ul>
                </div>