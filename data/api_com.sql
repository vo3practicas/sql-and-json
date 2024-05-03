-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-04-2024 a las 05:13:49
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `api.com`
--

CREATE DATABASE api
USE api;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`) VALUES
(1, 'Dell', '2024-04-28 02:08:42'),
(2, 'HP', '2024-04-28 02:08:42'),
(3, 'Assus', '2024-04-28 02:08:42'),
(4, 'Kingston', '2024-04-28 02:08:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `brand_id` int DEFAULT NULL,
  `price` float DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `brand_id`, `price`, `stock`, `created_at`) VALUES
(1, 'Laptop', 1, 1200, 12, '2024-04-28 02:09:44'),
(2, 'Smartphone', 1, 350, 12, '2024-04-28 02:09:44'),
(3, 'Procesador', 1, 420, 12, '2024-04-28 02:09:44'),
(4, 'Monitor', 1, 120, 12, '2024-04-28 02:09:44'),
(5, 'Altavoces Bluetooth', 1, 100, 12, '2024-04-28 02:09:44'),
(6, 'Tarjeta gráfica', 1, 600, 12, '2024-04-28 02:09:44'),
(7, 'Adaptador HDMI', 1, 10, 12, '2024-04-28 02:09:44'),
(8, 'Tablet', 1, 250, 12, '2024-04-28 02:09:44'),
(9, 'Disco duro externo', 1, 50, 30, '2024-04-28 02:09:44'),
(10, 'Teclado', 1, 20, 15, '2024-04-28 02:09:44'),
(11, 'Router', 1, 50, 11, '2024-04-28 02:09:44'),
(12, 'Drone', 1, 300, 3, '2024-04-28 02:09:44'),
(13, 'Impresora 3D', 1, 90, 7, '2024-04-28 02:09:44'),
(14, 'Cámara digital', 1, 780, 7, '2024-04-28 02:09:44'),
(15, 'Auriculares', 1, 20, 29, '2024-04-28 02:09:44'),
(16, 'Webcam', 1, 15, 40, '2024-04-28 02:09:44'),
(17, 'Memoria USB', 1, 10, 25, '2024-04-28 02:09:44'),
(18, 'Teclado inalámbrico', 1, 35, 35, '2024-04-28 02:09:44'),
(19, 'Ratón inalámbrico', 1, 20, 30, '2024-04-28 02:09:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sells`
--

DROP TABLE IF EXISTS `sells`;
CREATE TABLE IF NOT EXISTS `sells` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `product_id` (`product_id`),
  KEY `product_price` (`product_price`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sells`
--

INSERT INTO `sells` (`id`, `user_id`, `product_id`, `product_price`, `date`) VALUES
(1, 1, 1, 1200.5, '2024-04-28 02:11:04'),
(2, 1, 3, 800.75, '2024-04-28 02:11:04'),
(3, 3, 4, 300.4, '2024-04-28 02:11:04'),
(4, 8, 2, 150.2, '2024-04-28 02:11:04'),
(5, 4, 8, 50.1, '2024-04-28 02:11:04'),
(6, 18, 1, 1201.5, '2024-04-28 02:11:04'),
(7, 1, 3, 801.75, '2024-04-28 02:11:04'),
(8, 18, 4, 301.4, '2024-04-28 02:11:04'),
(9, 3, 2, 151.2, '2024-04-28 02:11:04'),
(10, 3, 8, 51.1, '2024-04-28 02:11:04'),
(11, 21, 1, 1250.5, '2024-04-28 02:11:04'),
(12, 18, 3, 850.75, '2024-04-28 02:11:04'),
(13, 8, 4, 350.4, '2024-04-28 02:11:04'),
(14, 1, 2, 200.2, '2024-04-28 02:11:04'),
(15, 7, 8, 100.1, '2024-04-28 02:11:04'),
(16, 7, 7, 1200, '2024-04-28 02:11:04'),
(17, 1, 5, 500, '2024-04-28 02:11:04'),
(18, 20, 6, 200, '2024-04-28 02:11:04'),
(19, 15, 9, 800, '2024-04-28 02:11:04'),
(20, 21, 10, 100, '2024-04-28 02:11:04'),
(21, 3, 12, 85, '2024-04-28 02:11:04'),
(22, 8, 11, 20, '2024-04-28 02:11:04'),
(23, 15, 13, 25, '2024-04-28 02:11:04'),
(24, 18, 14, 30, '2024-04-28 02:11:04'),
(25, 16, 15, 45, '2024-04-28 02:11:04'),
(26, 19, 16, 75, '2024-04-28 02:11:04'),
(27, 12, 17, 50, '2024-04-28 02:11:04'),
(28, 23, 18, 35, '2024-04-28 02:11:04'),
(29, 11, 4, 20, '2024-04-28 02:11:04'),
(30, 21, 8, 10, '2024-04-28 02:11:04'),
(31, 25, 7, 300, '2024-04-28 02:11:04'),
(32, 11, 3, 250, '2024-04-28 02:11:04'),
(33, 13, 8, 250, '2024-04-28 02:13:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `status`) VALUES
(1, 'John Doe', 'john.doe@example.com', '+1234567890', '123 Main St, City, Country', '2024-04-28 02:08:18', 1),
(2, 'Jane Smith', 'jane.smith@example.com', '+1234567891', '456 Elm St, City, Country', '2024-04-28 02:08:18', 1),
(3, 'Michael Johnson', 'michael.johnson@example.com', '+1234567892', '789 Oak St, City, Country', '2024-04-28 02:08:18', 1),
(4, 'Emily Brown', 'emily.brown@example.com', '+1234567893', '1011 Pine St, City, Country', '2024-04-28 02:08:18', 1),
(5, 'Daniel Martinez', 'daniel.martinez@example.com', '+1234567894', '1213 Cedar St, City, Country', '2024-04-28 02:08:18', 1),
(6, 'Sarah Davis', 'sarah.davis@example.com', '+1234567895', '1415 Maple St, City, Country', '2024-04-28 02:08:18', 1),
(7, 'Christopher Wilson', 'christopher.wilson@example.com', '+1234567896', '1617 Birch St, City, Country', '2024-04-28 02:08:18', 1),
(8, 'Jessica Taylor', 'jessica.taylor@example.com', '+1234567897', '1819 Walnut St, City, Country', '2024-04-28 02:08:18', 1),
(9, 'Matthew Anderson', 'matthew.anderson@example.com', '+1234567898', '2021 Chestnut St, City, Country', '2024-04-28 02:08:18', 1),
(10, 'Amanda Thomas', 'amanda.thomas@example.com', '+1234567899', '2223 Poplar St, City, Country', '2024-04-28 02:08:18', 1),
(11, 'David Rodriguez', 'david.rodriguez@example.com', '+1234567800', '2425 Fir St, City, Country', '2024-04-28 02:08:18', 1),
(12, 'Ashley Wilson', 'ashley.wilson@example.com', '+1234567801', '2627 Pine St, City, Country', '2024-04-28 02:08:18', 1),
(13, 'James Lee', 'james.lee@example.com', '+1234567802', '2829 Oak St, City, Country', '2024-04-28 02:08:18', 1),
(14, 'Jennifer Garcia', 'jennifer.garcia@example.com', '+1234567803', '3031 Cedar St, City, Country', '2024-04-28 02:08:18', 1),
(15, 'Ryan Hernandez', 'ryan.hernandez@example.com', '+1234567804', '3233 Maple St, City, Country', '2024-04-28 02:08:18', 1),
(16, 'Mary Gonzalez', 'mary.gonzalez@example.com', '+1234567805', '3435 Birch St, City, Country', '2024-04-28 02:08:18', 1),
(17, 'Justin Perez', 'justin.perez@example.com', '+1234567806', '3637 Walnut St, City, Country', '2024-04-28 02:08:18', 1),
(18, 'Nicole Martinez', 'nicole.martinez@example.com', '+1234567807', '3839 Chestnut St, City, Country', '2024-04-28 02:08:18', 1),
(19, 'Jacob Young', 'jacob.young@example.com', '+1234567808', '4041 Poplar St, City, Country', '2024-04-28 02:08:18', 1),
(20, 'Elizabeth Sanchez', 'elizabeth.sanchez@example.com', '+1234567809', '4243 Fir St, City, Country', '2024-04-28 02:08:18', 1),
(21, 'William Flores', 'william.flores@example.com', '+1234567810', '4445 Pine St, City, Country', '2024-04-28 02:08:18', 1),
(22, 'Samantha Rivera', 'samantha.rivera@example.com', '+1234567811', '4647 Oak St, City, Country', '2024-04-28 02:08:18', 1),
(23, 'Tyler Torres', 'tyler.torres@example.com', '+1234567812', '4849 Cedar St, City, Country', '2024-04-28 02:08:18', 1),
(24, 'Hannah Ramirez', 'hannah.ramirez@example.com', '+1234567813', '5051 Maple St, City, Country', '2024-04-28 02:08:18', 1),
(25, 'Andrew Flores', 'andrew.flores@example.com', '+1234567814', '5253 Birch St, City, Country', '2024-04-28 02:08:18', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
