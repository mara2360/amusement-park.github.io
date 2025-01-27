<?php
// Database configuration
$host = 'localhost';
$dbname = 'amusement_park';
$username = 'root';
$password = '';

// Create connection
$conn = new mysqli($host, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get ride_id from the request
$ride_id = intval($_GET['ride_id']);

// Query the database
$sql = "SELECT open_time, close_time, wait_time FROM rides WHERE ride_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $ride_id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $data = $result->fetch_assoc();
    echo json_encode($data);
} else {
    echo json_encode(["error" => "Ride not found"]);
}

$stmt->close();
$conn->close();
?>
