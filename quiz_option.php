<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Quiz Page</title>
    <style>
        /* Dark blue/purple theme for the quiz page */
        body {
            font-family: Arial, sans-serif;
            background-color: #2c3e50; /* Dark blue background */
            color: white;
            margin: 0;
            padding: 0;
        }

        /* Header styles */
        header {
            background-color: #34495e; /* Darker blue header */
            color: white;
            padding: 10px;
            text-align: center;
        }

        /* Navigation styles */
        nav {
            background-color: #2980b9; /* Darker blue navigation */
            padding: 10px;
        }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: space-around;
        }

        nav ul li {
            display: inline;
            margin: 0 10px;
        }

        /* Main content styles */
        main {
            padding: 20px;
        }

        section {
            margin-bottom: 20px;
            background-color: #005580; /* Dark blue section background */
            padding: 20px;
            text-align: center;
            color: white;
        }

        /* Image style */
        .dashboard-image {
            width: 100px;
            height: auto;
            display: block;
            margin: 0 auto;
            margin-bottom: 10px;
        }
    </style>
</head>
<?php include('header_dashboard.php'); ?>
<?php include('session.php'); ?>
	
<body>
	<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('quiz_sidebar_teacher.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">

    <main>
        <section>
            <h2>Choose an Option Quiz</h2>
            <a href="quizzes.php">
                <button>Go to Quizzes</button>
            </a>
            <a href="teacher_quiz.php">
                <button>Manual Quiz Options</button>
            </a>
        </section>
    </main>
</body>

</html>
