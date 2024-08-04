-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 08:35 AM
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
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2023-11-25 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(6, 4, 'carrotcake', ' Relish our 1kg homemade carrot cake—crafted with fresh carrots, warm spices, nuts, raisins, and creamy frosting. Pure delight in every slice!', 280.00, '656b996e2e9dd.png'),
(9, 4, 'Masala Cookies', ' Savor our 1kg homemade masala cookies—a flavorful blend of spices, butter, flour, and a hint of warmth in every bite!', 200.00, '656b99333a7b6.png'),
(10, 4, ' Red Velvet Cake', ' Delight in our 1kg homemade red velvet cake—velvety layers, cream cheese frosting, and pure cocoa bliss!', 750.00, '656b98d9b8faa.png'),
(11, 4, ' Assorted Macarons', ' Savor our pack of 8 assorted macarons—enjoy a delightful mix of flavors like raspberry, pistachio, lemon, and chocolate, all crafted with almond flour, meringue, and flavorful fillings!', 280.00, '656b9894b5370.png'),
(12, 4, ' Butter Cookies', ' Enjoy our pack of 20 homemade butter cookies—crafted with premium butter, flour, and a touch of sweetness in every delicate bite!', 240.00, '656b984f62d42.png'),
(13, 3, ' Chocolate Chip Cookies', ' Indulge in our pack of 20 homemade chocochip cookies—each bite a perfect blend of chocolatey goodness and comforting nostalgia!', 350.00, '656b97fc7b18d.png'),
(14, 3, ' Sugar Free Doughnuts', ' Savor our guilt-free pack of 8 sugar-free donuts—a delightful treat without the added sweetness!', 210.00, '656b978eefd2e.png'),
(15, 3, ' Assorted Doughnuts', ' Delight in our 12-piece homemade assorted donut pack—featuring a variety of flavors topped with glazed sugar, white chocolate, zesty lemon, creamy vanilla, and decadent strawberry frostings!', 450.00, '656b9716cde3f.png'),
(16, 3, ' Chocolate Cake', ' Indulge in our 1kg homemade chocolate cake—rich cocoa layers, velvety frosting, pure delight in every slice!', 400.00, '656b96bfbdb5b.png'),
(17, 3, 'Assorted Macarons', 'Savor our pack of 8 assorted macarons—enjoy a delightful mix of flavors like raspberry, pistachio, lemon, and chocolate, all crafted with almond flour, meringue, and flavorful fillings!', 280.00, '656b8f94c9815.png');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(13, 4, 'rejected', 'cancelled', '2023-12-02 11:22:52'),
(14, 12, 'in process', 'on the way\r\n', '2023-12-02 19:24:28'),
(15, 13, 'closed', '', '2023-12-02 19:27:49'),
(16, 12, 'closed', '', '2023-12-02 21:30:43'),
(17, 15, 'rejected', '', '2023-12-02 21:31:27'),
(18, 16, 'closed', '', '2023-12-03 07:20:37');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(3, 4, ' BAKESTORE', 'nanxiangbao45@mail.com', '9988776644', 'www.nanxiangbao45.com', '7am', '8pm', 'mon-sat', ' BakeStore Pvt. Ltd.\r\nMadaparambil Complex,\r\nVallakalil Junction,\r\nMuvattupuzha', '656b95febe6cc.png', '2023-12-02 20:39:26'),
(4, 4, 'BAKESTORE', 'hbg@mail.com', '9977665544', 'www.hbg.com', '7am', '8pm', 'mon-sat', ' BakeStore Pvt. Ltd.\r\nOpposite Pvt. Bus Stand\r\nKothamangalam Junction,\r\nKothamangalam', '656b958daa90c.png', '2023-12-02 20:37:33');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(4, 'indian', '2023-12-02 14:23:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(1, 'aneeth', 'aneeth', 'pbiju', 'aneeth@gmail.com', '8136923875', '25f9e794323b453885f5181f1b624d0b', 'thodupuzha', 1, '2023-12-02 17:06:50');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(15, 1, 'carrotcake', 1, 280.00, 'rejected', '2023-12-02 21:31:27'),
(16, 1, ' Chocolate Chip Cookies', 1, 350.00, 'closed', '2023-12-03 07:20:37'),
(17, 1, ' Sugar Free Doughnuts', 1, 210.00, NULL, '2023-12-02 21:01:43'),
(19, 1, ' Chocolate Chip Cookies', 1, 350.00, NULL, '2023-12-02 21:25:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
