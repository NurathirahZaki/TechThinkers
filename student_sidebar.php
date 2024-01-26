<div class="span3" id="sidebar
					   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlW1aI+l6SxjZpQl/c5x63zgIYTl1Vz7kZ7tFvMz3Dmn" crossorigin="anonymous">

					<img id="avatar" class="img-polaroid" src="admin/<?php echo $row['location']; ?>">
					<?php include('count.php'); ?>
		<ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">
			<li class="active"><a href="dashboard_student.php"><i class="icon-chevron-right"></i><i class="icon-group"></i>&nbsp;My Class</a></li>
			<li class="">
				<a href="student_notification.php"><i class="icon-chevron-right"></i><i class="icon-info-sign"></i>&nbsp;Notification
				<?php if($not_read == '0'){
				}else{ ?>
					<span class="badge badge-important"><?php echo $not_read; ?></span>
				<?php } ?>
				</a>
			</li>
			<?php
			$message_query = mysqli_query($conn,"select * from message where reciever_id = '$session_id' and message_status != 'read' ")or die(mysqli_error());
			$count_message = mysqli_num_rows($message_query);
			?>
			<li class="">
			<a href="student_message.php"><i class="icon-chevron-right"></i><i class="icon-envelope-alt"></i>&nbsp;Message
				<?php if($count_message == '0'){
				}else{ ?>
					<span class="badge badge-important"><?php echo $count_message; ?></span>
				<?php } ?>
			</a>
		
			 <li class=""><a href="viewAttendance.php"><i class="icon-chevron-right"></i><i class="icon-suitcase"></i>&nbsp;Attendance</a></li>
				
			<li class=""><a href="stripe/index.php"><i class="icon-chevron-right"></i><i class="icon-heart"></i>&nbsp;Donation</a></li>

		</ul>
					<?php /* include('search_other_class.php');  */?>	
</div>

