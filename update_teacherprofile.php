<?php
include('header_dashboard.php');
include('session.php');


// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data
    $teacher_id = $_POST["teacher_id"];
    $firstname = $_POST["firstname"];
	$lastname = $_POST["lastname"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $aboutMe = $_POST["about"];

    // Update the teacher profile in the database
    $update_query = "UPDATE teacher SET firstname='$firstname',lastname='$lastname', email='$email', phone='$phone', about='$aboutMe' WHERE teacher_id='$teacher_id'";
    
    $result = mysqli_query($conn, $update_query);

    
// Check if the update was successful
    if ($result) {
        // Display a JavaScript popup message
        echo "<script>alert('Profile updated successfully');window.location.href='profile4_teacher.php';</script>";
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