<?php
require_once('vendor/autoload.php');

// Database connection settings
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tryintellilearn";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$stripe_secret_key = 'sk_test_51OMAuuGzHFLuL4bhT7byH9AJcb6pxhVFl95LeU6APeXm6MP1x1Id4qt9nbFop7kDfvGmcPOg8LRJEBxWtiY16MGg002CdS0RNe';

\Stripe\Stripe::setApiKey($stripe_secret_key);

$checkout_session = \Stripe\Checkout\Session::create([
    "mode" => "payment",
    "success_url" => "http://localhost/success.php",
    "cancel_url" => "http://localhost/index.php",
    "locale" => "auto",
    "line_items" => [
        [
            "quantity" => 1,
            "price_data" => [
                "currency" => "usd",
                "unit_amount" => 2000,
                "product_data" => [
                    "name" => "T-shirt"
                ]
            ]
        ],
        [
            "quantity" => 2,
            "price_data" => [
                "currency" => "usd",
                "unit_amount" => 700,
                "product_data" => [
                    "name" => "Hat"
                ]
            ]
        ]
    ]
]);

// Store the session ID in the database
$session_id = $checkout_session->id;

$sql = "INSERT INTO stripe_sessions (session_id) VALUES ('$session_id')";

if ($conn->query($sql) === TRUE) {
    echo " ";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Payment Success</title>
    <style>
    body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            text-align: center;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #4CAF50;
            margin-bottom: 20px;
        }

        p {
            font-size: 18px;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div>
        <h1>Thank you for your payment!</h1>
        <p>Your payment was successful.</p>
        
        <!-- Redirect button -->
        <button onclick="redirectToHome()">Continue</button>
    </div>

    <script>
        function redirectToHome() {
            // Redirect to the home page or any other desired URL
            window.location.href = "http://localhost/tryintellilearn/stripe/";
        }
    </script>
</body>
</html>
