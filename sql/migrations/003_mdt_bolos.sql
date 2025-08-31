CREATE TABLE IF NOT EXISTS mdt_bolos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type ENUM('person','property','vehicle') NOT NULL,
    data TEXT,
    created_by INT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    expires_at DATETIME,
    INDEX(type)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;