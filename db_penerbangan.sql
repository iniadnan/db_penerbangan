-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 06:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penerbangan`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_tickets_table` ()   BEGIN
    CREATE TABLE IF NOT EXISTS `tickets` (
        `id` INT PRIMARY KEY AUTO_INCREMENT,
        `uuid` VARCHAR(5),
        `price` INT,
        `from_destination` VARCHAR(255),
        `to_destination` VARCHAR(255),
        `date_flight` VARCHAR(255),
        `time_flight` VARCHAR(255),
        `time_arrived` VARCHAR(255),
        `vendor_id` INT,
        `status` VARCHAR(255),
        `created_at` TIMESTAMP
    );
END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `getEmailById` (`i` INT) RETURNS VARCHAR(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci DETERMINISTIC BEGIN
  declare select_var varchar(100);
  
  select email into select_var from users where f1 = i;
  
  return select_var;
END$$

CREATE DEFINER=`root`@`localhost` FUNCTION `getSomething` () RETURNS VARCHAR(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci DETERMINISTIC BEGIN
  declare return_name varchar(100);
  
  select email into return_name from users where id = 1;
  
  return return_name;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `uuid` varchar(5) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `uuid`, `ticket_id`, `user_id`, `status`, `created_at`) VALUES
(1, '96548', 1, 1, 'pending', '2023-07-13 15:15:43'),
(2, '12121', 2, 2, 'gagal', '2023-07-13 15:15:43'),
(3, '12345', 2, 1, 'sukses', '2023-07-13 15:15:43'),
(4, '38765', 1, 4, 'sukses', '2023-07-13 15:15:43'),
(5, '28763', 4, 3, 'pending', '2023-07-13 15:15:43'),
(6, '65289', 4, 2, 'sukses', '2023-07-13 15:15:43'),
(7, '75427', 2, 1, 'sukses', '2023-07-13 15:15:43'),
(8, '18654', 1, 4, 'pending', '2023-07-13 15:15:43'),
(9, '46293', 3, 3, 'gagal', '2023-07-13 15:15:43'),
(10, '96437', 8, 7, 'pending', '2023-07-13 15:15:43'),
(11, '64297', 6, 4, 'sukses', '2023-07-13 15:15:43'),
(12, '95472', 4, 6, 'sukses', '2023-07-13 15:15:43'),
(13, '19649', 3, 8, 'gagal', '2023-07-13 15:15:43'),
(14, '47923', 7, 2, 'sukses', '2023-07-13 15:15:43'),
(15, '86439', 5, 6, 'sukses', '2023-07-13 15:15:43'),
(16, '27495', 9, 3, 'sukses', '2023-07-13 15:15:43'),
(17, '72983', 1, 6, 'pending', '2023-07-13 15:15:43'),
(18, '48294', 4, 4, 'gagal', '2023-07-13 15:15:43'),
(19, '92836', 7, 5, 'pending', '2023-07-13 15:15:43'),
(20, '67234', 5, 9, 'sukses', '2023-07-13 15:15:43'),
(21, '25183', 5, 7, 'pending', '2023-07-13 15:15:43'),
(22, '46217', 5, 5, 'gagal', '2023-07-13 15:15:43'),
(23, '74392', 1, 5, 'sukses', '2023-07-13 15:15:43'),
(24, '64289', 6, 6, 'gagal', '2023-07-13 15:15:43'),
(25, '97325', 3, 6, 'pending', '2023-07-13 15:15:43'),
(26, '28483', 7, 3, 'sukses', '2023-07-13 15:15:43'),
(27, '78928', 6, 9, 'sukses', '2023-07-13 15:15:43'),
(28, '64291', 8, 5, 'pending', '2023-07-13 15:15:43'),
(29, '92845', 8, 9, 'sukses', '2023-07-13 15:15:43'),
(30, '98721', 7, 9, 'sukses', '2023-07-13 15:15:43');

-- --------------------------------------------------------

--
-- Stand-in structure for view `pengguna`
-- (See below for the actual view)
--
CREATE TABLE `pengguna` (
`email` varchar(255)
,`name` varchar(255)
,`tanggal_lahir` date
);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `uuid` int(5) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `from_destination` varchar(255) DEFAULT NULL,
  `to_destination` varchar(255) DEFAULT NULL,
  `date_flight` varchar(255) DEFAULT NULL,
  `time_flight` varchar(255) DEFAULT NULL,
  `time_arrived` varchar(255) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `uuid`, `price`, `from_destination`, `to_destination`, `date_flight`, `time_flight`, `time_arrived`, `vendor_id`, `status`, `created_at`) VALUES
(1, 1, 1200000, 'makasar', 'bali', '2023-06-07', '11.00', '12.00', 2, 'ready', '2023-07-13 15:28:24'),
(2, 2, 1200000, 'bali', 'makasar', '2023-06-09', '09.00', '10.00', 3, 'ready', '2023-07-13 15:28:24'),
(3, 3, 1300000, 'palangkaraya', 'yogyakarta', '2023-06-11', '09.30', '10.30', 4, 'ready', '2023-07-13 15:28:24'),
(4, 4, 1300000, 'yogyakarta', 'palangkaraya', '2023-06-13', '10.30', '11.30', 1, 'sold', '2023-07-13 15:28:24'),
(5, 5, 1400000, 'palangkaraya', 'makasar', '2023-06-15', '09.30', '10.30', 2, 'ready', '2023-07-13 15:28:24'),
(6, 6, 1500000, 'palangkaraya', 'bali', '2023-06-17', '07.30', '08.30', 3, 'ready', '2023-07-13 15:28:24'),
(7, 7, 1400000, 'palangkaraya', 'makasar', '2023-06-15', '09.30', '10.30', 2, 'ready', '2023-07-13 15:28:24'),
(8, 8, 1500000, 'palangkaraya', 'jayapura', '2023-06-17', '08.30', '09.30', 3, 'ready', '2023-07-13 15:28:24'),
(9, 9, 1600000, 'jayapura', 'palangkaraya', '2023-06-19', '09.00', '10.30', 4, 'sold', '2023-07-13 15:28:24'),
(10, 10, 1700000, 'jambi', 'yogyakarta', '2023-06-21', '09.15', '10.15', 8, 'ready', '2023-07-13 15:28:24'),
(11, 11, 1800000, 'yogyakarta', 'jambi', '2023-06-23', '09.10', '11.10', 7, 'ready', '2023-07-13 15:28:24'),
(12, 12, 1000000, 'sampit', 'yogyakarta', '2023-06-25', '10.10', '11.10', 6, 'ready', '2023-07-13 15:28:24'),
(13, 13, 1200000, 'yogyakarta', 'banjarmasin', '2023-06-27', '11.10', '12.10', 1, 'ready', '2023-07-13 15:28:24'),
(14, 14, 1300000, 'jambi', 'banjarmasin', '2023-06-29', '12.30', '12.30', 3, 'sold', '2023-07-13 15:28:24'),
(15, 15, 1400000, 'banjarmasin', 'jambi', '2023-07-01', '12.10', '13.10', 6, 'ready', '2023-07-13 15:28:24'),
(16, 16, 1500000, 'jakarta', 'jambi', '2023-07-03', '12.15', '13.30', 8, 'sold', '2023-07-13 15:28:24'),
(17, 17, 1600000, 'jambi', 'jakarta', '2023-07-05', '13.30', '14.30', 1, 'ready', '2023-07-13 15:28:24'),
(18, 18, 1700000, 'jakarta', 'jayapura', '2023-07-07', '13.45', '14.45', 7, 'ready', '2023-07-13 15:28:24'),
(19, 19, 2000000, 'jayapura', 'bali', '2023-07-09', '14.50', '15.50', 2, 'sold', '2023-07-13 15:28:24'),
(20, 20, 2400000, 'bali', 'jayapura', '2023-07-11', '15.10', '16.10', 4, 'ready', '2023-07-13 15:28:24'),
(21, 21, 3400000, 'palu', 'kendari', '2023-07-13', '15.20', '16.20', 2, 'ready', '2023-07-13 15:28:24'),
(22, 22, 2500000, 'kendari', 'palu', '2023-07-15', '15.30', '16.30', 1, 'sold', '2023-07-13 15:28:24'),
(23, 23, 3100000, 'medan', 'jakarta', '2023-08-19', '16.10', '17.10', 8, 'ready', '2023-07-13 15:28:24'),
(24, 25, 1900000, 'medan', 'kendari', '2023-09-20', '16.20', '17.20', 2, 'sold', '2023-07-13 15:28:24'),
(25, 26, 1200000, 'riau', 'makasar', '2023-09-21', '19.15', '20.15', 3, 'ready', '2023-07-13 15:28:24'),
(26, 27, 1300000, 'makasar', 'medan', '2023-09-25', '19.30', '20.30', 5, 'ready', '2023-07-13 15:28:24'),
(27, 28, 1500000, 'sampit', 'medan', '2023-09-27', '19.40', '20.40', 1, 'ready', '2023-07-13 15:28:24'),
(28, 29, 2900000, 'medan', 'palangkaraya', '2023-09-29', '19.50', '20.50', 6, 'ready', '2023-07-13 15:28:24'),
(29, 30, 2800000, 'riau', 'pontianak', '2023-10-15', '20.00', '21.00', 8, 'ready', '2023-07-13 15:28:24');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `ticket_id`, `booking_id`, `total`, `created_at`) VALUES
(1, 1, 1, 1, 100000, '2023-07-13 15:14:55'),
(2, 5, 5, 4, 300000, '2023-07-13 15:14:55'),
(3, 7, 9, 5, 700000, '2023-07-13 15:14:55'),
(4, 10, 11, 8, 900000, '2023-07-13 15:14:55'),
(5, 12, 12, 10, 400000, '2023-07-13 15:14:55'),
(6, 11, 14, 15, 600000, '2023-07-13 15:14:55'),
(7, 8, 15, 18, 1000000, '2023-07-13 15:14:55'),
(8, 6, 20, 20, 1200000, '2023-07-13 15:14:55'),
(9, 9, 22, 29, 1500000, '2023-07-13 15:14:55'),
(10, 4, 25, 30, 1400000, '2023-07-13 15:14:55'),
(11, 13, 19, 14, 1600000, '2023-07-13 15:14:55'),
(12, 15, 17, 19, 1700000, '2023-07-13 15:14:55'),
(13, 14, 26, 6, 1900000, '2023-07-13 15:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `telephone`, `tanggal_lahir`, `created_at`) VALUES
(1, 'rian@gmail.com', '012345', 'rian ananda', '081523456789', '2001-12-31', '2023-07-13 15:18:19'),
(2, 'rey@gmail.com', '543210', 'rey andika', '081923456789', '2002-11-30', '2023-07-13 15:18:19'),
(3, 'reza@gmail.com', '453012', 'reza putra', '087823456789', '2003-10-29', '2023-07-13 15:18:19'),
(4, 'rina@gmail.com', '325401', 'rina turi', '081323456789', '2004-09-28', '2023-07-13 15:18:19'),
(5, 'adit@gmail.com', '432015', 'aditya', '082213456789', '2001-08-27', '2023-07-13 15:18:19'),
(6, 'adel@gmail.com', '501234', 'adelina', '081923456788', '2002-07-26', '2023-07-13 15:18:19'),
(7, 'bayu@gmail.com', '432105', 'bayu gatra', '081523456787', '2003-06-25', '2023-07-13 15:18:19'),
(8, 'clara@gmail.com', '143520', 'clara utami', '081923456789', '2003-05-24', '2023-07-13 15:18:19'),
(9, 'cantika@gmail.com', '134250', 'cantika putri', '087834256789', '2002-02-23', '2023-07-13 15:18:19'),
(10, 'dedi@gmail.com', '103524', 'dedi sapa', '081323654789', '2004-04-22', '2023-07-13 15:18:19'),
(11, 'eker@gmail.com', '043521', 'eker wirawan', '087823456987', '2001-03-21', '2023-07-13 15:18:19'),
(12, 'farhan@gmail.com', '034521', 'farhan pratama', '081923456987', '2002-02-20', '2023-07-13 15:18:19'),
(13, 'gunawan@gmail.com', '134520', 'gunawan satria', '082213456987', '2003-01-19', '2023-07-13 15:18:19'),
(14, 'haikal@gmail.com', '013452', 'haikal syaputra', '087213465987', '2004-03-18', '2023-07-13 15:18:19'),
(15, 'irawan@gmail.com', '041352', 'irawan hidayat', '081321346978', '2001-04-17', '2023-07-13 15:18:19');

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `before_delete_user` BEFORE DELETE ON `users` FOR EACH ROW INSERT INTO users_log (id, email, date_modified) VALUES
(OLD.id, OLD.email, NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`) VALUES
(1, 'Garuda Indonesia'),
(2, 'Trigana Air Service'),
(3, 'Pelita Air'),
(4, 'Lion Air'),
(5, 'Batik Air'),
(6, 'Sriwijaya Air'),
(7, 'Citilink'),
(8, 'Air Asia');

-- --------------------------------------------------------

--
-- Structure for view `pengguna`
--
DROP TABLE IF EXISTS `pengguna`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pengguna`  AS SELECT `users`.`email` AS `email`, `users`.`name` AS `name`, `users`.`tanggal_lahir` AS `tanggal_lahir` FROM `users` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uuid` (`uuid`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `show_email` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendors` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id`) REFERENCES `bookings` (`user_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id`) REFERENCES `transactions` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
