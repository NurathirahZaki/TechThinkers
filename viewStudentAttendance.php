<?php
include('header_dashboard.php');
include('session.php');

// Process attendance form submission
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit_attendance'])) {
    // Assuming $conn is your database connection

    // Fetch today's date
    $date = date("Y-m-d");

    foreach ($_POST['attendance'] as $studentId => $status) {
        // Validate and sanitize the input if necessary

        // Insert or update attendance record
        $sql = "INSERT INTO attendance (student_id, status, date) VALUES (:student_id, :status, :date)
                ON DUPLICATE KEY UPDATE status = :status, date = :date";
        $stmt = $conn->prepare($sql);

        // Bind parameters and execute the statement
        $stmt->bindParam(':student_id', $studentId);
        $stmt->bindParam(':status', $status);
        $stmt->bindParam(':date', $date);
        $stmt->execute();
    }

    // Redirect to the same page with a success message
    header("Location: takeAttendance.php?success=1");
    exit();
}
?>

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

<body>
    <?php include('navbar_teacher.php'); ?>
    <div class="container">
        <div class="row-fluid">
            <?php include('teacher_sidebar.php'); ?>

            <div class="span9" id="content">
                <div class="row-fluid">
                    <div class="container">
                        <h2>Take Attendance (Today's Date: <?php echo date("d-m-Y"); ?>)</h2>

                        <?php
                        // Display success message if redirected with success parameter
                        if (isset($_GET['success']) && $_GET['success'] == 1) {
                            echo "<div class='alert alert-success'>Attendance recorded successfully!</div>";
                        }
                        ?>

                        <form method="post" action="takeAttendance.php" onsubmit="return submitForm()">
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
