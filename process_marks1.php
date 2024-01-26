<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Process Student Marks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: white; /* Light pink background */
        }

        .container {
            width: 80%;
            margin: 0 auto;
            background-color: #fff; /* White container background */
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
            background-color: #005580; /* Light pink header */
            color: white;
        }

        tr:nth-child(even) , tr:nth-child(odd){
            background-color: lightcyan; /* Light pink for even rows */
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
<?php include('header_dashboard.php'); ?>
    <?php include('session.php'); ?>
<body>
   
    <?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('grade_sidebar_teacher.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
						 
            <div class="container">
                <h2>Process Student Marks</h2>
                <?php
                if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['submit_marks'])) {
                    // Assuming $conn is your database connection

                    echo "<table>";
                    echo "<tr><th>Student ID</th><th>Marks</th><th>Grade</th><th>Status</th></tr>";

                    foreach ($_POST['marks'] as $studentId => $mark) {
                        // Validate and sanitize the $mark input here if necessary

                        // Calculate grade based on the entered mark (example criteria)
                        if ($mark >= 90) {
                            $passed = 'Passed with A+';
                        } elseif ($mark >= 80) {
                            $passed = 'Passed with A';
                        } elseif ($mark >= 70) {
                            $passed = 'Passed with A-';
                        } elseif ($mark >= 65) {
                            $passed = 'Passed with B+';
                        } elseif ($mark >= 60) {
                            $passed = 'Passed with B-';
                        } elseif ($mark >= 55) {
                            $passed = 'Passed with C+';
                        } elseif ($mark >= 50) {
                            $passed = 'Passed with C';
                        } elseif ($mark >= 45) {
                            $passed = 'Passed with D';
                        } elseif ($mark >= 40) {
                            $passed = 'Passed with E';
                        } else {
                            $passed = 'Failed';
                        }

                        // Calculate grade based on the entered mark (using the provided criteria)
                        if ($mark >= 90) {
                            $grade = 'A+';
                        } elseif ($mark >= 80) {
                            $grade = 'A';
                        } elseif ($mark >= 70) {
                            $grade = 'A-';
                        } elseif ($mark >= 65) {
                            $grade = 'B+';
                        } elseif ($mark >= 60) {
                            $grade = 'B-';
                        } elseif ($mark >= 55) {
                            $grade = 'C+';
                        } elseif ($mark >= 50) {
                            $grade = 'C';
                        } elseif ($mark >= 45) {
                            $grade = 'C-';
                        } elseif ($mark >= 40) {
                            $grade = 'D';
                        } else {
                            $grade = 'E';
                        }

                        // Determine pass/fail based on the entered mark (modify as per your criteria)
                        $passed = ($mark >= 40) ? 'Passed' : 'Failed';

                        $sql = "INSERT INTO marks (student_id, marks_obtained, grade, passed) VALUES (?, ?, ?, ?)";
                        $stmt = $conn->prepare($sql);

                        // Bind parameters and execute the statement
                        $stmt->bind_param('isss', $studentId, $mark, $grade, $passed);

                        // Execute the prepared statement
                        $stmt->execute();

                        echo "<tr>";
                        echo "<td>$studentId</td>";
                        echo "<td>$mark</td>";
                        echo "<td>$grade</td>";
                        echo "<td class='" . strtolower($passed) . "'>$passed</td>";
                        echo "</tr>";
                    }

                    echo "</table>";

                    // Now you have $studentId, $mark, $grade, $passed for each student
                    // Perform database operations here to store these values, update tables, etc.
                    // For example, you might perform an INSERT or UPDATE query to store this information in your database

                    // Redirect or show a success message after processing the marks
                    // For example, redirect back to insert_marks.php after processing
                    echo "<p>Marks processed successfully!</p>";
                    echo "<a href='insert_marks1.php'>Go back</a>";

                } else {
                    // Redirect back to insert_marks.php if accessed directly without form submission
                    header("Location: insert_marks1.php");
                    exit();
                }
                ?>
            </div>
        </div>
    </div>
</body>

</html>
