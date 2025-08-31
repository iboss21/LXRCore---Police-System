CREATE TABLE IF NOT EXISTS mdt_evidence (
    id INT AUTO_INCREMENT PRIMARY KEY,
    report_id INT,
    unique_id VARCHAR(64) NOT NULL,
    description TEXT,
    photo TEXT,
    current_location VARCHAR(128),
    chain_of_custody TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (report_id) REFERENCES mdt_reports(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;