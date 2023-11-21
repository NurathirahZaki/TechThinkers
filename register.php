<?php
session_start();

// Handle registration for all users (teachers and students)
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['register'])) {
    // Database connection
    $conn = new mysqli('localhost', 'root', '', 'intellilearn');

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Set parameters and hash the password
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT); // Hash password for security
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $role = $_POST['role']; // This will distinguish between teachers and students

    // Prepare and bind the insert statement
    $stmt = $conn->prepare("INSERT INTO users (username, password, firstname, lastname, role) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $username, $password, $firstname, $lastname, $role);

    // Attempt to execute the prepared statement
    if ($stmt->execute()) {
        // Registration successful
        // Determine the login page based on the role
        if ($role === 'teacher') {
            header("Location: teacher_login.php");
            exit();
        } else if ($role === 'student') {
            // Redirect students to student login page upon successful registration
            header("Location: student_login.php");
            exit();
        }
    } else {
        // Display an error if registration fails
        $error = "Registration failed. Please try again.";
    }
    
    // Close the statement and database connection
    $stmt->close();
    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Head content -->
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
        <!-- Registration form -->
        <img src="Welcome.png" alt="Welcome Student" class="welcome-image">
        <h1 class="welcome-text">Welcome To IntelliLearn</h1>
        <h2 class="sub-text">SMK Tunku Abdul Rahman</h2>
        <form action="" method="post" class="login-form">
            <!-- Form fields -->
            <label for="firstname">First Name:</label>
            <input type="text" name="firstname" required>

            <label for="lastname">Last Name:</label>
            <input type="text" name="lastname" required>

            <label for="username">Username:</label>
            <input type="text" name="username" required>

            <label for="password">Password:</label>
            <input type="password" name="password" required>

            <label for="role">Role:</label>
            <select name="role" required>
                <option value="teacher">Teacher</option>
                <option value="student">Student</option>
            </select>
            
            <button type="submit" name="register" class="login-button">Register</button>
        </form>
        <?php if (isset($error)) { echo "<p>$error</p>"; } ?>
    </div>
</body>
</html>
