CREATE TABLE IF NOT EXISTS requests (
    id INT AUTO_INCREMENT PRIMARY KEY,
    request_ip VARCHAR(45),
    request_date DATETIME
);