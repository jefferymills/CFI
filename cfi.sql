-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 21, 2012 at 02:47 AM
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
-- Table structure for table `tbl_migration`
--

CREATE TABLE IF NOT EXISTS `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_migration`
--

INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1338770900),
('m120603_203529_create_teams_table', 1338777306),
('m120611_021937_update_short_name_column', 1339381691);

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `short_name`, `city`, `state`, `conference`, `primary_color`, `second_color`, `x_position`, `y_position`, `national_championships`, `stadium_capacity`, `winning_percentage`, `top_5`, `top_10`, `top_25`, `heismans`) VALUES
(1, 'Brigham Young University', 'BYU', 'Provo', 'UT', 'Independant', '002E5D', 'FFFFFF', 228, 231, 1, 63725, 0.57465, NULL, NULL, NULL, 1),
(2, 'Southern Methodist University', 'SMU', 'Dallas', 'TX', 'Conference USA', 'E31836', '005CAA', 489, 407, 3, 32000, 0.48, NULL, NULL, NULL, 1),
(3, 'Penn State University', 'PSU', 'University Park', 'PA', 'BIG 10', '090B44', 'FFFFFF', 781, 197, NULL, 107282, 0, NULL, NULL, NULL, 1),
(4, 'University of Utah', 'Utah', 'Salt Lake City', 'UT', 'PAC 12', 'cc0000', '000000', 221, 220, 0, 45017, 0.59, NULL, NULL, NULL, 0),
(5, 'University of Idaho', 'Idaho', 'Moscow', 'ID', 'WAC', 'B18E5F', '9F9D9D', 179, 76, NULL, 16000, 0.443, NULL, NULL, NULL, 0),
(6, 'University of Michigan', 'UM', 'Ann Arbor', 'MI', 'BIG 10', 'FCD116', '002654', 681, 179, 11, 109901, 0.736, NULL, NULL, NULL, 3),
(7, 'Michigan State University', 'MSU', 'East Lansing', 'MI', 'BIG 10', '18453B', 'FFFFFF', 668, 170, 6, 75005, 0.592, NULL, NULL, NULL, 0),
(8, 'University of Tennessee', 'UT', 'Knoxville', 'TN', 'SEC', 'FC882B', 'FFFFFF', 702, 314, 6, 102455, 0.686, NULL, NULL, NULL, 0),
(9, 'Ohio State University', 'OSU', 'Columbus', 'OH', 'BIG 10', 'FF2000', 'AAAAAA', 709, 232, 7, 102329, 0.716, NULL, NULL, NULL, 7),
(10, 'University of Alabama', 'UA', 'Tuscaloosa', 'AL', 'SEC', 'A32638', 'FFFFFF', 653, 382, 14, 101821, 0.71, NULL, NULL, NULL, 1),
(11, 'University of Texas', 'UT', 'Austin', 'TX', 'BIG 12', 'CC5500', 'FFFFFF', 485, 457, 4, 100119, 0.716, NULL, NULL, NULL, 2),
(12, 'University of Southern California', 'USC', 'Los Angeles', 'CA', 'PAC 12', '990000', 'FFCC00', 104, 350, 11, 93607, 0.703, NULL, NULL, NULL, 6),
(13, 'University of Georgia', 'UG', 'Athens', 'GA', 'SEC', 'D60022', '000000', 725, 357, 2, 92746, 0.645, NULL, NULL, NULL, 2),
(14, 'Louisiana State University', 'LSU', 'Baton Rouge', 'LA', 'SEC', '461D7C', 'FDD023', 589, 445, 3, 92542, 0.647, NULL, NULL, NULL, 1),
(15, 'University of California, Los Angeles', 'UCLA', 'Pasadena', 'CA', 'PAC 12', '0073CF', 'FEBB36', 98, 346, 0, 92542, 0.582, NULL, NULL, NULL, 1),
(16, 'University of Florida', 'UF', 'Gainesville', 'FL', 'SEC', 'FF4A00', '0021A5', 772, 449, 3, 88548, 0.63, NULL, NULL, NULL, 3),
(17, 'Auburn University', 'AU', 'Auburn', 'AL', 'SEC', '03244D', 'DD550C', 689, 396, 2, 87451, 0.634, NULL, NULL, NULL, 3),
(18, 'Texas A&M University', 'TAM', 'College Station', 'TX', 'BIG 12', '500000', 'FFFFFF', 507, 444, 2, 83002, 0.598, NULL, NULL, NULL, 1),
(19, 'Florida State University', 'FSU', 'Tallahassee', 'FL', 'ACC', '990000', 'F1C058', 723, 436, 2, 82300, 0.664, NULL, NULL, NULL, 2),
(20, 'Oklahoma University', 'OU', 'Norman', 'OK', 'BIG 12', '990000', 'FFFDD0', 474, 354, 7, 82112, 0.718, NULL, NULL, NULL, 5),
(21, 'Nebraska University', 'NU', 'Lincoln', 'NE', 'BIG 10', 'CE1126', 'FFFDD0', 481, 233, 5, 81067, 0.702, NULL, NULL, NULL, 3),
(22, 'University of Notre Dame', 'ND', 'Notre Dame', 'IN', 'Independant', 'DCB439', '002B5B', 648, 205, 11, 80795, 0.731, NULL, NULL, NULL, 7),
(23, 'University of Wisconsin', 'WIS', 'Madison', 'WI', 'BIG 10', 'CC1122', 'FFFFFF', 595, 173, 0, 80321, 0.572, NULL, NULL, NULL, 2),
(24, 'Clemson University', 'CLE', 'Clemson', 'SC', 'ACC', 'F66733', '522D80', 741, 340, 1, 80301, 0.59, NULL, NULL, NULL, 0),
(25, 'University of South Carolina', 'SC', 'Columbia', 'SC', 'SEC', '8C2633', '000000', 775, 353, 0, 80250, 0.506, NULL, NULL, NULL, 1),
(26, 'University of Arkansas', 'ARK', 'Littlerock', 'AR', 'SEC', 'BE0F34', 'FFFFFF', 533, 335, 1, 76000, 0.595, NULL, NULL, NULL, 0),
(27, 'University of Miami', 'UM', 'Miami Gardens', 'FL', 'ACC', 'F47320', '004F2F', 820, 526, 5, 75504, 0.635, NULL, NULL, NULL, 2),
(28, 'University of Washington', 'UW', 'Seattle', 'WA', 'PAC 12', '363C74', 'E8D3A2', 105, 41, 2, 72500, 0.611, NULL, NULL, NULL, 0),
(29, 'Arizona State University', 'ASU', 'Tempe', 'AZ', 'PAC 12', '8D0E3B', 'FCC626', 203, 376, 0, 73379, 0.613, NULL, NULL, NULL, 0),
(30, 'University of Alabama at Birmingham', 'UAB', 'Birmingham', 'AL', 'C-USA', '008000', 'CFB53B', 665, 382, 0, 71594, 0.456, NULL, NULL, NULL, 0),
(31, 'University of Missouri', 'MU', 'Columbia', 'MO', 'BIG 12', '000000', 'F1B82D', 557, 271, 0, 71004, 0.545, NULL, NULL, NULL, 0),
(32, 'University of Iowa', 'UI', 'Iowa City', 'IA', 'Big 10', '000000', 'FFD700', 557, 210, 1, 70585, 0.531, NULL, NULL, NULL, 1),
(33, 'San Diego State University', 'SDSU', 'San Diego', 'CA', 'MWC', '000000', '880000', 113, 376, 0, 70561, 0.554, NULL, NULL, NULL, 0),
(34, 'Rice University', 'RU', 'Houston', 'TX', 'C-USA', '000080', 'A9A9A9', 509, 477, 0, 70000, 0.44, NULL, NULL, NULL, 0),
(35, 'Tulane University', 'Tulane', 'New Orleans', 'LA', 'C-USA', '00331A', '87CEEB', 611, 461, 0, 69703, 0.466, NULL, NULL, NULL, 0),
(36, 'University of Massachusetts', 'UMass', 'Foxborough', 'MA', 'MAC', '881C1C', 'FFFFFF', 864, 137, 0, 68756, 0.513, NULL, NULL, NULL, 0),
(37, 'Temple University', 'Temple', 'Philadelphia', 'PA', 'Big East', 'A81625', 'FFFFFF', 835, 200, 0, 68532, 0.437, NULL, NULL, NULL, 0),
(38, 'University of Kentucky', 'KU', 'Lexington', 'KY', 'SEC', '005DAA', 'FFFFFF', 690, 281, 1, 67606, 0.503, NULL, NULL, NULL, 0),
(39, 'Virginia Tech University', 'VT', 'Blacksburg', 'VA', 'ACC', '660000', 'FF6600', 770, 272, 0, 66233, 0.608, NULL, NULL, NULL, 0),
(40, 'University of South Florida', 'USF', 'Tampa ', 'FL', 'Big East', '006747', 'CFC493', 770, 482, 0, 65857, 0.624, NULL, NULL, NULL, 0),
(41, 'University of Pittsburgh', 'PITT', 'Pittsburgh', 'PA', 'Big East', '091C44', 'CEC499', 762, 207, 9, 65050, 0.577, NULL, NULL, NULL, 1),
(42, 'University of Texas at San Antonio', 'UTSA', 'San Antonio', 'TX', 'WAC', 'F47321', '00285C', 448, 473, 0, 65000, 0.4, NULL, NULL, NULL, 0),
(43, 'University of California, Berkeley', 'Cal', 'Berkeley', 'CA', 'PAC 12', '191970', 'FCD116', 54, 268, 5, 62717, 0.563, NULL, NULL, NULL, 0),
(44, 'Purdue University', 'Purdue', 'West Lafayette', 'IN', 'BIG 10', 'B1946C', '000000', 645, 228, 0, 62500, 0.534, NULL, NULL, NULL, 0),
(45, 'University of Memphis', 'Memphis', 'Memphis', 'TN', 'C-USA', '0C1C8C', '8E9295', 609, 344, 0, 62380, 0.491, NULL, NULL, NULL, 0),
(46, 'University of Virginia', 'Virginia', 'Charlottesville', 'VA', 'ACC', '0D3268', 'FF7003', 791, 256, 0, 61500, 0.48, NULL, NULL, NULL, 0),
(47, 'University of Illinois', 'Illinois', 'Champaign', 'IL', 'BIG 10', '003C7D', 'F47F24', 621, 242, 5, 62872, 0.518, NULL, NULL, NULL, 0),
(48, 'University of Mississippi', 'Ole Miss', 'Lafayette', 'MS', 'SEC', '002B7F', 'D81C3F', 615, 366, 3, 60580, 0.559, NULL, NULL, NULL, 0),
(49, 'Texas Tech University', 'Texas Tech', 'Lubbock', 'TX', 'BIG 12', '000000', 'CC0000', 392, 389, 0, 60454, 0.562, NULL, NULL, NULL, 0),
(50, 'Oklahoma State University', 'OK State', 'Stillwater', 'OK', 'BIG 12', 'FF6600', '000000', 482, 337, 0, 60218, 0.5, NULL, NULL, NULL, 1),
(51, 'West Virginia University', 'WVU', 'Morgantown', 'VA', 'Big East', 'FFCC00', '003366', 756, 232, 0, 60000, 0.601, NULL, NULL, NULL, 0),
(52, 'University of North Carolina', 'UNC', 'Chapel Hill', 'NC', 'ACC', '56A0D3', 'FFFFFF', 786, 306, 0, 60000, 0.56, NULL, NULL, NULL, 0),
(53, 'North Carolina State University', 'NC State', 'Raleigh', 'NC', 'ACC', 'E00000', 'FFFFFF', 797, 312, 0, 57583, 0.507, NULL, NULL, NULL, 0),
(54, 'University of Louisville', 'Louisville', 'Louisville', 'KY', 'Big East', 'D81E05', '000000', 670, 277, 0, 56000, 0.509, NULL, NULL, NULL, 0),
(55, 'University of Arizona', 'Arizona', 'Tucson', 'AZ', 'PAC 12', '000060', 'CE1126', 224, 395, 0, 56000, 0.57, NULL, NULL, NULL, 0),
(56, 'Mississippi State University', 'MSU', 'Starkville', 'MS', 'SEC', '660000', 'FFFFFF', 629, 384, 0, 55082, 0.483, NULL, NULL, NULL, 0),
(57, 'Iowa State University', 'Iowa State', 'Ames', 'IA', 'BIG 12', 'A71930', 'FDC82F', 526, 204, 0, 55000, 0.457, NULL, NULL, NULL, 0),
(58, 'Georgia Tech', 'Georgia Tech', 'Atlanta', 'GA', 'ACC', 'CFB53B', 'FFFFFF', 710, 366, 4, 55000, 0.596, NULL, NULL, NULL, 0),
(59, 'University of Maryland', 'Maryland', 'College Park', 'MD', 'ACC', 'CE1126', 'FFFFFF', 816, 226, 1, 54000, 0.532, NULL, NULL, NULL, 0),
(60, 'University of Oregon', 'Oregon', 'Eugene', 'OR', 'PAC 12', '004F27', 'FFCC00', 80, 123, 0, 53800, 0.541, NULL, NULL, NULL, 0),
(61, 'University of Colorado', 'Colorado', 'Boulder', 'CO', 'PAC 12', 'CC9900', 'A2A4A3', 341, 256, 1, 53750, 0.596, NULL, NULL, NULL, 1),
(62, 'Rutgers State University', 'Rutgers', 'Piscataway', 'NJ', 'Big East', 'D21034', 'FFFFFF', 846, 184, 1, 52454, 0.505, NULL, NULL, NULL, 0),
(63, 'Indiana University', 'Indiana', 'Bloomington', 'IN', 'BIG 10', '990000', 'FFFFCC', 652, 258, 0, 52180, 0.425, NULL, NULL, NULL, 0),
(64, 'University of Texas at El Paso', 'UTEP', 'El Paso', 'TX', 'C-USA', 'F65A1F', '0E123F', 315, 423, 0, 52000, 0.389, NULL, NULL, NULL, 0),
(65, 'University of Minnesota', 'Minnesota', 'Minneapolis', 'MN', 'BIG 10', '800000', 'FFD700', 530, 145, 6, 50805, 0.571, NULL, NULL, NULL, 1),
(66, 'Kansas State University', 'Kansas State', 'Manhattan', 'KS', 'BIG 12', '461D7C', 'FFFFFF', 482, 267, 0, 50300, 0.439, NULL, NULL, NULL, 0),
(67, 'University of Kansas', 'Kansas', 'Lawrence', 'KS', 'BIG 12', '0049AE', 'E31736', 500, 273, 0, 50071, 0.501, NULL, NULL, NULL, 0),
(68, 'Baylor University', 'Baylor', 'Waco', 'TX', 'BIG 12', '004834', 'FDBB2F', 493, 425, 0, 50000, 0.501, NULL, NULL, NULL, 1),
(69, 'East Carolina University', 'ECU', 'Greenville', 'NC', 'C-USA', '4F0076', 'FFE600', 825, 303, 0, 50000, 0.522, NULL, NULL, NULL, 0),
(70, 'University of Hawaii', 'Hawaii', 'Honolulu', 'HI', 'MWC', '024731', '000000', 88, 471, 0, 50000, 0.571, NULL, NULL, NULL, 0),
(71, 'Stanford University', 'Stanford', 'Stanford', 'CA', 'PAC 12', '990000', '000000', 53, 280, 2, 50000, 0.593, NULL, NULL, NULL, 1),
(72, 'Northwestern University', 'Northwestern', 'Evanston', 'IL', 'BIG 10', '431F81', 'FFFFFF', 623, 195, 0, 49256, 0.442, NULL, NULL, NULL, 0),
(73, 'Syracuse University', 'Syracuse', 'Syracuse', 'NY', 'Big East', 'FF7F00', '212B6D', 801, 139, 1, 49250, 0.584, NULL, NULL, NULL, 1),
(74, 'United States Air Force Academy', 'Air Force', 'Colorado Springs', 'CO', 'MWC', '0038A8', 'A8ADB4', 351, 276, 0, 52480, 0.547, NULL, NULL, NULL, 0),
(75, 'Oregon State University', 'Oregon State', 'Corvallis', 'OR', 'PAC 12', 'D85A1A', '000000', 79, 106, 0, 45647, 0.481, NULL, NULL, NULL, 1),
(76, 'University of Central Florida', 'UCF', 'Orlando', 'FL', 'C-USA', 'CC9900', '000000', 785, 468, 0, 45301, 0.515, NULL, NULL, NULL, 0),
(77, 'Texas Christian University', 'TCU', 'Fort Worth', 'TX', 'MWC', '660099', 'FFFFFF', 470, 411, 2, 45000, 0.532, NULL, NULL, NULL, 1),
(78, 'Boston College', 'Boston College', 'Chestnut Hill', 'MA', 'Big East', '8B0000', 'C5B358', 886, 134, 0, 44500, 0.581, NULL, NULL, NULL, 1),
(79, 'University of New Mexico', 'New Mexico', 'Albuquerque', 'NM', 'MWC', 'D30D44', 'D1D5D8', 310, 353, 0, 42000, 0.458, NULL, NULL, NULL, 0),
(80, 'Vanderbilt University', 'Vanderbilt', 'Nashville', 'TN', 'SEC', '997F3D', '000000', 655, 321, 0, 41448, 0.496, NULL, NULL, NULL, 0),
(81, 'California State University, Fresno', 'Fresno State', 'Fresno', 'CA', 'MWC', 'B11A3B', '00287A', 95, 292, 0, 41031, 0.594, NULL, NULL, NULL, 0),
(82, 'University of South Alabama', 'South Alabama', 'Mobile', 'AL', 'Sun Belt', 'FF0000', 'FFFFFF', 650, 442, 0, 40646, 0, NULL, NULL, NULL, 0),
(83, 'Army', 'Army', 'West Point', 'NY', 'Independant', 'D4AF37', '000000', 849, 165, 3, 40000, 0.582, NULL, NULL, NULL, 3),
(84, 'University of Connecticut', 'UCONN', 'East Hartford', 'CT', 'Big East', '002868', 'FFFFFF', 872, 153, 0, 40000, 0.489, NULL, NULL, NULL, 0),
(85, 'Marshall University', 'Marshall', 'Huntington', 'WV', 'C-USA', '009B48', 'FFFFFF', 726, 261, 0, 38019, 0.511, NULL, NULL, NULL, 0),
(86, 'Boise State University', 'Boise State', 'Boise', 'ID', 'MWC', '1F60A9', 'FC5A1E', 173, 146, 0, 37000, 0.721, NULL, NULL, NULL, 0),
(87, 'University of Nevada, Las Vegas', 'UNLV', 'Whitney', 'NV', 'MWC', 'C10202', '666666', 162, 309, 0, 36800, 0.458, NULL, NULL, NULL, 0),
(88, 'University of Southern Mississippi', 'Southern Miss', 'Hattiesburg', 'MS', 'C-USA', 'FFD700', '000000', 629, 426, 2, 36000, 0.594, NULL, NULL, NULL, 0),
(89, 'University of Tulsa', 'Tulsa', 'Tulsa', 'OK', 'C-USA', '084C9E', 'CFB53B', 495, 330, 0, 35542, 0.56, NULL, NULL, NULL, 0),
(90, 'Washington State University', 'Washington State', 'Pullman', 'WA', 'PAC 12', '981E32', '5E6A71', 169, 73, 0, 35117, 0.494, NULL, NULL, NULL, 0),
(91, 'University of Cincinnati', 'Cincinnati', 'Cincinnati', 'OH', 'Big East', 'E00122', '000000', 686, 249, 0, 35097, 0.5, NULL, NULL, NULL, 0),
(92, 'United States Naval Academy', 'Navy', 'Annapolis', 'MD', 'Independant', '000080', 'D4AF37', 823, 232, 1, 35000, 0.549, NULL, NULL, NULL, 2),
(93, 'Colorado State University', 'Colorado State', 'Fort Collins', 'CO', 'MWC', '008000', 'FFD700', 350, 237, 0, 34400, 0.475, NULL, NULL, NULL, 0),
(94, 'Duke University', 'Duke', 'Durham', 'NC', 'ACC', '00009C', 'FFFFFF', 793, 301, 0, 33941, 0.491, NULL, NULL, NULL, 0),
(95, 'University of Wyoming', 'Wyoming', 'Laramie', 'WY', 'MWC', '593D2B', 'FFD700', 333, 216, 0, 32580, 0.484, NULL, NULL, NULL, 0),
(96, 'University of Houston', 'Houston', 'Houston ', 'TX', 'C-USA', 'CC0000', 'FFFFFF', 507, 471, 0, 32000, 0.534, NULL, NULL, NULL, 1),
(97, 'Wake Forest University', 'Wake Forest', 'Winston-Salem', 'NC', 'ACC', 'CFB53B', '000000', 766, 305, 0, 31500, 0.411, NULL, NULL, NULL, 0),
(98, 'Middle Tennessee State University', 'Middle Tennessee', 'Murfreesboro', 'TN', 'Sun Belt', '15357B', 'FFFFFF', 665, 330, 0, 31000, 0.58, NULL, NULL, NULL, 0),
(99, 'University of Louisiana at Lafayette', 'Louisiana Lafayette', 'Lafayette', 'LA', 'Sun Belt', 'E34234', 'FFFFFF', 577, 463, 0, 31000, 0.482, NULL, NULL, NULL, 0),
(100, 'Arkansas State University', 'Arkansas State', 'Jonesboro', 'AR', 'Sun Belt', 'EB1C22', '000000', 588, 337, 0, 30964, 0.484, NULL, NULL, NULL, 0),
(101, 'University of North Texas', 'North Texas', 'Denton', 'TX', 'Sun Belt', '059033', 'FFFFFF', 482, 403, 0, 30850, 0.513, NULL, NULL, NULL, 0),
(102, 'Louisiana Tech University', 'Louisiana Tech', 'Ruston', 'LA', 'WAC', 'FF0000', '002F8B', 561, 415, 0, 30600, 0.566, NULL, NULL, NULL, 0),
(103, 'San Jose State University', 'San Jose State', 'San Jose', 'CA', 'WAC', '1560DB', 'C79900', 61, 274, 0, 30456, 0.499, NULL, NULL, NULL, 0),
(104, 'University of Louisiana at Monroe', 'Louisiana Monroe', 'Monroe', 'LA', 'Sun Belt', '800000', 'FFD700', 572, 411, 0, 30427, 0.432, NULL, NULL, NULL, 0),
(105, 'New Mexico State University', 'New Mexico State', 'Las Cruces', 'NM', 'WAC', '882345', 'FFFFFF', 300, 408, 0, 30343, 0.426, NULL, NULL, NULL, 0),
(106, 'Western Michigan University', 'Western Michigan', 'Kalamazoo', 'MI', 'MAC', '663300', 'CC9933', 651, 178, 0, 32000, 0.558, NULL, NULL, NULL, 0),
(107, 'Eastern Michigan University', 'Eastern Michigan', 'Ypsilanti', 'MI', 'MAC', '006633', 'FFFFFF', 688, 178, 0, 32000, 0.451, NULL, NULL, NULL, 0),
(108, 'Central Michigan University', 'Central Michigan', 'Mount Pleasant', 'MI', 'MAC', '660033', 'FFCC00', 663, 180, 0, 30199, 0.601, NULL, NULL, NULL, 0),
(109, 'Texas State University', 'Texas State', 'San Marcos', 'TX', 'Independant', '4D1717', 'AF9445', 452, 463, 0, 30000, 0.549, NULL, NULL, NULL, 0),
(110, 'University of Akron', 'Akron', 'Akron', 'OH', 'MAC', '00285C', 'CAB388', 722, 210, 0, 30000, 0.5, NULL, NULL, NULL, 0),
(111, 'Troy University', 'Troy', 'Troy', 'AL', 'Sun Belt', 'C41E3A', '000000', 684, 409, 0, 30000, 0.537, NULL, NULL, NULL, 0),
(112, 'Florida Atlantic University', 'Florida Atlantic', 'Boca Raton', 'FL', 'Sun Belt', '003366', 'CE2029', 822, 505, 0, 30000, 0.439, NULL, NULL, NULL, 0),
(113, 'University of Nevada', 'Nevada', 'Reno', 'NV', 'MWC', '000080', 'C0C0C0', 100, 223, 0, 29993, 0.535, NULL, NULL, NULL, 0),
(114, 'University of Buffalo', 'Buffalo', 'Amherst', 'NY', 'MAC', '041A9B', 'FFFFFF', 767, 158, 0, 29013, 0.432, NULL, NULL, NULL, 0),
(115, 'University of Toledo', 'Toledo', 'Toledo', 'OH', 'MAC', '191970', 'FFD700', 694, 197, 0, 26248, 0.542, NULL, NULL, NULL, 0),
(116, 'Utah State University', 'Utah State', 'Logan', 'UT', 'WAC', '003057', 'FFFFFF', 235, 204, 0, 25513, 0.493, NULL, NULL, NULL, 0),
(117, 'Northern Illinois University', 'Northern Illinois', 'DeKalb', 'IL', 'MAC', 'CC1122', '000000', 606, 213, 0, 25500, 0.529, NULL, NULL, NULL, 0),
(118, 'Florida International University', 'FIU', 'Miami', 'FL', 'Sun Belt', '002D62', 'C5960C', 814, 526, 0, 25000, 0.331, NULL, NULL, NULL, 0),
(119, 'Kent State University', 'Kent State', 'Kent', 'OH', 'MAC', '0A0D6F', 'FFAB1B', 728, 201, 0, 25000, 0.388, NULL, NULL, NULL, 0),
(120, 'Miami University', 'Miami Ohio', 'Miami', 'OH', 'MAC', 'CE1126', 'FFFFFF', 685, 241, 0, 24286, 0.619, NULL, NULL, NULL, 0),
(121, 'Ohio University', 'Ohio', 'Athens', 'OH', 'MAC', '006633', 'FFFFFF', 729, 238, 0, 24000, 0.496, NULL, NULL, NULL, 0),
(122, 'Bowling Green State University', 'Bowling Green', 'Bowling Green', 'OH', 'MAC', 'FF7300', '613005', 694, 206, 0, 23724, 0.585, NULL, NULL, NULL, 0),
(123, 'Ball State University', 'Ball State', 'Muncie', 'IN', 'MAC', 'CC0000', 'FFFFFF', 666, 240, 0, 22500, 0.52, NULL, NULL, NULL, 0),
(124, 'Western Kentucky University', 'Western Kentucky', 'Bowling Green', 'KY', 'Sun Belt', 'FF2222', 'FFFFFF', 655, 297, 0, 22000, 0.591, NULL, NULL, NULL, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
