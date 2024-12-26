<?php
// Database configuration
include 'db_connection.php';

// Fetch rides for the dropdown
if (!isset($_GET['ride_id'])) {
    $sql = "SELECT ride_id, ride_name FROM rides";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<option value='" . $row['ride_id'] . "'>" . $row['ride_name'] . "</option>";
        }
    } else {
        echo "<option value=''>No rides available</option>";
    }
    exit;
}

if (isset($_GET['ride_id'])) {
    $ride_id = intval($_GET['ride_id']); // Sanitize input
	$sql = "SELECT ride_name, description, image, open_time, close_time, wait_time 
            FROM rides 
            WHERE ride_id = $ride_id";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
    	$ride = $result->fetch_assoc();
        echo json_encode($ride);
    } else {
        echo json_encode(['error' => 'Ride not found']);
    }
    exit;
}
?>
