<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Take Attendance</title>
    <style>
        /* Your CSS styles here */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>

<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>

<body>
    <?php include('navbar_teacher.php'); ?>
    <div class="container">
        <div class="row-fluid">
            <?php include('teacher_sidebar.php'); ?>

            <div class="span9" id="content">
                <div class="row-fluid">
                    <div class="container">
                        <h2>Take Attendance (Today's Date: <?php echo date("d-m-Y"); ?>)</h2>
                        <form id="attendanceForm" method="post" action="take_attendance.php" onsubmit="return submitForm()">
                            <table>
                                <thead>
                                    <tr>
                                        <th>STUDENT NAME</th>
                                        <th>ATTENDANCE STATUS</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    // Assuming $conn is your database connection
                                    $sql = "SELECT student_id, firstname FROM student";
                                    $result = $conn->query($sql);

                                    if ($result && $result->num_rows > 0) {
                                        while ($row = $result->fetch_assoc()) {
                                            echo "<tr>";
                                            echo "<td>" . $row['firstname'] . "</td>";
                                            echo "<td>";
                                            echo "<label><input type='radio' name='attendance[" . $row['student_id'] . "]' value='Present'> Present</label>";
                                            echo "<label><input type='radio' name='attendance[" . $row['student_id'] . "]' value='Absent'> Absent</label>";
                                            echo "</td>";
                                            echo "</tr>";
                                        }
                                    } else {
                                        echo "<tr><td colspan='2'>No students found</td></tr>";
                                    }
                                    ?>

                                </tbody>
                            </table>
                            <input type="submit" name="submit_attendance" value="Submit Attendance">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include('footer.php'); ?>

    <script>
        function submitForm() {
            // Assuming the form submission is successful
            alert('Attendance recorded successfully!');

            // Optionally, you can remove the alert and uncomment the lines below to allow the form to be submitted to the backend.
            // return true;

            // Prevent the actual form submission for demonstration purposes
            return false;
        }
    </script>

</body>

</html>
