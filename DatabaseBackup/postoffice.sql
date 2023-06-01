-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2019 at 04:42 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `postoffice`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountid` int(10) NOT NULL,
  `acctype` varchar(20) NOT NULL,
  `actypeid` int(10) NOT NULL,
  `customerid` int(10) NOT NULL,
  `acopendate` date NOT NULL,
  `acclosedate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `nominee` varchar(25) NOT NULL,
  `relationshipwithnominee` varchar(25) NOT NULL,
  `numofyrs` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountid`, `acctype`, `actypeid`, `customerid`, `acopendate`, `acclosedate`, `status`, `nominee`, `relationshipwithnominee`, `numofyrs`) VALUES
(439, 'Time deposit', 0, 3, '2016-01-20', '2016-01-31', 'Active', '', '', 0),
(443, 'SSA Account', 7, 4, '2016-01-31', '0000-00-00', 'Pending', '', '', 0),
(451, 'Time deposit', 7, 4, '2016-02-08', '0000-00-00', 'Active', '', '', 0),
(453, 'Time deposit', 7, 4, '2016-02-09', '0000-00-00', 'Active', '', '', 0),
(455, 'SSA Account', 7, 4, '2015-02-09', '0000-00-00', 'Active', '', '', 0),
(456, 'SSA Account', 7, 4, '2016-02-09', '0000-00-00', 'Pending', '', '', 0),
(457, 'Time deposit', 7, 4, '2016-02-09', '0000-00-00', 'Pending', '', '', 0),
(458, 'Time deposit', 7, 4, '2016-02-09', '0000-00-00', 'Pending', '', '', 0),
(461, 'Time deposit', 7, 4, '2016-02-09', '0000-00-00', 'Pending', '', '', 0),
(477, 'Time deposit', 15, 4, '2016-03-01', '0000-00-00', 'Pending', '', '', 0),
(480, 'SSA Account', 8, 9, '2015-03-03', '0000-00-00', 'Active', '', '', 0),
(481, 'Time deposit', 15, 9, '2016-03-03', '0000-00-00', 'Active', '', '', 0),
(482, 'Savings account', 9, 9, '2015-03-04', '0000-00-00', 'Active', '', '', 0),
(485, 'SSA Account', 8, 9, '2016-03-06', '0000-00-00', 'Active', '', '', 0),
(486, 'Time deposit', 15, 9, '2016-03-06', '0000-00-00', 'Active', '', '', 0),
(494, 'Savings account', 9, 9, '2016-03-07', '0000-00-00', 'Active', 'Ashwej', 'Brother', 0),
(496, 'Time deposit', 15, 9, '2016-03-07', '0000-00-00', 'Active', 'Ashwej', 'Daughter', 0),
(497, 'Savings account', 9, 9, '2016-03-07', '0000-00-00', 'Pending', 'Divya', 'Mother', 0),
(498, 'Time deposit', 15, 9, '2016-03-07', '0000-00-00', 'Active', 'Santhosh', 'Father', 0),
(499, 'Savings account', 9, 9, '2016-03-08', '0000-00-00', 'Pending', 'vghfhg', 'Wife', 0),
(500, 'Savings account', 9, 9, '2016-03-08', '0000-00-00', 'Active', 'ghj', 'Mother', 0),
(501, 'Savings account', 9, 4, '2016-03-15', '2030-06-04', 'Active', 'fghb', 'Father', 0),
(502, 'Savings account', 9, 5, '2016-03-15', '2027-02-02', 'Active', 'gvbjh', 'Father', 0),
(503, 'Recurring deposit', 13, 3, '2016-03-16', '2027-02-02', 'Active', 'hbtdbfs', 'Son-In-Law', 0),
(504, 'Recurring deposit', 13, 7, '2016-03-17', '2016-03-26', 'Active', 'efsfesf', 'Brother', 0),
(505, 'Savings account', 9, 3, '2015-03-22', '2014-03-26', 'Active', 'deeeee', 'Daughter', 0),
(506, 'SSA Account', 8, 9, '1990-03-23', '0000-00-00', 'Active', '', '', 0),
(507, 'Savings account', 9, 12, '2013-03-24', '0000-00-00', 'Active', 'Santhosh', 'Father', 0),
(508, 'SSA Account', 8, 12, '2001-03-24', '0000-00-00', 'Active', '', '', 0),
(509, 'Recurring deposit', 13, 12, '2010-03-24', '0000-00-00', 'Active', 'Divya', 'Mother', 0),
(510, 'Time deposit', 15, 12, '2010-03-24', '0000-00-00', 'Active', 'Divya', 'Mother', 0),
(511, 'Time deposit', 15, 12, '2016-03-24', '0000-00-00', 'Pending', 'Ashwej', 'Brother', 0),
(512, 'Time deposit', 15, 12, '2016-03-24', '0000-00-00', 'Pending', 'Ashwej', 'Brother', 2),
(513, 'Savings account', 9, 16, '2014-03-25', '0000-00-00', 'Active', 'Deeksha', 'Sister', 0),
(514, 'Recurring deposit', 13, 9, '2012-03-28', '0000-00-00', 'Active', 'Santhosh', 'Sister', 0),
(515, 'Time deposit', 15, 9, '2013-03-28', '2016-04-01', 'Active', 'Ashwej', 'Father', 3),
(516, 'Time deposit', 15, 9, '2015-09-01', '2016-04-01', 'Active', 'Divya', 'Mother', 1),
(517, 'Time deposit', 15, 9, '2016-04-02', '0000-00-00', 'Active', 'Divya', 'Mother', 2),
(518, 'Time deposit', 15, 9, '2016-04-03', '0000-00-00', 'Active', 'Ashwej', 'Brother', 1),
(519, 'Time deposit', 15, 9, '2016-04-03', '0000-00-00', 'Active', 'Sameer', 'Son', 2),
(522, 'Time deposit', 15, 9, '2016-04-03', '0000-00-00', 'Active', 'Santhosh', 'Father', 2),
(523, 'Recurring deposit', 13, 9, '2016-04-03', '0000-00-00', 'Active', 'Ashwej', 'Brother', 0),
(524, 'Recurring deposit', 13, 9, '2016-04-03', '0000-00-00', 'Active', 'vghfhg', 'Grand Daughter', 0),
(529, 'Savings account', 9, 4, '2016-04-05', '2017-02-16', 'Active', 'Divya', 'Mother', 0),
(530, 'Savings account', 9, 4, '2016-04-04', '2016-11-18', 'Active', 'Ashwej', 'Brother', 0),
(531, 'Recurring deposit', 0, 9, '2016-04-06', '0000-00-00', 'Pending', 'fdgvd', 'Mother', 0),
(532, 'Savings account', 7, 17, '2016-04-16', '0000-00-00', 'Active', 'Shashi', 'Mother', 0),
(533, 'SSA Account', 3, 17, '2016-04-16', '0000-00-00', 'Pending', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(10) NOT NULL,
  `adminname` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `usertype` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `loginid`, `password`, `usertype`, `status`) VALUES
(4, 'Deeskha Kamath', 'dkamath@gmail.com', '123456', 'Admin', 'Active'),
(6, 'Deeskha', 'dee', '12365478', 'Admin', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `billpayment`
--

CREATE TABLE `billpayment` (
  `billpaymentid` int(10) NOT NULL,
  `customerid` int(10) NOT NULL,
  `billtype` varchar(25) NOT NULL,
  `accountnumber` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `billamt` float(10,2) NOT NULL,
  `note` text NOT NULL,
  `paiddate` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billpayment`
--

INSERT INTO `billpayment` (`billpaymentid`, `customerid`, `billtype`, `accountnumber`, `name`, `billamt`, `note`, `paiddate`, `status`) VALUES
(3, 0, 'Telephone Bill', '332', 'deeeee', 600.00, 'dsdsadx', '2016-01-08', ''),
(5, 0, 'Select', '1223', 'gdfgdg', 777.00, 'gfdgdfg', '2016-01-19', 'Select'),
(8, 0, 'Electricity Bill', '1222', 'dscfa', 555.00, 'tesst note', '2016-03-10', 'Active'),
(9, 0, 'Electricity Bill', '1222', 'dscfa', 555.00, 'tesst note', '2016-03-10', 'Active'),
(10, 0, 'Electricity Bill', '1222', 'dscfa', 555.00, 'tesst note', '2016-03-10', 'Active'),
(11, 9, 'Electricity Bill', '', 'fsdfcdav', 450.00, 'test note', '2016-03-06', 'Active'),
(12, 9, 'Telephone Bill', '2222', 'deeeee', 450.00, 'test', '2016-03-06', 'Active'),
(13, 9, 'Telephone Bill', '789456', 'raj', 500.00, 'Transaction type - SB Account  <br /> Account number -  479', '2016-03-06', 'Active'),
(14, 9, 'Telephone Bill', '332', 'dscfa', 60044.00, 'Transaction type - Card Payment <br /> Card number2332323', '2016-03-06', 'Active'),
(15, 15, 'Telephone Bill', '258', 'ashwej', 5000.00, 'Transaction type - Card Payment <br /> Card number5286935', '2016-03-06', 'Active'),
(16, 9, 'Telephone Bill', '45656', 'deeksha', 560.00, 'Transaction type - SB Account  <br /> Account number -  484', '2016-03-07', 'Active'),
(17, 9, 'Telephone Bill', '457', 'cfdsvsdzv', 500.00, 'Transaction type - SB Account  <br /> Account number -  484', '2016-03-07', 'Active'),
(18, 9, 'Telephone Bill', '65874', 'vghvhg', 100.00, 'Transaction type - SB Account  <br /> Account number -  500', '2016-03-08', 'Active'),
(19, 9, 'Telephone Bill', '485', 'ahskeeD', 1000.00, 'Transaction type - SB Account  <br /> Account number -  479', '2016-03-10', 'Active'),
(20, 9, 'Electricity Bill', '852', 'vfesvsv', 100.00, 'Transaction type - SB Account  <br /> Account number -  479', '2016-03-10', 'Active'),
(21, 9, 'Electricity Bill', '258', 'sacascasc', 100.00, 'Transaction type - SB Account  <br /> Account number -  479', '2016-03-13', 'Active'),
(22, 9, 'Telephone Bill', '545', 'ghvbjhb', 100.00, 'Transaction type - SB Account  <br /> Account number -  479', '2016-03-13', 'Active'),
(23, 9, 'Electricity Bill', '2222', 'raj', 450.00, 'Transaction type - SB Account  <br /> Account number -  479', '2016-03-13', 'Active'),
(24, 9, 'Electricity Bill', '2222', 'raj', 450.00, 'Transaction type - SB Account  <br /> Account number -  479', '2016-03-13', 'Active'),
(25, 9, 'Electricity Bill', '2323323', 'raj', 500.00, 'Transaction type - SB Account  <br /> Account number -  479', '2016-03-13', 'Active'),
(26, 9, 'Electricity Bill', '852', 'fdvdf', 100.00, 'Transaction type - SB Account  <br /> Account number -  479', '2016-03-13', 'Active'),
(27, 9, 'Electricity Bill', '852', 'fdvdf', 100.00, 'Transaction type - SB Account  <br /> Account number -  ', '2016-03-13', 'Active'),
(28, 9, 'Electricity Bill', '852', 'fdvdf', 100.00, 'Transaction type - SB Account  <br /> Account number -  ', '2016-03-13', 'Active'),
(29, 9, 'Electricity Bill', '852', 'fdvdf', 100.00, 'Transaction type - SB Account  <br /> Account number -  ', '2016-03-13', 'Active'),
(30, 9, 'Telephone Bill', '5555', 'gfhvjhbm', 100.00, 'SB Account  Account number -  484', '2016-03-13', 'Active'),
(31, 9, 'Telephone Bill', '45566', 'fhgvhb ', 100.00, 'SB Account  Account number -  479', '2016-03-13', 'Active'),
(32, 9, 'Telephone Bill', '8569', 'deeksha', 1500.00, 'SB Account  Account number -  479', '2016-03-13', 'Active'),
(33, 0, 'Electricity Bill', '545', 'Sameer', 200.00, 'Transaction type - Card Payment <br /> Card number515616548545212', '2016-03-22', 'Active'),
(34, 0, 'Electricity Bill', '545', 'Sameer', 200.00, 'Transaction type - Card Payment <br /> Card number', '2016-03-22', 'Active'),
(35, 0, 'Electricity Bill', '585225', 'samiii', 500.00, 'Transaction type -  <br /> Card number', '2016-03-23', 'Active'),
(36, 0, 'Electricity Bill', '78954', 'samiii', 500.00, 'Transaction type -  <br /> Card number', '2016-03-23', 'Active'),
(37, 0, 'Telephone Bill', '687485274', 'uhvuv', 520.00, 'Transaction type -  <br /> Card number', '2016-03-23', 'Active'),
(38, 9, 'Electricity Bill', '1526', 'dwefwe', 100.00, 'Transaction type - Card Payment <br /> Card number', '2016-03-27', 'Active'),
(39, 9, 'Electricity Bill', '1526', 'dwefwe', 100.00, 'Transaction type - Card Payment <br /> Card number', '2016-03-27', 'Active'),
(42, 9, 'Telephone Bill', '500', 'Deeksha', 100.00, 'SB Account  Account number -  482', '2016-04-01', 'Active'),
(43, 0, 'Telephone Bill', '332', 'dddd', 450.00, 'Transaction type -  <br /> Card number', '2016-04-01', 'Active'),
(44, 0, 'Telephone Bill', '589', 'fsdfcdav', 400.00, 'Transaction type -  <br /> Card number', '2016-04-02', 'Active'),
(45, 9, 'Electricity Bill', '1222', 'dscfa', 450.00, 'Transaction type - Card Payment <br /> Card number1234567891234567', '2016-04-02', 'Active'),
(46, 9, 'Electricity Bill', '143', 'dsds', 0.00, 'Transaction type -  <br /> Card number', '2016-04-03', 'Active'),
(47, 9, 'Electricity Bill', '143', 'Anjali', 0.00, 'Transaction type -  <br /> Card number', '2016-04-03', 'Active'),
(48, 9, 'Electricity Bill', '1222', 'fsdfcdav', 200.00, 'Transaction type - Card Payment <br /> Card number1234567891234567', '2016-04-03', 'Active'),
(51, 0, 'Electricity Bill', '456', 'Deeksha', 500.00, 'Transaction type -  <br /> Card number', '2016-04-04', 'Active'),
(52, 0, 'Electricity Bill', '856', 'Sameer', 450.00, 'Transaction type - Card Payment <br /> Card number1236547896321457', '2016-04-04', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `consignment`
--

CREATE TABLE `consignment` (
  `consignment_id` int(10) NOT NULL,
  `customerid` int(10) NOT NULL,
  `itemdetail` varchar(25) NOT NULL,
  `fromaddr` text NOT NULL,
  `frompin` varchar(10) NOT NULL,
  `toaddr` text NOT NULL,
  `topin` varchar(10) NOT NULL,
  `frommobno` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `tomobno` varchar(15) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `consignmenttype` varchar(25) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consignment`
--

INSERT INTO `consignment` (`consignment_id`, `customerid`, `itemdetail`, `fromaddr`, `frompin`, `toaddr`, `topin`, `frommobno`, `date`, `tomobno`, `cost`, `consignmenttype`, `note`, `status`) VALUES
(3, 3, 'ffff', 'xxx', '4555555554', 'dffd', '44545', '454545', '2016-01-12', '9876544444', 600.00, 'Ordinary letters', 'tess', 'Active'),
(6, 15, 'SDSDSN', 'GERGRGRG', '5363', 'fvsvsfvsfv', '5252', '54636', '2016-03-19', '546645', 1200.00, 'Registers', 'vfsvsfvsfvsvs', 'Active'),
(10, 16, 'sfgcghvnb', 'vcgfchgvhb ', '568', 'vjtfghvj', '25485', '546845', '2016-08-11', '58985', 54444.00, 'Registers', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(10) NOT NULL,
  `customername` varchar(50) NOT NULL,
  `dateofbirth` date NOT NULL,
  `customeraddr` text NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `customername`, `dateofbirth`, `customeraddr`, `mobileno`, `loginid`, `password`, `emailid`, `status`) VALUES
(3, 'Raj', '2016-02-01', 'gvfgrfg', '636366', 'hrtghfgh', '6666', 'tdghdh', 'Active'),
(4, 'Aneesh', '2016-01-09', 'trgsgeg', '9876543210', 'yytrrt', '5432', 'gfhsfghsd', 'Active'),
(5, 'deeksha', '2016-01-19', 'mangaalore', '9876543210', 'abc', '123456', 'deekshakamath999@gmail.com', 'Active'),
(7, 'Ankith', '2016-01-18', 'fsg', '464', 'admin', '1111', 'dk@gmail.com', 'Active'),
(8, 'Divya', '2016-01-19', 'aabcgsvs', '543598762', 'dk20@yahoo.com', '445566', 'dk20@gmail.com', 'Active'),
(9, 'santhosh', '1990-03-15', 'efdafaf', '542526', 'ss@ymail.com', '1234', 'ss@ymail.com', 'Active'),
(10, 'santhosh k', '2016-01-11', 'dswdsd', '5455', 'ssk', '1414', 'ssk@gmail.com', 'Active'),
(11, 'Rose D', '2015-12-29', 'Mangalore, Bangalore', '7894561230', 'abcde', '123456', 'abc@dgmail.com', 'Active'),
(12, 'Suraksha', '2016-02-15', 'sdfgdxgfxg', '526546', 'sa@gmail.com', '5858', 'sa@ymail.com', 'Active'),
(14, 'sameer', '2016-02-18', 'feeqfqf', '541964196', 'sa@hhhhhhhb', 'deekshas', 'sameerahamed@gmail.com', 'Active'),
(15, 'ashwej', '2016-03-21', 'aks', '100', 'aka@gmail.com', 'deeksha marthi', 'deeksha@adimale.com', 'Active'),
(16, 'Anjali', '1999-08-04', 'Mangalore', '7259444197', 'anjali@po.com', 'anjali1999', 'anjalishenoy@yahoo.in', 'Active'),
(17, 'Amrith', '1986-05-04', '3rd Floor, Belwil Compound, Behind Maharaja hotel', '8896533669', 'amrith', '123456789', 'amrith@gmail.com', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `insuranceid` int(10) NOT NULL,
  `customerid` int(10) NOT NULL,
  `insurancetypid` int(10) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `premiumtype` varchar(20) NOT NULL,
  `accountopened` date NOT NULL,
  `accountclosedate` date NOT NULL,
  `maturityyear` int(10) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`insuranceid`, `customerid`, `insurancetypid`, `amount`, `premiumtype`, `accountopened`, `accountclosedate`, `maturityyear`, `note`, `status`) VALUES
(1, 0, 4, 0.00, '3', '0000-00-00', '0000-00-00', 0, 'Insurance type - Endowment Assurance Polic | Premium payment- 63 /3 Months | Total Maturity year - 10 | Term - 30', ''),
(2, 9, 4, 0.00, '3', '0000-00-00', '0000-00-00', 0, 'Insurance type - Endowment Assurance Polic | Premium payment- 893 /3 Months | Total Maturity year - 14 | Term - 42', ''),
(3, 9, 4, 50000.00, '3', '0000-00-00', '0000-00-00', 0, 'Insurance type - Endowment Assurance Polic | Premium payment- 893 /3 Months | Total Maturity year - 14 | Term - 42', ''),
(4, 9, 4, 50000.00, '3 Months', '0000-00-00', '0000-00-00', 0, 'Insurance type - Endowment Assurance Polic | Premium payment- 893 /3 Months | Total Maturity year - 14 | Term - 42', ''),
(5, 9, 4, 50000.00, '3 Months', '2016-04-07', '2030-04-07', 14, 'Insurance type - Endowment Assurance Polic | Premium payment- 893 /3 Months | Total Maturity year - 14 | Term - 42', ''),
(6, 9, 4, 50000.00, '3 Months', '2016-04-07', '2030-04-07', 14, 'Insurance type - Endowment Assurance Polic | Premium payment- 893 /3 Months | Total Maturity year - 14 | Term - 42', 'Active'),
(7, 9, 4, 50000.00, '3 Months', '2016-04-07', '2030-04-07', 40, 'Insurance type - Endowment Assurance Polic | Premium payment- 893 /3 Months | Total Maturity year - 14 | Term - 42', 'Active'),
(8, 9, 4, 2500.00, 'Monthly', '2016-04-07', '1970-01-01', 50, 'Insurance type - Endowment Assurance Polic | Premium payment- 9 /Monthly | Total Maturity year - 24 | Term - 288', 'Closed'),
(9, 9, 4, 200000.00, 'Yearly', '2016-04-07', '1970-01-01', 50, 'Insurance type - Endowment Assurance Polic | Premium payment- 8333 /Yearly | Total Maturity year - 24 | Term - 24', 'Active'),
(10, 9, 4, 200000.00, '6 Months', '2016-04-07', '1970-01-01', 50, 'Insurance type - Endowment Assurance Polic | Premium payment- 4167 /6 Months | Total Maturity year - 24 | Term - 48', 'Active'),
(11, 9, 4, 40000.00, 'Monthly', '2016-04-09', '2035-04-09', 45, 'Insurance type - Endowment Assurance Polic | Premium payment- 175 /Monthly | Total Maturity year - 19 | Term - 228', 'Active'),
(12, 9, 4, 50000.00, '6 Months', '2016-04-09', '2025-04-09', 35, 'Insurance type - Endowment Assurance Polic | Premium payment- 2778 /6 Months | Total Maturity year - 9 | Term - 18', 'Active'),
(13, 17, 4, 15000.00, 'Monthly', '2010-04-16', '2023-04-16', 36, 'Insurance type - Convertible Whole Life As | Premium payment- 179 /Monthly | Total Maturity year - 7 | Term - 84', 'Active'),
(14, 17, 5, 15000.00, 'Monthly', '2015-04-16', '2023-04-16', 36, 'Insurance type - Convertible Whole Life As | Premium payment- 179 /Monthly | Total Maturity year - 7 | Term - 84', 'Active'),
(15, 17, 4, 40000.00, 'Monthly', '2016-04-16', '1970-01-01', 0, 'Insurance type - Endowment Assurance Policy | Premium payment- -115 /Monthly | Total Maturity year - -29 | Term - -348', 'Active'),
(16, 0, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(17, 0, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(18, 17, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(19, 17, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(20, 17, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(21, 17, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(22, 17, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(23, 17, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(24, 17, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(25, 17, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(26, 0, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(27, 0, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(28, 0, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(29, 0, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(30, 0, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(31, 0, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(32, 5, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(33, 5, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(34, 3, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(35, 3, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(36, 3, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(37, 3, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(38, 17, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(39, 17, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(40, 0, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(41, 0, 0, 0.00, '', '0000-00-00', '0000-00-00', 0, '', 'Active'),
(42, 17, 4, 15000.00, '3 Months', '2016-04-16', '2037-04-16', 50, 'Insurance type - Endowment Assurance Policy | Premium payment- 179 /3 Months | Total Maturity year - 21 | Term - 63', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `insurancetype`
--

CREATE TABLE `insurancetype` (
  `insurancetypeid` int(10) NOT NULL,
  `insurancetype` varchar(50) NOT NULL,
  `bonus` float(10,2) NOT NULL,
  `minage` int(10) NOT NULL,
  `maxage` int(10) NOT NULL,
  `minamt` int(10) NOT NULL,
  `maxamt` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurancetype`
--

INSERT INTO `insurancetype` (`insurancetypeid`, `insurancetype`, `bonus`, `minage`, `maxage`, `minamt`, `maxamt`, `status`) VALUES
(3, 'Whole Life Insurance Poli', 5.00, 19, 49, 10000, 1000000, 'Active'),
(4, 'Endowment Assurance Policy', 5.00, 19, 49, 10000, 1000000, 'Active'),
(5, 'Convertible Whole Life', 5.00, 19, 49, 10000, 1000000, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_payment`
--

CREATE TABLE `insurance_payment` (
  `insurance_payment_id` int(10) NOT NULL,
  `insuranceid` int(10) NOT NULL,
  `paidamount` float(10,2) NOT NULL,
  `paiddate` date NOT NULL,
  `paymenttype` varchar(250) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance_payment`
--

INSERT INTO `insurance_payment` (`insurance_payment_id`, `insuranceid`, `paidamount`, `paiddate`, `paymenttype`, `status`) VALUES
(9, 1122, 5000.00, '2016-01-09', '', 'Active'),
(10, 1111, 150.00, '2016-01-09', '', 'Active'),
(11, 3333, 345.00, '2016-01-27', '', 'Active'),
(12, 0, 0.00, '0000-00-00', '', ''),
(13, 0, 0.00, '0000-00-00', '', ''),
(14, 0, 0.00, '0000-00-00', '', ''),
(15, 5445456, 1000.00, '2016-02-10', '', 'Active'),
(16, 0, 0.00, '0000-00-00', '', ''),
(17, 45242, 63535.00, '2016-02-09', '', 'Active'),
(18, 0, 0.00, '0000-00-00', '', ''),
(19, 0, 0.00, '0000-00-00', '', ''),
(20, 0, 0.00, '0000-00-00', '', ''),
(21, 542, 500.00, '2016-02-24', '', 'Active'),
(22, 145, 500.00, '2016-04-04', '', 'Active'),
(23, 1111, 1000.00, '2016-04-04', '', 'Active'),
(24, 11, 175.00, '2016-04-09', 'SB Account', 'Active'),
(25, 11, 175.00, '2016-04-09', 'SB Account', 'Active'),
(26, 11, 175.00, '2016-04-09', 'SB Account', 'Active'),
(27, 11, 175.00, '2016-04-09', 'SB Account  Account numbe', 'Active'),
(28, 11, 175.00, '2016-04-09', 'SB Account  Account number -  482', 'Active'),
(29, 11, 175.00, '2016-04-09', 'SB Account  Account number -  500', 'Active'),
(30, 12, 2778.00, '2016-04-09', 'SB Account  Account number -  482', 'Active'),
(31, 12, 2778.00, '2016-04-09', 'Card Payment - Card number1234567890123456', 'Active'),
(32, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(33, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(34, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(35, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(36, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(37, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(38, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(39, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(40, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(41, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(42, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(43, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(44, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(45, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(46, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(47, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(48, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(49, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(50, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(51, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(52, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(53, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(54, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(55, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(56, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(57, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(58, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(59, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(60, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(61, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(62, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(63, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(64, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(65, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(66, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(67, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(68, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(69, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(70, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(71, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(72, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(73, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(74, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(75, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(76, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(77, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(78, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(79, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(80, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(81, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(82, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(83, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(84, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(85, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(86, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(87, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(88, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(89, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(90, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(91, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(92, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(93, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(94, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(95, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(96, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(97, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(98, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(99, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(100, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(101, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(102, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(103, 8, 9.00, '2016-04-11', 'SB Account  Account number -  482', 'Active'),
(104, 13, 179.00, '2016-04-16', 'SB Account  Account number -  532', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `moneyorder`
--

CREATE TABLE `moneyorder` (
  `moneyorderid` int(10) NOT NULL,
  `customerid` int(10) NOT NULL,
  `fromaddr` text NOT NULL,
  `frompin` varchar(10) NOT NULL,
  `toaddr` text NOT NULL,
  `topin` varchar(10) NOT NULL,
  `frommobno` varchar(15) NOT NULL,
  `tomobno` varchar(15) NOT NULL,
  `modate` date NOT NULL,
  `amount` float(10,2) NOT NULL,
  `commission` float(10,2) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moneyorder`
--

INSERT INTO `moneyorder` (`moneyorderid`, `customerid`, `fromaddr`, `frompin`, `toaddr`, `topin`, `frommobno`, `tomobno`, `modate`, `amount`, `commission`, `note`, `status`) VALUES
(1, 7, 'ddddd', '4444', 'ddd', '334', '334', '33434', '2016-01-20', 500.00, 3.00, 'sdsdsd', 'Active'),
(2, 7, 'ddddd', '4444', 'ddd', '334', '334', '33434', '2016-01-20', 500.00, 3.00, 'sdsdsd', 'Active'),
(3, 7, 'ddddd', '4444', 'ddd', '334', '334', '33434', '2016-01-20', 500.00, 3.00, 'sdsdsd', 'Active'),
(4, 7, 'ddddd', '4444', 'ddd', '334', '334', '33434', '2016-01-20', 500.00, 3.00, 'sdsdsd', 'Active'),
(5, 7, 'ddddd', '4444', 'ddd', '334', '334', '33434', '2016-01-20', 500.00, 3.00, 'sdsdsd', 'Active'),
(6, 7, 'ddddd', '4444', 'ddd', '334', '334', '33434', '2016-01-20', 500.00, 3.00, 'sdsdsd', 'Active'),
(9, 3, 'fsfsf', '155', 'cdscdsc', '548548', '54195', '65484784', '2016-01-26', 400.00, 20.00, 'dcc', 'Active'),
(10, 5, 'vfvfdv', '3214654', 'vfddf', '24548', '16595495', '5489', '2016-01-12', 100.00, 5.00, 'jghfyjg', 'Active'),
(15, 15, 'bvghvuygbuhj', '2858952', 'ugfguvybuhj', '8585292', '5928458952', '95284', '2016-03-15', 500.00, 25.00, 'huygyubnj', 'Active'),
(31, 15, 'cfvghvhgv', '16546', 'fghvbnv n', '6565', '2548', '21567', '2016-03-13', 100.00, 5.00, 'Money Transfer', 'Active'),
(32, 9, 'wrfgwgwrg', '4552', 'fbgsfgfg', '243325', '24525', '2353252', '2016-03-16', 500.00, 25.00, 'efwfa', 'Active'),
(34, 9, 'fdsafaf', '56485', 'jkvuihcvhjg', '57454', '56465', '475748578', '2016-03-23', 100.00, 5.00, 'fdffaWsfASZFSZ', 'Active'),
(35, 9, 'fdsafaf', '56485', 'jkvuihcvhjg', '57454', '56465', '475748578', '2016-03-23', 100.00, 5.00, 'fdffaWsfASZFSZ', 'Active'),
(36, 14, 'fvxvfxvxv', '545245', 'fdfsdfsd', '42454', '5454524', '4242545', '2016-03-23', 150.00, 7.50, 'cscscsc', 'Active'),
(37, 14, 'fvxvfxvxv', '545245', 'fdfsdfsd', '42454', '5454524', '4242545', '2016-03-23', 150.00, 7.50, 'cscscsc', 'Active'),
(39, 15, 'bjvbjgvjg', '952626', 'jhbgygyugkukhjb', '52598595', '654894784', '256854826', '2016-03-23', 100.00, 5.00, 'ghfytf', 'Active'),
(40, 5, 'fbhddh', '854', 'ccgfhd', '55454', '456486', '55', '2016-03-16', 100.00, 5.00, 'fdfefef', 'Active'),
(41, 5, 'fbhddh', '854', 'ccgfhd', '55454', '456486', '55', '2016-03-16', 100.00, 5.00, 'fdfefef', 'Active'),
(42, 15, 'jgfthfgnvj', '555555', 'hghfhtvhm', '6563634', '5649846545', '6363636', '2016-03-23', 100.00, 5.00, 'ytfthfg', 'Active'),
(43, 15, 'jgfthfgnvj', '555555', 'hghfhtvhm', '6563634', '5649846545', '6363636', '2016-03-23', 100.00, 5.00, 'ytfthfg', 'Active'),
(44, 16, 'nhyhyhbyh', '165465', 'hyhh', '26549', '25698489', '52985', '2016-03-27', 100.00, 5.00, 'hyhrh', 'Active'),
(45, 16, 'dcfwfrwfwf', '295498', 'cdcscsdc', '295498', '2985', '0955988', '2016-04-01', 150.00, 7.50, 'dcdcdsc', 'Active'),
(46, 16, 'feafaefc', '9848', 'fsfaf', '295498', '5298', '6363636', '2016-04-02', 150.00, 7.50, 'sfafasf', 'Active'),
(47, 16, 'dfsdff', '59464', 'fd', '11111', '574547', '6363636', '2016-04-02', 500.00, 25.00, 'dsadf', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `rdaccount`
--

CREATE TABLE `rdaccount` (
  `rdaccountid` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `docsreqd` text NOT NULL,
  `mindeposit` float(10,2) NOT NULL,
  `acprocedure` text NOT NULL,
  `threeyearinterest` float(10,2) NOT NULL,
  `after5yearinterest` float(10,2) NOT NULL,
  `maximumyear` int(10) NOT NULL,
  `penaltypermonth` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rdaccount`
--

INSERT INTO `rdaccount` (`rdaccountid`, `title`, `docsreqd`, `mindeposit`, `acprocedure`, `threeyearinterest`, `after5yearinterest`, `maximumyear`, `penaltypermonth`, `status`) VALUES
(3, 'deeksha kamath', 'ggt', 100.00, 'tgrgd', 5.00, 6.00, 10000, 60.00, 'Inactive'),
(4, 'deeksha M', 'fvgdfbdfb', 1000.00, 'fgbdfbd', 5.00, 8.00, 3, 125.00, 'Inactive'),
(5, 'ssa', 'atetest', 1000.00, 'test', 5.00, 8.00, 3, 3.00, 'Inactive'),
(6, 'rd', 'efrf', 522.00, 'rfrf', 5.00, 9.00, 40000, 50.00, 'Inactive'),
(7, 'dfa', 'dsds', 5222.00, 'dsd', 4.00, 5.00, 500, 50.00, 'Inactive'),
(8, 'dfa', 'dsds', 5222.00, 'dsd', 4.00, 5.00, 500, 50.00, 'Inactive'),
(9, 'dfscdsf', 'sdasc', 542.00, 'ascas', 4.00, 5.00, 5000, 50.00, 'Inactive'),
(10, 'rd', 'scdac', 600.00, 'dcdacad', 5.00, 7.00, 10, 150.00, 'Inactive'),
(13, 'RD Account', 'Adhar Card', 10.00, 'monthly payment of initiated amount', 4.00, 8.00, 5, 1.00, 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `sbaccount`
--

CREATE TABLE `sbaccount` (
  `sbaccountid` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mindeposit` float(10,2) NOT NULL,
  `interestperyear` float(10,2) NOT NULL,
  `minbal` float(10,2) NOT NULL,
  `documentsreqd` text NOT NULL,
  `acprocedure` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sbaccount`
--

INSERT INTO `sbaccount` (`sbaccountid`, `title`, `mindeposit`, `interestperyear`, `minbal`, `documentsreqd`, `acprocedure`, `status`) VALUES
(3, 'deeksha kamath', 66.00, 6.00, 2422.00, 'sfgvsf', 'sfgsg', 'Inactive'),
(5, 'ddjjkkmm', 600.00, 4.00, 6.00, 'fgdfgdg', 'dgdd', 'Inactive'),
(6, 'sb', 454.00, 4.00, 100.00, 'sdsd', 'sdaD', 'Inactive'),
(7, 'SB Account', 500.00, 5.00, 50.00, 'All documents', 'All procedure', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `ssaaccount`
--

CREATE TABLE `ssaaccount` (
  `ssaccountid` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mindeposit` float(10,2) NOT NULL,
  `deposityr` int(10) NOT NULL,
  `maturityyr` int(10) NOT NULL,
  `interest` float(10,2) NOT NULL,
  `minyrdeposityr` float(10,2) NOT NULL,
  `maxyrdepyr` float(10,2) NOT NULL,
  `yrpenalty` float(10,2) NOT NULL,
  `eighteenyrwithdrawpercent` float(10,2) NOT NULL,
  `docsreqd` text NOT NULL,
  `acprocedure` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ssaaccount`
--

INSERT INTO `ssaaccount` (`ssaccountid`, `title`, `mindeposit`, `deposityr`, `maturityyr`, `interest`, `minyrdeposityr`, `maxyrdepyr`, `yrpenalty`, `eighteenyrwithdrawpercent`, `docsreqd`, `acprocedure`, `status`) VALUES
(3, 'SSA', 1000.00, 2000, 2014, 4.00, 1000.00, 150000.00, 50.00, 50.00, 'fgsfgsf', 'ggdg', 'Active'),
(4, 'test1', 300.00, 500, 18, 6.00, 1.00, 2.00, 50.00, 50.00, 'bcvbcv', 'rfgtsrg', 'Inactive'),
(5, 'test1', 300.00, 500, 18, 6.00, 1.00, 2.00, 50.00, 50.00, 'bcvbcv', 'rfgtsrg', 'Inactive'),
(6, 'ssa', 500.00, 400, 41, 5.00, 1000.00, 55.00, 50.00, 50.00, 'dcfdcd', 'sdsd', 'Inactive'),
(7, 'ssa', 500.00, 400, 41, 5.00, 1000.00, 55.00, 50.00, 50.00, 'dcfdcd', 'sdsd', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `tdaccount`
--

CREATE TABLE `tdaccount` (
  `tdaccount_id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mindeposit` float(10,2) NOT NULL,
  `int1yr` float(10,2) NOT NULL,
  `int2yr` float(10,2) NOT NULL,
  `int3yr` float(10,2) NOT NULL,
  `int5yr` float(10,2) NOT NULL,
  `docsreqrd` text NOT NULL,
  `acprocedure` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tdaccount`
--

INSERT INTO `tdaccount` (`tdaccount_id`, `title`, `mindeposit`, `int1yr`, `int2yr`, `int3yr`, `int5yr`, `docsreqrd`, `acprocedure`, `status`) VALUES
(7, 'td', 10.00, 4.00, 7.00, 4.00, 9.00, 'adhar card', 'fdv', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `trackingid` int(10) NOT NULL,
  `consignment_id` int(10) NOT NULL,
  `location` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracking`
--

INSERT INTO `tracking` (`trackingid`, `consignment_id`, `location`, `date`, `note`, `status`) VALUES
(2, 3, 'Mangalore', '2016-12-31', 'This is test note create by admin', 'Active'),
(8, 5, 'Bangalore', '2016-03-13', 'check', 'Active'),
(9, 5, 'Karkala', '2016-03-13', 'Consignment', 'Active'),
(10, 5, 'Kerala', '2016-03-13', 'sxsacac', 'Active'),
(11, 3, 'Tamil Nadu', '2016-03-13', 'Note', 'Active'),
(12, 6, 'Kerala', '2016-03-14', 'dvsgadvasdna', 'Active'),
(13, 6, 'gvhjj', '2016-03-15', 'bh', 'Active'),
(15, 6, 'fdafSFAD', '2016-03-15', 'asfsaf', 'Active'),
(16, 3, 'mp', '2016-03-14', 'ASDCBASCH', 'Active'),
(17, 6, 'TN', '2016-03-15', 'On The Way', 'Active'),
(18, 5, 'Tannir Bavi', '2016-03-16', 'few kms away from reaching you...', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionid` int(10) NOT NULL,
  `accountid` int(10) NOT NULL,
  `customerid` int(10) NOT NULL,
  `transactiontype` varchar(15) NOT NULL,
  `amount` float(10,2) NOT NULL,
  `transdate` date NOT NULL,
  `paymenttype` varchar(15) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionid`, `accountid`, `customerid`, `transactiontype`, `amount`, `transdate`, `paymenttype`, `note`, `status`) VALUES
(21, 442, 4, 'Credit', 2520.00, '2016-02-04', 'Credit Card', 'Card number 2222', 'Active'),
(22, 442, 4, 'Debit', 100.00, '2016-02-04', 'Online', 'Bank Account Number 442', 'Active'),
(23, 442, 4, 'Debit', 200.00, '2016-02-04', 'Online', 'Bank Account Number 442', 'Active'),
(24, 442, 4, 'Debit', 1700.00, '2016-02-04', 'Online', 'Bank Account Number 15454', 'Active'),
(25, 442, 4, 'Credit', 130.00, '2016-02-08', 'Credit Card', 'Card number 676868', 'Active'),
(26, 451, 4, 'Credit', 250.00, '2016-02-08', 'Credit Card', 'Card number 5522', 'Active'),
(27, 451, 4, 'Debit', 100.00, '2016-02-08', 'Online', 'Bank Account Number 7521', 'Active'),
(28, 451, 4, 'Credit', 500.00, '2016-02-08', 'Credit Card', 'Card number 85', 'Active'),
(29, 451, 4, 'Debit', 655.00, '2016-02-08', 'Online', 'Bank Account Number 8956', 'Active'),
(30, 453, 4, 'Credit', 500.00, '2016-02-09', 'Debit Card', 'Card number 789', 'Active'),
(31, 453, 4, 'Debit', 300.00, '2016-02-09', 'Online', 'Bank Account Number 5632', 'Active'),
(32, 453, 4, 'Debit', 100.00, '2016-02-09', 'Online', 'Bank Account Number 5632', 'Active'),
(33, 454, 4, 'Credit', 1000.00, '2016-02-09', 'Credit Card', 'Card number 5566', 'Active'),
(34, 454, 4, 'Debit', 500.00, '2016-02-09', 'Online', 'Bank Account Number 2365', 'Active'),
(35, 455, 4, 'Credit', 1500.00, '2016-02-09', 'Credit Card', 'Card number 6363', 'Active'),
(36, 455, 4, 'Debit', 500.00, '2016-02-09', 'Online', 'Bank Account Number 1232', 'Active'),
(37, 448, 4, 'Credit', 5000.00, '2016-02-09', 'Debit Card', 'Card number 1000', 'Active'),
(38, 451, 4, 'Credit', 500.00, '2016-02-09', '', 'Card number 676868', 'Active'),
(39, 459, 4, 'Credit', 600.00, '2016-02-09', 'Debit Card', 'Card number 525', 'Active'),
(40, 459, 4, 'Debit', 140.00, '2016-02-09', 'Online', 'Bank Account Number 54546', 'Active'),
(41, 460, 4, 'Credit', 1000.00, '2016-02-09', 'Debit Card', 'Card number 5566', 'Active'),
(42, 460, 4, 'Debit', 500.00, '2016-02-09', 'Online', 'Bank Account Number 5632', 'Active'),
(43, 462, 4, 'Credit', 500.00, '2016-02-09', 'Debit Card', 'Card number 4545', 'Active'),
(44, 460, 4, 'Debit', 40.00, '2016-02-09', 'Online', 'Bank Account Number 787', 'Active'),
(45, 0, 0, 'Credit', 0.00, '2016-02-28', '', 'Card number ', 'Active'),
(46, 0, 0, 'Credit', 0.00, '2016-02-28', '', 'Card number ', 'Active'),
(47, 0, 0, 'Credit', 0.00, '2016-02-28', '', 'Card number ', 'Active'),
(48, 0, 0, 'Credit', 15000.00, '2016-02-28', 'Debit Card', 'Card number 252', 'Active'),
(49, 0, 0, 'Credit', 656.00, '2016-02-28', 'Debit Card', 'Card number 53753', 'Active'),
(50, 0, 0, 'Credit', 0.00, '2016-02-28', '', 'Card number ', 'Active'),
(51, 0, 0, 'Credit', 0.00, '2016-02-28', '', 'Card number ', 'Active'),
(52, 0, 0, 'Credit', 0.00, '2016-02-28', '', 'Card number ', 'Active'),
(53, 0, 0, 'Credit', 25432.00, '2016-02-28', 'Debit Card', 'Card number 24324', 'Active'),
(54, 0, 0, 'Credit', 25424.00, '2016-02-28', 'Debit Card', 'Card number 57452', 'Active'),
(55, 0, 0, 'Credit', 25424.00, '2016-02-28', 'Debit Card', 'Card number 57452', 'Active'),
(56, 0, 0, 'Credit', 22.00, '2016-02-28', 'Debit Card', 'Card number 575', 'Active'),
(57, 0, 0, 'Credit', 52424.00, '2016-02-28', 'Debit Card', 'Card number 5452', 'Active'),
(58, 0, 0, 'Credit', 7454524.00, '2016-02-28', 'Debit Card', 'Card number 524245', 'Active'),
(59, 7477, 75, 'select', 646.00, '2016-02-02', '', '', 'Active'),
(60, 0, 4, 'Credit', 0.00, '2016-03-02', '', 'Card number ', 'Active'),
(61, 0, 4, 'Credit', 0.00, '2016-03-02', '', 'Card number ', 'Active'),
(62, 0, 4, 'Credit', 0.00, '2016-03-02', '', 'Card number ', 'Active'),
(63, 0, 4, 'Credit', 0.00, '2016-03-02', '', 'Card number ', 'Active'),
(64, 0, 4, 'Credit', 0.00, '2016-03-02', '', 'Card number ', 'Active'),
(65, 0, 4, 'Credit', 0.00, '2016-03-02', '', 'Card number ', 'Active'),
(66, 0, 4, 'Credit', 0.00, '2016-03-02', '', 'Card number ', 'Active'),
(67, 0, 4, 'Credit', 0.00, '2016-03-02', '', 'Card number ', 'Active'),
(68, 0, 4, 'Credit', 0.00, '2016-03-02', '', 'Card number ', 'Active'),
(69, 0, 4, 'Credit', 0.00, '2016-03-02', '', 'Card number ', 'Active'),
(70, 479, 9, 'Credit', 50000.00, '2016-03-03', 'VISA', 'Card number 6768687894561235', 'Active'),
(71, 446, 9, 'Credit', 5000.00, '2016-03-03', '479', 'SB Account  Account number -  479', 'Active'),
(72, 446, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(73, 446, 9, 'Credit', 5000.00, '2016-03-03', 'Card Payment', 'Card Payment - Card number676868', 'Active'),
(74, 446, 9, 'Credit', 5000.00, '2016-03-03', 'Card Payment', 'Card Payment - Card number676868', 'Active'),
(75, 446, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(76, 446, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(77, 446, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(78, 446, 9, 'Debit', 5000.00, '2016-03-03', 'Transaction', 'RD Deposit 446', 'Active'),
(79, 446, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(80, 479, 9, 'Debit', 5000.00, '2016-03-03', 'Transaction', 'RD Deposit 446', 'Active'),
(81, 446, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(82, 480, 9, 'Credit', 100.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(83, 481, 9, 'Credit', 100.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(84, 480, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(85, 480, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(86, 479, 9, 'Debit', 5000.00, '2016-03-03', 'Transaction', 'SSA Deposit 480', 'Active'),
(87, 480, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(88, 448, 4, 'Debit', 1000.00, '2016-03-03', 'Transaction', 'RD Deposit 454', 'Active'),
(89, 454, 4, 'Credit', 1000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  448', 'Active'),
(90, 453, 4, 'Credit', 200.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  448', 'Active'),
(91, 448, 4, 'Debit', 1000.00, '2016-03-03', 'Transaction', 'RD Deposit 454', 'Active'),
(92, 454, 4, 'Credit', 1000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  448', 'Active'),
(93, 451, 4, 'Credit', 100.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  448', 'Active'),
(94, 448, 4, 'Debit', 100.00, '2016-03-03', 'Transaction', 'TD Deposit 451', 'Active'),
(95, 451, 4, 'Credit', 100.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  448', 'Active'),
(96, 448, 4, 'Debit', 1500.00, '2016-03-03', 'Transaction', 'SSA Deposit 455', 'Active'),
(97, 455, 4, 'Credit', 1500.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  448', 'Active'),
(98, 448, 4, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(99, 0, 4, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  448', 'Active'),
(100, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(101, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(102, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(103, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(104, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(105, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(106, 479, 9, 'Debit', 5000.00, '2016-03-03', 'Transaction', 'RD Deposit 446', 'Active'),
(107, 446, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(108, 479, 9, 'Debit', 5000.00, '2016-03-03', 'Transaction', 'RD Deposit 446', 'Active'),
(109, 446, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(110, 0, 9, 'Credit', 0.00, '0000-00-00', 'Card Payment', 'Card Payment - Card number4854954978486516', 'Active'),
(111, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(112, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(113, 479, 9, 'Debit', 5000.00, '2016-03-03', 'Transaction', 'RD Deposit 446', 'Active'),
(114, 446, 9, 'Credit', 5000.00, '2016-03-03', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(115, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(116, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(117, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(118, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(119, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(120, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(121, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(122, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(123, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(124, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(125, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(126, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(127, 484, 9, 'Credit', 50000.00, '2016-03-06', 'Debit Card', 'Card number 1236547896321457', 'Active'),
(128, 479, 9, 'Debit', 800.00, '2016-03-06', 'Transaction', 'SSA Deposit 485', 'Active'),
(129, 485, 9, 'Credit', 800.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(130, 479, 9, 'Debit', 500.00, '2016-03-06', 'Transaction', 'TD Deposit 486', 'Active'),
(131, 486, 9, 'Credit', 500.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(132, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(133, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(134, 0, 9, 'Credit', 8000.00, '2016-03-06', 'Debit Card', 'Card number 454897486465', 'Active'),
(135, 479, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(136, 446, 9, 'Credit', 5000.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(137, 479, 9, 'Debit', 400.00, '2016-03-06', 'Transaction', 'SSA Deposit 480', 'Active'),
(138, 480, 9, 'Credit', 400.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(139, 479, 9, 'Debit', 400.00, '2016-03-06', 'Transaction', 'TD Deposit 481', 'Active'),
(140, 481, 9, 'Credit', 400.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(141, 479, 9, 'Debit', 0.00, '0000-00-00', 'Transaction', 'Bill Payment ', 'Active'),
(142, 0, 9, 'Credit', 0.00, '0000-00-00', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(143, 479, 9, 'Debit', 0.00, '2016-03-06', 'Transaction', 'Bill Payment ', 'Active'),
(144, 479, 9, 'Debit', 0.00, '2016-03-06', 'Transaction', 'Bill Payment ', 'Active'),
(145, 479, 9, 'Debit', 0.00, '2016-03-06', 'Transaction', 'Bill Payment ', 'Active'),
(146, 478, 9, 'Credit', 500.00, '2016-03-06', 'Credit Card', 'Card number 5566', 'Active'),
(147, 478, 9, 'Credit', 9000.00, '2016-03-06', 'Debit Card', 'Card number 676868', 'Active'),
(148, 479, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(149, 446, 9, 'Credit', 5000.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(150, 478, 9, 'Credit', 850.00, '2016-03-06', 'Debit Card', 'Card number 2151', 'Active'),
(151, 479, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(152, 479, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(153, 478, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(154, 478, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(155, 484, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(156, 484, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(157, 484, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(158, 484, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(159, 484, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(160, 484, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(161, 484, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(162, 484, 9, 'Debit', 150.00, '2016-03-06', 'Transaction', 'SSA Deposit 480', 'Active'),
(163, 480, 9, 'Credit', 150.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  484', 'Active'),
(164, 479, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(165, 484, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(166, 446, 9, 'Credit', 5000.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  484', 'Active'),
(167, 479, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(168, 446, 9, 'Credit', 5000.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(169, 446, 9, 'Credit', 5000.00, '2016-03-06', 'Card Payment', 'Card Payment - Card number516546', 'Active'),
(170, 479, 9, 'Debit', 550.00, '2016-03-06', 'Transaction', 'SSA Deposit 480', 'Active'),
(171, 480, 9, 'Credit', 550.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(172, 484, 9, 'Debit', 550.00, '2016-03-06', 'Transaction', 'SSA Deposit 480', 'Active'),
(173, 480, 9, 'Credit', 550.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  484', 'Active'),
(174, 484, 9, 'Debit', 400.00, '2016-03-06', 'Transaction', 'TD Deposit 481', 'Active'),
(175, 481, 9, 'Credit', 400.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  484', 'Active'),
(176, 479, 9, 'Credit', 100000.00, '2016-03-06', 'Debit Card', 'Card number 19654165165', 'Active'),
(177, 479, 9, 'Debit', 5000.00, '2016-03-06', 'Transaction', 'RD Deposit 446', 'Active'),
(178, 446, 9, 'Credit', 5000.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(179, 479, 9, 'Debit', 520.00, '2016-03-06', 'Transaction', 'TD Deposit 481', 'Active'),
(180, 481, 9, 'Credit', 520.00, '2016-03-06', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(181, 487, 15, 'Credit', 20000000.00, '2016-03-06', 'Debit Card', 'Card number 2582488295', 'Active'),
(182, 488, 15, 'Credit', 1000.00, '2016-03-06', 'Card Payment', 'Card Payment - Card number35828528', 'Active'),
(183, 484, 9, 'Debit', 0.00, '2016-03-07', 'Transaction', 'Bill Payment ', 'Active'),
(186, 485, 9, 'Credit', 0.00, '2016-03-07', '', ' - Card number', 'Active'),
(187, 480, 9, 'Credit', 0.00, '2016-03-07', '', ' - Card number', 'Active'),
(188, 484, 9, 'Debit', 1000.00, '2016-03-07', 'Transaction', 'TD Deposit 498', 'Active'),
(189, 498, 9, 'Credit', 1000.00, '2016-03-07', 'SB Account', 'SB Account  Account number -  484', 'Active'),
(190, 484, 9, 'Debit', 0.00, '2016-03-07', 'Transaction', 'Bill Payment ', 'Active'),
(191, 500, 9, 'Credit', 1000.00, '2016-03-08', 'Debit Card', 'Card number 1651651532', 'Active'),
(192, 479, 9, 'Debit', 5000.00, '2016-03-08', 'Transaction', 'RD Deposit 446', 'Active'),
(193, 446, 9, 'Credit', 5000.00, '2016-03-08', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(194, 500, 9, 'Debit', 0.00, '2016-03-08', 'Transaction', 'Bill Payment ', 'Active'),
(195, 481, 9, 'Credit', 1000.00, '2016-03-08', 'Card Payment', 'Card Payment - Card number5635631', 'Active'),
(196, 479, 9, 'Debit', 5000.00, '2016-03-10', 'Transaction', 'RD Deposit 446', 'Active'),
(197, 446, 9, 'Credit', 5000.00, '2016-03-10', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(198, 479, 9, 'Debit', 0.00, '2016-03-10', 'Transaction', 'Bill Payment ', 'Active'),
(199, 479, 9, 'Debit', 0.00, '2016-03-10', 'Transaction', 'Bill Payment ', 'Active'),
(200, 479, 9, 'Debit', 0.00, '2016-03-11', 'Transaction', 'TD Deposit ', 'Active'),
(201, 479, 9, 'Debit', 0.00, '2016-03-11', 'Transaction', 'TD Deposit ', 'Active'),
(202, 479, 9, 'Debit', 0.00, '2016-03-11', 'Transaction', 'TD Deposit ', 'Active'),
(203, 479, 9, 'Debit', 0.00, '2016-03-11', 'Transaction', 'TD Deposit ', 'Active'),
(204, 479, 9, 'Debit', 0.00, '2016-03-11', 'Transaction', 'TD Deposit ', 'Active'),
(205, 479, 9, 'Debit', 0.00, '2016-03-11', 'Transaction', 'TD Deposit ', 'Active'),
(206, 479, 9, 'Debit', 0.00, '2016-03-11', 'Transaction', 'TD Deposit ', 'Active'),
(207, 479, 9, 'Debit', 0.00, '2016-03-11', 'Transaction', 'TD Deposit ', 'Active'),
(208, 479, 9, 'Debit', 0.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(209, 479, 9, 'Debit', 0.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(210, 479, 9, 'Debit', 0.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(211, 479, 9, 'Debit', 450.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(212, 479, 9, 'Debit', 500.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(213, 479, 9, 'Debit', 0.00, '2016-03-13', 'Transaction', 'TD Deposit ', 'Active'),
(214, 0, 9, 'Debit', 525.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(215, 479, 9, 'Debit', 525.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(216, 479, 9, 'Debit', 525.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(217, 479, 9, 'Debit', 105.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(218, 479, 9, 'Debit', 105.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(219, 479, 9, 'Debit', 105.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(220, 479, 9, 'Debit', 100.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(221, 0, 9, 'Debit', 100.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(222, 0, 9, 'Debit', 100.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(223, 0, 9, 'Debit', 100.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(224, 479, 9, 'Debit', 5000.00, '2016-03-13', 'Transaction', 'RD Deposit 446', 'Active'),
(225, 446, 9, 'Credit', 5000.00, '2016-03-13', 'SB Account', 'SB Account  Account number -  479', 'Active'),
(226, 484, 9, 'Debit', 100.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(227, 479, 9, 'Debit', 105.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(228, 479, 9, 'Debit', 105.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(229, 479, 9, 'Debit', 105.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(230, 479, 9, 'Debit', 105.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(231, 478, 9, 'Debit', 105.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(232, 479, 9, 'Debit', 100.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(233, 478, 9, 'Debit', 105.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(234, 479, 9, 'Debit', 105.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(235, 479, 9, 'Debit', 105.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(236, 479, 9, 'Debit', 1500.00, '2016-03-13', 'Transaction', 'Bill Payment ', 'Active'),
(237, 479, 9, 'Debit', 1050.00, '2016-03-13', 'Online', 'Money transfer', 'Active'),
(238, 482, 9, 'Credit', 5000.00, '2016-03-22', 'Debit Card', 'Card number 468548465', 'Active'),
(239, 482, 9, 'Debit', 4775.00, '2016-03-22', 'Online', 'Bank Account Number 684845', 'Active'),
(240, 482, 9, 'Debit', 159.00, '2016-03-22', 'Online', 'Bank Account Number 5632', 'Active'),
(241, 505, 0, 'Credit', 0.00, '2016-03-22', 'Interest', '4% Interest for 0', 'Active'),
(242, 505, 0, 'Credit', 0.00, '2016-03-22', 'Interest', '4% Interest for 0', 'Active'),
(243, 505, 0, 'Credit', 0.00, '2016-03-22', 'Interest', '4% Interest for 0', 'Active'),
(244, 505, 0, 'Credit', 0.00, '2016-03-22', 'Interest', '4% Interest for 0', 'Active'),
(245, 482, 0, 'Credit', 2.64, '2016-03-22', 'Interest', '4% Interest for 66', 'Active'),
(246, 482, 9, 'Credit', 2.75, '2016-03-22', 'Interest', '4% Interest for 68.64', 'Active'),
(247, 482, 9, 'Credit', 2.86, '2016-03-22', 'Interest', '4% Interest for 71.39', 'Active'),
(248, 482, 9, 'Credit', 2.97, '2016-03-22', 'Interest', '4% Interest for 74.25', 'Active'),
(249, 482, 9, 'Credit', 3.09, '2016-03-22', 'Interest', '4% Interest for 77.22', 'Active'),
(250, 482, 9, 'Credit', 3.21, '2016-03-22', 'Interest', '4% Interest for 80.31', 'Active'),
(251, 482, 9, 'Credit', 3.34, '2016-03-22', 'Interest', '4% Interest for 83.52', 'Active'),
(252, 482, 9, 'Credit', 3.47, '2016-03-22', 'Interest', '4% Interest for 86.86', 'Active'),
(253, 482, 9, 'Credit', 3.61, '2016-03-22', 'Interest', '4% Interest for 90.33', 'Active'),
(254, 480, 9, 'Credit', 1000.00, '2016-03-23', 'Card Payment', 'Card Payment - Card number51984985', 'Active'),
(255, 500, 9, 'Debit', 105.00, '2016-03-23', 'Online', 'Money transfer', 'Active'),
(256, 507, 12, 'Credit', 5000.00, '2016-03-24', 'Debit Card', 'Card number 676868', 'Active'),
(257, 507, 12, 'Credit', 200.00, '2016-03-24', 'Interest', '4% Interest for 5000', 'Active'),
(258, 455, 4, 'Credit', 235.00, '2016-03-24', 'Interest', '9.4% Interest for 2500', 'Active'),
(259, 480, 9, 'Credit', 1668.50, '2016-03-24', 'Interest', '9.4% Interest for 17750', 'Active'),
(260, 508, 12, 'Credit', 1000.00, '2016-03-24', 'Card Payment', 'Card Payment - Card number528418515', 'Active'),
(261, 508, 12, 'Credit', 94.00, '2016-03-24', 'Interest', '9.4% Interest for 1000', 'Active'),
(262, 509, 12, 'Credit', 500.00, '2016-03-24', 'Card Payment', 'Card Payment - Card number58487495', 'Active'),
(263, 509, 12, 'Credit', 20.00, '2016-03-24', 'Interest', '4% Interest for 500', 'Active'),
(264, 510, 12, 'Credit', 1000.00, '2016-03-24', 'Card Payment', 'Card Payment - Card number6252', 'Active'),
(265, 510, 12, 'Credit', 60.00, '2016-03-24', 'Interest', '6% Interest for 1000', 'Active'),
(270, 510, 12, 'Credit', 68.90, '2016-03-24', 'Interest', '6.5% Interest for 1060', 'Active'),
(271, 510, 12, 'Credit', 79.02, '2016-03-24', 'Interest', '7.00% Interest for 1128.9', 'Active'),
(272, 510, 12, 'Credit', 84.55, '2016-03-24', 'Interest', '7.00% Interest for 1207.92', 'Active'),
(274, 508, 12, 'Credit', 102.84, '2016-03-24', 'Interest', '9.4% Interest for 1094', 'Active'),
(275, 508, 12, 'Credit', 112.50, '2016-03-24', 'Interest', '9.4% Interest for 1196.84', 'Active'),
(276, 508, 12, 'Credit', 123.08, '2016-03-24', 'Interest', '9.4% Interest for 1309.34', 'Active'),
(277, 508, 12, 'Credit', 134.65, '2016-03-24', 'Interest', '9.4% Interest for 1432.42', 'Active'),
(278, 508, 12, 'Credit', 147.30, '2016-03-24', 'Interest', '9.4% Interest for 1567.07', 'Active'),
(279, 508, 12, 'Credit', 161.15, '2016-03-24', 'Interest', '9.4% Interest for 1714.37', 'Active'),
(280, 508, 12, 'Credit', 176.30, '2016-03-24', 'Interest', '9.4% Interest for 1875.52', 'Active'),
(281, 508, 12, 'Credit', 192.87, '2016-03-24', 'Interest', '9.4% Interest for 2051.82', 'Active'),
(282, 508, 12, 'Credit', 211.00, '2016-03-24', 'Interest', '9.4% Interest for 2244.69', 'Active'),
(283, 508, 12, 'Credit', 230.83, '2016-03-24', 'Interest', '9.4% Interest for 2455.69', 'Active'),
(284, 508, 12, 'Credit', 252.53, '2016-03-24', 'Interest', '9.4% Interest for 2686.52', 'Active'),
(285, 508, 12, 'Credit', 276.27, '2016-03-24', 'Interest', '9.4% Interest for 2939.05', 'Active'),
(286, 508, 12, 'Credit', 302.24, '2016-03-24', 'Interest', '9.4% Interest for 3215.32', 'Active'),
(287, 508, 12, 'Credit', 330.65, '2016-03-24', 'Interest', '9.4% Interest for 3517.56', 'Active'),
(288, 507, 12, 'Credit', 208.00, '2016-03-24', 'Interest', '4% Interest for 5200', 'Active'),
(291, 509, 12, 'Credit', 20.80, '2016-03-24', 'Interest', '4% Interest for 520', 'Active'),
(294, 509, 12, 'Credit', 21.63, '2016-03-24', 'Interest', '4% Interest for 540.8 3rd year', 'Active'),
(295, 509, 12, 'Credit', 47.81, '2016-03-24', 'Interest', '8.5% Interest for 562.43 4th year', 'Active'),
(296, 509, 12, 'Credit', 51.87, '2016-03-24', 'Interest', '8.5% Interest for 610.24 5th year', 'Active'),
(297, 510, 12, 'Credit', 103.40, '2016-03-24', 'Interest', '8.00% Interest for 1292.47', 'Active'),
(298, 513, 16, 'Credit', 1500.00, '2016-03-25', 'Debit Card', 'Card number 1595656658785', 'Active'),
(299, 513, 16, 'Credit', 60.00, '2016-03-25', 'Interest', '4% Interest for 1500', 'Active'),
(300, 514, 9, 'Credit', 1000.00, '2016-03-28', 'Card Payment', 'Card Payment - Card number78888888888', 'Active'),
(301, 507, 12, 'Credit', 216.32, '2016-03-28', 'Interest', '4% Interest for 5408', 'Active'),
(302, 513, 16, 'Credit', 62.40, '2016-03-28', 'Interest', '4% Interest for 1560', 'Active'),
(304, 515, 9, 'Credit', 1500.00, '2016-03-28', 'Card Payment', 'Card Payment - Card number676868', 'Active'),
(305, 515, 9, 'Credit', 52.50, '2016-03-31', 'Online', '3.5 inter for TD', 'Active'),
(306, 515, 9, 'Credit', 52.50, '2016-03-31', 'Online', '3.5 inter for TD', 'Active'),
(307, 515, 9, 'Credit', 52.50, '2016-03-31', 'Online', '3.5 inter for TD', 'Active'),
(308, 515, 9, 'Debit', 0.00, '2016-03-31', 'Online', 'Bank Account Number 5632', 'Active'),
(309, 515, 9, 'Credit', 58.01, '2016-03-31', 'Online', '3.5 inter for TD', 'Active'),
(310, 515, 9, 'Credit', 58.01, '2016-03-31', 'Online', '3.5 inter for TD', 'Active'),
(311, 515, 9, 'Credit', 58.01, '2016-03-31', 'Online', '3.5 inter for TD', 'Active'),
(312, 515, 9, 'Debit', 0.00, '2016-03-31', 'Online', 'Bank Account Number 5632', 'Active'),
(313, 515, 9, 'Credit', 64.10, '2016-03-31', 'Online', '3.5 inter for TD', 'Active'),
(314, 515, 9, 'Credit', 64.10, '2016-03-31', 'Online', '3.5 inter for TD', 'Active'),
(315, 515, 9, 'Credit', 64.10, '2016-03-31', 'Online', '3.5 inter for TD', 'Active'),
(316, 515, 9, 'Debit', 1657.50, '2016-03-31', 'Online', 'Bank Account Number 5632', 'Active'),
(317, 515, 9, 'Credit', 12.82, '2016-03-31', 'Online', '3.5% interest for TD', 'Active'),
(318, 515, 9, 'Credit', 12.82, '2016-03-31', 'Online', '3.5% interest for TD', 'Active'),
(319, 515, 9, 'Credit', 12.82, '2016-03-31', 'Online', '3.5% interest for TD', 'Active'),
(320, 515, 9, 'Debit', 1657.50, '2016-03-31', 'Online', 'Bank Account Number 5632', 'Active'),
(321, 515, 9, 'Credit', -43.84, '2016-03-31', 'Online', '3.5% interest for TD', 'Active'),
(322, 515, 9, 'Credit', -43.84, '2016-03-31', 'Online', '3.5% interest for TD', 'Active'),
(323, 515, 9, 'Credit', -43.84, '2016-03-31', 'Online', '3.5% interest for TD', 'Active'),
(324, 515, 9, 'Debit', 1657.50, '2016-03-31', 'Online', 'Bank Account Number 5632', 'Active'),
(325, 515, 9, 'Credit', -106.46, '2016-03-31', 'Online', '3.5% interest for TD', 'Active'),
(326, 515, 9, 'Credit', -106.46, '2016-03-31', 'Online', '3.5% interest for TD', 'Active'),
(327, 515, 9, 'Credit', -106.46, '2016-03-31', 'Online', '3.5% interest for TD', 'Active'),
(328, 515, 9, 'Debit', 1657.50, '2016-03-31', 'Online', 'Bank Account Number 5632', 'Active'),
(329, 506, 9, 'Credit', 500000.00, '2016-03-31', 'Card Payment', 'Card Payment - Card number112121', 'Active'),
(330, 506, 9, 'Credit', 47000.00, '2016-04-01', 'Interest', '9.4% Interest for 500000', 'Active'),
(331, 506, 9, 'Credit', 51418.00, '2016-04-01', 'Interest', '9.4% Interest for 547000', 'Active'),
(332, 506, 9, 'Credit', 56251.29, '2016-04-01', 'Interest', '9.4% Interest for 598418', 'Active'),
(333, 506, 9, 'Credit', 61538.91, '2016-04-01', 'Interest', '9.4% Interest for 654669.29', 'Active'),
(334, 506, 9, 'Credit', 67323.57, '2016-04-01', 'Interest', '9.4% Interest for 716208.2', 'Active'),
(335, 506, 9, 'Credit', 73651.99, '2016-04-01', 'Interest', '9.4% Interest for 783531.77', 'Active'),
(336, 515, 9, 'Credit', -351.30, '2016-04-01', 'Interest', '7% Interest for -5018.61', 'Active'),
(337, 515, 9, 'Credit', -375.89, '2016-04-01', 'Interest', '7% Interest for -5369.91', 'Active'),
(338, 482, 9, 'Debit', 20.00, '2016-04-01', 'Online', 'Bank Account Number 15224555', 'Active'),
(339, 482, 9, 'Debit', 7.00, '2016-04-01', 'Online', 'Bank Account Number 15224555', 'Active'),
(340, 482, 9, 'Credit', 50000.00, '2016-04-01', 'Debit Card', 'Card number 51646515516456526', 'Active'),
(341, 482, 9, 'Debit', 100.00, '2016-04-01', 'Online', 'Bank Account Number 525', 'Active'),
(342, 482, 9, 'Debit', 100.00, '2016-04-01', 'Transaction', 'Bill Payment ', 'Active'),
(343, 515, 9, 'Credit', 50000.00, '2016-04-01', 'Card Payment', 'Card Payment - Card number15236515615', 'Active'),
(344, 482, 9, 'Debit', 100.00, '2016-04-01', 'Online', 'Bank Account Number 44445555', 'Active'),
(345, 515, 9, 'Credit', 3097.79, '2016-04-01', 'Online', '7.00% interest for TD', 'Active'),
(346, 515, 9, 'Credit', 3097.79, '2016-04-01', 'Online', '7.00% interest for TD', 'Active'),
(347, 515, 9, 'Credit', 3097.79, '2016-04-01', 'Online', '7.00% interest for TD', 'Active'),
(348, 515, 9, 'Debit', 53547.58, '2016-04-01', 'Online', 'Bank Account Number 8569', 'Active'),
(349, 515, 9, 'Credit', 500000.00, '2016-04-01', 'Card Payment', 'Card Payment - Card number1236547891234567', 'Active'),
(350, 515, 9, 'Credit', 35000.00, '2016-04-01', 'Online', '7.00% interest for TD', 'Active'),
(351, 515, 9, 'Credit', 35000.00, '2016-04-01', 'Online', '7.00% interest for TD', 'Active'),
(352, 515, 9, 'Credit', 35000.00, '2016-04-01', 'Online', '7.00% interest for TD', 'Active'),
(353, 515, 9, 'Debit', 605000.00, '2016-04-01', 'Online', 'Bank Account Number 569', 'Active'),
(354, 515, 9, 'Credit', 10000.00, '2016-04-01', 'Card Payment', 'Card Payment - Card number52599', 'Active'),
(355, 515, 9, 'Credit', 700.00, '2016-04-01', 'Online', '7.00% interest for TD', 'Active'),
(356, 515, 9, 'Credit', 700.00, '2016-04-01', 'Online', '7.00% interest for TD', 'Active'),
(357, 515, 9, 'Credit', 700.00, '2016-04-01', 'Online', '7.00% interest for TD', 'Active'),
(358, 515, 9, 'Debit', 12099.99, '2016-04-01', 'Online', 'Bank Account Number 4555', 'Active'),
(359, 506, 9, 'Debit', 20000.00, '2016-04-01', 'Online', 'Bank Account Number 963', 'Active'),
(360, 494, 9, 'Credit', 50000.00, '2016-04-01', 'Debit Card', 'Card number 12345678912345678', 'Active'),
(361, 494, 9, 'Debit', 500.00, '2016-04-01', 'Online', 'Bank Account Number 966', 'Active'),
(362, 486, 9, 'Credit', 50000.00, '2016-04-01', 'Card Payment', 'Card Payment - Card number123456789123456', 'Active'),
(363, 516, 9, 'Credit', 50000.00, '2016-04-01', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(364, 516, 9, 'Credit', 1500.00, '2016-04-01', 'Online', '3% interest for TD', 'Active'),
(365, 516, 9, 'Debit', 51500.00, '2016-04-01', 'Online', 'Bank Account Number 5632', 'Active'),
(366, 514, 9, 'Debit', 1040.00, '2016-04-01', 'Online', 'Bank Account Number 852', 'Active'),
(367, 482, 9, 'Debit', 1000.00, '2016-04-01', 'Transaction', 'RD Deposit 514', 'Active'),
(368, 514, 9, 'Credit', 1000.00, '2016-04-01', 'SB Account', 'SB Account  Account number -  482', 'Active'),
(369, 514, 9, 'Debit', 998.40, '2016-04-01', 'Online', 'Bank Account Number 8963', 'Active'),
(370, 480, 9, 'Debit', 1500.00, '2016-04-01', 'Online', 'Bank Account Number 54848', 'Active'),
(371, 480, 9, 'Debit', 1500.00, '2016-04-01', 'Online', 'Bank Account Number 54848', 'Active'),
(372, 480, 9, 'Debit', 1500.00, '2016-04-01', 'Online', 'Bank Account Number 54848', 'Active'),
(373, 480, 9, 'Debit', 1500.00, '2016-04-01', 'Online', 'Bank Account Number 54848', 'Active'),
(374, 485, 9, 'Debit', 100.00, '2016-04-01', 'Online', 'Bank Account Number 5632', 'Active'),
(375, 482, 9, 'Credit', 0.00, '2016-04-01', 'Debit Card', 'Card number 1234567891234567', 'Active'),
(376, 482, 9, 'Credit', 500.00, '2016-04-01', 'Debit Card', 'Card number 1234567891234567', 'Active'),
(377, 482, 9, 'Credit', 50000.00, '2016-04-01', 'Debit Card', 'Card number 1234567891234567', 'Active'),
(378, 514, 9, 'Credit', 1000.00, '2016-04-01', 'Card Payment', 'Card Payment - Card number2222', 'Active'),
(379, 496, 9, 'Credit', 5000.00, '2016-04-02', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(380, 514, 9, 'Credit', 1000.00, '2016-04-02', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(381, 516, 9, 'Credit', 50000.00, '2016-04-02', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(382, 515, 9, 'Credit', 50000.00, '2016-04-02', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(383, 480, 9, 'Credit', 50000.00, '2016-04-02', 'Card Payment', 'Card Payment - Card number', 'Active'),
(384, 485, 9, 'Credit', 5000.00, '2016-04-02', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(385, 485, 9, 'Credit', 100.00, '2016-04-02', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(386, 485, 9, 'Credit', 500.00, '2016-04-02', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(387, 517, 9, 'Credit', 50000.00, '2016-04-02', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(388, 514, 9, 'Credit', 1000.00, '2016-04-02', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(389, 514, 9, 'Credit', 1000.00, '2016-04-02', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(390, 518, 9, 'Credit', 2500.00, '2016-04-03', '', ' - Card number', 'Active'),
(391, 519, 9, 'Credit', 3500.00, '2016-04-03', '', ' - Card number', 'Active'),
(392, 519, 9, 'Credit', 4000.00, '2016-04-03', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(393, 0, 9, 'Debit', 4000.00, '2016-04-03', 'Transaction', 'TD Deposit 519', 'Active'),
(394, 519, 9, 'Credit', 4000.00, '2016-04-03', 'SB Account', 'SB Account  Account number -  ', 'Active'),
(395, 482, 9, 'Debit', 4000.00, '2016-04-03', 'Transaction', 'TD Deposit 519', 'Active'),
(396, 519, 9, 'Credit', 4000.00, '2016-04-03', 'SB Account', 'SB Account  Account number -  482', 'Active'),
(397, 521, 9, 'Credit', 100.00, '2016-04-03', 'Card Payment', 'Card Payment - Card number1478523698742365', 'Active'),
(398, 480, 9, 'Credit', 1500.00, '2016-04-03', '', ' - Card number', 'Active'),
(399, 480, 9, 'Credit', 1500.00, '2016-04-03', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(400, 482, 9, 'Credit', 0.00, '2016-04-03', 'Debit Card', 'Card number 1234567891234567', 'Active'),
(401, 482, 9, 'Credit', 500.00, '2016-04-03', 'Debit Card', 'Card number 1234567891234567', 'Active'),
(402, 522, 9, 'Credit', 9600.00, '2016-04-03', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(403, 523, 9, 'Credit', 500.00, '2016-04-03', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(404, 524, 9, 'Credit', 580.00, '2016-04-03', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(405, 0, 0, '', 0.00, '0000-00-00', 'Offline', '', 'Active'),
(406, 0, 0, '', 0.00, '0000-00-00', 'Offline', '', 'Active'),
(407, 0, 0, '', 0.00, '0000-00-00', 'Offline', '', 'Active'),
(408, 0, 0, '', 0.00, '0000-00-00', 'Offline', '', 'Active'),
(409, 506, 9, 'Credit', 78695.27, '2016-04-05', 'Interest', '9.4% Interest for 837183.76', 'Active'),
(410, 506, 9, 'Credit', 86092.63, '2016-04-05', 'Interest', '9.4% Interest for 915879.04', 'Active'),
(411, 506, 9, 'Credit', 94185.34, '2016-04-05', 'Interest', '9.4% Interest for 1001971.67', 'Active'),
(412, 506, 9, 'Credit', 103038.76, '2016-04-05', 'Interest', '9.4% Interest for 1096157.01', 'Active'),
(413, 506, 9, 'Credit', 112724.40, '2016-04-05', 'Interest', '9.4% Interest for 1199195.77', 'Active'),
(414, 506, 9, 'Credit', 123320.50, '2016-04-05', 'Interest', '9.4% Interest for 1311920.17', 'Active'),
(415, 506, 9, 'Credit', 134912.62, '2016-04-05', 'Interest', '9.4% Interest for 1435240.67', 'Active'),
(416, 506, 9, 'Credit', 147594.41, '2016-04-05', 'Interest', '9.4% Interest for 1570153.29', 'Active'),
(417, 506, 9, 'Credit', 161468.28, '2016-04-05', 'Interest', '9.4% Interest for 1717747.7', 'Active'),
(418, 506, 9, 'Credit', 176646.30, '2016-04-05', 'Interest', '9.4% Interest for 1879215.98', 'Active'),
(419, 506, 9, 'Credit', 193251.05, '2016-04-05', 'Interest', '9.4% Interest for 2055862.28', 'Active'),
(420, 506, 9, 'Credit', 211416.66, '2016-04-05', 'Interest', '9.4% Interest for 2249113.32', 'Active'),
(421, 506, 9, 'Credit', 231289.81, '2016-04-05', 'Interest', '9.4% Interest for 2460529.98', 'Active'),
(422, 506, 9, 'Credit', 253031.06, '2016-04-05', 'Interest', '9.4% Interest for 2691819.79', 'Active'),
(423, 506, 9, 'Credit', 276815.97, '2016-04-05', 'Interest', '9.4% Interest for 2944850.86', 'Active'),
(424, 515, 9, 'Credit', 3500.00, '2016-04-05', 'Interest', '7% Interest for 50000', 'Active'),
(425, 524, 9, 'Credit', 580.00, '2016-04-06', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(426, 524, 9, 'Credit', 580.00, '2016-04-06', 'Card Payment', 'Card Payment - Card number1234567891234567', 'Active'),
(427, 515, 9, 'Credit', 3745.00, '2016-04-06', 'Interest', '7% Interest for 53500', 'Active'),
(428, 482, 9, 'Debit', 175.00, '2016-04-09', 'Transaction', 'Insurance payment A/c 11', 'Active'),
(429, 482, 9, 'Debit', 175.00, '2016-04-09', 'Transaction', 'Insurance payment A/c 11', 'Active'),
(430, 482, 9, 'Debit', 175.00, '2016-04-09', 'Transaction', 'Insurance payment A/c 11', 'Active'),
(431, 500, 9, 'Debit', 175.00, '2016-04-09', 'Transaction', 'Insurance payment A/c 11', 'Active'),
(432, 482, 9, 'Debit', 2778.00, '2016-04-09', 'Transaction', 'Insurance payment A/c 12', 'Active'),
(433, 482, 9, 'Debit', 9.00, '2016-04-11', 'Transaction', 'Insurance payment A/c 8', 'Active'),
(434, 500, 0, 'Credit', 648.00, '2016-04-11', 'Online', 'Insurance amount transaction Policy Number - 8', 'Active'),
(435, 500, 0, 'Credit', 648.00, '2016-04-11', 'Online', 'Insurance amount transaction Policy Number - 8', 'Active'),
(436, 500, 9, 'Credit', 648.00, '2016-04-11', 'Online', 'Insurance amount transaction Policy Number - 8', 'Active'),
(437, 532, 17, 'Credit', 500000.00, '2016-04-16', 'Debit Card', 'Card number 1111223344556677', 'Active'),
(438, 532, 17, 'Debit', 10000.00, '2016-04-16', 'Online', 'Bank Account Number 829239389238', 'Active'),
(439, 532, 17, 'Debit', 333333.00, '2016-04-16', 'Online', 'Bank Account Number 829239389238', 'Active'),
(442, 532, 17, 'Debit', 0.00, '2016-04-16', 'Online', 'Bank Account Number ', 'Active'),
(443, 532, 17, 'Debit', 2.00, '2016-04-16', 'Online', 'Bank Account Number ', 'Active'),
(444, 532, 17, 'Debit', 2.00, '2016-04-16', 'Online', 'Bank Account Number ', 'Active'),
(445, 532, 17, 'Debit', 3.00, '2016-04-16', 'Online', 'Bank Account Number ', 'Active'),
(446, 532, 17, 'Debit', 3.00, '2016-04-16', 'Online', 'Bank Account Number ', 'Active'),
(447, 532, 17, 'Debit', 0.00, '2016-04-16', 'Online', 'Bank Account Number ', 'Active'),
(448, 532, 17, 'Debit', 3.00, '2016-04-16', 'Online', 'Bank Account Number ', 'Active'),
(449, 532, 17, 'Debit', 15665.00, '2016-04-16', 'Online', 'Bank Account Number 829239389238', 'Active'),
(450, 532, 17, 'Debit', 2.00, '2016-04-16', 'Online', 'Bank Account Number ', 'Active'),
(451, 532, 17, 'Debit', 179.00, '2016-04-16', 'Transaction', 'Insurance payment A/c 13', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountid`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `billpayment`
--
ALTER TABLE `billpayment`
  ADD PRIMARY KEY (`billpaymentid`);

--
-- Indexes for table `consignment`
--
ALTER TABLE `consignment`
  ADD PRIMARY KEY (`consignment_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`insuranceid`);

--
-- Indexes for table `insurancetype`
--
ALTER TABLE `insurancetype`
  ADD PRIMARY KEY (`insurancetypeid`);

--
-- Indexes for table `insurance_payment`
--
ALTER TABLE `insurance_payment`
  ADD PRIMARY KEY (`insurance_payment_id`);

--
-- Indexes for table `moneyorder`
--
ALTER TABLE `moneyorder`
  ADD PRIMARY KEY (`moneyorderid`);

--
-- Indexes for table `rdaccount`
--
ALTER TABLE `rdaccount`
  ADD PRIMARY KEY (`rdaccountid`);

--
-- Indexes for table `sbaccount`
--
ALTER TABLE `sbaccount`
  ADD PRIMARY KEY (`sbaccountid`);

--
-- Indexes for table `ssaaccount`
--
ALTER TABLE `ssaaccount`
  ADD PRIMARY KEY (`ssaccountid`);

--
-- Indexes for table `tdaccount`
--
ALTER TABLE `tdaccount`
  ADD PRIMARY KEY (`tdaccount_id`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`trackingid`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `accountid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=534;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `billpayment`
--
ALTER TABLE `billpayment`
  MODIFY `billpaymentid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `consignment`
--
ALTER TABLE `consignment`
  MODIFY `consignment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `insuranceid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `insurancetype`
--
ALTER TABLE `insurancetype`
  MODIFY `insurancetypeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `insurance_payment`
--
ALTER TABLE `insurance_payment`
  MODIFY `insurance_payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `moneyorder`
--
ALTER TABLE `moneyorder`
  MODIFY `moneyorderid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `rdaccount`
--
ALTER TABLE `rdaccount`
  MODIFY `rdaccountid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sbaccount`
--
ALTER TABLE `sbaccount`
  MODIFY `sbaccountid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ssaaccount`
--
ALTER TABLE `ssaaccount`
  MODIFY `ssaccountid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tdaccount`
--
ALTER TABLE `tdaccount`
  MODIFY `tdaccount_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `trackingid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
