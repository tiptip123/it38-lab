<?php
session_start(); // Start the session

define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'enterprise_system');

try {
    // Create a PDO connection
    $conn = new PDO("mysql:host=" . DB_SERVER . ";dbname=" . DB_NAME, DB_USERNAME, DB_PASSWORD);
    // Set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Database connection failed: " . $e->getMessage());
}

// Get user ID from session (make sure the user is logged in)
$user_ID = $_SESSION['id'] ?? null;
if ($user_ID === null) {
    die("User not logged in.");
}

// Get today's date
$attendance_date = date('Y-m-d');

// Check if form is submitted
if (isset($_POST['submit'])) {
    // Prepare the SQL query
    $sql = "INSERT INTO attendance (user_id, attendance_date) VALUES (:user_id, :attendance_date)";

    // Prepare the statement using $conn (PDO)
    if ($stmt = $conn->prepare($sql)) {
        // Bind parameters
        $stmt->bindParam(':user_id', $user_ID, PDO::PARAM_INT);
        $stmt->bindParam(':attendance_date', $attendance_date, PDO::PARAM_STR);

        // Execute the statement
        if ($stmt->execute()) {
            echo "Attendance recorded successfully.";
        } else {
            echo "Error: " . $conn->errorInfo()[2];
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
</head>
<body>

<!-- Attendance Form -->
<form action="" method="post">
    <button type="submit" name="submit">Record Attendance</button>
</form>

</body>
</html>