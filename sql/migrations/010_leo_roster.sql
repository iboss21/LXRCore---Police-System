CREATE TABLE IF NOT EXISTS leo_roster (
    id INT AUTO_INCREMENT PRIMARY KEY,
    officer_id INT NOT NULL,
    department VARCHAR(64),
    grade VARCHAR(32),
    last_seen DATETIME DEFAULT CURRENT_TIMESTAMP,
    current_zone VARCHAR(64),
    assigned_horse VARCHAR(64),
    assigned_wagon VARCHAR(64),
    FOREIGN KEY (officer_id) REFERENCES mdt_citizens(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;