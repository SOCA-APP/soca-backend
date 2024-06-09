-- Tabel users
CREATE TABLE users(
  id INT IDENTITY(1, 1) PRIMARY KEY,
  fullName VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP
)

-- Tabel history
CREATE TABLE history (
  id INT IDENTITY(1, 1) PRIMARY KEY,
  userId INT NOT NULL,
  image VARCHAR(255) NOT NULL,
  label TEXT NOT NULL,
  confidenceScore FLOAT NOT NULL,
  isFavorite BIT DEFAULT 0,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (userId) REFERENCES users(id)
)