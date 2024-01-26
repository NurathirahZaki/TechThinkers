<?php
include('header_dashboard.php');
include('session.php');

// Initialize variables
$teacher_id = $firstname = $lastname = $email = $phone = $aboutMe = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Get teacher ID from the form submission
    $teacher_id = $_POST["teacher_id"];

    // Fetch teacher details based on the provided teacher ID
    $query = mysqli_query($conn, "SELECT * FROM teacher WHERE teacher_id = '$teacher_id'") or die(mysqli_error());
    $row = mysqli_fetch_array($query);

    // Store teacher details in variables
    $firstname = $row['firstname'];
    $lastname = $row['lastname'];
    $email = $row['email'];
    $phone = $row['phone'];
    $aboutMe = $row['about'];
}


?>

<body>
    <?php include('navbar_teacher.php'); ?>
    <div class="container-fluid">
        <div class="row-fluid">
            <?php include('teacher_sidebar.php'); ?>
            <div class="span6" id="content">
                <div class="row-fluid">
                    <!-- breadcrumb -->
                    <ul class="breadcrumb">
                        <?php
                        $school_year_query = mysqli_query($conn, "select * from school_year order by school_year DESC") or die(mysqli_error());
                        $school_year_query_row = mysqli_fetch_array($school_year_query);
                        $school_year = $school_year_query_row['school_year'];
                        ?>
                        <li><a href="#">Teachers</a><span class="divider">/</span></li>
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
                                <form action="update_teacherprofile.php" method="post">
                                    <input type="hidden" name="teacher_id" value="<?php echo $teacher_id; ?>">
                                    <label for="firstname">FIRST NAME:</label>
                                    <input type="text" name="firstname" value="<?php echo $firstname; ?>"><br>
									
									<label for="lastname">LAST NAME:</label>
                                    <input type="text" name="lastname" value="<?php echo $lastname; ?>"><br>
                                   
                                    <label for="email">EMAIL:</label>
                                    <input type="text" name="email" value="<?php echo $email; ?>"><br>

                                    <label for="phone">PHONE:</label>
                                    <input type="text" name="phone" value="<?php echo $phone; ?>"><br>

                                    <label for="about">ABOUT ME:</label>
                                    <textarea name="about"><?php echo $aboutMe; ?></textarea><br>
								
									
									<form action="update_teacherprofile.php" method="post">
                                    <input type="hidden" name="teacher_id" value="<?php echo $session_id; ?>">
                                  
									
									
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
