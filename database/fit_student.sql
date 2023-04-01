-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2020 at 05:02 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fit_student`
--
CREATE DATABASE IF NOT EXISTS `fit_student` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fit_student`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `date` date DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `remark` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `classroom_id` int(11) NOT NULL,
  `year` year(4) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL,
  `section` char(2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `remarks` varchar(20) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classroom_student`
--

CREATE TABLE `classroom_student` (
  `classroom_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `name` varchar(3) DEFAULT NULL,
  `_desc` varchar(45) DEFAULT NULL,
  `grade_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `exam_type_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `start_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam_result`
--

CREATE TABLE `exam_result` (
  `exam_id` int(11) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exam_type`
--

CREATE TABLE `exam_type` (
  `exam_type_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `_desc` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `_desc` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `parent_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  `dob` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `last_seen` date DEFAULT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(25) NOT NULL,
  `stu_email` varchar(25) NOT NULL,
  `stu_dob` date NOT NULL,
  `stu_phone` varchar(10) DEFAULT NULL,
  `stu_date_join` date NOT NULL,
  `stu_status` tinyint(1) DEFAULT NULL,
  `stu_last_seen` date DEFAULT NULL,
  `stu_password` varchar(20) NOT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `last_login_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`classroom_id`),
  ADD KEY `grade_id` (`grade_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `classroom_student`
--
ALTER TABLE `classroom_student`
  ADD KEY `classroom_id` (`classroom_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `grade_id` (`grade_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`),
  ADD KEY `exam_type_id` (`exam_type_id`);

--
-- Indexes for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD KEY `stu_id` (`stu_id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `exam_type`
--
ALTER TABLE `exam_type`
  ADD PRIMARY KEY (`exam_type_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1801040200;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`stu_id`);

--
-- Constraints for table `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `classroom_ibfk_1` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`grade_id`),
  ADD CONSTRAINT `classroom_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`);

--
-- Constraints for table `classroom_student`
--
ALTER TABLE `classroom_student`
  ADD CONSTRAINT `classroom_student_ibfk_1` FOREIGN KEY (`classroom_id`) REFERENCES `classroom` (`classroom_id`),
  ADD CONSTRAINT `classroom_student_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`stu_id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`grade_id`);

--
-- Constraints for table `exam`
--
ALTER TABLE `exam`
  ADD CONSTRAINT `exam_ibfk_1` FOREIGN KEY (`exam_type_id`) REFERENCES `exam_type` (`exam_type_id`);

--
-- Constraints for table `exam_result`
--
ALTER TABLE `exam_result`
  ADD CONSTRAINT `exam_result_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `student` (`stu_id`),
  ADD CONSTRAINT `exam_result_ibfk_2` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`),
  ADD CONSTRAINT `exam_result_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`parent_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
