<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Material Content</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: white;
        }

        /* Top panel styles */
        .top-panel {
            background-color: #ccc;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .top-panel .right-section {
            display: flex;
            align-items: center;
            gap: 15px;
            /* Adds space between child elements */
        }

        .profile-picture {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            overflow: hidden;
            margin-right: 5px;
            /* Decrease margin for closer gap */
        }

        .profile-picture img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            /* Ensures the image fills the container */
        }

        .student-info {
            display: flex;
            align-items: center;
            /* Align items vertically */
        }

        .student-info p {
            margin: 0;
            /* Reset margin to remove default space */
        }

        .notification-icon img,
        .logout-icon img {
            width: 40px;
            height: 40px;
            transition: transform 0.3s ease;
            /* Smooth transition effect */
        }
		
		/* Hover effect for icons */
        .notification-icon img:hover,
        .logout-icon img:hover {
            transform: scale(1.2);
            /* Increase size on hover */
        }
		
        /* Add styles for sections and their titles */
        .section {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 15px;
            margin-bottom: 20px;
        }

        .section h2 {
            margin-top: 0;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>
    <!-- Top panel -->
    <div class="top-panel">
        <div class="title">
            <h1>Subjects</h1>
        </div>
        <div class="right-section">
            <div class="notification-icon">
                <img src="notification bell.png" alt="Notification Bell">
            </div>
            <div class="student-info">
                <div class="student-text">
                    <p>Afiq</p>
                    <p>Student</p>
                </div>
            </div>
            <div class="profile-picture">
                <img src="afiq.png" alt="Profile Picture">
            </div>
            <div class="logout-icon">
                <img src="logout.png" alt="Logout">
            </div>
        </div>
    </div>

    <?php
    $selectedSubject = isset($_GET['subject']) ? urldecode($_GET['subject']) : 'Unknown Subject';
    ?>

    <!-- Subject title at the top -->
    <h1><?php echo $selectedSubject; ?></h1>

    <!-- Material content sections -->
    <div class="material-content">
        <!-- Announcement section -->
        <div class="section">
            <h2>Announcement</h2>
            <!-- Announcement content for the selected subject -->
        </div>

        <!-- Material section -->
        <div class="section">
            <h2>Material</h2>
            <!-- Material content for the selected subject -->
        </div>
    </div>

</body>

</html>
