<?php /*?><?php include('header_dashboard.php'); ?>
    <?php include('session.php'); ?>
<?
// Delete marks
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete_marks'])) {
    $mark_id = $_POST['mark_id'];

    try {
        // Prepare a DELETE statement
        $sql = "DELETE FROM marks WHERE mark_id = :mark_id";

        // Prepare the statement
        $stmt = $conn->prepare($sql);

        // Bind the mark_id parameter
        $stmt->bindParam(':mark_id', $mark_id, PDO::PARAM_INT);

        // Execute the statement
        $stmt->execute();

        // Check if deletion was successful
        if ($stmt->rowCount() > 0) {
            echo "Mark deleted successfully";
        } else {
            echo "No mark found or deletion failed";
        }
    } catch (PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
}
?>
<?php */?>

<?php
// Assuming $conn is your database connection
<?php include('header_dashboard.php'); ?>
    <?php include('session.php'); ?>
<?
// Validate if the form is submitted and the necessary parameters are set
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['delete_marks'])) {
    // Assuming you have a valid connection named $conn

    // Check if marks to delete are selected
    if (!empty($_POST['delete_marks'])) {
        // Prepare the SQL statement
        $sql = "DELETE FROM marks WHERE student_id IN (";

        // Add placeholders for each selected student_id
        $placeholders = implode(',', array_fill(0, count($_POST['delete_marks']), '?'));

        $sql .= $placeholders . ")";

        // Prepare the statement
        $stmt = $conn->prepare($sql);

        if ($stmt) {
            // Bind parameters and execute the statement
            $types = str_repeat('i', count($_POST['delete_marks'])); // Assuming student_id is an integer
            $stmt->bind_param($types, ...$_POST['delete_marks']);
            $stmt->execute();

            // Check if any rows were affected (deleted)
            $affectedRows = $stmt->affected_rows;

            // Close the statement
            $stmt->close();

            if ($affectedRows > 0) {
                echo "<p>Marks deleted successfully!</p>";
            } else {
                echo "<p>No marks deleted. Please check the selected marks.</p>";
            }
        } else {
            echo "Error in preparing the SQL statement: " . $conn->error;
        }
    } else {
        echo "<p>No marks selected for deletion.</p>";
    }
} else {
    // Redirect back to the delete_marks.php if accessed directly without form submission
    header("Location: delete_marks1.php");
    exit();
}
?>
