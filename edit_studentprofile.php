<?php
include('header_dashboard.php');
include('session.php');

// Initialize variables
$student_id = $firstname = $lastname = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get teacher ID from the form submission
    $student_id = $_POST["student_id"];

    // Fetch teacher details based on the provided teacher ID
    $query = mysqli_query($conn, "SELECT * FROM student WHERE student_id = '$student_id'") or die(mysqli_error());
    $row = mysqli_fetch_array($query);

    // Store student details in variables
    $firstname = $row['firstname'];
    $lastname = $row['lastname'];
   
}


?>

<body>
    <?php include('navbar_student.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <?php include('student_sidebar.php'); ?>
            <div class="span6" id="content">
                <div class="row-fluid">
                    <!-- breadcrumb -->
                    <ul class="breadcrumb">
                        <?php
                        $school_year_query = mysqli_query($conn, "select * from school_year order by school_year DESC") or die(mysqli_error());
                        $school_year_query_row = mysqli_fetch_array($school_year_query);
                        $school_year = $school_year_query_row['school_year'];
                        ?>
                        <li><a href="#">Student</a><span class="divider">/</span></li>
                        <li><a href="#"><b>Edit Profile</b></a></li>
                    </ul>
                    <!-- end breadcrumb -->

                    <!-- block -->
                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div id="" class="muted pull-left"></div>
                        </div>
                        <div class="block-content collapse in">
                            <div class="span12">
                                <!-- Edit Profile Form -->
                                <form action="update_studentprofile.php" method="post">
                                    <input type="hidden" name="student_id" value="<?php echo $student_id; ?>">
                                    <label for="firstname">FIRST NAME:</label>
                                    <input type="text" name="firstname" value="<?php echo $firstname; ?>"><br>
									
									<label for="lastname">LAST NAME:</label>
                                    <input type="text" name="lastname" value="<?php echo $lastname; ?>"><br>
                                   
                               
									
									<form action="update_studentprofile.php" method="post">
                                    <input type="hidden" name="studentr_id" value="<?php echo $session_id; ?>">
                                  
									
									
                                    <button type="submit" class="btn btn-primary">Update Profile</button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /block -->
                </div>
            </div>
            <?php include('teacher_right_sidebar.php') ?>
        </div>
        <?php include('footer.php'); ?>
    </div>
    <?php include('script.php'); ?>
</body>

</html>
