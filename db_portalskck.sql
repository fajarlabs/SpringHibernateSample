-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2016 at 06:13 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portalskck`
--

-- --------------------------------------------------------

--
-- Table structure for table `ps_request`
--

CREATE TABLE `ps_request` (
  `req_id` int(11) NOT NULL,
  `req_arrival` date NOT NULL,
  `req_fullname` varchar(100) NOT NULL,
  `req_type` varchar(50) NOT NULL,
  `req_citizenship` varchar(100) NOT NULL,
  `req_identity_type` varchar(50) NOT NULL,
  `req_identity_number` varchar(255) NOT NULL,
  `req_nik` varchar(255) NOT NULL,
  `req_name` varchar(100) NOT NULL,
  `req_birthplace` varchar(100) NOT NULL,
  `req_birthdate` date NOT NULL,
  `req_gender` varchar(50) NOT NULL,
  `req_address` text NOT NULL,
  `req_rt` varchar(50) NOT NULL,
  `req_rw` varchar(50) NOT NULL,
  `req_village` varchar(100) NOT NULL,
  `req_districts` varchar(100) NOT NULL,
  `req_religion` varchar(50) NOT NULL,
  `req_job` varchar(100) NOT NULL,
  `req_passport` varchar(100) NOT NULL,
  `req_liveStart` date NOT NULL,
  `req_liveEnd` date NOT NULL,
  `req_need` varchar(100) NOT NULL,
  `req_other` text NOT NULL,
  `req_ctime` datetime DEFAULT NULL,
  `req_queue` varchar(255) DEFAULT NULL,
  `req_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ps_request`
--

INSERT INTO `ps_request` (`req_id`, `req_arrival`, `req_fullname`, `req_type`, `req_citizenship`, `req_identity_type`, `req_identity_number`, `req_nik`, `req_name`, `req_birthplace`, `req_birthdate`, `req_gender`, `req_address`, `req_rt`, `req_rw`, `req_village`, `req_districts`, `req_religion`, `req_job`, `req_passport`, `req_liveStart`, `req_liveEnd`, `req_need`, `req_other`, `req_ctime`, `req_queue`, `req_status`) VALUES
(1, '2016-01-03', 'FAJAR', 'baru', 'wni', 'on', '1234567889', '12345678', 'FAJAR', 'JAKARTA', '1991-01-12', 'man', 'JAKARTA', '004', '010', 'CURUG', 'DEPAN', 'islam', 'karyawan', '12314523413', '2016-01-03', '2016-01-03', 'baru', 'Belajar', '2016-03-01 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ps_user`
--

CREATE TABLE `ps_user` (
  `ps_id` int(11) NOT NULL,
  `ps_full_name` varchar(50) NOT NULL,
  `ps_identity` varchar(50) NOT NULL,
  `ps_username` varchar(25) NOT NULL,
  `ps_email` varchar(50) NOT NULL,
  `ps_password` text NOT NULL,
  `ps_date_register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ps_user`
--

INSERT INTO `ps_user` (`ps_id`, `ps_full_name`, `ps_identity`, `ps_username`, `ps_email`, `ps_password`, `ps_date_register`) VALUES
(2, 'Fajar Rizki Dwi Prasetyo', '123456789', 'fajarrdp', 'fajarrizkidwiprasetyo@gmail.com', '12345', '2016-03-17 00:03:44'),
(5, 'Agus prihatin', '341234123121', 'aguspr', 'agus@yahoo.com', '123456789', '2016-03-18 05:54:39'),
(6, 'Iwan Argi', '12334245234', 'warargi', 'iwanargi@gmail.com', '12345', '2016-03-18 05:57:45'),
(7, 'Buster Blower', '21312312341234', 'buster2015', 'buster@gmail.com', '12345', '2016-03-18 05:59:35'),
(8, 'paijobejo', '12345', 'paijobejo', 'paijobejo@gmail.com', '12345', '2016-03-21 14:27:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ps_request`
--
ALTER TABLE `ps_request`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `ps_user`
--
ALTER TABLE `ps_user`
  ADD PRIMARY KEY (`ps_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ps_request`
--
ALTER TABLE `ps_request`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ps_user`
--
ALTER TABLE `ps_user`
  MODIFY `ps_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
