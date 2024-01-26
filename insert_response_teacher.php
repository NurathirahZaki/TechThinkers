<!DOCTYPE html>
<html>
<head>
    <title>Insert New Topic</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7eaea; /* Light pink background color */
            color: #333; /* Text color */
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            background-color: #fff; /* White background for the form */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Box shadow for a card-like appearance */
        }

        h1 {
            text-align: center;
            color: #ff6b6b; /* Pink color for heading */
        }

        table {
            width: 100%;
        }

        table tr td:first-child {
            width: 20%;
            text-align: right;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        textarea {
            resize: vertical;
        }

        input[type="submit"] {
            background-color: #ff6b6b; /* Pink color for the submit button */
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #ff4d4d; /* Darker pink color on hover */
        }

        .error {
            color: #ff6b6b; /* Error message color */
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Insert New Topic</h1>
    <form action="insert_reply_teacher.php" method="post">
        <table>
            <tr>
                <td><b>Name:</b></td>
                <td><input type="text" name="author" maxlength="30" value="<?php if (isset($_POST['author'])) echo htmlentities(trim($_POST['author'])); ?>"></td>
            </tr>
            <tr>
                <td><b>Title:</b></td>
                <td><input type="text" name="title" maxlength="50" value="<?php if (isset($_POST['title'])) echo htmlentities(trim($_POST['title'])); ?>"></td>
            </tr>
            <tr>
                <td><b>Message:</b></td>
                <td><textarea name="message" cols="50" rows="10"><?php if (isset($_POST['message'])) echo htmlentities(trim($_POST['message'])); ?></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td align="right"><input type="submit" name="go" value="Submit"></td>
            </tr>
        </table>
    </form>

    <?php
    if (isset($error)) echo '<div class="error">', $error, '</div>';
    ?>
</div>

</body>
</html>
