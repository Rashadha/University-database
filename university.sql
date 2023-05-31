-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2022 at 03:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_code` char(7) NOT NULL,
  `course_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_code`, `course_name`) VALUES
('1248918', 'Artificial Intelligence'),
('1257231', 'Computer Science'),
('4628951', 'Software Engineering'),
('5924321', 'Business Intelligence'),
('6423521', 'Business Management');

-- --------------------------------------------------------

--
-- Table structure for table `course_lecturer`
--

CREATE TABLE `course_lecturer` (
  `course_code` char(7) NOT NULL,
  `staff_id` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_lecturer`
--

INSERT INTO `course_lecturer` (`course_code`, `staff_id`) VALUES
('1248918', 'AI22096'),
('1257231', 'AI22077'),
('4628951', 'AI22098'),
('5924321', 'AI22097'),
('6423521', 'AI22099');

-- --------------------------------------------------------

--
-- Table structure for table `course_module`
--

CREATE TABLE `course_module` (
  `course_code` char(7) NOT NULL,
  `module_code` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_module`
--

INSERT INTO `course_module` (`course_code`, `module_code`) VALUES
('1248918', 'CM1601'),
('1248918', 'CM1604'),
('1257231', 'CM1605'),
('4628951', 'CM1601'),
('6423521', 'CM1607');

-- --------------------------------------------------------

--
-- Table structure for table `enrolment_fulltime`
--

CREATE TABLE `enrolment_fulltime` (
  `course_code` char(7) NOT NULL,
  `payment_id` char(5) NOT NULL,
  `full_st_id` char(7) NOT NULL,
  `enrolled_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolment_fulltime`
--

INSERT INTO `enrolment_fulltime` (`course_code`, `payment_id`, `full_st_id`, `enrolled_date`) VALUES
('1248918', '24652', '2122096', '2022-01-01'),
('1257231', '25272', '2122097', '2021-12-31'),
('4628951', '49972', '2122098', '2021-12-31'),
('5924321', '35272', '2122099', '2022-01-02'),
('6423521', '85422', '2122100', '2022-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `enrolment_parttime`
--

CREATE TABLE `enrolment_parttime` (
  `course_code` char(7) NOT NULL,
  `payment_id` char(5) NOT NULL,
  `part_st_id` char(7) NOT NULL,
  `enrolled_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolment_parttime`
--

INSERT INTO `enrolment_parttime` (`course_code`, `payment_id`, `part_st_id`, `enrolled_date`) VALUES
('1248918', '24789', '2122082', '2022-01-01'),
('1257231', '29272', '2122083', '2021-12-31'),
('4628951', '50972', '2122084', '2021-12-31'),
('5924321', '38272', '2122085', '2022-01-02'),
('6423521', '84312', '2122086', '2022-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `fulltime_student`
--

CREATE TABLE `fulltime_student` (
  `st_id` char(7) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `sur_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fulltime_student`
--

INSERT INTO `fulltime_student` (`st_id`, `first_name`, `middle_name`, `sur_name`, `address`, `gender`, `date_of_birth`) VALUES
('2122096', 'Fathima', 'Rashadha', 'Rimsan', 'No 37/23, Panchananda road, Kankanamgoda, Beruwala', 'Female', '2004-05-03'),
('2122097', 'Fathima', 'Nazeefa', 'Anees', 'No 34/34, Peries road Colombo 6', 'Female', '2004-03-04'),
('2122098', 'Sanjula', 'Maneth', 'Subhawickrama', 'No 9,Main street, Colombo 10', 'Male', '2001-09-09'),
('2122099', 'Mohamed', 'Rikzy', 'Jesuli', 'No 9, Peta street, Colombo 6', 'Male', '2000-09-08'),
('2122100', 'Shivani', 'Abhishya', 'Monalingam', 'No 5, Pery road, Colombo 10', 'Female', '2005-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `fulltime_student_email`
--

CREATE TABLE `fulltime_student_email` (
  `full_st_id` char(7) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fulltime_student_email`
--

INSERT INTO `fulltime_student_email` (`full_st_id`, `email`) VALUES
('2122096', '2122096.rimsan.iis@ac.lk'),
('2122096', 'rimsanrashadha04@gmail.com'),
('2122097', '2122097.nazeefa.iis@ac.lk'),
('2122098', '2122098.maneth.iis@ac.lk'),
('2122099', '2122099.rikzy.iis@ac.lk'),
('2122100', '2122100.abhishya.iis@ac.lk');

-- --------------------------------------------------------

--
-- Table structure for table `fulltime_student_phone`
--

CREATE TABLE `fulltime_student_phone` (
  `full_st_id` char(7) NOT NULL,
  `phone_num` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fulltime_student_phone`
--

INSERT INTO `fulltime_student_phone` (`full_st_id`, `phone_num`) VALUES
('2122096', '0094716085574'),
('2122096', '0094729017704'),
('2122097', '0094769026607'),
('2122098', '0094715029900'),
('2122099', '0094769087754'),
('2122100', '0094768907456');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `staff_id` char(7) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `sur_name` varchar(50) NOT NULL,
  `juniorLecturerFlag` binary(1) NOT NULL,
  `seniorLecturerFlag` binary(1) NOT NULL,
  `moduleLeaderFlag` binary(1) NOT NULL,
  `mentor_id` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`staff_id`, `first_name`, `middle_name`, `sur_name`, `juniorLecturerFlag`, `seniorLecturerFlag`, `moduleLeaderFlag`, `mentor_id`) VALUES
('AI22077', 'Menaka', 'Udara', 'Welihidage', 0x30, 0x31, 0x31, NULL),
('AI22088', 'Sonal', 'Hansaka', 'Wanninayake', 0x31, 0x30, 0x30, 'AI22097'),
('AI22096', 'Priyanka', 'Madhavi', 'Walihinda', 0x30, 0x31, 0x31, NULL),
('AI22097', 'Rajitha', 'Perera', 'Jayasinghe', 0x31, 0x30, 0x30, 'AI22096'),
('AI22098', 'Janani', 'Sumanthika', 'Amadhoru', 0x30, 0x31, 0x30, NULL),
('AI22099', 'Venuri', 'Menaka', 'Rajapaksha', 0x31, 0x30, 0x30, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_email`
--

CREATE TABLE `lecturer_email` (
  `staff_id` char(7) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer_email`
--

INSERT INTO `lecturer_email` (`staff_id`, `email`) VALUES
('AI22077', 'menaka.m@iis.ac.lk'),
('AI22088', 'sonal.w@iis.ac.lk'),
('AI22096', 'madhavi.r@iis.ac.lk'),
('AI22097', 'rajitha.p@iis.ac.lk'),
('AI22097', 'rajitha6789@gmail.com'),
('AI22098', 'janani.o@iis.ac.lk'),
('AI22099', 'venuri.s@iis.ac.lk');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_phone`
--

CREATE TABLE `lecturer_phone` (
  `staff_id` char(7) NOT NULL,
  `phone_num` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer_phone`
--

INSERT INTO `lecturer_phone` (`staff_id`, `phone_num`) VALUES
('AI22077', '0094769063127'),
('AI22088', '0094769035789'),
('AI22096', '0094769026604'),
('AI22097', '0094769012345'),
('AI22098', '0094769023456'),
('AI22099', '0094769009876');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_code` char(6) NOT NULL,
  `name` varchar(60) NOT NULL,
  `credits` int(3) NOT NULL,
  `semester` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_code`, `name`, `credits`, `semester`) VALUES
('CM1601', 'Programming Fundamentals', 90, '2nd'),
('CM1602', 'Computational Mathematics', 90, '1st'),
('CM1604', 'Database Systems', 60, '1st'),
('CM1605', 'Computer Systems Fundamentals', 80, '1st'),
('CM1607', 'English Communication Skills', 45, '1st');

-- --------------------------------------------------------

--
-- Table structure for table `parttime_student`
--

CREATE TABLE `parttime_student` (
  `st_id` char(7) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `sur_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `occupation` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parttime_student`
--

INSERT INTO `parttime_student` (`st_id`, `first_name`, `middle_name`, `sur_name`, `address`, `gender`, `date_of_birth`, `occupation`) VALUES
('2122082', 'Sonali', 'Sayumi', 'Pathiranage', 'No 67, Riya road, Colombo 10', 'Female', '1998-09-09', 'Civil Engineer'),
('2122083', 'Fathima', 'Amanie', 'Yusuf', 'No 56/4, Main street, Colombo 10', 'Female', '1990-06-09', 'Mechanical Engineer'),
('2122084', 'Sachin', 'Hansaka', 'Mahipala', 'No 9, Koppa road, Colombo 6', 'Male', '1999-07-09', 'Technician'),
('2122085', 'Fathima', 'Zuha', 'Nufail', 'No 15, Sheik road, Kalutara', 'Female', '2000-09-05', 'Phisical Technician'),
('2122086', 'Sunera', 'Udana', 'Wanninayake', 'No 9, Marry street, Colombo 6', 'Male', '2000-09-07', 'Sales Manager');

-- --------------------------------------------------------

--
-- Table structure for table `parttime_student_email`
--

CREATE TABLE `parttime_student_email` (
  `part_st_id` char(7) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parttime_student_email`
--

INSERT INTO `parttime_student_email` (`part_st_id`, `email`) VALUES
('2122082', '2122082.sonali.iis@ac.lk'),
('2122082', 'sonaliii04@gmail.com'),
('2122083', '2122083.amanie.iis@ac.lk'),
('2122084', '2122084.sachin.iis@ac.lk'),
('2122085', '2122085.zuha.iis@ac.lk'),
('2122086', '2122086.sunera.iis@ac.lk');

-- --------------------------------------------------------

--
-- Table structure for table `parttime_student_phone`
--

CREATE TABLE `parttime_student_phone` (
  `part_st_id` char(7) NOT NULL,
  `phone_num` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parttime_student_phone`
--

INSERT INTO `parttime_student_phone` (`part_st_id`, `phone_num`) VALUES
('2122082', '0094709026607'),
('2122082', '0094716085574'),
('2122083', '0094729877704'),
('2122084', '0094715029908'),
('2122085', '0094769000054'),
('2122086', '0094768907006');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` char(5) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `amount`) VALUES
('24652', 75000),
('24789', 85000),
('25272', 75000),
('29272', 100000),
('35272', 150000),
('38272', 125000),
('49972', 75000),
('50972', 75000),
('84312', 156000),
('85422', 89000);

-- --------------------------------------------------------

--
-- Table structure for table `sport`
--

CREATE TABLE `sport` (
  `sport_id` char(4) NOT NULL,
  `sport_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sport`
--

INSERT INTO `sport` (`sport_id`, `sport_name`) VALUES
('2244', 'Tennis'),
('3399', 'Football'),
('5566', 'Badminton'),
('7744', 'Cricket'),
('9933', 'Basketball');

-- --------------------------------------------------------

--
-- Table structure for table `student_sport`
--

CREATE TABLE `student_sport` (
  `full_st_id` char(7) NOT NULL,
  `sport_id` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_sport`
--

INSERT INTO `student_sport` (`full_st_id`, `sport_id`) VALUES
('2122096', '2244'),
('2122097', '5566'),
('2122098', '2244'),
('2122099', '7744'),
('2122100', '9933');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_fulltime`
--

CREATE TABLE `teaching_fulltime` (
  `module_code` char(6) NOT NULL,
  `staff_id` char(7) NOT NULL,
  `full_st_id` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teaching_fulltime`
--

INSERT INTO `teaching_fulltime` (`module_code`, `staff_id`, `full_st_id`) VALUES
('CM1602', 'AI22088', '2122097'),
('CM1604', 'AI22077', '2122100'),
('CM1604', 'AI22096', '2122096'),
('CM1605', 'AI22097', '2122099'),
('CM1607', 'AI22098', '2122096');

-- --------------------------------------------------------

--
-- Table structure for table `teaching_parttime`
--

CREATE TABLE `teaching_parttime` (
  `module_code` char(6) NOT NULL,
  `staff_id` char(7) NOT NULL,
  `part_st_id` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teaching_parttime`
--

INSERT INTO `teaching_parttime` (`module_code`, `staff_id`, `part_st_id`) VALUES
('CM1602', 'AI22088', '2122084'),
('CM1604', 'AI22077', '2122083'),
('CM1604', 'AI22096', '2122082'),
('CM1605', 'AI22097', '2122085'),
('CM1607', 'AI22098', '2122082');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course_lecturer`
--
ALTER TABLE `course_lecturer`
  ADD PRIMARY KEY (`course_code`,`staff_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `course_module`
--
ALTER TABLE `course_module`
  ADD PRIMARY KEY (`course_code`,`module_code`),
  ADD KEY `module_code` (`module_code`);

--
-- Indexes for table `enrolment_fulltime`
--
ALTER TABLE `enrolment_fulltime`
  ADD PRIMARY KEY (`course_code`,`payment_id`,`full_st_id`,`enrolled_date`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `full_st_id` (`full_st_id`);

--
-- Indexes for table `enrolment_parttime`
--
ALTER TABLE `enrolment_parttime`
  ADD PRIMARY KEY (`course_code`,`payment_id`,`part_st_id`,`enrolled_date`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `part_st_id` (`part_st_id`);

--
-- Indexes for table `fulltime_student`
--
ALTER TABLE `fulltime_student`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `fulltime_student_email`
--
ALTER TABLE `fulltime_student_email`
  ADD PRIMARY KEY (`full_st_id`,`email`);

--
-- Indexes for table `fulltime_student_phone`
--
ALTER TABLE `fulltime_student_phone`
  ADD PRIMARY KEY (`full_st_id`,`phone_num`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `mentor_id` (`mentor_id`);

--
-- Indexes for table `lecturer_email`
--
ALTER TABLE `lecturer_email`
  ADD PRIMARY KEY (`staff_id`,`email`);

--
-- Indexes for table `lecturer_phone`
--
ALTER TABLE `lecturer_phone`
  ADD PRIMARY KEY (`staff_id`,`phone_num`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_code`);

--
-- Indexes for table `parttime_student`
--
ALTER TABLE `parttime_student`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `parttime_student_email`
--
ALTER TABLE `parttime_student_email`
  ADD PRIMARY KEY (`part_st_id`,`email`);

--
-- Indexes for table `parttime_student_phone`
--
ALTER TABLE `parttime_student_phone`
  ADD PRIMARY KEY (`part_st_id`,`phone_num`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`sport_id`);

--
-- Indexes for table `student_sport`
--
ALTER TABLE `student_sport`
  ADD PRIMARY KEY (`full_st_id`,`sport_id`),
  ADD KEY `sport_id` (`sport_id`);

--
-- Indexes for table `teaching_fulltime`
--
ALTER TABLE `teaching_fulltime`
  ADD PRIMARY KEY (`module_code`,`staff_id`,`full_st_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `full_st_id` (`full_st_id`);

--
-- Indexes for table `teaching_parttime`
--
ALTER TABLE `teaching_parttime`
  ADD PRIMARY KEY (`module_code`,`staff_id`,`part_st_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `part_st_id` (`part_st_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_lecturer`
--
ALTER TABLE `course_lecturer`
  ADD CONSTRAINT `course_lecturer_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`),
  ADD CONSTRAINT `course_lecturer_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `lecturer` (`staff_id`);

--
-- Constraints for table `course_module`
--
ALTER TABLE `course_module`
  ADD CONSTRAINT `course_module_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`),
  ADD CONSTRAINT `course_module_ibfk_2` FOREIGN KEY (`module_code`) REFERENCES `module` (`module_code`);

--
-- Constraints for table `enrolment_fulltime`
--
ALTER TABLE `enrolment_fulltime`
  ADD CONSTRAINT `enrolment_fulltime_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`),
  ADD CONSTRAINT `enrolment_fulltime_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `enrolment_fulltime_ibfk_3` FOREIGN KEY (`full_st_id`) REFERENCES `fulltime_student` (`st_id`);

--
-- Constraints for table `enrolment_parttime`
--
ALTER TABLE `enrolment_parttime`
  ADD CONSTRAINT `enrolment_parttime_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `course` (`course_code`),
  ADD CONSTRAINT `enrolment_parttime_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `enrolment_parttime_ibfk_3` FOREIGN KEY (`part_st_id`) REFERENCES `parttime_student` (`st_id`);

--
-- Constraints for table `fulltime_student_email`
--
ALTER TABLE `fulltime_student_email`
  ADD CONSTRAINT `fulltime_student_email_ibfk_1` FOREIGN KEY (`full_st_id`) REFERENCES `fulltime_student` (`st_id`);

--
-- Constraints for table `fulltime_student_phone`
--
ALTER TABLE `fulltime_student_phone`
  ADD CONSTRAINT `fulltime_student_phone_ibfk_1` FOREIGN KEY (`full_st_id`) REFERENCES `fulltime_student` (`st_id`);

--
-- Constraints for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD CONSTRAINT `lecturer_ibfk_1` FOREIGN KEY (`mentor_id`) REFERENCES `lecturer` (`staff_id`);

--
-- Constraints for table `lecturer_email`
--
ALTER TABLE `lecturer_email`
  ADD CONSTRAINT `lecturer_email_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `lecturer` (`staff_id`);

--
-- Constraints for table `lecturer_phone`
--
ALTER TABLE `lecturer_phone`
  ADD CONSTRAINT `lecturer_phone_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `lecturer` (`staff_id`);

--
-- Constraints for table `parttime_student_email`
--
ALTER TABLE `parttime_student_email`
  ADD CONSTRAINT `parttime_student_email_ibfk_1` FOREIGN KEY (`part_st_id`) REFERENCES `parttime_student` (`st_id`);

--
-- Constraints for table `parttime_student_phone`
--
ALTER TABLE `parttime_student_phone`
  ADD CONSTRAINT `parttime_student_phone_ibfk_1` FOREIGN KEY (`part_st_id`) REFERENCES `parttime_student` (`st_id`);

--
-- Constraints for table `student_sport`
--
ALTER TABLE `student_sport`
  ADD CONSTRAINT `student_sport_ibfk_1` FOREIGN KEY (`full_st_id`) REFERENCES `fulltime_student` (`st_id`),
  ADD CONSTRAINT `student_sport_ibfk_2` FOREIGN KEY (`sport_id`) REFERENCES `sport` (`sport_id`);

--
-- Constraints for table `teaching_fulltime`
--
ALTER TABLE `teaching_fulltime`
  ADD CONSTRAINT `teaching_fulltime_ibfk_1` FOREIGN KEY (`module_code`) REFERENCES `module` (`module_code`),
  ADD CONSTRAINT `teaching_fulltime_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `lecturer` (`staff_id`),
  ADD CONSTRAINT `teaching_fulltime_ibfk_3` FOREIGN KEY (`full_st_id`) REFERENCES `fulltime_student` (`st_id`);

--
-- Constraints for table `teaching_parttime`
--
ALTER TABLE `teaching_parttime`
  ADD CONSTRAINT `teaching_parttime_ibfk_1` FOREIGN KEY (`module_code`) REFERENCES `module` (`module_code`),
  ADD CONSTRAINT `teaching_parttime_ibfk_2` FOREIGN KEY (`staff_id`) REFERENCES `lecturer` (`staff_id`),
  ADD CONSTRAINT `teaching_parttime_ibfk_3` FOREIGN KEY (`part_st_id`) REFERENCES `parttime_student` (`st_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
