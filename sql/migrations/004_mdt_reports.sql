CREATE TABLE IF NOT EXISTS mdt_reports (
    id INT AUTO_INCREMENT PRIMARY KEY,
    officer_id INT NOT NULL,
    citizen_id INT NOT NULL,
    report_type ENUM('arrest','citation','incident') NOT NULL,
    evidence_ids TEXT,
    description TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (officer_id) REFERENCES mdt_citizens(id),
    FOREIGN KEY (citizen_id) REFERENCES mdt_citizens(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;