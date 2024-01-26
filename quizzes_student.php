
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <style>
        /* Dark blue/purple theme for the quiz page */
        body {
            font-family: Arial, sans-serif;
            background-color: white; /* Dark blue background */
            color: darkblue;
			text-align: center
            margin: 0;
            padding: 0;
        }

        /* Header styles */
        header {
            background-color: #0088cc; /* Darker blue header */
            color: white;
            padding: 80px;
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
            background-color: #4682B4; /* Dark blue section background */
            padding: 20px;
            text-align: center;
            color:white;
        }

        /* Image style */
        .dashboard-image {
            width: 60px;
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
	<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('student_sidebar.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
<body>
		
					    <!-- breadcrumb -->	
									<ul class="breadcrumb">
										<?php
										$school_year_query = mysqli_query($conn,"select * from school_year order by school_year DESC")or die(mysqli_error());
										$school_year_query_row = mysqli_fetch_array($school_year_query);
										$school_year = $school_year_query_row['school_year'];
										?>
											<li><a href="#"><b>My Class</b></a><span class="divider">/</span></li>
										<li><a href="#">School Year: <?php echo $school_year_query_row['school_year']; ?></a><span class="divider">/</span></li>
										<li><a href="#"><b>Quizizz</b></a></li>
									</ul>
						 <!-- end breadcrumb -->
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-right"></div>
	

    
        <h2><center>Quizizz</center></h2>
   
    <main>
        <a href="https://quizizz.com/join/quiz/60af1c6baa5e3d001c7a70ff/start?studentShare=true" class="AWS 1">
            <section id="quiz-1">
                <h2>Quiz 1</h2>
                <img class="dashboard-image" src="images/quiz.png" alt="Quiz 1 Image">
            </section>
        </a>
        <a href="#https://quizizz.com/join/quiz/5ffd820da290ed001b496d61/start?studentShare=true" class="AWS 2">
            <section id="quiz-2">
                <h2>Quiz 2</h2>
                <img class="dashboard-image" src="images/quiz.png" alt="Quiz 2 Image">
            </section>
        </a>
        <a href="#https://quizizz.com/join/quiz/637589808191cb001e4938ea/start?studentShare=true" class="AWS 3">
            <section id="quiz-3">
                <h2>Quiz 3</h2>
                <img class="dashboard-image" src="images/quiz.png" alt="Quiz 3 Image">
            </section>
        </a>
        <!-- Add more quiz sections as needed -->
    </main>
</body>
</html>

