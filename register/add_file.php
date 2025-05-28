   <div class="row-fluid">
                        <!-- block -->
                        <div class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Add File</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span9">
								<form method="post" id="add_file">
										<div class="control-group">
											<label>DOCUMENT TYPE:</label>
                                          <div class="controls">
                                            <select name="file_type"  class="" required>
                                             	<option value ="individual"> Individual </option>
												<option value ="entity">Entity </option>
                                            </select>
                                          </div>
                                        </div>
										<div class="control-group">
											<label>CATEGORY:</label>
                                          <div class="controls">
                                            <select name="file_category"  class="" required>
                                             	<option value ="main">Main </option>
												<option value ="audit">Audit </option>
												<option value ="objection"> Objection </option>
												<option value ="examination">Examination </option>
                                            </select>
                                          </div>
                                        </div>
										
										<div class="control-group">
										<label>SERIAL NUMBER:</label>
                                          <div class="controls">
                                            <input class="input focused" name="tin_number"  id="focusedInput" type="text" placeholder = "000-000-000" required>
                                          </div>
                                        </div>
										<div class="control-group">
										<label>DOCUMENT NAME:</label>
                                          <div class="controls">
                                            <input class="input focused" name="file_name" id="focusedInput" type="text" placeholder = "File Name" required>
                                          </div>
                                        </div>
										<div class="control-group">
										<label>LEGAL NAME:</label>
                                          <div class="controls">
                                            <input class="input focused" name="trade_name" id="focusedInput" type="text" placeholder = "Legal Name" >
                                          </div>
										  </div>
										<div class="control-group">
											<label>OPERATION:</label>
                                          <div class="controls">
										   <select name="block_name"  class="" required>
										  <?php
											if ($staff_region =="zamboanga"){ ?>
                                          
										  <option value ="Containment">Containment </option>
												<option value ="Quarantine Zone">Quarantine Zone </option>
												<option value ="Exclusion Zone">Exclusion Zone </option>
                                               	<option value ="Lockdown">Lockdown </option>	
                                               	<option value ="Security Perimeter">Security Perimeter </option>	
                                               	<option value ="Checkpoint">Checkpoint </option>	
                                               	<option value ="Perimeter Defense">Perimeter Defense</option>	
                                               	<option value ="Patrol Zone">Patrol Zone</option>	
                                               	<option value ="Safety Zone">Safety Zone</option>	
                                               	<option value ="Control Area">Control Area</option>	
                                          
                                            </select>
											<?php }else{ ?>
								
												<option value ="Containment">Containment </option>
												<option value ="Quarantine Zone">Quarantine Zone </option>
												<option value ="Exclusion Zone">Exclusion Zone </option>
                                               	<option value ="Lockdown">Lockdown </option>	
                                               	<option value ="Security Perimeter">Security Perimeter </option>	
                                               	<option value ="Checkpoint">Checkpoint </option>	
                                               	<option value ="Perimeter Defense">Perimeter Defense</option>	
                                               	<option value ="Patrol Zone">Patrol Zone</option>	
                                               	<option value ="Safety Zone">Safety Zone</option>	
                                               	<option value ="Control Area">Control Area</option>	
                                      
                                            </select>
											<?php } ?>
                                          </div>
                                        </div>
										
										<div class="control-group">
                                          <div class="controls">
												<button  data-placement="right" title="Click to Save" id="save" name="save" class="btn btn-inverse"><i class="icon-save icon-large"></i> Save</button>
														
										</script>
                                          </div>
                                        </div>
										
										
                                          
                                </form>
								</div>
                            </div>
                        </div>
                    </div>
<script>
	 											jQuery(document).ready(function(){
												jQuery("#add_file").submit(function(e){
														e.preventDefault();
														var formData = jQuery(this).serialize();
														$.ajax({
															type: "POST",
															url: "save_file.php",
															data: formData,
															success: function(html){
															alert('File saved succesfully');
															window.location = 'file.php';
															}
														});
														return false;
														});
										}); 
										</script>
	