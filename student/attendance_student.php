<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendance</title>
    <link rel="stylesheet" href="style.css">
    <style>
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
