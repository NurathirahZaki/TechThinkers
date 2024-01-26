<!DOCTYPE html>
<html>
<head>
    <title>Reading a Topic</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #fce4ec; /* Light pink background */
            margin: 0;
            padding: 20px;
            text-align: center;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff; /* White container background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Box shadow */
        }

        h1 {
            color: #c2185b; /* Heading color */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #f3e5f5; /* Header row background color */
            font-weight: bold;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            color: #fff;
            background-color: #c2185b; /* Button background color */
            border-radius: 6px;
            margin-top: 20px;
        }

        a:hover {
            background-color: #ad1457; /* Button hover background color */
        }

        a + a {
            margin-left: 20px;
        }
    </style>
</head>
<body>

<!-- PHP code for reading topic -->
<?php
if (!isset($_GET['id_topic_to_read'])) {
    echo 'Topic not defined.';
} else {
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "intellilearn";

    // Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Prepare our query using prepared statements
$sql = 'SELECT author, message, date_reply FROM forum_replies WHERE topic_correspondence=? ORDER BY date_reply ASC';

// Create a prepared statement
$stmt = $conn->prepare($sql);

// Bind the parameter (safely passing the value)
$stmt->bind_param('s', $_GET['id_topic_to_read']);

// Execute the query
$stmt->execute();

// Get the result
$result = $stmt->get_result();

// Process the result as needed
if ($result->num_rows > 0) {
    // Process the rows
} else {
    echo 'No replies yet.';
}

// Close the statement and connection
$stmt->close();
$conn->close();

}
?>


<!-- Insert a link to add replies to this topic -->
<a href="./insert_response.php?id_topic_to_read=<?php echo $_GET['id_topic_to_read']; ?>">Reply</a>
<br /><br />
<!-- Insert a link to return to the forum's home -->
<a href="./index.php">Back to Forum Home</a>

</body>
</html>
