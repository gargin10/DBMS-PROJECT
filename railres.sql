

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";




--
-- Database: `railres`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `uname` varchar(15) NOT NULL,
  `Tnumber` int(11) NOT NULL,
  `class` varchar(2) NOT NULL,
  `doj` date NOT NULL,
  `DOB` date NOT NULL,
  `fromstn` varchar(15) NOT NULL,
  `tostn` varchar(15) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Age` int(11) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`uname`, `Tnumber`, `class`, `doj`, `DOB`, `fromstn`, `tostn`, `Name`, `Age`, `sex`, `Status`) VALUES
('Gargi', 12009, '2A', '2023-04-28', '2023-04-26', 'SURAT', 'BARODA', 'anushka', 20, 'female', 'Confirmed'),
('Gargi', 19011, '1A', '2023-04-30', '2023-04-26', 'SURAT', 'BARODA', 'abhishek', 21, 'male', 'Confirmed'),
('Gargi', 12932, '1A', '2023-05-31', '2023-04-26', 'SURAT', 'BARODA', 'shreya', 25, 'female', 'Confirmed'),
('Gargi', 12932, '1A', '2023-05-31', '2023-04-26', 'SURAT', 'BARODA', 'sana', 15, 'female', 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `interlist`
--

CREATE TABLE `interlist` (
  `Number` int(6) DEFAULT NULL,
  `st1` varchar(10) DEFAULT NULL,
  `st1arri` varchar(10) DEFAULT NULL,
  `st2` varchar(10) DEFAULT NULL,
  `st2arri` varchar(10) DEFAULT NULL,
  `st3` varchar(10) DEFAULT NULL,
  `st3arri` varchar(10) DEFAULT NULL,
  `st4` varchar(10) DEFAULT NULL,
  `st4arri` varchar(10) DEFAULT NULL,
  `st5` varchar(10) DEFAULT NULL,
  `st5arri` varchar(10) DEFAULT NULL,
  `Ori` varchar(20) NOT NULL,
  `Oriarri` varchar(10) NOT NULL,
  `Dest` varchar(20) NOT NULL,
  `Desarri` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Mon` varchar(2) NOT NULL,
  `Tue` varchar(2) NOT NULL,
  `Wed` varchar(2) NOT NULL,
  `Thu` varchar(2) NOT NULL,
  `Fri` varchar(2) NOT NULL,
  `Sat` varchar(2) NOT NULL,
  `Sun` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interlist`
--

INSERT INTO `interlist` (`Number`, `st1`, `st1arri`, `st2`, `st2arri`, `st3`, `st3arri`, `st4`, `st4arri`, `st5`, `st5arri`, `Ori`, `Oriarri`, `Dest`, `Desarri`, `Name`, `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `Sat`, `Sun`) VALUES
(12009, 'nanded', '00:15', 'hyderabad', '01:45', 'sutr', '02:30', 'BARODA', '04:00', 'ANAND', '05:05', 'BCT', '22:15', 'ADI', '06:25', 'SHATABDI EXP', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'X'),
(12931, 'VAPI', '07:15', 'VALSAD', '08:45', 'SURAT', '09:30', 'BARODA', '11:30', 'ANAND', '12:45', 'BCT', '06:00', 'ADI', '14:20', 'ADI DOUBLE DECK', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(12932, 'VAPI', '19:15', 'VALSAD', '18:45', 'SURAT', '07:30', 'BARODA', '15:30', 'ANAND', '14:05', 'ADI', '13:00', 'BCT', '22:10', 'BCT DOUBLEDECKE', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(19011, 'VAPI', '06:26', 'VALSAD', '01:50', 'SURAT', '23:45', 'BARODA', '20:20', 'ANAND', '18:10', 'ADI', '16:25', 'BCT', '10:25', 'GUJARAT EXPRESS', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y'),
(22210, 'VAPI', '00:10', 'VALSAD', '23:50', 'SURAT', '22:25', 'BARODA', '20:05', 'ANAND', '18:20', 'NDLS', '16:15', 'BCT', '01:35', 'BCT DURONTO', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `seats_availability`
--

CREATE TABLE `seats_availability` (
  `Train_No` int(11) NOT NULL,
  `Train_Name` varchar(20) NOT NULL,
  `doj` date NOT NULL,
  `1A` int(11) NOT NULL,
  `2A` int(11) NOT NULL,
  `3A` int(11) NOT NULL,
  `AC` int(11) NOT NULL,
  `CC` int(11) NOT NULL,
  `SL` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats_availability`
--

INSERT INTO `seats_availability` (`Train_No`, `Train_Name`, `doj`, `1A`, `2A`, `3A`, `AC`, `CC`, `SL`) VALUES
(12009, 'pushpak', '2023-04-10', 5, 5, 5, 5, 5, 5),
(12009, 'pushpak', '2023-04-10', 5, 5, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-01', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-02', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-03', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-04', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-05', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-06', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-08', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-09', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-10', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-11', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-12', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-13', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-15', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-16', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-17', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-18', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-19', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-20', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-22', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-23', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-24', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-25', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-26', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-27', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-29', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-30', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-05-31', 5, 8, 5, 5, 5, 5),
(12009, 'PUSHPAK', '2023-06-01', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-02', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-03', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-05', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-06', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-07', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-08', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-09', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-10', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-12', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-13', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-14', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-15', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-16', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-17', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-19', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-20', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-21', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-22', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-23', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-24', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-26', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-27', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-28', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-29', 5, 8, 9, 5, 5, 6),
(12009, 'PUSHPAK', '2023-06-30', 5, 8, 9, 5, 5, 6),
(12931, 'ADI DOUBLE DECK', '2023-05-01', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-02', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-03', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-04', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-05', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-06', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-07', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-08', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-09', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-10', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-11', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-12', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-13', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-14', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-15', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-16', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-17', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-18', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-19', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-20', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-21', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-22', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-23', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-24', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-25', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-26', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-27', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-28', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-29', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-30', 5, 8, 9, 5, 5, 5),
(12931, 'ADI DOUBLE DECK', '2023-05-31', 5, 8, 9, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-01', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-02', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-03', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-04', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-05', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-06', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-07', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-08', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-09', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-10', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-11', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-12', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-13', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-14', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-15', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-16', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-17', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-18', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-19', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-20', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-21', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-22', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-23', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-24', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-25', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-26', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-27', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-28', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-29', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-30', 5, 5, 5, 5, 5, 5),
(12932, 'BCT DOUBLEDECKE', '2023-05-31', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-01', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-02', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-03', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-04', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-05', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-06', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-07', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-08', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-09', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-10', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-11', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-12', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-13', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-14', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-15', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-16', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-17', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-18', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-19', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-20', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-21', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-22', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-23', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-24', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-25', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-26', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-27', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-28', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-29', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-30', 5, 5, 5, 5, 5, 5),
(19011, 'GUJARAT EXPRESS', '2023-05-31', 5, 5, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `train_list`
--

CREATE TABLE `train_list` (
  `Number` int(6) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Origin` varchar(20) NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `Arrival` varchar(10) NOT NULL,
  `Departure` varchar(10) NOT NULL,
  `Mon` varchar(2) NOT NULL,
  `Tue` varchar(2) NOT NULL,
  `Wed` varchar(2) NOT NULL,
  `Thu` varchar(2) NOT NULL,
  `Fri` varchar(2) NOT NULL,
  `Sat` varchar(2) NOT NULL,
  `Sun` varchar(2) NOT NULL,
  `1A` int(11) NOT NULL,
  `2A` int(11) NOT NULL,
  `3A` int(11) NOT NULL,
  `AC` int(11) NOT NULL,
  `CC` int(11) NOT NULL,
  `SL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train_list`
--

INSERT INTO `train_list` (`Number`, `Name`, `Origin`, `Destination`, `Arrival`, `Departure`, `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `Sat`, `Sun`, `1A`, `2A`, `3A`, `AC`, `CC`, `SL`) VALUES

(12931, 'ADI DOUBLE DECK', 'BCT', 'ADI', 'First st', '14:20', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 3000, 2500, 2000, 1000, 500, 250),
(12932, 'BCT DOUBLEDECKE', 'ADI', 'BCT', '13:00', 'Last st', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 3000, 2500, 2000, 1000, 500, 250),
(12952, 'MUMBAI RAJDHANI', 'NDLS', 'BCT', '08:25', 'last st', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 3000, 2500, 2000, 1000, 500, 250),
(19011, 'GUJARAT EXPRESS', 'ADI', 'BCT', '16:25', '10:35', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 3000, 2500, 2000, 1000, 500, 250),
(22210, 'BCT DURONTO', 'NDLS', 'BCT', '16:15', 'Last st', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 3000, 2500, 2000, 1000, 500, 250),
(22220, 'BCT DURONTO', 'NDLS', 'BCT', '16:15', 'Last st', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 3000, 2500, 2000, 1000, 500, 250),
(22222, 'BCT DURONTO', 'NDLS', 'BCT', '16:15', 'Last st', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 3000, 2500, 2000, 1000, 500, 250),
(25222, 'BCT DURONTO', 'NDLS', 'BCT', '16:15', 'Last st', 'N', 'N', 'Y', 'N', 'N', 'N', 'Y', 3000, 2500, 2000, 1000, 500, 250),
(29333, 'KARNAVATI EXP', 'AHMD', 'BCT', '08:05', '21:10', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'Y', 3000, 2500, 2000, 1000, 500, 250),
(59442, 'AHMEDABAD PASS', 'ADI', 'BCT', '04:35', '1:35', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 3000, 2500, 2000, 1000, 500, 250),
(12009, 'pushpak', 'BCT', 'ADI', '22:15', '06:25', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 3000, 2500, 2000, 1000, 500, 250);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `f_name` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admins` (`f_name`,`password`) VALUES
('sana', '123456789'),
('gargin', '987654321');

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `marital` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `mobile` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`f_name`, `l_name`, `email`, `password`, `gender`, `marital`, `dob`, `mobile`) VALUES
('Gargi', 'Naladkar', 'gargi@dbms.com', '123456789', 'female', 'unmarried', '2002-10-10', 9453890182);



--
-- Indexes for dumped tables
--

--
-- Indexes for table `train_list`
--
ALTER TABLE `train_list`
  ADD PRIMARY KEY (`Number`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
