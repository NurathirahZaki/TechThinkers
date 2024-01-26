<?php
include('header_dashboard.php');
include('session.php');


// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $student_id = $_POST["student_id"];
    $firstname = $_POST["firstname"];
	$lastname = $_POST["lastname"];
   

    // Update the student profile in the database
    $update_query = "UPDATE student SET firstname='$firstname',lastname='$lastname'  WHERE student_id='$student_id'";
    
    $result = mysqli_query($conn, $update_query);

    
// Check if the update was successful
    if ($result) {
        // Display a JavaScript popup message
        echo "<script>alert('Profile updated successfully');window.location.href='profile_student.php';</script>";
    } else {
        echo "Error updating profile: " . mysqli_error($conn);
    }
}

// Close the database connection
$conn->close();
?>

<?php /*?>// Check if the update was successful
    if ($result) {
        echo "Profile updated successfully";
    } else {
        echo "Error updating profile: " . mysqli_error($conn);
    }
}<?php */?>