-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 14, 2015 at 01:07 PM
-- Server version: 5.5.42-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codersvscancer`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contacts`
--

CREATE TABLE IF NOT EXISTS `tbl_contacts` (
  `ContactId` int(11) NOT NULL AUTO_INCREMENT,
  `ContactEmail` varchar(255) NOT NULL,
  `UserEmail` varchar(255) NOT NULL,
  PRIMARY KEY (`ContactId`),
  KEY `ContactEmail` (`ContactEmail`),
  KEY `UserEmail` (`UserEmail`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `tbl_contacts`
--

INSERT INTO `tbl_contacts` (`ContactId`, `ContactEmail`, `UserEmail`) VALUES
(1, 'guest@email.com', 'arsenyc@aol.com'),
(2, 'lolivia.james@gmail.com', 'arsenyc@aol.com'),
(3, 'jeffrey.devince@gmail.com', 'arsenyc@aol.com'),
(4, 'caridad.zegarra@gmail.com', 'tiffanyalambert@gmail.com'),
(5, 'jeffrey.devince@gmail.com', 'tiffanyalambert@gmail.com'),
(6, 'lolivia.james@gmail.com', 'tiffanyalambert@gmail.com'),
(7, 'guest@email.com', 'lolivia.james@gmail.com'),
(8, 'arsenyc@aol.com', 'lolivia.james@gmail.com'),
(9, 'tiffanyalambert@gmail.com', 'lolivia.james@gmail.com'),
(10, 'guest2@email.com', 'caridad.zegarra@gmail.com'),
(11, 'jeffrey.devince@gmail.com', 'caridad.zegarra@gmail.com'),
(12, 'tiffanyalambert@gmail.com', 'caridad.zegarra@gmail.com'),
(13, 'arsenyc@aol.com', 'jeffrey.devince@gmail.com'),
(14, 'caridad.zegarra@gmail.com', 'jeffrey.devince@gmail.com'),
(15, 'tiffanyalambert@gmail.com', 'jeffrey.devince@gmail.com'),
(16, 'test9@gmail.com', 'test@gmail.com'),
(17, 'test7@gmail.com', 'test@gmail.com'),
(18, 'test11@gmail.com', 'test@gmail.com'),
(19, 'test12@gmail.com', 'test@gmail.com'),
(20, 'test13@gmail.com', 'test@gmail.com'),
(21, 'test14@gmail.com', 'test@gmail.com'),
(22, 'test15@gmail.com', 'test@gmail.com'),
(23, 'test16@gmail.com', 'test@gmail.com'),
(24, 'test17@gmail.com', 'test@gmail.com'),
(25, 'test18@gmail.com', 'test@gmail.com'),
(26, 'test20@gmail.com', 'test@gmail.com'),
(27, 'test25@gmail.com', 'test@gmail.com'),
(28, 'test26', 'test@gmail.com'),
(29, 'test6@gmail.com', 'test5@gmail.com'),
(30, 'test6@gmail.com', 'test5@gmail.com'),
(31, 'jdevince@robofirm.com', 'test9@gmail.com'),
(32, 'soccerboy67532@yahoo.com', 'test9@gmail.com'),
(33, 'test', 'test999@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_statistics`
--

CREATE TABLE IF NOT EXISTS `tbl_statistics` (
  `StatId` int(11) NOT NULL AUTO_INCREMENT,
  `StatText` mediumtext NOT NULL,
  `Source` varchar(255) NOT NULL,
  PRIMARY KEY (`StatId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_statistics`
--

INSERT INTO `tbl_statistics` (`StatId`, `StatText`, `Source`) VALUES
(1, 'About 1 in 8 U.S. women (about 12%) will develop invasive breast cancer over the course of her lifetime.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(2, 'In 2015, an estimated 231,840 new cases of invasive breast cancer are expected to be diagnosed in women in the U.S.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(3, 'Breast cancer incidence rates in the U.S. began decreasing in the year 2000, after increasing for the previous two decades.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(4, 'Breast cancer incidence rates dropped by 7% from 2002 to 2003 alone. One theory is that this decrease was partially due to the reduced use of hormone replacement therapy (HRT) by women after the results of a large study called the Women’s Health Initiative were published in 2002. These results suggested a connection between HRT and increased breast cancer risk.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(5, 'Decreases in the death rate among women with breast cancer are thought to be the result of treatment advances, earlier detection through screening, and increased awareness.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(6, 'For women in the U.S., breast cancer death rates are higher than those for any other cancer, besides lung cancer.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(7, 'Besides skin cancer, breast cancer is the most commonly diagnosed cancer among American women.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(8, 'Besides skin cancer, breast cancer is the most commonly diagnosed cancer among American women.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(9, 'White women are slightly more likely to develop breast cancer than African-American women. However, in women under 45, breast cancer is more common in African-American women than white women.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(10, 'Overall, African-American women are more likely to die of breast cancer. The risk of developing and dying from breast cancer is lower in Asian, Hispanic, and Native-American women.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(11, 'In 2015, there are more than 2.8 million women with a history of breast cancer in the U.S. This includes women currently being treated and women who have finished treatment.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(12, 'A woman’s risk of breast cancer approximately doubles if she has a first-degree relative (mother, sister, daughter) who has been diagnosed with breast cancer.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(13, 'Less than 15% of women who get breast cancer have a family member diagnosed with it.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(14, 'About 5-10% of breast cancers can be linked to gene mutations (abnormal changes) inherited from one’s mother or father.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(15, 'About 85% of breast cancers occur in women who have no family history of breast cancer. These occur due to genetic mutations that happen as a result of the aging process and life in general, rather than inherited mutations.', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(16, 'The most significant risk factors for breast cancer are gender (being a woman) and age (growing older).', 'http://www.breastcancer.org/symptoms/understand_bc/statistics'),
(17, 'Breast cancer is the most common cause of death from cancer among Hispanic women.', 'http://www.cdc.gov/cancer/breast/statistics/'),
(18, 'Breast cancer screening means checking a woman’s breasts for cancer before she has any symptoms.', 'http://www.cdc.gov/cancer/breast/pdf/breastcancerfactsheet.pdf'),
(19, 'A mammogram is an X-ray picture of the breast. Mammograms are the best way to find breast cancer early, when it is easier to treat and before it is big enough to feel or cause symptoms.', 'http://www.cdc.gov/cancer/breast/basic_info/index.htm'),
(20, 'The United States Preventive Services Task Force recommends that if you are 50 to 74 years old, be sure to have a screening mammogram every two years.', 'http://www.cdc.gov/cancer/breast/index.htm');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `UserEmail` varchar(255) NOT NULL,
  `DisplayName` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `LastExamCompleted` date DEFAULT NULL,
  `LastReminderAlert` date DEFAULT NULL,
  `IsMember` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`UserEmail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`UserEmail`, `DisplayName`, `Password`, `LastExamCompleted`, `LastReminderAlert`, `IsMember`) VALUES
('test@gmail.com', 'test', '$2y$10$1N53LdAj/qQ5vGpljmwE5ugxTAqYEM/HoTBAJMBG9y7Kz26XgAhXq', NULL, NULL, b'0'),
('test2@gmail.com', 'test2', '$2y$10$6FHfE1PgSPQEzKo974RdTOBomzgEFbc38inTemc13GJp.ha9mtxCe', NULL, NULL, b'0'),
('arsenyc@aol.com', 'Tiffany', 'test123', '2015-08-11', '2015-09-11', b'1'),
('guest@email.com', 'Guest', 'test321', '2015-06-15', NULL, b'0'),
('caridad.zegarra@gmail.com', 'Caridad Zegarra', 'password1', '2015-08-11', '2015-09-07', b'1'),
('jeffrey.devince@gmail.com', 'Jeffrey DeVince', 'password2', NULL, '2015-09-10', b'1'),
('lolivia.james@gmail.com', 'Olivia James', 'password3', '2015-08-04', '2015-09-09', b'1'),
('tiffanyalambert@gmail.com', 'Tiffany Lambert', 'password4', '2015-08-31', '2015-09-08', b'1'),
('guest2@email.com', 'Guest 2', 'guestPassword', NULL, NULL, b'0'),
('test5@gmail.com', 'test5', '$2y$10$22iFMtZLRg337hXDwSb6KeEQ94jeV6m3CmmTBPFM/wIA6aLKp7Jci', NULL, NULL, b'0'),
('test9@gmail.com', 'test9', '$2y$10$Kg5YXQJrNnW7x4IuhPWOKeagY8.GbaLFhW2CN3nWpZsCNo1LFhqzm', NULL, NULL, b'0'),
('test999@gmail.com', 'test', '$2y$10$HzvpXL.jH1IPT82r92736.CJ2gKAUXBZL8Jhmqa9Fohnx8ix5uLxC', NULL, NULL, b'0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
