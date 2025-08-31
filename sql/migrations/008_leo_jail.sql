CREATE TABLE IF NOT EXISTS leo_jail (
    id INT AUTO_INCREMENT PRIMARY KEY,
    citizen_id INT NOT NULL,
    cell VARCHAR(32),
    sentence INT,
    remaining INT,
    jailed_by INT,
    start_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    release_time DATETIME,
    parole BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (citizen_id) REFERENCES mdt_citizens(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;