-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2022 at 06:45 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `name_admin` varchar(45) DEFAULT NULL,
  `pass_admin` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `name_admin`, `pass_admin`) VALUES
(1, 'uoc', '071244');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`id`, `name`, `password`) VALUES
(1, 'aaa', '111'),
(2, 'aaa', '111');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` tinytext DEFAULT NULL,
  `customer_add` varchar(100) DEFAULT NULL,
  `customer_tel` int(11) DEFAULT NULL,
  `customer_vhty` varchar(20) DEFAULT NULL,
  `customer_vhm` varchar(10) DEFAULT NULL,
  `customer_vhn` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_add`, `customer_tel`, `customer_vhty`, `customer_vhm`, `customer_vhn`) VALUES
(1, 'Kasun', '45/A,\r\nSalmal Uyana,\r\nIDH', 752389599, 'Honda', 'Civic', 'KP-8967'),
(2, 'Hasitha', '75,\r\nGanemulla,\r\nGampaha', 762785459, 'Toyota', 'Aqua', 'CAA-8967'),
(3, 'CustomerName', 'CustomerAddress', 71564545, 'Veh', 'Vehic', 'Vehicl'),
(4, 'Vinod', '175/A', 714568527, 'Nissan', 'Leaf', 'CAC-7946'),
(5, 'Vinod', '175/A', 714568527, 'Nissan', 'Leaf', 'CAC-7946'),
(12, 'Manuja', '34/A,Gonawala,Kalaniya', 771238574, 'Toyota', 'Rush', 'CAB-1234'),
(16, 'Sachin', '122/2,\nPower House,\nMakola', 774624865, 'Suzuki', 'WagonR', 'CAA-7896'),
(19, 'Sasindu', 'gampaha', 112831953, 'Benz', 'benz', 'Bdo 1234');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Employee_id` int(11) NOT NULL,
  `Employee_name` varchar(45) DEFAULT NULL,
  `Employee_add` varchar(45) DEFAULT NULL,
  `Employee_tel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Employee_id`, `Employee_name`, `Employee_add`, `Employee_tel`) VALUES
(1, 'sasindu', '36/2,\r\nBandarawaththa,\r\nKaduwela\r\n', 720903120),
(2, 'Gayashan', 'Padukka', 112831953),
(6, 'sasindu', 'aqs', 712442752);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `Item_name` varchar(45) DEFAULT NULL,
  `item_qty` int(11) DEFAULT NULL,
  `item_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `Item_name`, `item_qty`, `item_price`) VALUES
(1, 'Toyota Aqua Oil Filter', 5, 1200),
(2, 'Toyota Auto Transmission Oil-3liters', 45, 5000),
(9, 'gas', 50, 500),
(11, 'sticker', 9, 40);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serviceID` int(11) NOT NULL,
  `servicename` varchar(45) DEFAULT NULL,
  `servicecat` varchar(45) DEFAULT NULL,
  `serviceprice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceID`, `servicename`, `servicecat`, `serviceprice`) VALUES
(1, 'Body Wash', 'Vehicle Wash', 1000),
(2, 'Carpet Wash', 'Vehicle Wash', 300),
(3, 'Carpet Wash', 'detailed wash', 700),
(4, 'Dash Clean', 'detailed wash', 400),
(5, 'Glass Clean', 'detailed wash', 650),
(6, 'Interrior Vaccum', 'detailed wash', 850),
(7, 'Body Wash', 'detailed wash', 1500),
(8, 'Battery Power Checking', 'battery test', 500),
(9, 'Battery Health Checking', 'battery test', 200),
(10, 'High-Low Voltage', 'battery test', 400),
(11, 'wax coating', 'exterrior waxing', 3000),
(12, 'Cleaning of fuel line', 'fuel system cleaning', 3000),
(13, 'Injector cleaning', 'fuel system cleaning', 700),
(14, 'Throttle cleaning', 'fuel system cleaning', 450),
(15, 'Wheel Paint', 'Paintwash', 2000),
(16, 'as44', 'Paintwash', 4000),
(17, 'Toe Alignment', 'Wheel All', 2000),
(18, 'caster Alignment', 'Wheel All', 5000),
(19, 'Wheel Balancing', 'Wheel All', 500),
(20, 'Battery Test', 'Battery', 500),
(21, 'Service and Rep Battery', 'Battery', 700),
(22, 'Replacing Battery', 'Battery', 8000),
(23, 'Normal Body paint', 'Paintwash', 3000),
(24, 'Interrior Vaccum', 'Vehicle Wa', 1700),
(25, 'Dash cleaning', 'Vehicle Wa', 1500),
(26, 'carpert wash', 'Vehicle Wa', 100),
(27, 'Glass Cleaning', 'Vehicle Wa', 1000),
(28, 'Tyre Dressing', 'Vehicle Wa', 15000),
(29, 'Body Wash', 'Vehicle Wa', 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
