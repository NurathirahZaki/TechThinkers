<?php
// Check if the form was submitted
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_FILES["fileToUpload"])) {
    $target_dir = "uploads/";
    $uploadOk = 1;

    // Loop through each file
    foreach ($_FILES["fileToUpload"]["name"] as $key => $fileName) {
        $target_file = $target_dir . basename($fileName);
        $fileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

        // Allow certain file formats
        $allowedTypes = array('pdf', 'zip'); // Add any additional file formats here
        if (!in_array($fileType, $allowedTypes)) {
            echo "Sorry, only PDF and ZIP files are allowed for file '$fileName'.";
            $uploadOk = 0;
        }

        // Check if file already exists
        if (file_exists($target_file)) {
            echo "Sorry, the file '$fileName' already exists.";
            $uploadOk = 0;
        }

        // Check file size (limit to 8MB)
        if ($_FILES["fileToUpload"]["size"][$key] > 8000000) {
            echo "Sorry, your file '$fileName' is too large.";
            $uploadOk = 0;
        }

        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            echo " File '$fileName' was not uploaded.<br>";
        } else {
            // Attempt to upload file
            if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"][$key], $target_file)) {
                echo "The file '$fileName' has been uploaded successfully.<br>";

                // Perform database insert here
                // Connect to your database (example)
                $servername = "localhost";
                $username = "root";
                $password = "";
                $dbname = "intellilearn";

                try {
                    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
                    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

                    // Example SQL insert query, modify as needed
                    $stmt = $conn->prepare("INSERT INTO files (floc, fdatein, fdesc, teacher_id, class_id, fname, uploaded_by) 
                    VALUES (:floc, CURDATE(), :fdesc, :teacher_id, :class_id, :fname, :uploaded_by)");

                    $floc = $target_file;
                    $fdesc = "Description"; // Add description here
                    $teacher_id = 1; // Replace with actual teacher ID
                    $class_id = 1; // Replace with actual class ID
                    $uploaded_by = "Admin"; // Replace with uploader's name

                    $stmt->bindParam(':floc', $floc);
                    $stmt->bindParam(':fdesc', $fdesc);
                    $stmt->bindParam(':teacher_id', $teacher_id);
                    $stmt->bindParam(':class_id', $class_id);
                    $stmt->bindParam(':fname', $fileName);
                    $stmt->bindParam(':uploaded_by', $uploaded_by);

                    $stmt->execute();
                } catch (PDOException $e) {
                    echo "Error: " . $e->getMessage();
                }

                $conn = null;
            } else {
                echo "Sorry, there was an error uploading your file '$fileName'.<br>";
            }
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Uploaded Files</title>
</head>
<body>
    <h2>Uploaded Files</h2>
    <?php
    // Display uploaded files
    // Connect to your database (example)
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "intellilearn";

    try {
        $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Example SQL select query, modify as needed
        $stmt = $conn->prepare("SELECT file_id, fname FROM files");
        $stmt->execute();

        $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if (count($result) > 0) {
            foreach ($result as $row) {
                echo '<p>' . $row['fname'] . ' - <a href="delete.php?file_id=' . $row['file_id'] . '">Delete</a></p>';
            }
        } else {
            echo "No files uploaded yet.";
        }
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }

    $conn = null;
    ?>
</body>
</html>
