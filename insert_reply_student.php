<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reading a Topic</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: white; /* Light pink background */
            margin: 0;
            padding: 20px;
            text-align: center;
            color: white/* Text color */
        }

        table {
            width: 70%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #005580; /* Border color */
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: #005580; /* Header row background color */
            font-size: 18px; /* Header font size */
            font-weight: bold;
        }

        td {
            font-size: 16px; /* Data font size */
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            color: #fff;
            background-color:#005580; /* Button background color */
            border-radius: 6px;
            margin-top: 20px;
            font-size: 18px; /* Button font size */
        }

        a:hover {
            background-color: #005580; /* Button hover background color */
        }

        a + a {
            margin-left: 20px;
        }
    </style>
</head>
<body>

<?php
if (!isset($_GET['id_topic_to_read'])) {
    echo '<p>Undefined topic.</p>';
} else {
    ?>
    <table>
        <tr>
            <th>AUTHOR</th>
            <th>MESSAGES</th>
        </tr>
        <?php

        // Connect to the database
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "intellilearn";

        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Prepare the query
        $sql = 'SELECT author, message, date_reply FROM forum_replies WHERE topic_correspondence=1"' . $_GET['id_topic_to_read'] . '" ORDER BY date_reply ASC';

        // Execute the query and display an error message if it fail
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
            while ($data = $result->fetch_assoc()) {
                sscanf($data['date_reply'], "%4s-%2s-%2s %2s:%2s:%2s", $year, $month, $day, $hour, $minute, $second);

                echo '<tr>';
                echo '<td>';
                echo htmlentities(trim($data['author'])) . '<br />';
                echo $day . '-' . $month . '-' . $year . ' ' . $hour . ':' . $minute;
                echo '</td><td>';
                echo nl2br(htmlentities(trim($data['message'])));
                echo '</td></tr>';
            }
        } else {
            echo '<tr><td colspan="2">No replies yet.</td></tr>';
        }

        // Free the memory allocated for this query
        $conn->close();
        ?>
    </table>
    <br /><br />
    <a href="read_reply_student.php?id_topic_to_readr=123<?php echo $_GET['id_topic_to_read']; ?>">Reply</a>
    <?php
}
?>
<br /><br />
<a href="index_forum_student.php">Back to forum</a>

</body>
</html>
