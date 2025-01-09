-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 07:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `victoria_university_hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `facility`
--

CREATE TABLE `facility` (
  `FacilityID` int(11) NOT NULL,
  `Facility_name` varchar(100) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lab_test`
--

CREATE TABLE `lab_tests` (
  `TestID` int(11) NOT NULL,
  `Visit` int(11) DEFAULT NULL,
  `Test_type` varchar(100) DEFAULT NULL,
  `Test_result` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Contact_information` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patients` (
  `Patient` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Contact_information` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patientss` (
  `Patient` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Contact_information` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients_data` (
  `Patient` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Contact_information` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `Treatment` int(11) NOT NULL,
  `Visit` int(11) DEFAULT NULL,
  `Medicaton` varchar(255) DEFAULT NULL,
  `Dosage` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatments` (
  `Treatment` int(11) NOT NULL,
  `Visit` int(11) DEFAULT NULL,
  `Medicaton` varchar(255) DEFAULT NULL,
  `Dosage` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_record`
--

CREATE TABLE `visit_record` (
  `Visit` int(11) NOT NULL,
  `patient` int(11) DEFAULT NULL,
  `Visit_date` date NOT NULL,
  `Diagnosis` varchar(255) DEFAULT NULL,
  `Treatment_plan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_record`
--

CREATE TABLE `visit_records` (
  `Visit` int(11) NOT NULL,
  `patient` int(11) DEFAULT NULL,
  `Visit_date` date NOT NULL,
  `Diagnosis` varchar(255) DEFAULT NULL,
  `Treatment_plan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`FacilityID`);

--
-- Indexes for table `lab_tests`
--
ALTER TABLE `lab_tests`
  ADD PRIMARY KEY (`TestID`),
  ADD KEY `Visit` (`Visit`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`Patient`);

--
-- Indexes for table `patientss`
--
ALTER TABLE `patientss`
  ADD PRIMARY KEY (`Patient`);

--
-- Indexes for table `patients_data`
--
ALTER TABLE `patients_data`
  ADD PRIMARY KEY (`Patient`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`Treatment`),
  ADD KEY `Visit` (`Visit`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`Treatment`),
  ADD KEY `Visit` (`Visit`);

--
-- Indexes for table `visit_record`
--
ALTER TABLE `visit_record`
  ADD PRIMARY KEY (`Visit`),
  ADD KEY `patient` (`patient`);

--
-- Indexes for table `visit_records`
--
ALTER TABLE `visit_records`
  ADD PRIMARY KEY (`Visit`),
  ADD KEY `patient` (`patient`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lab_tests`
--
ALTER TABLE `lab_tests`
  ADD CONSTRAINT `lab_tests_ibfk_1` FOREIGN KEY (`Visit`) REFERENCES `visit_record` (`Visit`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`Visit`) REFERENCES `visit_record` (`Visit`);

--
-- Constraints for table `treatments`
--
ALTER TABLE `treatments`
  ADD CONSTRAINT `treatments_ibfk_1` FOREIGN KEY (`Visit`) REFERENCES `visit_record` (`Visit`);

--
-- Constraints for table `visit_record`
--
ALTER TABLE `visit_record`
  ADD CONSTRAINT `visit_record_ibfk_1` FOREIGN KEY (`patient`) REFERENCES `patient` (`Patient`);

--
-- Constraints for table `visit_records`
--
ALTER TABLE `visit_records`
  ADD CONSTRAINT `visit_records_ibfk_1` FOREIGN KEY (`patient`) REFERENCES `patient` (`Patient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
