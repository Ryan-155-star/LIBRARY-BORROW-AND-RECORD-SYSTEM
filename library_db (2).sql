-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2026 at 07:21 PM
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
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `author` varchar(150) NOT NULL,
  `category_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `available_quantity` int(11) NOT NULL DEFAULT 1,
  `status` varchar(30) NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `category_id`, `quantity`, `available_quantity`, `status`) VALUES
(1, 'How to Read a Book', 'Mortimer J. Adler', 1, 67, 4, 'Available'),
(2, 'The Elements of Style', 'William Strunk Jr.', 1, 5, 5, 'Available'),
(3, 'The 7 Habits of Highly Effective People', 'Stephen R. Covey', 1, 5, 5, 'Available'),
(4, 'Teaching to Transgress', 'bell hooks', 1, 5, 4, 'Available'),
(5, 'Pedagogy of the Oppressed', 'Paulo Freire', 1, 5, 5, 'Available'),
(6, 'The Great Gatsby', 'F. Scott Fitzgerald', 2, 5, 5, 'Available'),
(7, 'Pride and Prejudice', 'Jane Austen', 2, 5, 5, 'Available'),
(8, 'The Catcher in the Rye', 'J.D. Salinger', 2, 5, 4, 'Available'),
(9, 'The Hobbit', 'J.R.R. Tolkien', 2, 5, 5, 'Available'),
(10, 'Little Women', 'Louisa May Alcott', 2, 5, 5, 'Available'),
(11, 'A Brief History of Time', 'Stephen Hawking', 3, 5, 5, 'Available'),
(12, 'Cosmos', 'Carl Sagan', 3, 5, 5, 'Available'),
(13, 'The Selfish Gene', 'Richard Dawkins', 3, 5, 5, 'Available'),
(14, 'Silent Spring', 'Rachel Carson', 3, 5, 5, 'Available'),
(15, 'The Gene', 'Siddhartha Mukherjee', 3, 5, 5, 'Available'),
(16, 'Clean Code', 'Robert C. Martin', 4, 5, 5, 'Available'),
(17, 'The Pragmatic Programmer', 'Andrew Hunt', 4, 5, 5, 'Available'),
(18, 'Code Complete', 'Steve McConnell', 4, 5, 5, 'Available'),
(19, 'Dont Make Me Think', 'Steve Krug', 4, 5, 5, 'Available'),
(20, 'Introduction to Algorithms', 'Thomas H. Cormen', 4, 5, 5, 'Available'),
(21, 'Sapiens', 'Yuval Noah Harari', 5, 5, 4, 'Available'),
(22, 'Guns, Germs, and Steel', 'Jared Diamond', 5, 5, 5, 'Available'),
(23, '1491', 'Charles C. Mann', 5, 5, 5, 'Available'),
(24, 'The Silk Roads', 'Peter Frankopan', 5, 5, 5, 'Available'),
(25, 'A Peoples History of the United States', 'Howard Zinn', 5, 5, 5, 'Available'),
(26, 'Long Walk to Freedom', 'Nelson Mandela', 6, 5, 5, 'Available'),
(27, 'Steve Jobs', 'Walter Isaacson', 6, 5, 5, 'Available'),
(28, 'Becoming', 'Michelle Obama', 6, 5, 5, 'Available'),
(29, 'Alexander Hamilton', 'Ron Chernow', 6, 5, 5, 'Available'),
(30, 'The Diary of a Young Girl', 'Anne Frank', 6, 5, 5, 'Available'),
(31, 'Merriam-Websters Collegiate Dictionary', 'Merriam-Webster', 7, 5, 5, 'Available'),
(32, 'The Chicago Manual of Style', 'University of Chicago Press', 7, 5, 5, 'Available'),
(33, 'The Oxford Dictionary of English', 'Oxford University Press', 7, 5, 5, 'Available'),
(34, 'The World Almanac and Book of Facts', 'World Almanac', 7, 5, 5, 'Available'),
(35, 'The Elements of Style', 'William Strunk Jr.', 7, 5, 5, 'Available'),
(36, 'The Rule of Law', 'Tom Bingham', 8, 5, 5, 'Available'),
(37, 'Law 101', 'Jay M. Feinman', 8, 5, 5, 'Available'),
(38, 'The Concept of Law', 'H.L.A. Hart', 8, 5, 5, 'Available'),
(39, 'Just Mercy', 'Bryan Stevenson', 8, 5, 5, 'Available'),
(40, 'Learning Legal Rules', 'James Holland', 8, 5, 4, 'Available'),
(41, 'Gray’s Anatomy', 'Henry Gray', 9, 5, 5, 'Available'),
(42, 'Guyton and Hall Textbook of Medical Physiology', 'John E. Hall', 9, 5, 5, 'Available'),
(43, 'Robbins and Cotran Pathologic Basis of Disease', 'Vinay Kumar', 9, 5, 5, 'Available'),
(44, 'Harrisons Principles of Internal Medicine', 'J. Larry Jameson', 9, 5, 5, 'Available'),
(45, 'Oxford Handbook of Clinical Medicine', 'Ian Wilkinson', 9, 5, 5, 'Available'),
(46, 'To Kill a Mockingbird', 'Harper Lee', 10, 5, 5, 'Available'),
(47, '1984', 'George Orwell', 10, 5, 5, 'Available'),
(48, 'The Alchemist', 'Paulo Coelho', 10, 5, 5, 'Available'),
(49, 'The Kite Runner', 'Khaled Hosseini', 10, 5, 5, 'Available'),
(50, 'The Book Thief', 'Markus Zusak', 10, 5, 5, 'Available'),
(51, 'Noli Mi Tángere', 'Jose Rizal', 2, 5, 1, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_logs`
--

CREATE TABLE `borrow_logs` (
  `log_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `borrow_date` date NOT NULL,
  `deadline` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Borrowed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrow_logs`
--

INSERT INTO `borrow_logs` (`log_id`, `customer_id`, `book_id`, `borrow_date`, `deadline`, `return_date`, `status`) VALUES
(1, 1, 51, '2026-10-05', '2026-10-12', '2026-10-10', 'Returned'),
(2, 2, 4, '2026-10-05', '2026-10-12', NULL, 'Borrowed'),
(3, 3, 21, '2026-10-05', '2026-10-12', NULL, 'Borrowed'),
(4, 4, 40, '2026-10-05', '2026-10-12', NULL, 'Borrowed'),
(5, 5, 8, '2026-10-05', '2026-10-12', NULL, 'Borrowed'),
(6, 2, 51, '2026-10-05', '2026-10-12', NULL, 'Borrowed'),
(7, 3, 51, '2026-10-05', '2026-10-12', NULL, 'Borrowed'),
(8, 4, 51, '2026-10-05', '2026-10-12', NULL, 'Borrowed'),
(9, 5, 51, '2026-10-05', '2026-10-12', '2026-10-05', 'Returned'),
(10, 1, 51, '2026-10-07', '2026-10-14', NULL, 'Borrowed'),
(11, 1, 1, '2026-10-08', '2026-10-15', NULL, 'Borrowed');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(6, 'Biography'),
(1, 'Educational'),
(10, 'Fiction'),
(5, 'History'),
(8, 'Law'),
(9, 'Medicine'),
(2, 'Novels'),
(7, 'Reference'),
(3, 'Science'),
(4, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_lastname` varchar(100) NOT NULL,
  `customer_firstname` varchar(100) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_contact` varchar(30) NOT NULL,
  `customer_status` varchar(30) NOT NULL DEFAULT 'Not Renewed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_lastname`, `customer_firstname`, `customer_address`, `customer_email`, `customer_contact`, `customer_status`) VALUES
(1, 'Gianan', 'Chris Adrian', 'Baikingon, CDO', 'chrisadriangianan@gmail.com', '09212123232', 'Not Renewed'),
(2, 'Glenmark', 'Yanez', 'Iponan, CDO', 'glenmarkyanez@gmail.com', '09232323232', 'Not Renewed'),
(3, 'Obeso', 'Jasper', 'Carmen, CDO', 'jasperobeso@gmail.com', '09676767676', 'Not Renewed'),
(4, 'Cabugatan', 'Howard', 'Macasandig, CDO', 'howarddwainecabugatan@gmail.com', '09696969696', 'Not Renewed'),
(5, 'Sison', 'Ashton', 'Iponan,CDO', 'ashtonsison@gmail.com', '09212121212', 'Not Renewed'),
(6, 'Jaudian', 'Jonathan', 'Canitoan,CDO', 'jonathanjaudian', '09090909090', 'Not Renewed'),
(7, 'Relampagos', 'Brian TJ', 'Kauswagan, CDO', 'brianrelampagos@gmail.com', '09786823848', 'Not Renewed');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_lastname` varchar(100) NOT NULL,
  `user_firstname` varchar(100) NOT NULL,
  `user_role` varchar(30) NOT NULL DEFAULT 'Staff',
  `security_question` varchar(255) DEFAULT NULL,
  `security_answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `user_lastname`, `user_firstname`, `user_role`, `security_question`, `security_answer`) VALUES
(1, 'admin', 'admin123', 'Macabodbod', 'Ryan Dave', 'Admin', 'What is your favorite color?', 'Blue'),
(2, 'archel', 'archel123', 'Ditchosa', 'Archel', 'Staff', 'What is your pets name?', 'Rene'),
(3, 'jasper', 'jasper123', 'Obeso', 'Jasper', 'Staff', 'What is your favorite animal?', 'Dog'),
(4, 'john', 'john123', 'Raut-Raut', 'John Ronwill', 'Staff', 'Who is your mother?', 'Mama Rene'),
(5, 'rodgin', 'rodgin123', 'Mentopa', 'Rod Gin', 'Staff', 'Who is your father?', 'Adeli'),
(6, 'glenmark', 'glen123', 'Gianan', 'Glenmark', 'Staff', 'What is your favorite animal?', 'Cat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `borrow_logs`
--
ALTER TABLE `borrow_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `borrow_logs`
--
ALTER TABLE `borrow_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON UPDATE CASCADE;

--
-- Constraints for table `borrow_logs`
--
ALTER TABLE `borrow_logs`
  ADD CONSTRAINT `borrow_logs_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `borrow_logs_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
