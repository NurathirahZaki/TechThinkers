<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendance</title>
    <link rel="stylesheet" href="style.css">
    <style>
	    /* Top panel styles */
        .top-panel {
            background-color: #ccc;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
			color: black;
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
		
        /* Additional styles for the attendance */
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: purple; /* Background color set to purple */
            color: white; /* Text color set to white */
        }

        /* Attendance styles */
        .attendance-content {
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: white; /* Background color set to white */
            border-radius: 10px; /* Rounded corners */
            color: black; /* Set font color to black */
        }

        h3 {
            color: black; /* Font color for h3 elements */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white; /* Background color set to white */
        }

        th {
            background-color: #ccc; /* Header background color set to grey */
            color: black; /* Header text color set to black */
            padding: 8px;
            text-align: center;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: center;
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
	
    <div class="attendance-content">
        <h3>Attendance</h3>
        <table>
            <tr>
                <th>No.</th>
                <th>Code</th>
                <th>Subject</th>
                <th>Total Attend</th>
            </tr>
            <!-- Add more attendance records -->
            <tr>
                <td>1</td>
                <td>CS101</td>
                <td>Computer Science</td>
                <td>15 / 192</td>
            </tr>
            <tr>
                <td>2</td>
                <td>MATH201</td>
                <td>Mathematics</td>
                <td>18 / 192</td>
            </tr>
            <!-- Add more rows -->
        </table>
    </div>
</body>
</html>
