<?php
session_start();

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if the username and password are correct (in this example, using hardcoded values)
    $username = "yusra";
    $password = "yusra123";

    if ($_POST['username'] === $username && $_POST['password'] === $password) {
        // Set session variables
        $_SESSION['username'] = $username;

        // Redirect to the dashboard after successful login
        header("Location: dashboard.php");
        exit();
    } else {
        // Invalid credentials, display an error or perform appropriate action
        $error = "Invalid username or password";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
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

        <h1 class="welcome-text">Welcome To IntelliLearn</h1>
        <h2 class="sub-text">Student</h2>

        <form action="dashboard.php" method="post" class="login-form">
            <label for="username">Username:</label>
            <input type="text" name="username" required>

            <label for="password">Password:</label>
            <input type="password" name="password" required>

            <button type="submit" class="login-button">Login</button>
        </form>
		<?php if (isset($error)) { echo "<p>$error</p>"; } ?>
    </div>
</body>
</html>