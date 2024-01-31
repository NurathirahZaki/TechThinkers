<?php
include('session.php'); // Assuming this file includes your database connection code
include('dbcon.php');
// Assuming $conn is your database connection
$date = date("Y-m-d");
$query = "SELECT student.firstname, attendance.status, attendance.date
          FROM student
          LEFT JOIN attendance ON student.student_id = attendance.student_id
          WHERE attendance.date = '$date'";
$result = $conn->query($query);

// Generate CSV content
$csvFileName = "attendance_$date.csv";
header('Content-Type: text/csv');
header('Content-Disposition: attachment; filename="' . $csvFileName . '"');

$output = fopen('php://output', 'w');
fputcsv($output, array('STUDENT NAME', 'ATTENDANCE STATUS'));

if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        fputcsv($output, array($row['firstname'], $row['status']));
    }
} else {
    fputcsv($output, array('No attendance records found'));
}

fclose($output);
?>
