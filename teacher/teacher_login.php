<?php
session_start();

// Check if the user is already logged in, redirect to dashboard if true
if (isset($_SESSION['teacher_id'])) {
    header("Location: teacher_dashboard.php");
    exit();
}

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['login'])) {
    // Database connection
    $conn = new mysqli('localhost', 'root', '', 'intellilearn');

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get username and password from the form
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Prepare and execute the SQL statement
    $stmt = $conn->prepare("SELECT id, username, password FROM teachers WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows == 1) {
        // Username exists, verify password
        $row = $result->fetch_assoc();
        if (password_verify($password, $row['password'])) {
            // Password is correct, create session and redirect to dashboard
            $_SESSION['teacher_id'] = $row['id'];
            $_SESSION['teacher_username'] = $row['username'];
            header("Location: teacher_dashboard.php");
            exit();
        } else {
            // Invalid password
            $error = "Invalid username or password!";
        }
    } else {
        // Invalid username
        $error = "Invalid username or password!";
    }

    // Close the statement and database connection
    $stmt->close();
    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Login</title>
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
    <img src="Welcome.png" alt="Welcome Student" class="welcome-image">
        <!-- Teacher login form -->
        <h1 class="welcome-text">Welcome To IntelliLearn</h1>
        <h2 class="sub-text">Teacher</h2>
        <form action="" method="post" class="login-form">
            <!-- Form fields -->
            <label for="username">Username:</label>
            <input type="text" name="username" required>

            <label for="password">Password:</label>
            <input type="password" name="password" required>
            
            <button type="submit" name="login" class="login-button">Login</button>
        </form>
        <?php if (isset($error)) { echo "<p>$error</p>"; } ?>
    </div>
</body>
</html>
