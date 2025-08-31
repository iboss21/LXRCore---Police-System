CREATE TABLE IF NOT EXISTS leo_citations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    citizen_id INT NOT NULL,
    statute VARCHAR(64),
    amount INT,
    issued_by INT,
    issued_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (citizen_id) REFERENCES mdt_citizens(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;