<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>

<?php

// Insert marks
 if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit_marks'])) {
    $student_id = $_POST['student_id'];
    $subject_id = $_POST['subject_id'];
    $class_id = $_POST['class_id'];
    $teacher_id = $_POST['teacher_id'];
    $marks = $_POST['marks'];

    // Implement the insertMarks function using prepared statements
    // insertMarks($student_id, $subject_id, $class_id, $teacher_id, $marks);
}

// Delete marks
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete_marks'])) {
    $mark_id = $_POST['mark_id'];

    // Implement the deleteMarks function
    // deleteMarks($mark_id);
}

// Function to calculate percentage and grade
function calculatePercentageAndGrade($marksObtained, $totalMarks) {
    // Calculate percentage and grade here
    // Return array with percentage and grade
}

// Retrieve and display student names
$sql = "SELECT student_id, student_name FROM students";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "Student ID: " . $row["student_id"] . " - Name: " . $row["student_name"] . "<br>";
    }
} else {
    echo "0 results";
}

// Retrieve and display teacher details
$teacher_id = 1; // Replace with actual teacher ID
$sql = "SELECT * FROM teachers WHERE teacher_id = $teacher_id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo "Teacher Name: " . $row["teacher_name"] . "<br>";
    echo "IC Number: " . $row["ic_number"] . "<br>";
    // Display other teacher details as needed
} else {
    echo "Teacher not found";
}

// Get classes taught by a specific teacher
$teacher_id = 1; // Replace with actual teacher ID
$sql = "SELECT class_id, class_name FROM classes WHERE teacher_id = $teacher_id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Display dropdown/select options for classes
    // Use fetched data to create the dropdown/select options
}

// Get subjects taught by a specific teacher
$teacher_id = 1; // Replace with actual teacher ID
$sql = "SELECT subject_id, subject_name FROM subjects WHERE teacher_id = $teacher_id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Display dropdown/select options for subjects
    // Use fetched data to create the dropdown/select options
}

?>

<!DOCTYPE html>
<html>
<head>
    <title>Insert Marks</title>

    <style>
    
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f7f7f7; /* Light gray background */
        }
        .container {
            width: 50%;
            margin: 0 auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"] {
            padding: 8px;
            width: calc(100% - 16px);
            border-radius: 4px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007bff; /* Blue submit button */
            border: none;
            color: white;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    
    </style>
</head>
<body>

<!DOCTYPE html>
<html>
<head>
    <title>Insert Student Marks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f7f7f7; /* Light gray background */
        }
        .container {
            width: 50%;
            margin: 0 auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff; /* Blue header */
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2; /* Light gray for even rows */
        }
        .passed {
            color: green;
        }
        .failed {
            color: red;
        }
        input[type="number"] {
            width: 80px;
            padding: 5px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Insert Student Marks</h2>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
        <table>
            <tr>
                <th>Student Name</th>
                <th>Marks</th>
                <th>Grade</th>
                <th>Passed/Failed</th>
            </tr>
            <?php
            // Assuming $conn is your database connection

            // Fetch students from the database
            $sql = "SELECT student_id, student_name FROM students";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $row['student_name'] . "</td>";
                    echo "<td><input type='number' name='marks[" . $row['student_id'] . "]' min='0' max='100'></td>";
                    echo "</tr>";
                }

                // Calculate grade based on marks (example criteria)
                $grade = ($marks >= 50) ? 'A' : 'B';

                // Determine pass/fail based on marks (modify as per your criteria)
                $passed = ($marks >= 50) ? 'Passed' : 'Failed';
                $passedClass = ($marks >= 50) ? 'passed' : 'failed';

            } else {
                echo "<tr><td colspan='2'>No students found</td></tr>";
            }
            ?>
        </table>
        <input type="submit" name="submit_marks" value="Submit Marks">
    </form>
</div>

</body>
</html>
<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
<body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('backpack_sidebar_teacher.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					    <!-- breadcrumb -->	
									<ul class="breadcrumb">
										<?php
										$school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
										$school_year_query_row = mysqli_fetch_array($school_year_query);
										$school_year = $school_year_query_row['school_year'];
										?>
											<li><a href="#"><b>My Class</b></a><span class="divider">/</span></li>
										<li><a href="#">School Year: <?php echo $school_year_query_row['school_year']; ?></a><span class="divider">/</span></li>
										<li><a href="#"><b>Backpack</b></a></li>
									</ul>
						 <!-- end breadcrumb -->
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-right"></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">
								<?php
								$query_backpack = mysqli_query($conn,"select * FROM teacher_backpack where teacher_id = '$session_id'  order by fdatein DESC ")or die(mysqli_error());
								$num_row = mysqli_num_rows($query_backpack);
								if ($num_row > 0){
								?>
									<div class="pull-right">
												Check All <input type="checkbox"  name="selectAll" id="checkAll" />
												<script>
												$("#checkAll").click(function () {
													$('input:checkbox').not(this).prop('checked', this.checked);
												});
												</script>					
									</div>
									<form action="delete_backpack_teacher.php" method="post">
  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="">
									<a data-toggle="modal" href="#backup_delete" id="delete"  class="btn btn-danger" name=""><i class="icon-trash icon-large"></i></a>
									<?php include('modal_backpack_delete.php'); ?>
										<thead>
										        <tr>
												<th></th>
												<th>Date Upload</th>
												<th>File Name</th>
												<th>Description</th>
												<th></th>
												</tr>
										</thead>
										<tbody>
                              		<?php
										$query = mysqli_query($conn,"select * FROM teacher_backpack where teacher_id = '$session_id'  order by fdatein DESC")or die(mysqli_error());
										while($row = mysqli_fetch_array($query)){
										$id  = $row['file_id'];
									?>                              
										<tr id="del<?php echo $id; ?>">
										<td width="30">
											<input id="" class="" name="selector[]" type="checkbox" value="<?php echo $id; ?>">
										</td>
										 <td><?php echo $row['fdatein']; ?></td>
                                         <td><?php  echo $row['fname']; ?></td>
                                         <td><?php echo $row['fdesc']; ?></td>                                      
                                         <td width="30"><a href="<?php echo $row['floc']; ?>"><i class="icon-download icon-large"></i></a></td>                                      
										</tr>
									<?php } ?>
										</tbody>
									</table>
									</form>
									<?php }else{ ?>
									<div class="alert alert-info"><i class="icon-info-sign"></i> No Files Inside Your Backpack.</div>
									<?php } ?>
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