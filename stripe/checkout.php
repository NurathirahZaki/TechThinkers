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

require __DIR__ . "/vendor/autoload.php";

$stripe_secret_key = 'sk_test_51OMAuuGzHFLuL4bhT7byH9AJcb6pxhVFl95LeU6APeXm6MP1x1Id4qt9nbFop7kDfvGmcPOg8LRJEBxWtiY16MGg002CdS0RNe';

\Stripe\Stripe::setApiKey($stripe_secret_key);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $amount = $_POST['amount'] * 100; // Stripe deals with amounts in cents

    try {
        $session = \Stripe\Checkout\Session::create([
            'payment_method_types' => ['card'],
            'line_items' => [
                [
                    'price_data' => [
                        'currency' => 'myr', // Change this to your desired currency
                        'unit_amount' => $amount,
                        'product_data' => [
                            'name' => 'Donation',
                            'description' => 'Supporting SMKTAR\'s Educational Initiatives. Your donation contributes to technology advancements, scholarship programs, extracurricular activities, and infrastructure development at SMKTAR to nurture bright minds and academic excellence.',
                        ],
                    ],
                    'quantity' => 1,
                ],
            ],
            'mode' => 'payment',
            'success_url' => 'http://localhost/tryintellilearn/stripe/success.php', // Replace with your success URL
            'cancel_url' => 'http://localhost/index.php', // Replace with your cancel URL
        ]);

        http_response_code(303);
        header("Location: " . $session->url);
        exit;
    } catch (\Stripe\Exception\ApiErrorException $e) {
        // Handle Stripe API errors
        echo "Error: " . $e->getMessage();
    }
}
?>
