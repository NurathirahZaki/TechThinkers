<?php
include('header_dashboard.php');
include('session.php');

// Assuming $conn is your database connection
$date = date("Y-m-d");
$query = "SELECT student.firstname, attendance.status, attendance.date
          FROM student
          LEFT JOIN attendance ON student.student_id = attendance.student_id
          WHERE attendance.date = '$date'";
$result = $conn->query($query);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>View Attendance</title>
    <!-- Add your CSS styles here -->
</head>

<body>
    <?php include('navbar_teacher.php'); ?>
    <div class="container">
        <div class="row-fluid">
            <?php include('teacher_sidebar.php'); ?>

            <div class="span9" id="content">
                <div class="container">
                    <h2>View Attendance (Date: <?php echo $date; ?>)</h2>
                    <table width="419" height="48">
                        <thead>
                            <tr>
                                <th width="203" height="35">STUDENT NAME</th>
                                <th width="177">ATTENDANCE STATUS</th>
                            </tr>
                        </thead>
                        <tbody>

                            <?php
                            if ($result && $result->num_rows > 0) {
                                while ($row = $result->fetch_assoc()) {
                                    echo "<tr>";
                                    echo "<td>" . $row['firstname'] . "</td>";
                                    echo "<td>" . $row['status'] . "</td>";
                                    echo "</tr>";
                                }
                            } else {
                                echo "<tr><td colspan='2'>No attendance records found</td></tr>";
                            }
                            ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <?php include('footer.php'); ?>
</body>

</html>
