phpMyAdmin:

CREATE TABLE IF NOT EXISTS ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario INT,
    producto VARCHAR(255),
    precio DECIMAL(10, 2),
    fecha DATE,
    stock INT,
    FOREIGN KEY (usuario) REFERENCES users(id)
);

INSERT INTO ventas (usuario, producto, precio, fecha, stock) VALUES
(1, 'Laptop', 1200.50, '2024-04-01', 10),
(1, 'Smartphone', 800.75, '2024-04-02', 15),
(3, 'Tablet', 300.40, '2024-04-03', 20),
(8, 'Monitor', 150.20, '2024-04-04', 25),
(4, 'Teclado', 50.10, '2024-04-05', 30),
(18, 'Laptop', 1201.50, '2024-04-06', 9),
(1, 'Smartphone', 801.75, '2024-04-07', 14),
(18, 'Tablet', 301.40, '2024-04-08', 19),
(3, 'Monitor', 151.20, '2024-04-09', 24),
(3, 'Teclado', 51.10, '2024-04-10', 29),
(21, 'Laptop', 1250.50, '2024-05-20', 0),
(18, 'Smartphone', 850.75, '2024-05-21', 5),
(8, 'Tablet', 350.40, '2024-05-22', 10),
(1, 'Monitor', 200.20, '2024-05-23', 15),
(7, 'Teclado', 100.10, '2024-05-24', 20),
(7, 'Impresora 3D', 1200.00, '2024-05-25', 15),
(1, 'Drone', 500.00, '2024-05-26', 30),
(21, 'Cámara digital', 200.00, '2024-05-27', 50),
(15, 'Proyector', 800.00, '2024-05-28', 10),
(21, 'Router', 100.00, '2024-05-29', 40),
(3, 'Disco duro externo', 85.00, '2024-05-30', 60),
(8, 'Memoria USB', 20.00, '2024-05-31', 200),
(15, 'Ratón inalámbrico', 25.00, '2024-06-01', 150),
(18, 'Teclado inalámbrico', 30.00, '2024-06-02', 120),
(19, 'Altavoces Bluetooth', 45.00, '2024-06-03', 80),
(19, 'Micrófono', 75.00, '2024-06-04', 50),
(12, 'Webcam', 50.00, '2024-06-05', 70),
(11, 'Auriculares', 35.00, '2024-06-06', 90),
(11, 'Cargador portátil', 20.00, '2024-06-07', 100),
(21, 'Adaptador HDMI', 10.00, '2024-06-08', 300),
(11, 'Tarjeta gráfica', 300.00, '2024-07-09', 20),
(11, 'Procesador', 250.00, '2024-07-10', 25);

SQLite:

CREATE TABLE "ventas" (
	"id"	INTEGER,
	"usuario"	INTEGER,
	"producto"	TEXT,
	"precio"	TEXT,
	"fecha"	TEXT,
    "stock" NUMERIC,
	PRIMARY KEY("id" AUTOINCREMENT)
);

OTHER:
CREATE TABLE IF NOT EXISTS sells (
  id INT AUTO_INCREMENT,
  user_id INT(9),
  product_id INT(9),
  product_price FLOAT(9),
  date DATETIME,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (product_id) REFERENCES products(id),
  FOREIGN KEY (product_price) REFERENCES products(price)
);

INSERT INTO sells (user_id, product_id, product_price, date) VALUES
(1, 1, 1200.50, NOW()),
(1, 3, 800.75, NOW()),
(3, 4, 300.40, NOW()),
(8, 2, 150.20, NOW()),
(4, 8, 50.10, NOW()),
(18, 1, 1201.50, NOW()),
(1, 3, 801.75, NOW()),
(18, 4, 301.40, NOW()),
(3, 2, 151.20, NOW()),
(3, 8, 51.10, NOW()),
(21, 1, 1250.50, NOW()),
(18, 3, 850.75, NOW()),
(8, 4, 350.40, NOW()),
(1, 2, 200.20, NOW()),
(7, 8, 100.10, NOW()),
(7, 7, 1200.00, NOW()),
(1, 5, 500.00, NOW()),
(20, 6, 200.00, NOW()),
(15, 9, 800.00, NOW()),
(21, 10, 100.00, NOW()),
(3, 12, 85.00, NOW()),
(8, 11, 20.00, NOW()),
(15, 13, 25.00, NOW()),
(18, 14, 30.00, NOW()),
(16, 15, 45.00, NOW()),
(19, 16, 75.00, NOW()),
(12, 17, 50.00, NOW()),
(23, 18, 35.00, NOW()),
(11, 4, 20.00, NOW()),
(21, 8, 10.00, NOW()),
(25, 7, 300.00, NOW()),
(11, 3, 250.00, NOW());

CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT,
  name VARCHAR(255),
  brand_id INT(9),
  price FLOAT(9),
  stock INT(9),
  created_at DATETIME,
  PRIMARY KEY (id),
  FOREIGN KEY (brand_id) REFERENCES brands(id)
);

INSERT INTO products (name, brand_id, price, stock, created_at) VALUES
('Laptop', 1, 1200.00, 12, NOW()),
('Smartphone', 1, 350.00, 12, NOW()),
('Procesador', 1, 420.00, 12, NOW()),
('Monitor', 1, 120.00, 12, NOW()),
('Altavoces Bluetooth', 1, 100.00, 12, NOW()),
('Tarjeta gráfica', 1, 600.00, 12, NOW()),
('Adaptador HDMI', 1, 10.00, 12, NOW()),
('Tablet', 1, 250.00, 12, NOW()),
('Disco duro externo', 1, 50.00, 30, NOW()),
('Teclado', 1, 20.00, 15, NOW()),
('Router', 1, 50.00, 11, NOW()),
('Drone', 1, 300.00, 3, NOW()),
('Impresora 3D', 1, 90.00, 7, NOW()),
('Cámara digital', 1, 780.00, 7, NOW()),
('Auriculares', 1, 20.00, 29, NOW()),
('Webcam', 1, 15.00, 40, NOW()),
('Memoria USB', 1, 10.00, 25, NOW()),
('Teclado inalámbrico', 1, 35.00, 35, NOW()),
('Ratón inalámbrico', 1, 20.00, 30, NOW());

CREATE TABLE IF NOT EXISTS brands (
  id INT AUTO_INCREMENT,
  name VARCHAR(255),
  created_at DATETIME,
  PRIMARY KEY (id)
);

INSERT INTO brands (name, created_at) VALUES
('Dell', NOW()),
('HP', NOW()),
('Assus', NOW()),
('Kingston', NOW());