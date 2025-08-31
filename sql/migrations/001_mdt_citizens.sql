CREATE TABLE IF NOT EXISTS mdt_citizens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    identifier VARCHAR(64) NOT NULL,
    name VARCHAR(128) NOT NULL,
    mugshot TEXT,
    notes TEXT,
    last_seen DATETIME DEFAULT CURRENT_TIMESTAMP,
    priors TEXT,
    INDEX(identifier)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;