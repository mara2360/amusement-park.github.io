CREATE TABLE rides (
    ride_id INT AUTO_INCREMENT PRIMARY KEY,
    ride_name VARCHAR(255) NOT NULL,
    open_time TIME NOT NULL,
    close_time TIME NOT NULL,
    wait_time INT NOT NULL
);
