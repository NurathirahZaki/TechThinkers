<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="style.css">
    <style>
        /* Additional styles for the dashboard */
        body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-image: url("background.jpg"); 
        background-size: cover; /* Adjusts the size of the background image to cover the entire body */
        background-repeat: no-repeat; /* Prevents the background image from repeating */
        color: #333; /* Text color */
}

        /* Dashboard styles */
        .dashboard {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }

        .dashboard-item {
            width: 200px;
            height: 200px;
            margin: 20px;
            padding: 20px;
            border: 1px solid #ccc;
            transition: transform 0.3s ease-in-out;
            cursor: pointer;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            background-color: white; /* Background color set to white */
            color: purple; /* Text color set to purple */
            border-radius: 10px; /* Rounded corners */
        }

        .dashboard-item:hover {
            transform: scale(1.1);
        }
		
		/* CSS for the top-panel and title */
        .top-panel {
            display: flex;
            justify-content: left;
            align-items: left;
            background-color: indigo;
            color: white;
            padding: 10px 20px;
            height: 60px; /* Adjust the height as needed */
        }

        .page-title h2 {
            margin: 0;
        }

    </style>
</head>
<body>
    <div class="top-panel">
        <div class="page-title">
            <h2>Dashboard</h2>
        </div>
    </div>
	
    <div class="dashboard">
        <div class="dashboard-item">
            <h3>Calendar</h3>
        </div>
        <div class="dashboard-item">
            <h3>Subject</h3>
        </div>
        <div class="dashboard-item">
            <h3>User Profile</h3>
        </div>
        <a href="attendance.php" class="dashboard-item">
            <h3>Attendance</h3>
        </a>
        <div class="dashboard-item">
            <h3>Grade</h3>
        </div>
        <div class="dashboard-item">
            <h3>Communication</h3>
        </div>
    </div>
</body>
</html>
