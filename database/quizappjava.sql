-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2021 at 01:50 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizappjava`
--

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`cat_id`, `cat_name`) VALUES
(1, 'Mathematics'),
(2, 'Programming'),
(3, 'Animals'),
(18, 'Football');

-- --------------------------------------------------------

--
-- Table structure for table `examresults`
--

CREATE TABLE `examresults` (
  `row_id` int(11) NOT NULL,
  `test_cat` varchar(255) NOT NULL,
  `test_no` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `mark` varchar(50) NOT NULL,
  `exam_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examresults`
--

INSERT INTO `examresults` (`row_id`, `test_cat`, `test_no`, `student_id`, `student_name`, `mark`, `exam_date`) VALUES
(1, 'Programming', 1, 6, 'Mike', '2', '2021-09-21 17:33:01'),
(2, 'Animals', 1, 5, 'Biff Tannen', '2', '2021-09-21 18:14:06'),
(3, 'Football', 1, 9, 'john rambo', '3', '2021-09-22 10:55:10'),
(4, 'Football', 1, 2, 'Jack The Ripper', '3', '2021-09-22 11:00:06'),
(5, 'Animals', 1, 10, 'Rocky Balboa', '2', '2021-09-22 11:07:13');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `q_no` int(11) DEFAULT NULL,
  `q_text` varchar(255) DEFAULT NULL,
  `q_opt1` varchar(255) DEFAULT NULL,
  `q_opt2` varchar(255) DEFAULT NULL,
  `q_opt3` varchar(255) DEFAULT NULL,
  `q_opt4` varchar(255) DEFAULT NULL,
  `q_cor_ans` varchar(255) DEFAULT NULL,
  `q_given_ans` varchar(255) DEFAULT NULL,
  `q_cat` varchar(250) DEFAULT NULL,
  `test_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `q_no`, `q_text`, `q_opt1`, `q_opt2`, `q_opt3`, `q_opt4`, `q_cor_ans`, `q_given_ans`, `q_cat`, `test_no`) VALUES
(12, 1, '3+5*2=?', '16', '13', '310', '22', 'B', 'B', 'Mathematics', 1),
(13, 2, '6+5*2=?', '60', '22', '13', '16', 'D', 'D', 'Mathematics', 1),
(14, 3, '5+5+5+5+1=?', '551', '5551', '21', '9999', 'C', 'B', 'Mathematics', 1),
(15, 4, '1/2+50/100-1 = ?', '1', '50', '0', '2', 'C', 'C', 'Mathematics', 1),
(16, 1, 'What expression is an illegal variable in Java?', 'int a;', 'String name = \"John\";', 'char* name = \"John\" ;', 'List<Employee> employees = new ArrayList<Employee>();', 'C', 'C', 'Programming', 1),
(17, 2, 'What language of the followings is the fastest ?', 'C++', 'Python', 'Java', 'C', 'D', 'D', 'Programming', 1),
(18, 3, 'What function is used to print \"Hello World\" on the console screen?', 'std::cout << \"Hello World\"<< endl ;', 'print(\"Hello World\") ;', 'echo \"Hello World\" ;', 'System.out.println(\"Hello World\");', 'B', 'C', 'Programming', 1),
(19, 1, 'Dogs can\'t  ...?', 'bark', 'think', 'fly', 'jump', 'C', 'C', 'Animals', 1),
(20, 2, 'Which of the following animal is venemous?', 'Cat', 'Gorilla', 'Hawk', 'Snake', 'D', 'A', 'Animals', 1),
(21, 3, 'Which of the following animal is bigger ?', 'Dog', 'Cat', 'Zebra', 'Gorilla', 'D', 'D', 'Animals', 1),
(22, 1, '1+1+1=?', '2', '3', '1', '5', 'B', 'C', 'Mathematics', 2),
(23, 2, '5/2 =?', '2.5', '2', '3', '52', 'A', 'D', 'Mathematics', 2),
(24, 3, '4+1/8-9/8 = ?', '2', '1', '3', '5', 'C', 'B', 'Mathematics', 2),
(27, 1, 'Which player has never played for FC Barcelona?', 'Maradona', 'Messi', 'Guardiola', 'Roberto Carlos', 'D', 'A', 'Football', 1),
(28, 2, 'Which of the following team had players named Gullit,Van Basten,Donadoni ?', 'Juventus', 'Inter', 'AC Milan', 'Manchester United', 'C', 'C', 'Football', 1),
(29, 3, 'Who is the president of Juventus FC ? ', 'Allegri', 'Agnelli', 'Balotelli', 'Amorelli', 'B', 'B', 'Football', 1),
(30, 4, 'Which of the following player is a legend of Manchester United ?', 'David Beckham', 'Arsen Wenger', 'Marcello Lippi', 'Ronaldinho', 'A', 'A', 'Football', 1),
(31, 5, 'How many times English national team has won the World Cup?', '5', '1', '2', '3', 'B', 'C', 'Football', 1);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `fullname`, `phone`, `age`, `address`) VALUES
(2, 'Jack The Ripper', '123456', 18, 'Darkest Street,London'),
(5, 'Biff Tannen', '345643', 23, 'xyz street,Torino'),
(6, 'Mike', 'Tyson', 25, 'abc Street,New York'),
(7, 'Tom LikesCoffee', '34567', 24, 'long street,London'),
(8, 'Lord Bernardeschi', '3445556', 28, 'Juventus FC'),
(9, 'John Rambo', '55555', 28, 'no address'),
(10, 'Rocky Balboa', '111111', 32, 'Tea Street, Texas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `examresults`
--
ALTER TABLE `examresults`
  ADD PRIMARY KEY (`row_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `examresults`
--
ALTER TABLE `examresults`
  MODIFY `row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
