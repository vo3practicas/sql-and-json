phpMyAdmin:

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT,
  full_name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  phone VARCHAR(20) NOT NULL,
  address VARCHAR(255) NOT NULL
  PRIMARY KEY (id)
);

INSERT INTO users (full_name, email, phone, address) VALUES
('John Doe', 'john.doe@example.com', '+1234567890', '123 Main St, City, Country'),
('Jane Smith', 'jane.smith@example.com', '+1234567891', '456 Elm St, City, Country'),
('Michael Johnson', 'michael.johnson@example.com', '+1234567892', '789 Oak St, City, Country'),
('Emily Brown', 'emily.brown@example.com', '+1234567893', '1011 Pine St, City, Country'),
('Daniel Martinez', 'daniel.martinez@example.com', '+1234567894', '1213 Cedar St, City, Country'),
('Sarah Davis', 'sarah.davis@example.com', '+1234567895', '1415 Maple St, City, Country'),
('Christopher Wilson', 'christopher.wilson@example.com', '+1234567896', '1617 Birch St, City, Country'),
('Jessica Taylor', 'jessica.taylor@example.com', '+1234567897', '1819 Walnut St, City, Country'),
('Matthew Anderson', 'matthew.anderson@example.com', '+1234567898', '2021 Chestnut St, City, Country'),
('Amanda Thomas', 'amanda.thomas@example.com', '+1234567899', '2223 Poplar St, City, Country'),
('David Rodriguez', 'david.rodriguez@example.com', '+1234567800', '2425 Fir St, City, Country'),
('Ashley Wilson', 'ashley.wilson@example.com', '+1234567801', '2627 Pine St, City, Country'),
('James Lee', 'james.lee@example.com', '+1234567802', '2829 Oak St, City, Country'),
('Jennifer Garcia', 'jennifer.garcia@example.com', '+1234567803', '3031 Cedar St, City, Country'),
('Ryan Hernandez', 'ryan.hernandez@example.com', '+1234567804', '3233 Maple St, City, Country'),
('Mary Gonzalez', 'mary.gonzalez@example.com', '+1234567805', '3435 Birch St, City, Country'),
('Justin Perez', 'justin.perez@example.com', '+1234567806', '3637 Walnut St, City, Country'),
('Nicole Martinez', 'nicole.martinez@example.com', '+1234567807', '3839 Chestnut St, City, Country'),
('Jacob Young', 'jacob.young@example.com', '+1234567808', '4041 Poplar St, City, Country'),
('Elizabeth Sanchez', 'elizabeth.sanchez@example.com', '+1234567809', '4243 Fir St, City, Country'),
('William Flores', 'william.flores@example.com', '+1234567810', '4445 Pine St, City, Country'),
('Samantha Rivera', 'samantha.rivera@example.com', '+1234567811', '4647 Oak St, City, Country'),
('Tyler Torres', 'tyler.torres@example.com', '+1234567812', '4849 Cedar St, City, Country'),
('Hannah Ramirez', 'hannah.ramirez@example.com', '+1234567813', '5051 Maple St, City, Country'),
('Andrew Flores', 'andrew.flores@example.com', '+1234567814', '5253 Birch St, City, Country');

SQLite:

CREATE TABLE "users" (
	"id"	INTEGER,
	"full_name"	TEXT,
	"email"	TEXT,
	"phone"	TEXT,
	"address"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);

OTHER:
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT,
  name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(25),
  address VARCHAR(255),
  created_at DATETIME,
  status BOOLEAN,
  PRIMARY KEY (id)
);

INSERT INTO users (name, email, phone, address, created_at, status) VALUES
('John Doe', 'john.doe@example.com', '+1234567890', '123 Main St, City, Country', NOW(), 1),
('Jane Smith', 'jane.smith@example.com', '+1234567891', '456 Elm St, City, Country',NOW(), 1),
('Michael Johnson', 'michael.johnson@example.com', '+1234567892', '789 Oak St, City, Country', NOW(), 1),
('Emily Brown', 'emily.brown@example.com', '+1234567893', '1011 Pine St, City, Country', NOW(), 1),
('Daniel Martinez', 'daniel.martinez@example.com', '+1234567894', '1213 Cedar St, City, Country', NOW(), 1),
('Sarah Davis', 'sarah.davis@example.com', '+1234567895', '1415 Maple St, City, Country', NOW(), 1),
('Christopher Wilson', 'christopher.wilson@example.com', '+1234567896', '1617 Birch St, City, Country', NOW(), 1),
('Jessica Taylor', 'jessica.taylor@example.com', '+1234567897', '1819 Walnut St, City, Country', NOW(), 1),
('Matthew Anderson', 'matthew.anderson@example.com', '+1234567898', '2021 Chestnut St, City, Country', NOW(), 1),
('Amanda Thomas', 'amanda.thomas@example.com', '+1234567899', '2223 Poplar St, City, Country', NOW(), 1),
('David Rodriguez', 'david.rodriguez@example.com', '+1234567800', '2425 Fir St, City, Country', NOW(), 1),
('Ashley Wilson', 'ashley.wilson@example.com', '+1234567801', '2627 Pine St, City, Country', NOW(), 1),
('James Lee', 'james.lee@example.com', '+1234567802', '2829 Oak St, City, Country', NOW(), 1),
('Jennifer Garcia', 'jennifer.garcia@example.com', '+1234567803', '3031 Cedar St, City, Country', NOW(), 1),
('Ryan Hernandez', 'ryan.hernandez@example.com', '+1234567804', '3233 Maple St, City, Country', NOW(), 1),
('Mary Gonzalez', 'mary.gonzalez@example.com', '+1234567805', '3435 Birch St, City, Country', NOW(), 1),
('Justin Perez', 'justin.perez@example.com', '+1234567806', '3637 Walnut St, City, Country', NOW(), 1),
('Nicole Martinez', 'nicole.martinez@example.com', '+1234567807', '3839 Chestnut St, City, Country', NOW(), 1),
('Jacob Young', 'jacob.young@example.com', '+1234567808', '4041 Poplar St, City, Country', NOW(), 1),
('Elizabeth Sanchez', 'elizabeth.sanchez@example.com', '+1234567809', '4243 Fir St, City, Country', NOW(), 1),
('William Flores', 'william.flores@example.com', '+1234567810', '4445 Pine St, City, Country', NOW(), 1),
('Samantha Rivera', 'samantha.rivera@example.com', '+1234567811', '4647 Oak St, City, Country', NOW(), 1),
('Tyler Torres', 'tyler.torres@example.com', '+1234567812', '4849 Cedar St, City, Country', NOW(), 1),
('Hannah Ramirez', 'hannah.ramirez@example.com', '+1234567813', '5051 Maple St, City, Country', NOW(), 1),
('Andrew Flores', 'andrew.flores@example.com', '+1234567814', '5253 Birch St, City, Country', NOW(), 1);