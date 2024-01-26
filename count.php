					<?php
						$school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
						$school_year_query_row = mysqli_fetch_array($school_year_query);
						$school_year = $school_year_query_row['school_year'];
						?>
				
	 				<?php /*?><?php $query_yes = mysqli_query($conn,"select * from teacher_class_student
					LEFT JOIN teacher_class ON teacher_class.teacher_class_id = teacher_class_student.teacher_class_id 
					LEFT JOIN class ON class.class_id = teacher_class.class_id 
					LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
					LEFT JOIN teacher ON teacher.teacher_id = teacher_class_student.teacher_id 
					JOIN notification ON notification.teacher_class_id = teacher_class.teacher_class_id 
					where teacher_class_student.student_id = '$session_id' and school_year = '$school_year'   order by notification.date_of_notification DESC
					")or die(mysqli_error());
					$count_no = mysqli_num_rows($query_yes);

		
		            ?>
					<?php $query_no = mysqli_query($conn,"select * from notification 
					LEFT JOIN notification_read ON notification_read.notification_id = notification.notification_id
					where notification_read.student_id  = '$session_id'
					")or die(mysqli_error());
					$count_yes = mysqli_num_rows($query_no);
					
		            ?>
					
					<?php $not_read = $count_no -  $count_yes; ?><?php */?>
<?php /*?><?php
// ... (previous code)

$query_yes = mysqli_query($conn, "SELECT * FROM teacher_class_student
    LEFT JOIN teacher_class ON teacher_class.teacher_class_id = teacher_class_student.teacher_class_id 
    LEFT JOIN class ON class.class_id = teacher_class.class_id 
    LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
    LEFT JOIN teacher ON teacher.teacher_id = teacher_class_student.teacher_id 
    JOIN notification ON notification.teacher_class_id = teacher_class.teacher_class_id 
    WHERE teacher_class_student.student_id = '$session_id' AND school_year = '$school_year'
    ORDER BY notification.date_of_notification DESC") or die(mysqli_error());
$count_no = mysqli_num_rows($query_yes);

$query_yes_read = mysqli_query($conn, "SELECT * FROM notification_read
    WHERE student_id = '$session_id'") or die(mysqli_error());
$count_yes = mysqli_num_rows($query_yes_read);

$not_read = max(0, $count_no - $count_yes);

?><?php */?>

<?php
include('header_dashboard.php');

$school_year_query = mysqli_query($conn, "SELECT * FROM school_year ORDER BY school_year DESC") or die(mysqli_error($conn));
$school_year_query_row = mysqli_fetch_array($school_year_query);
$school_year = $school_year_query_row['school_year'];

$query_yes = mysqli_query($conn, "SELECT * FROM teacher_class_student
    LEFT JOIN teacher_class ON teacher_class.teacher_class_id = teacher_class_student.teacher_class_id 
    LEFT JOIN class ON class.class_id = teacher_class.class_id 
    LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
    LEFT JOIN teacher ON teacher.teacher_id = teacher_class_student.teacher_id 
    JOIN notification ON notification.teacher_class_id = teacher_class.teacher_class_id 
    WHERE teacher_class_student.student_id = '$session_id' AND school_year = '$school_year'
    ORDER BY notification.date_of_notification DESC") or die(mysqli_error($conn));

$query_yes_read = mysqli_query($conn, "SELECT * FROM notification_read
    WHERE student_id = '$session_id'") or die(mysqli_error($conn));

// Check if the queries were successful
if ($query_yes && $query_yes_read) {
    $count_no = mysqli_num_rows($query_yes);
    $count_yes = mysqli_num_rows($query_yes_read);

    $not_read = max(0, $count_no - $count_yes);
} else {
    // Handle the error or set default values
    $not_read = 0;

    // Print or log the error messages
    echo "Query 1 error: " . mysqli_error($conn) . "<br>";
    echo "Query 2 error: " . mysqli_error($conn) . "<br>";
}

// ... (remaining code)
?>
