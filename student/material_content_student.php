<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>E-Learning Subjects</title>
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

        /* Course subjects section styles */
        .subjects-container {
            padding: 20px;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .subject {
            text-align: center;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            width: 250px;
            /* Initial width for the subject container */
            transition: transform 0.3s ease;
            /* Smooth transition effect */
        }

        .subject img {
            width: 100%;
            height: 250px;
            /* Increased height for the subject image */
            object-fit: cover;
            border-radius: 5px 5px 0 0;
        }

        .subject h2 {
            margin: 10px 0;
        }

        .progress {
            font-size: 14px;
            margin-bottom: 10px;
            /* Increased margin for better separation */
            position: relative;
        }

        .progress-bar {
            position: absolute;
            top: calc(100% + 8px);
            /* Gap between the line and progress */
            left: 0;
            height: 5px;
            width: 50%;
            /* Change the width to show progress (e.g., 50% for demonstration) */
            background-color: #4CAF50;
            /* Change this color for the progress bar */
            border-radius: 5px;
            border-top-left-radius: 0;
            border-top-right-radius: 0;
            border: 1px solid #ddd;
            /* Border for the progress bar */
        }

        /* Hover effect for subjects */
        .subject:hover {
            transform: scale(1.1);
            /* Increase size on hover */
        }

        /* Responsive styles */
        @media (max-width: 768px) {
            .subjects-container {
                padding: 10px;
            }

            .subject {
                width: calc(50% - 20px);
                /* Adjust width for responsiveness */
            }
        }
		
		/* Styling for links within the subject cards */
        .subjects-container .subject a {
            text-decoration: none; /* Remove underline */
            color: black; /* Set font color to black */
        }

        /* Styling for subject names (h2) within .subject class */
        .subjects-container .subject h2 {
            color: black; /* Set font color to black */
            text-decoration: none; /* Remove underline */
        }

        /* Styling for progress percentages within .subject class */
        .subjects-container .subject .progress {
            color: black; /* Set font color to black */
        }

        /* Remove underline specifically from progress percentages */
        .subjects-container .subject .progress a {
            text-decoration: none; /* Remove underline */
            color: black; /* Set font color to black */
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
	

    <!-- Course subjects section -->
    <div class="subjects-container">
        <?php
        // Define an array with subjects and their completion status
        $subjects = [
            "Bahasa Melayu" => 90,
            "Bahasa Inggeris" => 50,
            "Pendidikan Islam" => 70,
            "Sejarah" => 80,
            "Matematik" => 50,
            "Matematik Tambahan" => 40,
            "Biologi" => 60,
            "Fizik" => 90,
            "Kimia" => 70
        ];

		foreach ($subjects as $subject => $completion) {
            // Generate subject cards with inline styles for links
            echo '<div class="subject">';
            echo '<a href="subject_details.php?subject=' . urlencode($subject) . '" style="text-decoration: none; color: black;">';
            echo '<img src="' . strtolower(str_replace(' ', '-', $subject)) . '.jpg" alt="' . $subject . '">';
            echo '<h2 style="text-decoration: none; color: black;">' . $subject . '</h2>';
            echo '<div class="progress" style="color: black;">' . $completion . '% complete';
            echo '<div class="progress-bar" style="width: ' . $completion . '%;"></div>';
            echo '</div>';
            echo '</a>';
            echo '</div>';
        }
        ?>
    </div>

</body>

</html>