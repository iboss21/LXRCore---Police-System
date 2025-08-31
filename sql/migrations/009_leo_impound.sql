CREATE TABLE IF NOT EXISTS leo_impound (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id VARCHAR(64) NOT NULL,
    citizen_id INT,
    impound_reason TEXT,
    impounded_by INT,
    impound_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    released BOOLEAN DEFAULT FALSE,
    release_time DATETIME,
    FOREIGN KEY (citizen_id) REFERENCES mdt_citizens(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;