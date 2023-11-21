<?php include('header_admin.php'); ?>
<?php include('session.php'); ?>
    <body>
		<?php include('navbar.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('assignment_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div class="muted pull-left">Assignment File Uploaded List</div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="example">
						
										<thead>
										        <tr>

												<th>File Name</th>
												<th>Description</th>
												<th>Date Upload</th>
												<th>Upload By</th>
												<th>Class</th>
                                   
												</tr>
												
										</thead>
										<tbody>
											
                              		<?php
										$query = mysqli_query($conn,"select * FROM assignment LEFT JOIN teacher ON teacher.teacher_id = assignment.teacher_id 
																				  LEFT JOIN teacher_class ON teacher_class.teacher_class_id = assignment.class_id 
																				  INNER JOIN class ON class.class_id = teacher_class.class_id  ")or die(mysqli_error());
										while($row = mysqli_fetch_array($query)){
									?>
							

					
                              
										<tr>

                                         <td><?php  echo $row['fname']; ?></td>
                                         <td><?php echo $row['fdesc']; ?></td>
                                         <td><?php echo $row['fdatein']; ?></td>
                                         <td>&nbsp;</td>
                                         <td><?php echo $row['class_name']; ?></td>

                               
                                </tr>
                         
						 <?php } ?>
						   
                              
										</tbody>
									</table>
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
    <?php echo $row['firstname']." ".$row['lastname']; ?>
    </body>

</html>