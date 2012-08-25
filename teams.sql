-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 25, 2012 at 06:27 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cfi`
--

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(2) NOT NULL,
  `conference` varchar(255) NOT NULL,
  `primary_color` varchar(20) NOT NULL,
  `second_color` varchar(20) DEFAULT NULL,
  `x_position` int(4) NOT NULL,
  `y_position` int(4) NOT NULL,
  `national_championships` int(4) DEFAULT NULL,
  `stadium_capacity` int(7) NOT NULL,
  `winning_percentage` float NOT NULL,
  `top_5` int(5) DEFAULT NULL,
  `top_10` int(5) DEFAULT NULL,
  `top_25` int(5) DEFAULT NULL,
  `heismans` int(5) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `revenue` decimal(19,4) DEFAULT NULL,
  `all_americans` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `short_name`, `city`, `state`, `conference`, `primary_color`, `second_color`, `x_position`, `y_position`, `national_championships`, `stadium_capacity`, `winning_percentage`, `top_5`, `top_10`, `top_25`, `heismans`, `attendance`, `revenue`, `all_americans`) VALUES
(1, 'Brigham Young University', 'BYU', 'Provo', 'UT', 'Independent', '002E5D', 'FFFFFF', 228, 231, 1, 63725, 0.57465, 2, 3, 17, 1, 62501, '0.0000', NULL),
(2, 'Southern Methodist University', 'SMU', 'Dallas', 'TX', 'Conference USA', 'E31836', '005CAA', 489, 407, 1, 32000, 0.48, 3, 6, 11, 1, 19689, '0.0000', NULL),
(3, 'Penn State University', 'Penn State', 'University Park', 'PA', 'BIG 10', '090B44', 'FFFFFF', 781, 197, 4, 107282, 0, 14, 24, 40, 1, 106409, NULL, NULL),
(4, 'University of Utah', 'Utah', 'Salt Lake City', 'UT', 'PAC 12', 'cc0000', '000000', 221, 220, 0, 45017, 0.59, 2, 3, 5, 0, 44531, NULL, NULL),
(5, 'University of Idaho', 'Idaho', 'Moscow', 'ID', 'WAC', 'B18E5F', '9F9D9D', 179, 76, NULL, 16000, 0.443, NULL, NULL, NULL, 0, 13103, NULL, NULL),
(6, 'University of Michigan', 'Michigan', 'Ann Arbor', 'MI', 'BIG 10', 'FCD116', '002654', 681, 179, 11, 109901, 0.736, 15, 37, 56, 3, 110300, NULL, NULL),
(7, 'Michigan State University', 'Michigan State', 'East Lansing', 'MI', 'BIG 10', '18453B', 'FFFFFF', 668, 170, 4, 75005, 0.592, 7, 13, 23, 0, 73099, NULL, NULL),
(8, 'University of Tennessee', 'Tennessee', 'Knoxville', 'TN', 'SEC', 'FC882B', 'FFFFFF', 702, 314, 4, 102455, 0.686, 13, 23, 42, 0, 100800, NULL, NULL),
(9, 'Ohio State University', 'Ohio State', 'Columbus', 'OH', 'BIG 10', 'FF2000', 'AAAAAA', 709, 232, 7, 102329, 0.716, 22, 32, 51, 7, 104985, NULL, NULL),
(10, 'University of Alabama', 'Alabama', 'Tuscaloosa', 'AL', 'SEC', 'A32638', 'FFFFFF', 653, 382, 13, 101821, 0.71, 20, 36, 49, 1, 95345, NULL, NULL),
(11, 'University of Texas', 'Texas', 'Austin', 'TX', 'BIG 12', 'CC5500', 'FFFFFF', 485, 457, 4, 100119, 0.716, 19, 25, 45, 2, 95341, NULL, NULL),
(12, 'University of Southern California', 'USC', 'Los Angeles', 'CA', 'PAC 12', '990000', 'FFCC00', 104, 350, 10, 93607, 0.703, 16, 25, 45, 6, 84210, NULL, NULL),
(13, 'University of Georgia', 'Georgia', 'Athens', 'GA', 'SEC', 'D60022', '000000', 725, 357, 2, 92746, 0.645, 9, 18, 33, 2, 92724, NULL, NULL),
(14, 'Louisiana State University', 'LSU', 'Baton Rouge', 'LA', 'SEC', '461D7C', 'FDD023', 589, 445, 4, 92542, 0.647, 7, 18, 35, 1, 92548, NULL, NULL),
(15, 'University of California, Los Angeles', 'UCLA', 'Pasadena', 'CA', 'PAC 12', '0073CF', 'FEBB36', 98, 346, 1, 92542, 0.582, 9, 16, 30, 1, 65949, NULL, NULL),
(16, 'University of Florida', 'Florida', 'Gainesville', 'FL', 'SEC', 'FF4A00', '0021A5', 772, 449, 3, 88548, 0.63, 9, 12, 28, 3, 90258, NULL, NULL),
(17, 'Auburn University', 'Auburn', 'Auburn', 'AL', 'SEC', '03244D', 'DD550C', 689, 396, 3, 87451, 0.634, 8, 17, 35, 3, 85527, NULL, NULL),
(18, 'Texas A&M University', 'Texas A&M', 'College Station', 'TX', 'BIG 12', '500000', 'FFFFFF', 507, 444, 2, 83002, 0.598, 2, 11, 24, 1, 81141, NULL, NULL),
(19, 'Florida State University', 'Florida State', 'Tallahassee', 'FL', 'ACC', '990000', 'F1C058', 723, 436, 2, 82300, 0.664, 15, 16, 28, 2, 77092, NULL, NULL),
(20, 'Oklahoma University', 'Oklahoma', 'Norman', 'OK', 'BIG 12', '990000', 'FFFDD0', 474, 354, 7, 82112, 0.718, 22, 27, 52, 5, 84862, NULL, NULL),
(21, 'Nebraska University', 'Nebraska', 'Lincoln', 'NE', 'BIG 10', 'CE1126', 'FFFDD0', 481, 233, 5, 81067, 0.702, 13, 30, 47, 3, 85406, NULL, NULL),
(22, 'University of Notre Dame', 'Notre Dame', 'Notre Dame', 'IN', 'Independent', 'DCB439', '002B5B', 648, 205, 13, 80795, 0.731, 22, 35, 49, 7, 80799, NULL, NULL),
(23, 'University of Wisconsin', 'Wisconsin', 'Madison', 'WI', 'BIG 10', 'CC1122', 'FFFFFF', 595, 173, 0, 80321, 0.572, 3, 11, 20, 2, 80665, NULL, NULL),
(24, 'Clemson University', 'Clemson', 'Clemson', 'SC', 'ACC', 'F66733', '522D80', 741, 340, 1, 80301, 0.59, 1, 6, 25, 0, 78091, NULL, NULL),
(25, 'University of South Carolina', 'South Caronlina', 'Columbia', 'SC', 'SEC', '8C2633', '000000', 775, 353, 0, 80250, 0.506, 0, 0, 7, 1, 77632, NULL, NULL),
(26, 'University of Arkansas', 'Arkansas', 'Littlerock', 'AR', 'SEC', 'BE0F34', 'FFFFFF', 533, 335, 1, 76000, 0.595, 3, 13, 28, 0, 68896, NULL, NULL),
(27, 'University of Miami', 'Miami', 'Miami Gardens', 'FL', 'ACC', 'F47320', '004F2F', 815, 526, 5, 75504, 0.635, 12, 17, 30, 2, 46763, NULL, NULL),
(28, 'University of Washington', 'Washington', 'Seattle', 'WA', 'PAC 12', '363C74', 'E8D3A2', 105, 41, 1, 72500, 0.611, 5, 10, 22, 0, 63668, NULL, NULL),
(29, 'Arizona State University', 'Arizona State', 'Tempe', 'AZ', 'PAC 12', '8D0E3B', 'FCC626', 203, 376, 0, 73379, 0.613, 3, 7, 15, 0, 56130, NULL, NULL),
(30, 'University of Alabama at Birmingham', 'UAB', 'Birmingham', 'AL', 'C-USA', '008000', 'CFB53B', 665, 382, 0, 71594, 0.456, NULL, NULL, NULL, 0, 18639, NULL, NULL),
(31, 'University of Missouri', 'Missouri', 'Columbia', 'MO', 'BIG 12', 'F1B82D', '000000', 557, 271, 0, 71004, 0.545, 2, 7, 17, 0, 61571, NULL, NULL),
(32, 'University of Iowa', 'Iowa', 'Iowa City', 'IA', 'Big 10', 'FFD700', '000000', 557, 210, 1, 70585, 0.531, 3, 9, 21, 1, 70454, NULL, NULL),
(33, 'San Diego State University', 'San Diego State', 'San Diego', 'CA', 'MWC', '880000', '000000', 113, 376, 0, 70561, 0.554, NULL, NULL, 1, 0, 29998, NULL, NULL),
(34, 'Rice University', 'Rice', 'Houston', 'TX', 'C-USA', '000080', 'A9A9A9', 509, 477, 0, 70000, 0.44, 1, 4, 8, 0, 17457, NULL, NULL),
(35, 'Tulane University', 'Tulane', 'New Orleans', 'LA', 'C-USA', '00331A', '87CEEB', 611, 461, 0, 69703, 0.466, 1, 2, 7, 0, 22650, NULL, NULL),
(36, 'University of Massachusetts', 'UMass', 'Foxborough', 'MA', 'MAC', '881C1C', 'FFFFFF', 864, 137, 0, 68756, 0.513, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(37, 'Temple University', 'Temple', 'Philadelphia', 'PA', 'Big East', 'A81625', 'FFFFFF', 835, 200, 0, 68532, 0.437, NULL, NULL, 1, 0, 21034, NULL, NULL),
(38, 'University of Kentucky', 'Kentucky', 'Lexington', 'KY', 'SEC', '005DAA', 'FFFFFF', 690, 281, 1, 67606, 0.503, 0, 2, 8, 0, 65316, NULL, NULL),
(39, 'Virginia Tech University', 'Virginia Tech', 'Blacksburg', 'VA', 'ACC', '660000', 'FF6600', 770, 272, 0, 66233, 0.608, 1, 7, 18, 0, 66233, NULL, NULL),
(40, 'University of South Florida', 'South Florida', 'Tampa ', 'FL', 'Big East', '006747', 'CFC493', 770, 482, 0, 65857, 0.624, 0, NULL, NULL, 0, 45172, NULL, NULL),
(41, 'University of Pittsburgh', 'Pittsburgh', 'Pittsburgh', 'PA', 'Big East', '091C44', 'CEC499', 762, 207, 9, 65050, 0.577, 6, 10, 19, 1, 46264, NULL, NULL),
(42, 'University of Texas at San Antonio', 'UTSA', 'San Antonio', 'TX', 'WAC', 'F47321', '00285C', 448, 473, 0, 65000, 0.4, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(43, 'University of California, Berkeley', 'Cal', 'Berkeley', 'CA', 'PAC 12', '191970', 'FCD116', 54, 268, 4, 62717, 0.563, 4, 6, 14, 0, 57348, NULL, NULL),
(44, 'Purdue University', 'Purdue', 'West Lafayette', 'IN', 'BIG 10', 'B1946C', '000000', 645, 228, 0, 62500, 0.534, 1, 5, 17, 0, 52538, NULL, NULL),
(45, 'University of Memphis', 'Memphis', 'Memphis', 'TN', 'C-USA', '0C1C8C', '8E9295', 609, 344, 0, 62380, 0.491, NULL, NULL, NULL, 0, 26151, NULL, NULL),
(46, 'University of Virginia', 'Virginia', 'Charlottesville', 'VA', 'ACC', '0D3268', 'FF7003', 791, 256, 0, 61500, 0.48, NULL, NULL, 9, 0, 52126, NULL, NULL),
(47, 'University of Illinois', 'Illinois', 'Champaign', 'IL', 'BIG 10', '003C7D', 'F47F24', 621, 242, 4, 62872, 0.518, 3, 6, 13, 0, 53884, NULL, NULL),
(48, 'University of Mississippi', 'Ole Miss', 'Lafayette', 'MS', 'SEC', '002B7F', 'D81C3F', 615, 366, 2, 60580, 0.559, 4, 10, 23, 0, 54111, NULL, NULL),
(49, 'Texas Tech University', 'Texas Tech', 'Lubbock', 'TX', 'BIG 12', 'CC0000', '000000', 392, 389, 0, 60454, 0.562, NULL, NULL, 11, 0, 53186, NULL, NULL),
(50, 'Oklahoma State University', 'Oklahoma State', 'Stillwater', 'OK', 'BIG 12', 'FF6600', '000000', 482, 337, 0, 60218, 0.5, 1, 2, 10, 1, 48725, NULL, NULL),
(51, 'West Virginia University', 'West Virginia', 'Morgantown', 'VA', 'Big East', 'FFCC00', '003366', 756, 232, 0, 60000, 0.601, 2, 6, 18, 0, 57905, NULL, NULL),
(52, 'University of North Carolina', 'North Carolina', 'Chapel Hill', 'NC', 'ACC', '56A0D3', 'FFFFFF', 786, 306, 0, 60000, 0.56, 1, 7, 15, 0, 55827, NULL, NULL),
(53, 'North Carolina State University', 'NC State', 'Raleigh', 'NC', 'ACC', 'E00000', 'FFFFFF', 797, 312, 0, 57583, 0.507, NULL, NULL, 12, 0, 56525, NULL, NULL),
(54, 'University of Louisville', 'Louisville', 'Louisville', 'KY', 'Big East', 'D81E05', '000000', 670, 277, 0, 56000, 0.509, NULL, 2, 7, 0, 42113, NULL, NULL),
(55, 'University of Arizona', 'Arizona', 'Tucson', 'AZ', 'PAC 12', '000060', 'CE1126', 224, 395, 0, 56000, 0.57, 1, 2, 7, 0, 52886, NULL, NULL),
(56, 'Mississippi State University', 'Mississippi State', 'Starkville', 'MS', 'SEC', '660000', 'FFFFFF', 629, 384, 0, 55082, 0.483, NULL, 1, 12, 0, 49836, NULL, NULL),
(57, 'Iowa State University', 'Iowa State', 'Ames', 'IA', 'BIG 12', 'A71930', 'FDC82F', 526, 204, 0, 55000, 0.457, NULL, NULL, 2, 0, 48149, NULL, NULL),
(58, 'Georgia Tech', 'Georgia Tech', 'Atlanta', 'GA', 'ACC', 'CFB53B', 'FFFFFF', 710, 366, 4, 55000, 0.596, 5, 10, 24, 0, 49109, NULL, NULL),
(59, 'University of Maryland', 'Maryland', 'College Park', 'MD', 'ACC', 'CE1126', 'FFFFFF', 816, 226, 1, 54000, 0.532, 3, 5, 18, 0, 45766, NULL, NULL),
(60, 'University of Oregon', 'Oregon', 'Eugene', 'OR', 'PAC 12', '004F27', 'FFCC00', 80, 123, 0, 53800, 0.541, 3, 9, 12, 0, 58826, NULL, NULL),
(61, 'University of Colorado', 'Colorado', 'Boulder', 'CO', 'PAC 12', 'CC9900', 'A2A4A3', 341, 256, 1, 53750, 0.596, 5, 8, 18, 1, 48890, NULL, NULL),
(62, 'Rutgers State University', 'Rutgers', 'Piscataway', 'NJ', 'Big East', 'D21034', 'FFFFFF', 846, 184, 1, 52454, 0.505, NULL, NULL, 4, 0, 44507, NULL, NULL),
(63, 'Indiana University', 'Indiana', 'Bloomington', 'IN', 'BIG 10', '990000', 'FFFFCC', 652, 258, 0, 52180, 0.425, 2, 2, 5, 0, 37836, NULL, NULL),
(64, 'University of Texas at El Paso', 'UTEP', 'El Paso', 'TX', 'C-USA', 'F65A1F', '0E123F', 315, 423, 0, 52000, 0.389, NULL, NULL, NULL, 0, 33528, NULL, NULL),
(65, 'University of Minnesota', 'Minnesota', 'Minneapolis', 'MN', 'BIG 10', '800000', 'FFD700', 530, 145, 6, 50805, 0.571, 5, 9, 14, 1, 50165, NULL, NULL),
(66, 'Kansas State University', 'Kansas State', 'Manhattan', 'KS', 'BIG 12', '461D7C', 'FFFFFF', 482, 267, 0, 50300, 0.439, NULL, 6, 11, 0, 47479, NULL, NULL),
(67, 'University of Kansas', 'Kansas', 'Lawrence', 'KS', 'BIG 12', '0049AE', 'E31736', 500, 273, 0, 50071, 0.501, NULL, 1, 7, 0, 47055, NULL, NULL),
(68, 'Baylor University', 'Baylor', 'Waco', 'TX', 'BIG 12', '004834', 'FDBB2F', 493, 425, 0, 50000, 0.501, NULL, 1, 11, 1, 37217, NULL, NULL),
(69, 'East Carolina University', 'ECU', 'Greenville', 'NC', 'C-USA', '4F0076', 'FFE600', 825, 303, 0, 50000, 0.522, NULL, 1, 2, 0, 43690, NULL, NULL),
(70, 'University of Hawaii', 'Hawaii', 'Honolulu', 'HI', 'MWC', '024731', '000000', 88, 471, 0, 50000, 0.571, NULL, NULL, 2, 0, 37710, NULL, NULL),
(71, 'Stanford University', 'Stanford', 'Stanford', 'CA', 'PAC 12', '990000', '000000', 53, 280, 1, 50000, 0.593, 2, 6, 15, 1, 41135, NULL, NULL),
(72, 'Northwestern University', 'Northwestern', 'Evanston', 'IL', 'BIG 10', '431F81', 'FFFFFF', 623, 195, 0, 49256, 0.442, NULL, 5, 8, 0, 29209, NULL, NULL),
(73, 'Syracuse University', 'Syracuse', 'Syracuse', 'NY', 'Big East', 'FF7F00', '212B6D', 801, 139, 1, 49250, 0.584, 2, 5, 15, 1, 37560, NULL, NULL),
(74, 'United States Air Force Academy', 'Air Force', 'Colorado Springs', 'CO', 'MWC', '0038A8', 'A8ADB4', 351, 276, 0, 52480, 0.547, NULL, 2, 6, 0, 37548, NULL, NULL),
(75, 'Oregon State University', 'Oregon State', 'Corvallis', 'OR', 'PAC 12', 'D85A1A', '000000', 79, 106, 0, 45647, 0.481, 1, 4, 9, 1, 42899, NULL, NULL),
(76, 'University of Central Florida', 'UCF', 'Orlando', 'FL', 'C-USA', 'CC9900', '000000', 785, 468, 0, 45301, 0.515, NULL, NULL, 1, 0, 37860, NULL, NULL),
(77, 'Texas Christian University', 'TCU', 'Fort Worth', 'TX', 'MWC', '660099', 'FFFFFF', 470, 411, 1, 45000, 0.532, 1, 4, 17, 1, 34836, NULL, NULL),
(78, 'Boston College', 'Boston College', 'Chestnut Hill', 'MA', 'Big East', '8B0000', 'C5B358', 886, 134, 1, 44500, 0.581, 2, 4, 14, 1, 38277, NULL, NULL),
(79, 'University of New Mexico', 'New Mexico', 'Albuquerque', 'NM', 'MWC', 'D30D44', 'D1D5D8', 310, 353, 0, 42000, 0.458, NULL, NULL, NULL, 0, 25993, NULL, NULL),
(80, 'Vanderbilt University', 'Vanderbilt', 'Nashville', 'TN', 'SEC', '997F3D', '000000', 655, 321, 0, 41448, 0.496, NULL, NULL, 1, 0, 34851, NULL, NULL),
(81, 'California State University, Fresno', 'Fresno State', 'Fresno', 'CA', 'MWC', 'B11A3B', '00287A', 95, 292, 0, 41031, 0.594, NULL, NULL, 2, 0, 34950, NULL, NULL),
(82, 'University of South Alabama', 'South Alabama', 'Mobile', 'AL', 'Sun Belt', 'FF0000', 'FFFFFF', 650, 442, 0, 40646, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(83, 'Army', 'Army', 'West Point', 'NY', 'Independent', 'D4AF37', '000000', 849, 165, 5, 40000, 0.582, 6, 8, 14, 3, 30524, NULL, NULL),
(84, 'University of Connecticut', 'UCONN', 'East Hartford', 'CT', 'Big East', '002868', 'FFFFFF', 872, 153, 0, 40000, 0.489, NULL, NULL, NULL, 0, 38270, NULL, NULL),
(85, 'Marshall University', 'Marshall', 'Huntington', 'WV', 'C-USA', '009B48', 'FFFFFF', 726, 261, 0, 38019, 0.511, NULL, 1, 2, 0, 25996, NULL, NULL),
(86, 'Boise State University', 'Boise State', 'Boise', 'ID', 'MWC', '1F60A9', 'FC5A1E', 173, 146, 0, 37000, 0.721, 2, 3, 8, 0, 32189, NULL, NULL),
(87, 'University of Nevada, Las Vegas', 'UNLV', 'Whitney', 'NV', 'MWC', 'C10202', '666666', 162, 309, 0, 36800, 0.458, NULL, NULL, NULL, 0, 22326, NULL, NULL),
(88, 'University of Southern Mississippi', 'Southern Miss', 'Hattiesburg', 'MS', 'C-USA', 'FFD700', '000000', 629, 426, 2, 36000, 0.594, NULL, NULL, 3, 0, 29052, NULL, NULL),
(89, 'University of Tulsa', 'Tulsa', 'Tulsa', 'OK', 'C-USA', '084C9E', 'CFB53B', 495, 330, 0, 35542, 0.56, 1, 1, 8, 0, 22616, NULL, NULL),
(90, 'Washington State University', 'Washington State', 'Pullman', 'WA', 'PAC 12', '981E32', '5E6A71', 169, 73, 0, 35117, 0.494, NULL, 4, 11, 0, 28859, NULL, NULL),
(91, 'University of Cincinnati', 'Cincinnati', 'Cincinnati', 'OH', 'Big East', 'E00122', '000000', 686, 249, 0, 35097, 0.5, NULL, 1, 4, 0, 30650, NULL, NULL),
(92, 'United States Naval Academy', 'Navy', 'Annapolis', 'MD', 'Independent', '000080', 'D4AF37', 823, 232, 1, 35000, 0.549, 7, 8, 12, 2, 34614, NULL, NULL),
(93, 'Colorado State University', 'Colorado State', 'Fort Collins', 'CO', 'MWC', '008000', 'FFD700', 350, 237, 0, 34400, 0.475, NULL, NULL, 3, 0, 22483, NULL, NULL),
(94, 'Duke University', 'Duke', 'Durham', 'NC', 'ACC', '00009C', 'FFFFFF', 793, 301, 0, 33941, 0.491, 2, 5, 16, 0, 24638, NULL, NULL),
(95, 'University of Wyoming', 'Wyoming', 'Laramie', 'WY', 'MWC', '593D2B', 'FFD700', 333, 216, 0, 32580, 0.484, NULL, 1, 4, 0, 20330, NULL, NULL),
(96, 'University of Houston', 'Houston', 'Houston ', 'TX', 'C-USA', 'CC0000', 'FFFFFF', 507, 471, 0, 32000, 0.534, 2, 5, 13, 1, 26053, NULL, NULL),
(97, 'Wake Forest University', 'Wake Forest', 'Winston-Salem', 'NC', 'ACC', 'CFB53B', '000000', 766, 305, 0, 31500, 0.411, NULL, NULL, 4, 0, 31835, NULL, NULL),
(98, 'Middle Tennessee State University', 'Middle Tennessee', 'Murfreesboro', 'TN', 'Sun Belt', '15357B', 'FFFFFF', 665, 330, 0, 31000, 0.58, NULL, NULL, NULL, 0, 19342, NULL, NULL),
(99, 'University of Louisiana at Lafayette', 'Louisiana Lafayette', 'Lafayette', 'LA', 'Sun Belt', 'E34234', 'FFFFFF', 577, 463, 0, 31000, 0.482, NULL, NULL, NULL, 0, 19643, NULL, NULL),
(100, 'Arkansas State University', 'Arkansas State', 'Jonesboro', 'AR', 'Sun Belt', 'EB1C22', '000000', 588, 337, 0, 30964, 0.484, NULL, NULL, NULL, 0, 18728, NULL, NULL),
(101, 'University of North Texas', 'North Texas', 'Denton', 'TX', 'Sun Belt', '059033', 'FFFFFF', 482, 403, 0, 30850, 0.513, NULL, NULL, NULL, 0, 17552, NULL, NULL),
(102, 'Louisiana Tech University', 'Louisiana Tech', 'Ruston', 'LA', 'WAC', 'FF0000', '002F8B', 561, 415, 0, 30600, 0.566, NULL, NULL, NULL, 0, 18152, NULL, NULL),
(103, 'San Jose State University', 'San Jose State', 'San Jose', 'CA', 'WAC', '1560DB', 'C79900', 61, 274, 0, 30456, 0.499, NULL, NULL, NULL, 0, 17217, NULL, NULL),
(104, 'University of Louisiana at Monroe', 'Louisiana Monroe', 'Monroe', 'LA', 'Sun Belt', '800000', 'FFD700', 572, 411, 0, 30427, 0.432, NULL, NULL, NULL, 0, 16757, NULL, NULL),
(105, 'New Mexico State University', 'New Mexico State', 'Las Cruces', 'NM', 'WAC', '882345', 'FFFFFF', 300, 408, 0, 30343, 0.426, NULL, NULL, 1, 0, 16220, NULL, NULL),
(106, 'Western Michigan University', 'Western Michigan', 'Kalamazoo', 'MI', 'MAC', '663300', 'CC9933', 651, 178, 0, 32000, 0.558, NULL, NULL, NULL, 0, 18539, NULL, NULL),
(107, 'Eastern Michigan University', 'Eastern Michigan', 'Ypsilanti', 'MI', 'MAC', '006633', 'FFFFFF', 688, 178, 0, 32000, 0.451, NULL, NULL, NULL, 0, 10961, NULL, NULL),
(108, 'Central Michigan University', 'Central Michigan', 'Mount Pleasant', 'MI', 'MAC', '660033', 'FFCC00', 663, 180, 0, 30199, 0.601, NULL, NULL, 1, 0, 19756, NULL, NULL),
(109, 'Texas State University', 'Texas State', 'San Marcos', 'TX', 'Independent', '4D1717', 'AF9445', 452, 463, 0, 30000, 0.549, NULL, NULL, NULL, 0, NULL, NULL, NULL),
(110, 'University of Akron', 'Akron', 'Akron', 'OH', 'MAC', '00285C', 'CAB388', 722, 210, 0, 30000, 0.5, NULL, NULL, NULL, 0, 14977, NULL, NULL),
(111, 'Troy University', 'Troy', 'Troy', 'AL', 'Sun Belt', 'C41E3A', '000000', 684, 409, 0, 30000, 0.537, NULL, NULL, NULL, 0, 19296, NULL, NULL),
(112, 'Florida Atlantic University', 'Florida Atlantic', 'Boca Raton', 'FL', 'Sun Belt', '003366', 'CE2029', 816, 505, 0, 30000, 0.439, NULL, NULL, NULL, 0, 15397, NULL, NULL),
(113, 'University of Nevada', 'Nevada', 'Reno', 'NV', 'MWC', '000080', 'C0C0C0', 100, 223, 0, 29993, 0.535, NULL, NULL, 1, 0, 17752, NULL, NULL),
(114, 'University of Buffalo', 'Buffalo', 'Amherst', 'NY', 'MAC', '041A9B', 'FFFFFF', 767, 158, 0, 29013, 0.432, NULL, NULL, NULL, 0, 15305, NULL, NULL),
(115, 'University of Toledo', 'Toledo', 'Toledo', 'OH', 'MAC', '191970', 'FFD700', 694, 197, 0, 26248, 0.542, NULL, NULL, 4, 0, 18964, NULL, NULL),
(116, 'Utah State University', 'Utah State', 'Logan', 'UT', 'WAC', '003057', 'FFFFFF', 235, 204, 0, 25513, 0.493, NULL, NULL, 1, 0, 15091, NULL, NULL),
(117, 'Northern Illinois University', 'Northern Illinois', 'DeKalb', 'IL', 'MAC', 'CC1122', '000000', 606, 213, 0, 25500, 0.529, NULL, NULL, NULL, 0, 17446, NULL, NULL),
(118, 'Florida International University', 'FIU', 'Miami', 'FL', 'Sun Belt', '002D62', 'C5960C', 809, 526, 0, 25000, 0.331, NULL, NULL, NULL, 0, 13684, NULL, NULL),
(119, 'Kent State University', 'Kent State', 'Kent', 'OH', 'MAC', '0A0D6F', 'FFAB1B', 728, 201, 0, 25000, 0.388, NULL, NULL, NULL, 0, 13316, NULL, NULL),
(120, 'Miami University', 'Miami Ohio', 'Miami', 'OH', 'MAC', 'CE1126', 'FFFFFF', 685, 241, 0, 24286, 0.619, NULL, 2, 5, 0, 15061, NULL, NULL),
(121, 'Ohio University', 'Ohio', 'Athens', 'OH', 'MAC', '006633', 'FFFFFF', 729, 238, 0, 24000, 0.496, NULL, NULL, 1, 0, 17564, NULL, NULL),
(122, 'Bowling Green State University', 'Bowling Green', 'Bowling Green', 'OH', 'MAC', 'FF7300', '613005', 694, 206, 0, 23724, 0.585, NULL, NULL, 1, 0, 15162, NULL, NULL),
(123, 'Ball State University', 'Ball State', 'Muncie', 'IN', 'MAC', 'CC0000', 'FFFFFF', 666, 240, 0, 22500, 0.52, NULL, NULL, NULL, 0, 13708, NULL, NULL),
(124, 'Western Kentucky University', 'Western Kentucky', 'Bowling Green', 'KY', 'Sun Belt', 'FF2222', 'FFFFFF', 655, 297, 0, 22000, 0.591, NULL, NULL, NULL, 0, 14663, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
