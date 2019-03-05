-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2017 at 05:23 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sams`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_details`
--

CREATE TABLE IF NOT EXISTS `attendance_details` (
  `at_id` int(10) NOT NULL AUTO_INCREMENT,
  `ex_att_id` int(50) NOT NULL,
  `eid` int(10) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `sem` varchar(20) NOT NULL,
  `section` varchar(10) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `slot` varchar(20) NOT NULL,
  PRIMARY KEY (`at_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `attendance_details`
--

INSERT INTO `attendance_details` (`at_id`, `ex_att_id`, `eid`, `branch`, `sem`, `section`, `subject`, `date`, `slot`) VALUES
(1, 0, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-18', '1'),
(2, 0, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-18', '2'),
(3, 0, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-17', '1'),
(4, 0, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-17', '1'),
(5, 0, 3, 'ISE', '8', 'A', 'Java / J2EE', '2017-05-17', '1'),
(6, 712159, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-17', '1'),
(7, 492307, 3, 'ISE', '8', 'A', 'Java / J2EE', '2017-05-18', '1'),
(8, 347573, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-17', '1'),
(9, 790546, 3, 'ISE', '8', 'A', 'Java / J2EE', '2017-05-17', '1'),
(10, 661297, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-18', '1'),
(11, 123783, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-20', '1'),
(12, 688431, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-17', '1'),
(13, 94231, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-10', '1'),
(14, 26018, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-17', '1'),
(15, 27196, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-17', '1'),
(16, 478161, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-17', '1'),
(17, 183213, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-17', '1'),
(18, 201426, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-18', '2'),
(19, 624086, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-31', '5'),
(20, 923690, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-20', '1'),
(21, 536790, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-28', '1'),
(22, 548627, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-18', '5'),
(23, 356518, 3, 'CSE', '8', 'A', 'Computer Networks', '2017-05-27', '4');

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE IF NOT EXISTS `credentials` (
  `sid` int(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`sid`, `email`, `password`, `name`, `type`) VALUES
(1, 'sidharth@gmail.com', '12321', 'Sidharth Abhimanyu', 'student'),
(2, 'sumin@gmail.com', '12321', 'Sumin', 'student'),
(3, 'ramanujam@gmail.com', '12321', 'Ramanujam', 'faculty'),
(4, 'mahesh@gmail.com', '12321', 'mahesh', 'faculty'),
(5, 'babu@gmail.com', '12321', 'babu', 'faculty'),
(6, 'reena@gmail.com', '12321', 'reena', 'faculty');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Block',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `date`, `created`, `modified`, `status`) VALUES
(1, 'Internet of Things World Forum', '2017-05-12', '2015-11-09 06:15:17', '2015-11-09 06:15:17', 1),
(2, 'The Future of Money and Technology Summit', '2015-11-26', '2015-11-09 06:15:17', '2015-11-09 06:15:17', 1),
(3, 'Chrome Dev Summit', '2015-11-26', '2015-11-09 06:15:17', '2015-11-09 06:15:17', 1),
(4, 'The Lean Startup Conference', '2015-11-17', '2015-11-09 06:15:17', '2015-11-09 06:15:17', 1),
(5, 'Web Submit for Developers', '2015-11-17', '2015-11-09 06:15:17', '2015-11-09 06:15:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_map`
--

CREATE TABLE IF NOT EXISTS `faculty_map` (
  `mip` int(10) NOT NULL AUTO_INCREMENT,
  `eid` int(10) NOT NULL,
  `sub_id` int(10) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `sem` int(10) NOT NULL,
  `section` varchar(10) NOT NULL,
  PRIMARY KEY (`mip`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `faculty_map`
--

INSERT INTO `faculty_map` (`mip`, `eid`, `sub_id`, `subject`, `branch`, `sem`, `section`) VALUES
(1, 3, 121, 'Computer Networks', 'CSE', 8, 'A'),
(2, 3, 132, 'Java / J2EE', 'CSE', 8, 'B'),
(3, 4, 512, 'Microprosessor', 'ISE', 6, 'A'),
(4, 3, 132, 'Java/ J2EE', 'ISE', 8, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_profile`
--

CREATE TABLE IF NOT EXISTS `faculty_profile` (
  `fid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `eid` varchar(50) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `faculty_profile`
--

INSERT INTO `faculty_profile` (`fid`, `name`, `email`, `mobile`, `dob`, `eid`, `designation`, `branch`, `address`) VALUES
(3, 'Ramanujam Sastry', 'ramanujam@gmail.com', '1421452120', '1882-05-11', '3', 'Assistant Proffessor', 'CSE', '#102, Yelahanka'),
(4, 'mahesh', 'mahesh@gmail.com', '54626481255', '1982-05-19', '4', 'Assistant Proffessor', 'ISE', '144 yelhanka blore'),
(5, 'babu', 'babu@gmail.com', '9865321245', '1989-07-10', '5', 'Assistant Proffessor', 'ISE', '144 yelhanka blore'),
(6, 'reena', 'reena@gmail.com', '9632587412', '1985-02-15', '6', 'Assistant Proffessor', 'CSE', '58 jayanagar bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `hod_profile`
--

CREATE TABLE IF NOT EXISTS `hod_profile` (
  `hid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `eid` varchar(50) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `hod_profile`
--

INSERT INTO `hod_profile` (`hid`, `name`, `email`, `mobile`, `dob`, `eid`, `branch`, `address`, `password`) VALUES
(1, 'vrinda shetty', 'vrinda@gmail.com', '8756412393', '1985-05-18', '1', 'ISE', '11 yelhanka blore', '12321'),
(2, 'mohan kumar', 'mohan@gmail.com', '8756415563', '1985-03-18', '2', 'CSE', '11 yelhanka blore', '12321');

-- --------------------------------------------------------

--
-- Table structure for table `principal_profile`
--

CREATE TABLE IF NOT EXISTS `principal_profile` (
  `pid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `moblie` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `eid` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `principal_profile`
--

INSERT INTO `principal_profile` (`pid`, `name`, `email`, `moblie`, `dob`, `eid`, `address`, `password`) VALUES
(1, 'ramesh babu', 'ramesh@gmail.com', '4569871230', '1979-03-15', '8', '12 hanuman layout bangalore', '12321');

-- --------------------------------------------------------

--
-- Table structure for table `student_profile`
--

CREATE TABLE IF NOT EXISTS `student_profile` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(15) NOT NULL DEFAULT '8147548926',
  `pmobile` varchar(15) NOT NULL DEFAULT '8105323088',
  `dob` date NOT NULL,
  `semester` varchar(10) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(200) NOT NULL DEFAULT '12321',
  `type` varchar(10) NOT NULL DEFAULT 'student',
  `section` varchar(20) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`sid`),
  UNIQUE KEY `usn` (`usn`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `student_profile`
--

INSERT INTO `student_profile` (`sid`, `name`, `usn`, `email`, `mobile`, `pmobile`, `dob`, `semester`, `branch`, `address`, `password`, `type`, `section`) VALUES
(1, 'Sidharth Abhimanyu', '1TT18CS025', 'sidharth@gmail.com', '9876543210', '8105323088', '1995-05-10', '8', 'CSE', '', '12321', 'student', 'A'),
(2, 'Sumin ', '1TT18CS029', 'sumin@gmail.com', '7421458741', '8105323088', '1994-04-05', '8', 'CSE', '#1010, 6th Phase, Jayanagar, Bengaluru - 560065', '12321', 'student', 'A'),
(3, 'karthik', '1va13is016', 'karthik@gmail.com', '8147548926', '8105323088', '1996-01-04', '8', 'ISE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(4, 'nikhitha', '1va13is027', 'nikhitha@gmail.com', '8147548926', '8105323088', '1995-05-11', '8', 'ISE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(5, 'pruthvi', '1va13cs016', 'pruthvi@gmail.com', '8147548926', '8105323088', '1996-01-04', '8', 'CSE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(6, 'yashaswini', '1va13cs027', 'yashaswini@gmail.com', '8147548926', '8105323088', '1995-05-11', '8', 'CSE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(9, 'manas', '1va13is023', 'manas@gmail.com', '8147548926', '8105323088', '1996-01-09', '8', 'ISE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(10, 'prakruthi', '1va13is029', 'prakruthi@gmail.com', '8147548926', '8105323088', '1996-03-01', '8', 'ISE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(11, 'ranjith', '1va14is036', 'ranjith@gmail.com', '8147548926', '8105323088', '1995-09-02', '6', 'ISE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(12, 'hemalatha', '1v14is011', 'hemalatha@gmail.com', '8147548926', '8105323088', '1995-11-13', '6', 'ISE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(13, 'nagesh', '1va14cs004', 'nagesh@gmail.com', '8147548926', '8105323088', '1995-09-02', '6', 'CSE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(14, 'nandini', '1va14cs016', 'nandini@gmail.com', '8147548926', '8105323088', '1995-11-13', '6', 'CSE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(15, 'roshan', '1va15is023', 'roshan@gmail.com', '8147548926', '8105323088', '1997-09-02', '4', 'ISE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(16, 'mala', '1va15is029', 'mala@gmail.com', '8147548926', '8105323088', '1997-03-01', '4', 'ISE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(19, 'venkat sai', '1va15cs034', 'venkat@gmail.com', '8147548926', '8105323088', '1997-11-02', '4', 'CSE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(20, 'kishore', '1va15is041', 'kishore@gmail.com', '8147548926', '8105323088', '1997-08-01', '4', 'CSE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(21, 'pallavi', '1va16is017', 'pallavi@gmail.com', '8147548926', '8105323088', '1998-01-04', '2', 'ISE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(22, 'rhea', '1va16is004', 'rhea@gmail.com', '8147548926', '8105323088', '1998-11-13', '2', 'ISE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(23, 'shruthi', '1va16cs043', 'shruthi@gmail.com', '8147548926', '8105323088', '1998-04-17', '2', 'CSE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A'),
(24, 'king pru', '1va16cs001', 'king@gmail.com', '8147548926', '8105323088', '1998-12-29', '2', 'CSE', '142 11 b cross vpura bglore 560097', '12321', 'student', 'A');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
