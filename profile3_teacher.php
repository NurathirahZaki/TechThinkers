<?php
// Assuming you have a database connection established
// Replace this with your database connection code
$conn = new mysqli('localhost', 'root', '', 'intellilearn');

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch teacher details based on a particular teacher ID (replace '$session_id' with the actual teacher ID)
$query = mysqli_query($conn, "SELECT * FROM teacher WHERE teacher_id = '$session_id'") or die(mysqli_error());
$row = mysqli_fetch_array($query);

// Store teacher details in variables
$teacherName = $row['firstname'] . ' ' . $row['lastname'];
$email = $row['email'];
$phone = $row['phone'];
$aboutMe = $row['about'];

$conn->close();
?>

<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
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
                        $school_year_query = mysqli_query($conn, "SELECT * FROM school_year ORDER BY school_year DESC") or die(mysqli_error());
                        $school_year_query_row = mysqli_fetch_array($school_year_query);
                        $school_year = $school_year_query_row['school_year'];
                        ?>
                        <li><a href="#">Teachers</a><span class="divider">/</span></li>
                        <li><a href="#"><b>Profile</b></a></li>
                    </ul>
                    <!-- end breadcrumb -->

                    <!-- block -->
                    <div id="block_bg" class="block">
                        <div class="navbar navbar-inner block-header">
                            <div id="" class="muted pull-left"></div>
                        </div>
                        <div class="block-content collapse in">
                            <div class="span12">
                                <div class="alert alert-info"><i class="icon-info-sign"></i> About Me</div>

                                <!-- Display teacher details -->
                                <p>
                                    
									<strong>NAME:/strong> <?php echo $firstname ?><br>
                                    <strong>EMAIL:</strong> <?php echo $email; ?><br>
                                    <strong>PHONE:</strong> <?php echo $phone; ?><br>
                                    <strong>ABOUT ME:</strong> <?php echo $aboutMe; ?>
                                </p>
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
