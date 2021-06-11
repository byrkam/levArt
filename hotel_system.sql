-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Εξυπηρετητής: 127.0.0.1
-- Χρόνος δημιουργίας: 11 Ιουν 2021 στις 11:09:07
-- Έκδοση διακομιστή: 10.4.18-MariaDB
-- Έκδοση PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `hotel_system`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `social_security_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `reservations`
--

DROP TABLE IF EXISTS `reservations`;
CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `Persons` int(100) NOT NULL,
  `Room_Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `reservations`
--

INSERT INTO `reservations` (`id`, `first_name`, `last_name`, `email`, `check_in`, `check_out`, `Persons`, `Room_Type`) VALUES
(115, 'Giannis', 'Papadopoulos', 'G_pap@email.com', '2021-04-10', '2021-04-16', 4, 'Luxury'),
(121, 'Dimitris', 'Papadionisiou', 'D_pap@email.com', '2021-04-04', '2021-04-11', 2, 'Luxury'),
(125, 'Kwstas', 'Dimitriou', 'K_dim@email.com', '2021-04-10', '2021-04-11', 2, 'Luxury');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `password`, `phone`, `gender`, `email`) VALUES
(1, '', 'siragas', '8281', '', '', '');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `vehicle_reservation`
--

DROP TABLE IF EXISTS `vehicle_reservation`;
CREATE TABLE `vehicle_reservation` (
  `Veh_id` int(11) NOT NULL,
  `License_id` varchar(100) NOT NULL,
  `Start_Date` date NOT NULL,
  `Return_Date` date NOT NULL,
  `Veh_type` varchar(100) NOT NULL,
  `Res_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `vehicle_reservation`
--

INSERT INTO `vehicle_reservation` (`Veh_id`, `License_id`, `Start_Date`, `Return_Date`, `Veh_type`, `Res_id`) VALUES
(500, 'E1912', '2021-04-10', '2021-04-11', 'MotorCycle', 115),
(506, 'D2758', '2021-04-18', '2021-04-24', 'Car', 121),
(507, '19234', '2021-04-10', '2021-04-11', 'ATV', 125);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Ευρετήρια για πίνακα `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`social_security_number`);

--
-- Ευρετήρια για πίνακα `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `vehicle_reservation`
--
ALTER TABLE `vehicle_reservation`
  ADD PRIMARY KEY (`Veh_id`),
  ADD KEY `Res_id` (`Res_id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT για πίνακα `vehicle_reservation`
--
ALTER TABLE `vehicle_reservation`
  MODIFY `Veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `vehicle_reservation`
--
ALTER TABLE `vehicle_reservation`
  ADD CONSTRAINT `vehicle_reservation_ibfk_1` FOREIGN KEY (`Res_id`) REFERENCES `reservations` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
