<?php
include('header_dashboard.php');
include('session.php');
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

                                <?php
                                $query = mysqli_query($conn, "select * from teacher where teacher_id = '$session_id'") or die(mysqli_error());
                                $row = mysqli_fetch_array($query);
                                ?>
                                <p>
                                    <?php /*?>  <?php echo $row['about']; ?><?php */?>
                                </p>

                                <!-- Additional details -->
                                <div class="alert alert-success"><i class="icon-check"></i> Additional Details</div>
                                <p>
                                    <strong>FIRST NAME:</strong> <?php echo $row['firstname']; ?><br>
									<strong>LAST NAME:</strong> <?php echo $row['lastname']; ?><br>
                                    <strong>EMAIL:</strong> <?php echo $row['email']; ?><br>
                                    <strong>PHONE:</strong> <?php echo $row['phone']; ?><br>
                                    <?php echo $row['about']; ?>
                                    <!-- Add more details as needed -->
                                </p>

                                <!-- Edit Profile Button -->
                                <form action="edit_teacherprofile.php" method="post">
                                    <input type="hidden" name="teacher_id" value="<?php echo $session_id; ?>">
                                    <button type="submit" class="btn btn-primary">Edit Profile</button>
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
