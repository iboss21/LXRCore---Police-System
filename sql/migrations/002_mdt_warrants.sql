CREATE TABLE IF NOT EXISTS mdt_warrants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    citizen_id INT NOT NULL,
    officer_id INT NOT NULL,
    description TEXT,
    status ENUM('active', 'approved', 'expired') DEFAULT 'active',
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    expires_at DATETIME,
    FOREIGN KEY (citizen_id) REFERENCES mdt_citizens(id),
    INDEX(status)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;