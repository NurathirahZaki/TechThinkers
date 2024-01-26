
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Insert Student Marks</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: white; /* Light pink background */
        }

        .container {
            width: 50%;
            margin: 0 auto;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 8px;
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

        tr:nth-child(even),
		tr:nth-child(odd) {
            background-color: lightcyan; /* Light pink for even rows */
        }

        tr:nth-child(odd) {
            background-color: lightcyan; /* White for odd rows */
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

<?php
// Assuming $conn is your database connection

// Fetch students from the database
$sql = "SELECT student_id, firstname FROM student";
$result = $conn->query($sql);

?>

<div class="container">
    <h2>Insert Student Marks</h2>
    <form method="post" action="process_marks1.php">
        <table>
            <tr>
                <th>Number</th>
                <th>Student Name</th>
                <th>Marks</th>
                <th>Grade</th>
                <th>Passed/Failed</th>
            </tr>

            <?php
            if ($result->num_rows > 0) {
                $count = 1;

                while ($row = $result->fetch_assoc()) {
                    echo "<tr>";
                    echo "<td>" . $count++ . "</td>"; // Display the number and increment count
                    echo "<td>" . $row['firstname'] . "</td>";
                    echo "<td><input type='number' name='marks[" . $row['student_id'] . "]' min='0' max='100'></td>";
                    echo "<td> - </td>"; // Placeholder for Grade
                    echo "<td> - </td>"; // Placeholder for Passed/Failed
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='4'>No students found</td></tr>";
            }
            ?>
        </table>
        <input type="submit" name="submit_marks" value="Submit Marks">
    </form>

		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
</body>

</html>
