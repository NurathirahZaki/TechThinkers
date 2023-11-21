<?php
// Assuming you have a database connection established
// Replace this with your database connection code
$conn = new mysqli('localhost', 'root', '', 'intellilearn');

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch student details based on a particular student ID (replace '1' with the actual student ID)
$student_id = 1; // Replace '1' with the actual student ID
$sql = "SELECT * FROM students WHERE id = $student_id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $firstname = $row['firstname'];
        $lastname = $row['lastname'];
        // Fetch other student details as needed
        // You can assign the fetched values to variables and display them in the HTML below
    }
} else {
    echo "No student found with the given ID";
}
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Register</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
    <style>
	     /* Additional styles for the login page */
        body {
            margin: 0;
            padding: 0;
            background-color: purple;
            font-family: Arial, sans-serif;
            color: black;
        }

        .login-container {
            text-align: center;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            margin: 50px auto;
            max-width: 400px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        .welcome-image {
            width: 150px;
            height: auto;
            margin-bottom: 20px;
            display: block;
            margin: 0 auto;
        }

        .welcome-text {
            font-size: 24px;
            margin-bottom: 5px;
        }

        .sub-text {
            font-size: 18px;
            margin-bottom: 20px;
        }

        .login-form {
            text-align: left;
            margin-top: 20px;
        }

        .login-form label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .login-form input {
            width: calc(100% - 20px);
            padding: 8px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .login-button {
            background-color: purple;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
        }

        .login-button:hover {
            background-color: #6a0dad;
        }
    </style>
</head>
<body>
<div class="login-container">
    <div class="top-panel">
    <h1 class="welcome-text">User Profile</h1>
    <img src="student.png" alt="Student image" class="student-image">
        
        <h2 class="sub-text">Details</h2>
    </div>

    <div class="user-profile">
        <!-- Displaying the fetched student details -->
        <div class="profile-item">
            <h3>First Name: <?php echo $firstname; ?></h3>
        </div>
        <div class="profile-item">
            <h3>Last Name: <?php echo $lastname; ?></h3>
        </div>
        <!-- Add more profile items for other student details -->
    </div>
</body>
</html>
