CREATE TABLE IF NOT EXISTS mdt_audit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    action VARCHAR(128),
    target_type VARCHAR(64),
    target_id INT,
    details TEXT,
    timestamp DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES mdt_citizens(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;