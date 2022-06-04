-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 21, 2021 at 04:57 PM
-- Server version: 10.3.28-MariaDB-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idrirjgx_mme`
--

-- --------------------------------------------------------

--
-- Table structure for table `adbuy`
--

CREATE TABLE `adbuy` (
  `adi` bigint(255) DEFAULT NULL,
  `uid` bigint(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `start` bigint(255) DEFAULT NULL,
  `end` bigint(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adbuy`
--

INSERT INTO `adbuy` (`adi`, `uid`, `response`, `start`, `end`, `updated`, `created`) VALUES
(1, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(2, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(3, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(4, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(5, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(6, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(7, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(8, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(9, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(10, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(11, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(12, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(13, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(14, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(15, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(16, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(17, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(18, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(19, 1, 'AdGenX_SYS', 1614018335, 1925058335, '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(30, 2, 'AdGenX', 1614719572, 1617311572, '2021-03-02 21:12:52', '2021-03-02 21:12:52'),
(21, 2, 'AdGenX', 1615060123, 1617652123, '2021-03-06 19:48:43', '2021-03-06 19:48:43'),
(22, 2, 'AdGenX', 1615066732, 1617658732, '2021-03-06 21:38:52', '2021-03-06 21:38:52'),
(23, 2, 'AdGenX', 1615067579, 1617659579, '2021-03-06 21:52:59', '2021-03-06 21:52:59'),
(24, 2, 'AdGenX', 1615067620, 1617659620, '2021-03-06 21:53:40', '2021-03-06 21:53:40');

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `adi` bigint(255) NOT NULL,
  `uid` bigint(255) DEFAULT NULL,
  `ciri` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `imglnk1` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`adi`, `uid`, `ciri`, `url`, `imglnk1`, `updated`, `created`) VALUES
(1, 1, 'driving music **BASS BOOSTED**...', 'https://www.youtube.com/watch?v=RkkdYdWMfQ0', '/var/www/html/dro/www-img/ciriBassBoosted.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(2, 1, 'try handmade boots by Lucchese', 'http://www.lucchese.com', '/var/www/html/dro/www-img/ciriLucchese.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(3, 1, 'try a Monster Energy Ultra Sunrise today...', 'http://www.monsterenergy.com', '/var/www/html/dro/www-img/ciriMonsterEnergy.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(4, 1, 'try a Taco Bell Grande Stacker Box...', 'http://www.tacobell.com', '/var/www/html/dro/www-img/ciriTacoBell.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(5, 1, 'wanna get high?', 'http://www.hightimes.com', '/var/www/html/dro/www-img/droHighTimesBanner1tmb.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(6, 1, 'checkout Call of Duty mobile!', 'http://www.callofduty.com', '/var/www/html/dro/www-img/ciriCallOfDutyMobile.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(7, 1, 'I&#039;ll be back...', 'https://www.amazon.com/Terminator-Dark-Fate-Linda-Hamilton/dp/B07ZP8J83T', '/var/www/html/dro/www-img/ciriTerminator.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(8, 1, 'da da da dat da...', 'http://www.mcdonalds.com', '/var/www/html/dro/www-img/ciriMcdonalds.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(9, 1, 'call hertz, we&#039;ll pick you up...', 'http://www.hertz.com', '/var/www/html/dro/www-img/ciriHertz.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(10, 1, 'Come to Marlboro country...', 'http://www.marlboro.com', '/var/www/html/dro/www-img/ciriMarlboro.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(11, 1, 'you have voicemail...', 'http://www.myfamilymobile.com', '/var/www/html/dro/www-img/ciriMyFamilyMobile.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(12, 1, 'the force is with you...', 'http://www.starwars.com', '/var/www/html/dro/www-img/ciriStarWars.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(13, 1, 'try a Pizza Hut &#039;The Original Pan&#039; today...', 'http://www.pizzahut.com', '/var/www/html/dro/www-img/ciriPizzaHut.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(14, 1, 'try Popeye&#039;s new chicken sandwich!', 'http://www.popeyes.com', '/var/www/html/dro/www-img/ciriPopeyes.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(15, 1, 'Freedom of Vodka...', 'http://www.stoli.com', '/var/www/html/dro/www-img/ciriStoli.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(16, 1, 'I feel the need, the need for speed...', 'http://www.paramount.com', '/var/www/html/dro/www-img/ciriParamount.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(17, 1, 'slow your roll...', 'https://www.youtube.com/watch?v=ODuKIpDRcXI', '/var/www/html/dro/www-img/ciriKidRock.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(18, 1, 'another day, another dollar...', 'http://www.dollargeneral.com', '/var/www/html/dro/www-img/ciriDollarGeneral.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(19, 1, 'VOTE F.U.B.U.', 'http://www.fubu.com', '/var/www/html/dro/www-img/ciriFubu.jpg', '2021-02-22 18:25:35', '2021-02-22 18:25:35'),
(21, 2, 'Arbys, we have the meats!', 'https://arbys.com', '/home/idrirjgx/public_html/www-bin/img/2/2for6_EDV-JAN_M_MainMH_768x640_v1.jpg', '2021-03-01 19:46:14', '2021-03-01 19:46:14'),
(22, 2, 'Got memes??', 'https://reddit.com', '/home/idrirjgx/public_html/www-bin/img/2/reddit-combo-1920-800x450.png', '2021-03-01 21:11:15', '2021-03-01 21:11:15'),
(23, 2, '#Impeach', 'https://nypost.com', '/home/idrirjgx/public_html/www-bin/img/2/pageone-1.jpg', '2021-03-01 21:17:00', '2021-03-01 21:17:00'),
(24, 2, '#WSB #2theMoon', 'https://reddit.com/r/WallstreetBets', '/home/idrirjgx/public_html/www-bin/img/2/reddit-combo-1920-800x450.png', '2021-03-01 21:20:58', '2021-03-01 21:20:58'),
(26, 2, '#Delicious', 'https://arbys.com', '/home/idrirjgx/public_html/www-bin/img/2/2for6_EDV-JAN_M_MainMH_768x640_v1.jpg', '2021-03-01 21:25:16', '2021-03-01 21:25:16'),
(27, 2, 'ðŸ’Ž Diamond Hands ', 'https://reddit.com', '/home/idrirjgx/public_html/www-bin/img/2/reddit-combo-1920-800x450.png', '2021-03-01 21:30:39', '2021-03-01 21:30:39'),
(28, 2, 'You&#039;re Fired!', 'https://nypost.com', '/home/idrirjgx/public_html/www-bin/img/2/pageone-1.jpg', '2021-03-01 21:32:35', '2021-03-01 21:32:35'),
(29, 2, 'Beef N Cheddar', 'https://arbys.com', '/home/idrirjgx/public_html/www-bin/img/2/2for6_EDV-JAN_M_MainMH_768x640_v1.jpg', '2021-03-01 21:34:57', '2021-03-01 21:34:57'),
(30, 2, 'Subscribe Today!', 'https://nypost.com', '/home/idrirjgx/public_html/www-bin/img/2/pageone-1.jpg', '2021-03-01 21:37:22', '2021-03-01 21:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `aid` bigint(255) DEFAULT NULL,
  `image1` blob DEFAULT NULL,
  `image2` blob DEFAULT NULL,
  `image3` blob DEFAULT NULL,
  `image4` blob DEFAULT NULL,
  `image5` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `imglnk`
--

CREATE TABLE `imglnk` (
  `aid` bigint(255) DEFAULT NULL,
  `imglnk1` varchar(255) DEFAULT NULL,
  `imglnk2` varchar(255) DEFAULT NULL,
  `imglnk3` varchar(255) DEFAULT NULL,
  `imglnk4` varchar(255) DEFAULT NULL,
  `imglnk5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `aid` bigint(255) DEFAULT NULL,
  `uid` bigint(255) DEFAULT NULL,
  `sid` bigint(255) DEFAULT NULL,
  `breview` varchar(255) DEFAULT NULL,
  `sreview` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(255) NOT NULL,
  `ae` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `log` datetime DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `ali` varchar(255) DEFAULT NULL,
  `rev` bigint(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `skey` varchar(255) DEFAULT NULL,
  `mtime` bigint(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ae`, `ip`, `log`, `user`, `ali`, `rev`, `passwd`, `skey`, `mtime`, `updated`, `created`) VALUES
(1, NULL, NULL, NULL, 'gemdeals395@gmail.com', 'hungry242718', 0, '$2y$10$SB6KFRkAYAgIHPWqjwjJ.OhKGfiyQMdKJHFg2t65wAvWoQRGArHAW', NULL, 1614018806, '2021-02-22 18:33:26', '2021-02-22 18:02:26'),
(2, NULL, '76.31.175.88', '2021-04-12 18:25:44', 'zerofeedelivery@gmail.com', 'Rex Steakhouse', 0, '$2y$10$eobvRBNIn9s0PXvGVMDyG.fC.KfSxUwY6FZiOdFMIdGlujZiHLFmW', NULL, 1614026055, '2021-04-12 18:25:44', '2021-02-22 20:02:15'),
(3, NULL, '174.202.231.135', '2021-04-12 00:08:06', 'Shh come', 'hungry736303', 0, '$2y$10$SL9Yzf9uZmtU0g9/2OdzlOi7.h482G1CzRUbhaNflhmG8kEjq.ZN.', NULL, 1614118707, '2021-04-12 00:08:06', '2021-02-23 22:02:27'),
(4, NULL, NULL, NULL, '1', 'hungry305273', 0, '$2y$10$x4nk.WzXhin5UWTfu2yWbeqB7DbsvqTazBoEIN6SUbbGJi7u6vkx2', NULL, 1614458370, '2021-02-27 20:39:30', '2021-02-27 20:02:30'),
(5, NULL, NULL, NULL, '2', 'hungry722205', 0, '$2y$10$AUVdZrXVu7pCDB5jwTfRlO8u/Eh3.mGowDtI.90DbMNXX0voIzvt2', NULL, 1614568341, '2021-03-01 03:12:22', '2021-03-01 03:03:22'),
(6, NULL, '76.31.175.88', NULL, '3', 'hungry457736', 0, '$2y$10$CXNxUpscN0sbbtkR8I2UduUnpsYlqLtmpuES7B6AdkT/lODmLS.oS', NULL, 1614626292, '2021-03-01 19:18:12', '2021-03-01 19:03:12'),
(7, NULL, '76.31.175.88', NULL, '4', 'hungry102784', 0, '$2y$10$wLnco0erb.yDcUJeNXYYNeUE3RUOMkDkPT4rgtnqXABCxGuoKYm2C', NULL, 1614974362, '2021-03-05 19:59:22', '2021-03-05 19:03:22'),
(8, NULL, '76.31.175.88', NULL, '5', 'hungry996831', 0, '$2y$10$6KuIeQ4ZMJ8Au0Mp/EYTm.ryklhWiinygF5Rwae303UC0z.3VaPja', NULL, 1614974692, '2021-03-05 20:04:52', '2021-03-05 20:03:52'),
(9, NULL, '76.31.175.88', '2021-04-02 21:02:05', '6', 'FullStack', 0, '$2y$10$5.3QVQJIw2HxuT6pclIKUeQ9qrzjRleXF/Ym90yED/pKgVDQzbq7.', NULL, 1615905643, '2021-04-02 21:02:05', '2021-03-16 14:03:43'),
(10, NULL, '76.31.175.88', '2021-03-31 19:03:48', '7', 'McDonalds', 0, '$2y$10$bG03OrmiSTtLW03R58RkB.hYOhR0Z45LZy9j..N7eXa2jKscw2Loy', NULL, 1616527622, '2021-03-31 19:03:48', '2021-03-23 19:03:02'),
(11, NULL, '76.31.175.88', '2021-03-31 19:04:03', '8', 'Taco Bell', 0, '$2y$10$0wQ1pgYCmpZOPz0FRt6Fu.PPxPWcU0/FeEBjPvp9z27AGVKnv4Vpi', NULL, 1617126256, '2021-03-31 19:04:03', '2021-03-30 17:03:16'),
(12, NULL, '76.31.175.88', '2021-04-06 19:29:37', '9', 'Subway', 0, '$2y$10$MMPza2rLD6qlA0IdgXv5Je7myHuHtJ8hedA459hnxqfZDFKJEzTw.', NULL, 1617217461, '2021-04-06 19:29:37', '2021-03-31 19:03:21'),
(13, '0', '76.31.175.88', '2021-04-21 20:03:06', '10', 'hungry242670', 0, '$2y$10$EP4Ty//2H1E7LfKgwYsfQOGo0zRKe6rb5OPAKb0Shx8L2HJz8t71a', NULL, 1619035386, '2021-04-21 20:03:06', '2021-04-21 20:04:06'),
(14, '34KJ67YT', '76.31.175.88', '2021-04-21 20:35:49', '11', 'hungry354250', 0, '$2y$10$EP4Ty//2H1E7LfKgwYsfQOGo0zRKe6rb5OPAKb0Shx8L2HJz8t71a', NULL, 1619035454, '2021-04-21 20:35:49', '2021-04-21 20:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_business`
--

CREATE TABLE `user_business` (
  `aid` bigint(255) DEFAULT NULL,
  `bid` bigint(255) NOT NULL,
  `bdr` int(11) NOT NULL DEFAULT 80,
  `bpic` varchar(255) DEFAULT NULL,
  `bppic` varchar(255) DEFAULT NULL,
  `bpcat` varchar(255) NOT NULL DEFAULT '#999999',
  `bpitm` varchar(255) NOT NULL DEFAULT '#CCCCCC',
  `bpfnt` varchar(255) NOT NULL DEFAULT '#000000',
  `bemail` varchar(255) DEFAULT NULL,
  `bverified` int(1) DEFAULT NULL,
  `bvkey` varchar(255) DEFAULT NULL,
  `bvstart` bigint(255) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `burl` varchar(255) DEFAULT NULL,
  `badd1` varchar(155) DEFAULT NULL,
  `badd2` varchar(255) DEFAULT NULL,
  `bcity` char(55) DEFAULT NULL,
  `bstate` char(55) DEFAULT NULL,
  `bzip` varchar(55) DEFAULT NULL,
  `bphone` varchar(255) DEFAULT NULL,
  `bfax` varchar(255) DEFAULT NULL,
  `btax` decimal(4,3) NOT NULL DEFAULT 0.000,
  `keyword1` varchar(25) DEFAULT NULL,
  `keyword2` varchar(25) DEFAULT NULL,
  `keyword3` varchar(25) DEFAULT NULL,
  `keyword4` varchar(25) DEFAULT NULL,
  `keyword5` varchar(25) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_business`
--

INSERT INTO `user_business` (`aid`, `bid`, `bdr`, `bpic`, `bppic`, `bpcat`, `bpitm`, `bpfnt`, `bemail`, `bverified`, `bvkey`, `bvstart`, `bname`, `burl`, `badd1`, `badd2`, `bcity`, `bstate`, `bzip`, `bphone`, `bfax`, `btax`, `keyword1`, `keyword2`, `keyword3`, `keyword4`, `keyword5`, `updated`, `created`) VALUES
(2, 2, 80, './www-bin/img/2/rexBistroItaliano10.jpg', './www-bin/img/2/IMG_20201124_195650_761.jpg', '#8F8F8F', '#CCCCCC', '#000000', 'zerofeedelivery@gmail.com', 1, 'fc8131f5d2c5db10cb3c9b1fe51eb0f05069528e43a9927f7e2367956e967491', 1616011157, 'Bistro Italiano', 'https://bistroitaliano.co', '13080 HWY 105 #127', '', 'Conroe', 'TX', '77304', '936 588-5058', '', 8.250, 'steak', 'steakhouse', 'italian', 'pasta', 'seafood', '2021-04-07 20:36:08', '2021-02-25 19:50:55'),
(9, 4, 80, './www-bin/img/9/codecode.jpg', NULL, '#999999', '#CCCCCC', '#000000', 'gemdeals395@gmail.com', 1, 'e020af94a7ec8d95cf7b477e29d5501fdeea414de1c3a51ca51a1c3b60192224', 1615927427, '[For Hire] Senior Software Engineer - Full Stack', 'https://www.linkedin.com/in/james-schulze-216b311b8/', '13080 HWY 105', 'Suite #129', 'Conroe', 'TX', '77304', '936 320-2695', '', 0.000, 'php', 'sql', 'css', 'html', 'javascript', '2021-03-22 20:52:34', '2021-03-16 15:38:55'),
(10, 5, 80, './www-bin/img/10/mcdbanner2.jpg', './www-bin/img/10/mcdlogo2.jpg', '#F00E0F', '#E6E417', '#000000', 'https://mcdonalds.com/contact', 1, '52620ce747d1f9eff9cf94b1f273a417673bc516e172178faa5c91dd22ff1b14', 1615927270, 'McDonalds', 'https://mcdonalds.com', '2640 N Loop 336', '', 'Conroe', 'TX', '77304', '(936) 756-2000', '', 8.250, 'mcdonalds', 'burger', 'fries', 'chicken', 'salad', '2021-04-01 19:38:31', '2021-03-23 19:32:21'),
(11, 6, 80, './www-bin/img/11/tbellBanner1.jpg', './www-bin/img/11/tbellLogo1.jpg', '#434A9B', '#ED258F', '#000000', 'https://tacobell.com/contact-us', 1, '2949671fab658e0b7d455f00dc9cedf15bbe3aa41553f13522ae315660811050', 1615927270, 'Taco Bell', 'https://tacobell.com', '3207 W. Davis', '', 'Conroe', 'TX', '77304', '(936) 788-5353', '', 8.250, 'taco', 'burrito', 'chalupa', 'quesadilla', 'fajita', '2021-04-01 19:51:11', '2021-03-30 17:48:26'),
(12, 7, 80, './www-bin/img/12/swayBanner5.webp', './www-bin/img/12/swayLogo1.webp', '#049A48', '#FFCA10', '#000000', 'https://subway.com/ContactUs', 1, 'cad1e233a65c035aab5fb56eb7e2674a048b55de7a8cd9ff931d606ec5a8cb54', 1615927270, 'Subway', 'https://subway.com', '3915 W. Davis #120', '', 'Conroe', 'TX', '77304', '936 756-1783', '', 8.250, 'subs', 'sandwich', 'hero', 'hoagie', 'jimmy johns', '2021-04-01 19:53:14', '2021-03-31 19:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `user_business_cat_items`
--

CREATE TABLE `user_business_cat_items` (
  `bid` bigint(255) DEFAULT NULL,
  `iid` bigint(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `mcat` int(255) DEFAULT NULL,
  `scat` int(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(13,2) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_business_cat_items`
--

INSERT INTO `user_business_cat_items` (`bid`, `iid`, `img`, `mcat`, `scat`, `item`, `description`, `price`, `updated`, `created`) VALUES
(2, 1, './www-bin/img/2/IMG_20201120_185743_077.jpg', 1, NULL, 'Carpaccio', 'Thinly sliced prime beef served with spring mix salad, topped with capers, drizzled with white truffle oil. ', 11.95, '2021-03-22 04:41:07', '2021-02-27 20:26:57'),
(2, 2, NULL, 1, NULL, 'Clams Posillipo', 'Open shell clams pan-seared in white wine and garlic.', 9.95, '2021-02-27 20:27:48', '2021-02-27 20:27:48'),
(2, 3, NULL, 1, NULL, 'Coconut Shrimp', 'Fresh Shrimp butterflied, dipped in coconut shredding.', 11.95, '2021-02-27 20:28:38', '2021-02-27 20:28:38'),
(2, 4, NULL, 2, NULL, 'French Onion Soup', '', 8.95, '2021-02-27 20:29:35', '2021-02-27 20:29:35'),
(2, 5, NULL, 2, NULL, 'Lobster Bisque Soup', '', 10.95, '2021-02-27 20:30:27', '2021-02-27 20:30:27'),
(2, 6, NULL, 2, NULL, 'Minestrone Soup', 'Vegetable (zucchini, squash, and carrots).', 6.95, '2021-02-27 20:31:21', '2021-02-27 20:31:21'),
(2, 9, NULL, 1, NULL, 'Portobello Mushrooms', 'Pan -seared with roasted garlic in balsamic dressing.', 8.95, '2021-03-22 17:52:35', '2021-03-22 17:52:35'),
(2, 10, NULL, 1, NULL, 'Stuffed Mushrooms', 'Stuffed with fresh crabmeat, served on a bed of sauteed spinach.', 8.95, '2021-03-22 17:53:16', '2021-03-22 17:53:16'),
(2, 11, NULL, 1, NULL, 'Smoked Bacon', '', 8.95, '2021-03-22 17:53:47', '2021-03-22 17:53:47'),
(2, 12, NULL, 1, NULL, 'Crab Cakes', '', 9.95, '2021-03-22 17:54:33', '2021-03-22 17:54:33'),
(2, 13, NULL, 1, NULL, 'Smoked Salmon', '', 14.95, '2021-03-22 17:55:18', '2021-03-22 17:55:18'),
(2, 14, NULL, 1, NULL, 'Crabmeat Cocktail', '', 17.95, '2021-03-22 17:55:34', '2021-03-22 17:55:34'),
(2, 15, NULL, 2, NULL, 'Stracciatella', 'Egg drop &amp; spinach.', 6.95, '2021-03-22 17:57:04', '2021-03-22 17:57:04'),
(2, 16, NULL, 2, NULL, 'Pasta Fagioli', 'Penne pasta with faggioli beans.', 8.95, '2021-03-22 17:57:55', '2021-03-22 17:57:55'),
(2, 17, NULL, 5, NULL, 'Tomato Salad', 'Diced red onions &amp; tomato in a balsamic vinaigrette.', 6.95, '2021-03-22 17:59:01', '2021-03-22 17:59:01'),
(2, 18, NULL, 5, NULL, 'Caesar Salad', '', 7.95, '2021-03-22 17:59:43', '2021-03-22 17:59:43'),
(2, 19, NULL, 5, NULL, 'Tomato Onion Salad', '', 6.95, '2021-03-22 18:00:25', '2021-03-22 18:00:25'),
(2, 20, NULL, 5, NULL, 'Spring Mix Salad', 'Dressed with balsamic vinaigrette wrapped with sliced cucumbers &amp; tomato.', 7.95, '2021-03-22 18:01:03', '2021-03-22 18:01:03'),
(2, 21, NULL, 5, NULL, 'Spinach Salad', 'Homemade creamy white dressing topped with bacon &amp; chopped red onions.', 9.95, '2021-03-22 18:01:32', '2021-03-22 18:01:32'),
(2, 22, NULL, 5, NULL, 'Caprese Salad', '', 9.95, '2021-03-22 18:01:56', '2021-03-22 18:01:56'),
(2, 23, NULL, 5, NULL, 'Roasted Pepper Mozzarella', 'Roasted red pepper marinated in garlic &amp; virgin olive oil served over fresh mozzarella.', 11.95, '2021-03-22 18:02:33', '2021-03-22 18:02:33'),
(2, 24, NULL, 6, NULL, 'Cheese Ravioli', 'Four large medallions stuffed with cheese served in a tomato sauce.', 13.95, '2021-03-22 18:04:08', '2021-03-22 18:04:08'),
(2, 25, NULL, 6, NULL, 'Penne Vodka', '', 13.95, '2021-03-22 18:04:29', '2021-03-22 18:04:29'),
(2, 26, NULL, 6, NULL, 'Linguini Meat Sauce', '', 14.95, '2021-03-22 18:04:58', '2021-03-22 18:04:58'),
(2, 27, NULL, 6, NULL, 'Linguini Primavera', '', 14.95, '2021-03-22 18:05:21', '2021-03-22 18:05:21'),
(2, 28, NULL, 6, NULL, 'Tortellini Pane', 'Green pea cream sauce in tortellini noodles that are stuffed with cheese.', 16.95, '2021-03-22 18:06:08', '2021-03-22 18:06:08'),
(2, 29, NULL, 6, NULL, 'Rigatoni Sausage', '', 14.95, '2021-03-22 18:06:42', '2021-03-22 18:06:42'),
(2, 30, NULL, 6, NULL, 'Spaghetti Bolognese', '', 14.95, '2021-03-22 18:07:04', '2021-03-22 18:07:04'),
(2, 31, NULL, 6, NULL, 'Linguini White Clam Sauce', 'Whole clams alongside chopped clams in a white wine &amp; garlic sauce.', 17.95, '2021-03-22 18:07:39', '2021-03-22 18:07:39'),
(2, 32, NULL, 7, NULL, 'Chicken Parmigiana', '', 12.95, '2021-03-22 18:09:29', '2021-03-22 18:09:29'),
(2, 33, NULL, 7, NULL, 'Chicken Balsamic', 'Balsamic Vinaigrette', 14.95, '2021-03-22 18:10:19', '2021-03-22 18:10:19'),
(2, 34, NULL, 7, NULL, 'Chicken Marsala', 'Marsala wine &amp; mushroom.', 14.95, '2021-03-22 18:11:15', '2021-03-22 18:11:15'),
(2, 35, NULL, 7, NULL, 'Chicken Piccata', 'Capers in white wine &amp; lemon sauce.', 14.95, '2021-03-22 18:12:03', '2021-03-22 18:12:03'),
(2, 36, NULL, 7, NULL, 'Chicken Rinesa', 'Champagne sauce with onions &amp; mushroom.', 16.95, '2021-03-22 18:12:49', '2021-03-22 18:12:49'),
(2, 37, NULL, 7, NULL, 'Chicken Principesa', 'Dipped in Parmesan cheese &amp; brandi sauce.', 17.95, '2021-03-22 18:13:31', '2021-03-22 18:13:31'),
(2, 38, NULL, 7, NULL, 'Chicken Sicillano', 'Artichokes, onions, &amp; mushrooms in white wine.', 17.95, '2021-03-22 18:14:12', '2021-03-22 18:14:12'),
(2, 39, NULL, 7, NULL, 'Chicken Primavera', 'Julienned vegetables, mushrooms, spinach, onions, &amp; broccoli in a sherry white wine sauce.', 19.95, '2021-03-22 18:14:51', '2021-03-22 18:14:51'),
(2, 40, NULL, 7, NULL, 'Chicken Contrapunto', 'Layers of eggplant, prosciutto, &amp; tomato in white wine.', 20.95, '2021-03-22 18:15:30', '2021-03-22 18:15:30'),
(2, 41, NULL, 8, NULL, 'Veal Parmigiana', 'Coated with parmesan cheese served with linguini in tomato sauce.', 16.95, '2021-03-22 18:19:07', '2021-03-22 18:19:07'),
(2, 42, NULL, 8, NULL, 'Veal Piccata', 'Capers in a white wine &amp; lemon sauce.', 18.95, '2021-03-22 18:19:56', '2021-03-22 18:19:56'),
(2, 43, NULL, 8, NULL, 'Veal Marsala', '', 18.95, '2021-03-22 18:20:13', '2021-03-22 18:20:13'),
(2, 44, NULL, 8, NULL, 'Veal Principessa', '', 20.95, '2021-03-22 18:21:40', '2021-03-22 18:21:40'),
(2, 45, NULL, 8, NULL, 'Veal Sicillano', 'Artichokes, mushrooms, &amp; onions in white wine.', 19.95, '2021-03-22 18:22:22', '2021-03-22 18:22:22'),
(2, 46, NULL, 8, NULL, 'Veal Contrapunto', '', 21.95, '2021-03-22 18:22:49', '2021-03-22 18:22:49'),
(2, 47, NULL, 8, NULL, 'Veal Arnisa', 'Stuffed with fresh crabmeat in brandi sauce.', 23.95, '2021-03-22 18:41:29', '2021-03-22 18:23:04'),
(2, 48, NULL, 9, NULL, 'Lobster Ravioli', '', 19.95, '2021-03-22 18:23:46', '2021-03-22 18:23:46'),
(2, 49, NULL, 9, NULL, 'Shrimp Scampi', 'Jumbo shrimp in white wine sauce over linguini pasta.', 22.95, '2021-03-22 18:24:15', '2021-03-22 18:24:15'),
(2, 50, NULL, 9, NULL, 'Shrimp Piccata', '', 22.95, '2021-03-22 18:24:41', '2021-03-22 18:24:41'),
(2, 51, NULL, 9, NULL, 'Shrimp Fridiablo', '', 22.95, '2021-03-22 18:25:13', '2021-03-22 18:25:13'),
(2, 52, NULL, 9, NULL, 'Salmon Mustard', 'Served with mustard champagne sauce &amp; julienned vegetables.', 24.95, '2021-03-22 18:25:42', '2021-03-22 18:25:42'),
(2, 53, NULL, 9, NULL, 'Red Snapper Marichiara', '', 28.95, '2021-03-22 18:26:15', '2021-03-22 18:26:15'),
(2, 54, NULL, 10, NULL, 'T - Bone', '', 36.95, '2021-03-22 18:26:59', '2021-03-22 18:26:59'),
(2, 55, NULL, 10, NULL, 'New York Shell', '', 28.95, '2021-03-22 18:44:13', '2021-03-22 18:27:22'),
(2, 56, NULL, 10, NULL, 'Steak For Two', '', 57.95, '2021-03-22 18:27:52', '2021-03-22 18:27:52'),
(2, 57, NULL, 10, NULL, 'Porterhouse For Three', '', 85.95, '2021-03-22 18:28:18', '2021-03-22 18:28:18'),
(2, 58, NULL, 10, NULL, 'Porterhouse For Four', '', 115.95, '2021-03-22 18:28:39', '2021-03-22 18:28:39'),
(2, 59, NULL, 11, NULL, 'French Fries', '', 4.95, '2021-03-22 18:29:13', '2021-03-22 18:29:13'),
(2, 60, NULL, 11, NULL, 'Onion Rings', '', 4.95, '2021-03-22 18:29:32', '2021-03-22 18:29:32'),
(2, 61, NULL, 11, NULL, 'Sauteed Mushrooms', '', 6.95, '2021-03-22 18:29:50', '2021-03-22 18:29:50'),
(2, 62, NULL, 11, NULL, 'Sauteed Onions', '', 4.95, '2021-03-22 18:30:07', '2021-03-22 18:30:07'),
(2, 63, NULL, 11, NULL, 'Garlic Mashed Potatoes', '', 5.95, '2021-03-22 18:30:29', '2021-03-22 18:30:29'),
(2, 64, NULL, 11, NULL, 'Steak Fries', '', 4.95, '2021-03-22 18:30:58', '2021-03-22 18:30:58'),
(2, 65, NULL, 11, NULL, 'Sauteed Spinach', '', 7.95, '2021-03-22 18:31:16', '2021-03-22 18:31:16'),
(2, 66, NULL, 11, NULL, 'Sauteed Broccoli', '', 8.95, '2021-03-22 18:31:37', '2021-03-22 18:31:37'),
(2, 67, NULL, 6, NULL, 'Chicken Fettuccini Alfredo', '', 17.95, '2021-03-22 18:38:17', '2021-03-22 18:38:17'),
(2, 68, NULL, 6, NULL, 'Capellini Rina', 'Angel hair pasta in a pink sauce with mushrooms &amp; italian sausage.', 16.95, '2021-03-22 18:38:53', '2021-03-22 18:38:53'),
(2, 69, NULL, 7, NULL, 'Chicken Valdostana', 'Stuffed with prosciutto, julienned spinach &amp; cheese in a mushroom sauce.', 22.95, '2021-03-22 18:40:39', '2021-03-22 18:40:39'),
(2, 70, NULL, 9, NULL, 'Seafood Combo', 'Jumbo shrimp, clams, &amp; mussels in white wine &amp; tomato sauce.', 28.95, '2021-03-22 18:42:57', '2021-03-22 18:42:57'),
(2, 71, NULL, 10, NULL, 'Sirloin', '', 26.95, '2021-03-22 18:45:01', '2021-03-22 18:45:01'),
(2, 72, NULL, 10, NULL, 'Petite Filet', '', 27.95, '2021-03-22 18:45:22', '2021-03-22 18:45:22'),
(2, 73, NULL, 1, NULL, 'Filet Mignon', '', 33.95, '2021-03-22 18:45:37', '2021-03-22 18:45:37'),
(2, 74, NULL, 10, NULL, 'Veal Chop', '', 37.95, '2021-03-22 18:45:51', '2021-03-22 18:45:51'),
(2, 75, NULL, 10, NULL, 'Rack of Lamb', '', 45.95, '2021-03-22 18:46:11', '2021-03-22 18:46:11'),
(2, 76, NULL, 11, NULL, 'Baked Potato Loaded', '', 6.95, '2021-03-22 18:47:07', '2021-03-22 18:47:07'),
(2, 77, NULL, 11, NULL, 'Sauteed Asparagus', '', 9.95, '2021-03-22 18:47:25', '2021-03-22 18:47:25'),
(2, 78, NULL, 11, NULL, 'Macaroni &amp; Cheese', '', 9.95, '2021-03-22 18:47:46', '2021-03-22 18:47:46'),
(2, 79, NULL, 12, NULL, 'Cannoli', '', 7.00, '2021-03-22 18:52:38', '2021-03-22 18:52:38'),
(2, 80, NULL, 12, NULL, 'Carrot Cake', '', 8.00, '2021-03-22 18:52:52', '2021-03-22 18:52:52'),
(2, 81, NULL, 12, NULL, 'Chocolate Mousse', '', 7.00, '2021-03-22 18:53:16', '2021-03-22 18:53:16'),
(2, 82, NULL, 12, NULL, 'Chocolate Trilogy', '3 layers: which is going to be dark chocolate, milk chocolate, white chocolate.', 9.95, '2021-03-22 18:53:56', '2021-03-22 18:53:56'),
(2, 83, NULL, 12, NULL, 'Coconut Cake', '', 9.95, '2021-03-22 18:54:17', '2021-03-22 18:54:17'),
(2, 84, NULL, 12, NULL, 'Lemoncello Cake', '', 7.00, '2021-03-22 18:54:41', '2021-03-22 18:54:41'),
(2, 85, NULL, 12, NULL, 'New York Style Cheesecake', '', 7.00, '2021-03-22 18:54:58', '2021-03-22 18:54:58'),
(5, 102, './www-bin/img/10/McMenu1.webp', 14, NULL, 'Crispy Chicken Sandwich Meal', '(790 - 1030 Cal.)', 7.35, '2021-03-24 17:50:36', '2021-03-23 20:04:26'),
(5, 103, './www-bin/img/10/McMenu2.webp', 14, NULL, 'Spicy Chicken Sandwich Meal', '(850 - 1090 Cal.)', 7.58, '2021-03-24 17:51:59', '2021-03-23 20:04:57'),
(5, 104, './www-bin/img/10/McMenu3.webp', 14, NULL, 'Deluxe Crispy Chicken Sandwich Meal', '(850 - 1090 Cal.)', 8.27, '2021-03-24 17:52:34', '2021-03-23 20:05:31'),
(5, 105, './www-bin/img/10/McMenu4.webp', 14, NULL, 'Big Mac Meal', '(560 - 1120 Cal.)', 7.89, '2021-03-24 17:53:05', '2021-03-23 20:05:50'),
(5, 106, './www-bin/img/10/McMenu5.webp', 14, NULL, 'Double Quarter Pounder with Cheese Meal', '(790 - 1350 Cal.)', 9.53, '2021-03-24 17:56:46', '2021-03-23 20:06:29'),
(5, 107, './www-bin/img/10/McMenu6.webp', 14, NULL, '10 Piece McNuggets Meal', '(460 - 1020 Cal.)', 8.38, '2021-03-24 17:57:38', '2021-03-23 20:06:53'),
(5, 108, './www-bin/img/10/McMenu7.webp', 14, NULL, '40 McNuggets', '(1660 Cal.)', 11.72, '2021-03-24 17:57:53', '2021-03-23 20:07:12'),
(5, 109, './www-bin/img/10/McMenu8.webp', 14, NULL, '13 Cookie Tote', 'Comes with 13 cookies. (1820 - 2210 Cal.)', 6.49, '2021-03-24 17:58:02', '2021-03-23 20:07:45'),
(5, 110, './www-bin/img/10/McMenu9.webp', 14, NULL, 'French Fries', '(220 Cal.)', 2.09, '2021-03-24 17:58:21', '2021-03-23 20:07:59'),
(5, 111, './www-bin/img/10/McMenu10.webp', 14, NULL, 'Basket of Fries', '(650 Cal.)', 3.99, '2021-03-24 17:58:33', '2021-03-23 20:08:18'),
(5, 112, './www-bin/img/10/McMenu11.webp', 14, NULL, 'Oreo McFlurry', '(340 Cal.)', 2.52, '2021-03-24 17:58:41', '2021-03-23 20:08:47'),
(5, 113, './www-bin/img/10/McMenu12.webp', 14, NULL, 'Coke', '(290 Cal.)', 1.19, '2021-03-24 17:58:50', '2021-03-23 20:09:02'),
(5, 114, './www-bin/img/10/McMenu13.webp', 15, NULL, 'Crispy Chicken Sandwich Meal', '(790 - 1030 Cal.)', 7.35, '2021-03-24 18:06:08', '2021-03-23 20:10:00'),
(5, 123, './www-bin/img/10/McMenu14.webp', 15, NULL, 'Spicy Chicken Sandwich Meal', '(850 - 1090 Cal.)', 7.58, '2021-03-24 18:06:21', '2021-03-23 20:16:41'),
(5, 124, './www-bin/img/10/McMenu15.webp', 15, NULL, 'Deluxe Crispy Chicken Sandwich Meal', '(850 - 1090 Cal.)', 8.27, '2021-03-24 18:06:37', '2021-03-23 20:26:57'),
(5, 125, './www-bin/img/10/McMenu16.webp', 15, NULL, 'Big Mac Meal', '(560 - 1120 Cal.)', 7.89, '2021-03-24 18:06:48', '2021-03-23 20:27:25'),
(5, 126, './www-bin/img/10/McMenu17.webp', 15, NULL, 'Double Bacon Quarter Pounder with Cheese Meal', '(1220 - 1460 Cal.)', 9.89, '2021-03-24 18:07:06', '2021-03-23 20:28:35'),
(5, 127, './www-bin/img/10/McMenu18.webp', 15, NULL, 'Double Quarter Pounder with Cheese Meal', '(790 - 1350 Cal.)', 9.53, '2021-03-24 18:07:19', '2021-03-23 20:29:15'),
(5, 128, './www-bin/img/10/McMenu19.webp', 15, NULL, 'Quarter Pounder with Cheese Meal', '(840 - 1080 Cal.)', 7.99, '2021-03-24 18:07:34', '2021-03-23 20:29:32'),
(5, 129, './www-bin/img/10/McMenu20.webp', 15, NULL, '2 Cheeseburger Meal', '(620 - 1180 Cal.)', 5.79, '2021-03-24 18:07:46', '2021-03-23 20:29:58'),
(5, 130, './www-bin/img/10/McMenu21.webp', 15, NULL, 'Triple Cheeseburger Meal', '(540 - 1120 Cal.)', 6.88, '2021-03-24 18:08:01', '2021-03-23 20:30:17'),
(5, 132, './www-bin/img/10/McMenu22.webp', 15, NULL, 'Bacon Quarter Pounder with Cheese Meal', '(950 - 1190 Cal.)', 8.79, '2021-03-24 18:08:17', '2021-03-23 20:36:05'),
(5, 133, './www-bin/img/10/McMenu23.webp', 15, NULL, 'Quarter Pounder with Cheese Deluxe Meal', '(950 - 1190 Cal.)', 8.79, '2021-03-24 18:08:53', '2021-03-23 20:37:05'),
(5, 134, './www-bin/img/10/McMenu24.webp', 15, NULL, 'Double Quarter Cheese Deluxe Meal', '(850 - 1430 Cal.)', 10.39, '2021-03-24 18:09:07', '2021-03-23 20:37:45'),
(5, 135, './www-bin/img/10/McMenu25.webp', 15, NULL, 'Homestyle Burger Meal', '(460 - 1040 Cal.)', 7.49, '2021-03-24 18:09:18', '2021-03-23 20:38:15'),
(5, 136, './www-bin/img/10/McMenu26.webp', 15, NULL, '6 Piece McNuggets Meal', '(290 - 870 Cal.)', 6.49, '2021-03-24 18:09:30', '2021-03-23 20:38:42'),
(5, 137, './www-bin/img/10/McMenu27.webp', 15, NULL, '10 Piece McNuggets Meal', '(460 - 1020 Cal.)', 8.38, '2021-03-24 18:09:44', '2021-03-23 20:39:08'),
(5, 138, './www-bin/img/10/McMenu28.webp', 15, NULL, 'Filet O Fish Meal', '(410 - 970 Cal.)', 7.53, '2021-03-24 18:09:55', '2021-03-23 20:39:37'),
(5, 139, './www-bin/img/10/McMenu29.webp', 15, NULL, 'Hot and Spicy McChicken Meal', '(380 - 960 Cal).', 4.89, '2021-03-24 18:10:09', '2021-03-23 20:40:10'),
(5, 140, './www-bin/img/10/McMenu30.webp', 16, NULL, '40 McNuggets', '(1660 Cal.)', 9.99, '2021-03-24 18:13:28', '2021-03-24 16:44:25'),
(5, 141, './www-bin/img/10/McMenu31.webp', 16, NULL, '40 McNuggets &amp; 2 L Fries', '(2640 Cal.)', 13.99, '2021-03-24 18:13:41', '2021-03-24 16:45:52'),
(5, 142, './www-bin/img/10/McMenu32.webp', 16, NULL, '2 Large Fries', '(980 Cal.)', 5.09, '2021-03-24 18:13:58', '2021-03-24 16:46:13'),
(5, 143, './www-bin/img/10/McMenu33.webp', 16, NULL, '13 Cookie Tote', 'Comes with 13 cookies. (1820 - 2210 Cal.)', 4.49, '2021-03-24 18:14:12', '2021-03-24 16:46:57'),
(5, 144, './www-bin/img/10/McMenu34.webp', 17, NULL, 'Hamburger - Happy Meal', '(375 Cal.)', 3.99, '2021-03-24 18:16:36', '2021-03-24 16:47:36'),
(5, 145, './www-bin/img/10/McMenu35.webp', 17, NULL, '4 Piece Chicken McNugget - Happy Meal', '(310 - 440 Cal.)', 4.39, '2021-03-24 18:16:51', '2021-03-24 16:48:08'),
(5, 146, './www-bin/img/10/McMenu36.webp', 18, NULL, 'Premium Roast Coffee', '(0 Cal.)', 0.99, '2021-03-24 18:42:34', '2021-03-24 16:53:05'),
(5, 147, './www-bin/img/10/McMenu37.webp', 18, NULL, 'Decaf Coffee', '(0 Cal.)', 0.99, '2021-03-24 18:43:02', '2021-03-24 16:53:20'),
(5, 148, './www-bin/img/10/McMenu38.webp', 18, NULL, 'Iced Coffee', '(260 Cal.)', 2.39, '2021-03-24 18:43:13', '2021-03-24 16:53:40'),
(5, 149, './www-bin/img/10/McMenu39.webp', 18, NULL, 'Iced Caramel Coffee', '(190 Cal.)', 2.19, '2021-03-24 18:43:29', '2021-03-24 16:54:03'),
(5, 150, './www-bin/img/10/McMenu40.webp', 18, NULL, 'Iced Hazelnut Coffee', '(170 Cal.)', 2.19, '2021-03-24 18:43:48', '2021-03-24 16:54:30'),
(5, 151, './www-bin/img/10/McMenu41.webp', 18, NULL, 'Iced French Vanilla Coffee', '(170 Cal.)', 2.19, '2021-03-24 18:44:04', '2021-03-24 16:54:59'),
(5, 152, './www-bin/img/10/McMenu42.webp', 18, NULL, 'Premium Hot Chocolate', '(370 Cal.)', 2.00, '2021-03-24 18:44:14', '2021-03-24 16:55:20'),
(5, 153, './www-bin/img/10/McMenu43.webp', 18, NULL, 'Caramel Hot Chocolate', '(350 Cal.)', 2.00, '2021-03-24 18:44:27', '2021-03-24 16:55:41'),
(5, 154, './www-bin/img/10/McMenu44.webp', 18, NULL, 'Mocha Frappe', '(420 Cal.)', 2.00, '2021-03-24 18:44:41', '2021-03-24 16:56:12'),
(5, 155, './www-bin/img/10/McMenu45.webp', 18, NULL, 'Caramel Frappe', '(420 Cal.)', 2.00, '2021-03-24 18:44:54', '2021-03-24 16:56:30'),
(5, 156, './www-bin/img/10/McMenu46.webp', 18, NULL, 'Caramel Macchiato', '(260 Cal.)', 2.00, '2021-03-24 18:45:09', '2021-03-24 16:56:53'),
(5, 157, './www-bin/img/10/McMenu47.webp', 18, NULL, 'Iced Caramel Macchiato', '(210 Cal.)', 2.00, '2021-03-24 18:45:21', '2021-03-24 16:57:58'),
(5, 158, './www-bin/img/10/McMenu48.webp', 18, NULL, 'Mocha', '(300 Cal.)', 2.00, '2021-03-24 18:45:32', '2021-03-24 16:58:09'),
(5, 159, './www-bin/img/10/McMenu49.webp', 18, NULL, 'Caramel Mocha', '(280 Cal.)', 2.00, '2021-03-24 18:45:41', '2021-03-24 16:58:24'),
(5, 160, './www-bin/img/10/McMenu50.webp', 18, NULL, 'Nonfat Caramel Mocha', '(220 Cal.)', 2.00, '2021-03-24 18:45:55', '2021-03-24 16:58:51'),
(5, 161, './www-bin/img/10/McMenu51.webp', 18, NULL, 'Iced Mocha', '(280 Cal.)', 2.00, '2021-03-24 18:46:06', '2021-03-24 16:59:07'),
(5, 162, './www-bin/img/10/McMenu52.webp', 18, NULL, 'Iced Nonfat Mocha', '(230 Cal.)', 2.00, '2021-03-24 18:46:16', '2021-03-24 16:59:31'),
(5, 163, './www-bin/img/10/McMenu53.webp', 18, NULL, 'Iced Caramel Mocha', '(230 Cal.)', 2.00, '2021-03-24 18:46:31', '2021-03-24 17:00:08'),
(5, 164, './www-bin/img/10/McMenu54.webp', 18, NULL, 'Iced Nonfat Caramel Mocha', '(200 Cal.)', 2.00, '2021-03-24 18:46:44', '2021-03-24 17:00:31'),
(5, 165, './www-bin/img/10/McMenu55.webp', 18, NULL, 'Strawberry Banana Smoothie', '(190 Cal.)', 2.00, '2021-03-24 18:46:57', '2021-03-24 17:00:54'),
(5, 166, './www-bin/img/10/McMenu51.webp', 18, NULL, 'Mango Pineapple Smoothie', '(200 Cal.)', 2.00, '2021-03-24 18:47:40', '2021-03-24 17:01:15'),
(5, 167, './www-bin/img/10/McMenu52.webp', 18, NULL, 'Latte', '(140 Cal.)', 2.00, '2021-03-24 18:47:51', '2021-03-24 17:01:30'),
(5, 168, './www-bin/img/10/McMenu53.webp', 18, NULL, 'Nonfat Latte', '(80 Cal.)', 2.00, '2021-03-24 18:48:00', '2021-03-24 17:01:44'),
(5, 169, './www-bin/img/10/McMenu54.webp', 18, NULL, 'Caramel Latte', '(250 Cal.)', 2.00, '2021-03-24 18:48:14', '2021-03-24 17:02:00'),
(5, 170, './www-bin/img/10/McMenu55.webp', 18, NULL, 'Hazelnut Latte', '(230 Cal.)', 2.00, '2021-03-24 18:48:26', '2021-03-24 17:02:18'),
(5, 171, './www-bin/img/10/McMenu56.webp', 18, NULL, 'French Vanilla Latte', '(230 Cal.)', 2.00, '2021-03-24 18:48:41', '2021-03-24 17:02:44'),
(5, 172, './www-bin/img/10/McMenu62.webp', 18, NULL, 'Nonfat French Vanilla Latte', '(170 Cal.)', 2.00, '2021-03-24 18:51:26', '2021-03-24 17:03:10'),
(5, 173, './www-bin/img/10/McMenu63.webp', 18, NULL, 'Iced Latte', '(90 Cal.)', 2.00, '2021-03-24 18:51:37', '2021-03-24 17:03:22'),
(5, 174, './www-bin/img/10/McMenu64.webp', 18, NULL, 'Iced Hazelnut Latte', '(170 Cal.)', 2.00, '2021-03-24 18:51:56', '2021-03-24 17:03:41'),
(5, 175, './www-bin/img/10/McMenu65.webp', 18, NULL, 'Iced Caramel Latte', '(180 Cal.)', 2.00, '2021-03-24 18:52:09', '2021-03-24 17:04:06'),
(5, 176, './www-bin/img/10/McMenu66.webp', 18, NULL, 'Iced French Vanilla Latte', '(160 CaL)', 2.00, '2021-03-24 18:52:23', '2021-03-24 17:04:33'),
(5, 177, './www-bin/img/10/McMenu67.webp', 18, NULL, 'Iced Nonfat French Vanilla Latte', '(120 Cal.)', 2.00, '2021-03-24 18:53:37', '2021-03-24 17:04:56'),
(5, 178, './www-bin/img/10/McMenu68.webp', 18, NULL, 'Cappuccino', '(90 Cal.)', 2.00, '2021-03-24 18:53:52', '2021-03-24 17:05:19'),
(5, 179, './www-bin/img/10/McMenu69.webp', 18, NULL, 'Medium Nonfat Cappuccino', '(90 Cal.)', 2.89, '2021-03-24 18:54:05', '2021-03-24 17:05:46'),
(5, 180, './www-bin/img/10/McMenu70.webp', 18, NULL, 'Vanilla Cappuccino', '(190 Cal.)', 2.00, '2021-03-24 18:54:17', '2021-03-24 17:06:05'),
(5, 181, './www-bin/img/10/McMenu71.webp', 18, NULL, 'Medium Nonfat Vanilla Cappuccino', '(180 Cal.)', 2.89, '2021-03-24 18:54:28', '2021-03-24 17:10:27'),
(5, 182, './www-bin/img/10/McMenu72.webp', 18, NULL, 'Hazelnut Cappuccino', '(200 Cal.)', 2.00, '2021-03-24 18:54:42', '2021-03-24 17:10:53'),
(5, 183, './www-bin/img/10/McMenu73.webp', 18, NULL, 'Caramel Cappuccino', '(210 Cal.)', 2.00, '2021-03-24 18:54:52', '2021-03-24 17:11:16'),
(5, 184, './www-bin/img/10/McMenu74.webp', 18, NULL, 'Americano', '(5 Cal.)', 2.00, '2021-03-24 18:54:59', '2021-03-24 17:11:40'),
(5, 185, './www-bin/img/10/McMenu75.webp', 19, NULL, 'McCafe Blueberry Muffin', '(470 Cal.)', 1.99, '2021-03-24 19:24:53', '2021-03-24 17:12:55'),
(5, 186, './www-bin/img/10/McMenu76.webp', 19, NULL, 'McCafe Apple Fritter', '(510 Cal.)', 2.19, '2021-03-24 19:25:04', '2021-03-24 17:13:17'),
(5, 187, './www-bin/img/10/McMenu77.webp', 19, NULL, 'McCafe Cinnamon Roll', '(560 Cal.)', 2.39, '2021-03-24 19:25:12', '2021-03-24 17:13:42'),
(5, 188, './www-bin/img/10/McMenu78.webp', 19, NULL, '1 Cookie', '(140 - 170 Cal.)', 0.59, '2021-03-24 19:25:26', '2021-03-24 17:14:02'),
(5, 189, './www-bin/img/10/McMenu79.webp', 19, NULL, '2 Cookies', '(280 - 340 Cal.)', 1.29, '2021-03-24 19:25:37', '2021-03-24 17:14:19'),
(5, 190, './www-bin/img/10/McMenu80.webp', 19, NULL, '13 Cookie Tote', 'Comes with 13 cookies. (1820 - 2210 Cal.)', 4.49, '2021-03-24 19:25:49', '2021-03-24 17:14:48'),
(5, 191, './www-bin/img/10/McMenu81.webp', 19, NULL, 'Apple Pie', '(250 Cal.)', 1.39, '2021-03-24 19:26:02', '2021-03-24 17:15:06'),
(5, 192, './www-bin/img/10/McMenu82.webp', 19, NULL, '2 Apple Pies', '(480 Cal.)', 1.69, '2021-03-24 19:26:10', '2021-03-24 17:15:35'),
(5, 193, './www-bin/img/10/McMenu83.webp', 19, NULL, '2 Cherry &amp; Creme Pie', '(560 Cal.)', 1.79, '2021-03-24 19:26:21', '2021-03-24 17:15:57'),
(5, 194, './www-bin/img/10/McMenu84.webp', 19, NULL, 'Strawberry &amp; Creme Pie', '(280 Cal.)', 1.39, '2021-03-24 19:26:30', '2021-03-24 17:16:17'),
(5, 195, './www-bin/img/10/McMenu85.webp', 20, NULL, 'Creamer Packet', 'Limit of 3 (20 Cal.)', 0.00, '2021-03-24 19:35:39', '2021-03-24 17:17:53'),
(5, 196, './www-bin/img/10/McMenu86.webp', 20, NULL, 'Sugar Packet', 'Limit of 3 (15 Cal.)', 0.00, '2021-03-24 19:36:02', '2021-03-24 17:18:14'),
(5, 197, './www-bin/img/10/McMenu87.webp', 20, NULL, 'Equal Packet', 'Limit of 3 (0 Cal.)', 0.00, '2021-03-24 19:36:12', '2021-03-24 17:18:35'),
(5, 198, './www-bin/img/10/McMenu88.webp', 20, NULL, 'Pepper Packet', 'Limit of 3 (0 Cal.)', 0.00, '2021-03-24 19:36:24', '2021-03-24 17:19:28'),
(5, 199, './www-bin/img/10/McMenu89.webp', 20, NULL, 'Salt Packet', 'Limit of 3 (0 Cal.)', 0.00, '2021-03-24 19:36:38', '2021-03-24 17:20:09'),
(5, 200, './www-bin/img/10/McMenu90.webp', 20, NULL, 'Splenda Packet', 'Limit of 3 (0 Cal.)', 0.00, '2021-03-24 19:36:47', '2021-03-24 17:20:31'),
(5, 201, './www-bin/img/10/McMenu91.webp', 20, NULL, 'Tangy BBQ Dipping Sauce', 'Limit of 2 (45 Cal.)', 0.00, '2021-03-24 19:36:58', '2021-03-24 17:21:01'),
(5, 202, './www-bin/img/10/McMenu92.webp', 20, NULL, 'Ketchup Packet', 'Limit of 5 (10 Cal.)', 0.00, '2021-03-24 19:37:09', '2021-03-24 17:21:22'),
(5, 203, './www-bin/img/10/McMenu93.webp', 20, NULL, 'Sweet N Sour Dipping Sauce', 'Limit of 2 (50 Cal.)', 0.00, '2021-03-24 19:37:20', '2021-03-24 17:21:50'),
(5, 204, './www-bin/img/10/McMenu94.webp', 20, NULL, 'Honey Packet', 'Limit of 2 (50 Cal.)', 0.00, '2021-03-24 19:37:33', '2021-03-24 17:22:10'),
(5, 205, './www-bin/img/10/McMenu95.webp', 20, NULL, 'Hot Mustard Dipping Sauce', 'Limit of 2 (50 Cal.)', 0.00, '2021-03-24 19:37:46', '2021-03-24 17:22:30'),
(5, 206, './www-bin/img/10/McMenu96.webp', 20, NULL, 'Creamy Ranch Sauce', 'Limit of 2 (110 Cal.)', 0.00, '2021-03-24 19:37:58', '2021-03-24 17:22:50'),
(5, 207, './www-bin/img/10/McMenu97.webp', 20, NULL, 'Mustard Packet', 'Limit of 2 (5 Cal.)', 0.00, '2021-03-24 19:38:14', '2021-03-24 17:23:16'),
(5, 208, './www-bin/img/10/McMenu98.webp', 20, NULL, 'Tangy Honey Mustard', 'Limit of 2 (60 Cal.)', 0.00, '2021-03-24 19:38:56', '2021-03-24 17:23:36'),
(5, 209, './www-bin/img/10/McMenu99.webp', 20, NULL, 'Spicy Buffalo', 'Limit of 2 (30 Cal.)', 0.00, '2021-03-24 19:39:10', '2021-03-24 17:23:55'),
(5, 210, './www-bin/img/10/McMenu100.webp', 20, NULL, 'Butter', 'Limit of 2 (35 Cal.)', 0.00, '2021-03-24 19:39:21', '2021-03-24 17:24:16'),
(5, 211, './www-bin/img/10/McMenu101.webp', 20, NULL, 'Syrup', 'Limit of 2 (190 Cal.)', 0.00, '2021-03-24 19:39:30', '2021-03-24 17:24:32'),
(5, 212, './www-bin/img/10/McMenu102.webp', 20, NULL, 'Lite Mayo Packet', 'Limit of 2 (40 Cal.)', 0.00, '2021-03-24 19:39:47', '2021-03-24 17:24:53'),
(5, 213, './www-bin/img/10/McMenu103.webp', 20, NULL, 'Grape Jam', 'Limit of 2 (40 Cal.)', 0.00, '2021-03-24 19:40:00', '2021-03-24 17:25:16'),
(5, 214, './www-bin/img/10/McMenu104.webp', 20, NULL, 'Strawberry Preserve', 'Limit of 2 (35 Cal.)', 0.00, '2021-03-24 19:40:14', '2021-03-24 17:25:41'),
(5, 215, './www-bin/img/10/McMenu105.webp', 20, NULL, 'Hot Picante Salsa', 'Limit of 2 (5 Cal.)', 0.00, '2021-03-24 19:40:26', '2021-03-24 17:26:02'),
(5, 216, './www-bin/img/10/McMenu106.webp', 20, NULL, 'Mild Picante Salsa', 'Limit of 2 (5 Cal.)', 0.00, '2021-03-24 19:40:35', '2021-03-24 17:26:30'),
(5, 217, './www-bin/img/10/McMenu107.webp', 21, NULL, 'French Fries', '(220 Cal.)', 1.89, '2021-03-24 19:41:47', '2021-03-24 17:27:19'),
(5, 218, './www-bin/img/10/McMenu108.webp', 21, NULL, 'Basket of Fries', '(650 Cal.)', 4.09, '2021-03-24 19:41:55', '2021-03-24 17:27:35'),
(5, 219, './www-bin/img/10/McMenu109.webp', 21, NULL, 'Apple Slices', '(15 Cal.)', 0.50, '2021-03-24 19:42:04', '2021-03-24 17:27:51'),
(5, 220, './www-bin/img/10/McMenu110.webp', 22, NULL, 'Chocolate Shake', '(520 Cal.)', 2.49, '2021-03-24 19:45:53', '2021-03-24 17:28:36'),
(5, 221, './www-bin/img/10/McMenu111.webp', 22, NULL, 'Strawberry Shake', '(500 Cal.)', 2.49, '2021-03-24 21:14:39', '2021-03-24 17:28:58'),
(5, 222, './www-bin/img/10/McMenu112.webp', 22, NULL, 'Vanilla Shake', '(490 Cal.)', 2.49, '2021-03-24 21:14:49', '2021-03-24 17:29:13'),
(5, 223, './www-bin/img/10/McMenu113.webp', 22, NULL, 'M &amp; M McFlurry', '(420 Cal.)', 2.49, '2021-03-24 21:15:01', '2021-03-24 17:29:36'),
(5, 224, './www-bin/img/10/McMenu114.webp', 22, NULL, 'Oreo McFlurry', '(340 Cal.)', 2.49, '2021-03-24 21:15:10', '2021-03-24 17:29:53'),
(5, 225, './www-bin/img/10/McMenu115.webp', 22, NULL, '1 Cookie', '(140 - 170 Cal.)', 0.59, '2021-03-24 21:15:20', '2021-03-24 17:30:07'),
(5, 226, './www-bin/img/10/McMenu116.webp', 22, NULL, '2 Cookies', '(280 - 340 Cal.)', 1.29, '2021-03-24 21:15:28', '2021-03-24 17:30:27'),
(5, 227, './www-bin/img/10/McMenu117.webp', 22, NULL, '13 Cookie Tote', 'Comes with 13 cookies. (1820 - 2210 Cal.)', 4.49, '2021-03-24 21:15:38', '2021-03-24 17:30:48'),
(5, 228, './www-bin/img/10/McMenu118.webp', 22, NULL, 'Apple Pie', '(250 Cal.)', 1.39, '2021-03-24 21:15:50', '2021-03-24 17:31:03'),
(5, 229, './www-bin/img/10/McMenu119.webp', 22, NULL, '2 Apple Pies', '(480 Cal.)', 1.69, '2021-03-24 21:15:59', '2021-03-24 17:31:24'),
(5, 230, './www-bin/img/10/McMenu120.webp', 22, NULL, 'Strawberry &amp; Creme Pie', '(280 Cal.)', 1.39, '2021-03-24 21:16:08', '2021-03-24 17:31:43'),
(5, 231, './www-bin/img/10/McMenu121.webp', 22, NULL, '2 Cherry &amp; Creme Pie', '(560 Cal.)', 1.79, '2021-03-24 21:16:18', '2021-03-24 17:32:12'),
(5, 232, './www-bin/img/10/McMenu122.webp', 23, NULL, 'Coke', '(290 Cal.)', 1.00, '2021-03-24 20:03:02', '2021-03-24 17:32:50'),
(5, 233, './www-bin/img/10/McMenu123.webp', 23, NULL, 'Diet Coke', '(0 Cal.)', 1.00, '2021-03-24 20:03:14', '2021-03-24 17:33:02'),
(5, 234, './www-bin/img/10/McMenu124.webp', 23, NULL, 'Sprite', '(270 Cal.)', 1.00, '2021-03-24 20:03:25', '2021-03-24 17:33:15'),
(5, 235, './www-bin/img/10/McMenu125.webp', 23, NULL, 'Hi-C Orange', '(330 Cal.)', 1.00, '2021-03-24 20:03:38', '2021-03-24 17:33:40'),
(5, 236, './www-bin/img/10/McMenu126.webp', 23, NULL, 'Fanta Orange', '(300 Cal.)', 1.00, '2021-03-24 20:04:48', '2021-03-24 17:33:55'),
(5, 237, './www-bin/img/10/McMenu127.webp', 23, NULL, 'Dr Pepper', '(280 Cal.)', 1.00, '2021-03-24 20:04:58', '2021-03-24 17:34:09'),
(5, 238, './www-bin/img/10/McMenu128.webp', 23, NULL, 'Powerade', '(170 Cal.)', 1.00, '2021-03-24 20:05:13', '2021-03-24 17:34:24'),
(5, 239, './www-bin/img/10/McMenu129.webp', 23, NULL, 'Root Beer', '(320 Cal.)', 1.00, '2021-03-24 20:05:22', '2021-03-24 17:34:38'),
(5, 240, './www-bin/img/10/McMenu130.webp', 23, NULL, 'Minute Maid Orange Juice', '(150 Cal.)', 1.89, '2021-03-24 20:05:35', '2021-03-24 17:34:56'),
(5, 241, './www-bin/img/10/McMenu131.webp', 23, NULL, 'Dasani Bottled Water', '(0 Cal.)', 1.39, '2021-03-24 20:05:53', '2021-03-24 17:35:17'),
(5, 242, './www-bin/img/10/McMenu132.webp', 23, NULL, 'Milk', '(100 Cal.)', 0.99, '2021-03-24 20:06:08', '2021-03-24 17:35:29'),
(5, 243, './www-bin/img/10/McMenu133.webp', 23, NULL, 'Chocolate Milk', '(130 Cal.)', 1.09, '2021-03-24 20:06:18', '2021-03-24 17:35:46'),
(5, 244, './www-bin/img/10/McMenu134.webp', 23, NULL, 'Honest Kids Organic Apple Juice Drink', '(35 Cal.)', 0.99, '2021-03-24 20:06:30', '2021-03-24 17:36:18'),
(5, 245, './www-bin/img/10/McMenu135.webp', 23, NULL, 'Unsweetened Ice Tea', '(0 Cal.)', 1.00, '2021-03-24 20:06:41', '2021-03-24 17:36:35'),
(5, 246, './www-bin/img/10/McMenu136.webp', 23, NULL, 'Sweet Iced Tea', '(170 Cal.)', 1.00, '2021-03-24 20:06:50', '2021-03-24 17:36:50'),
(5, 247, './www-bin/img/10/McMenu137.webp', 24, NULL, 'Crispy Chicken Sandwich', '(470 Cal.)', 3.69, '2021-03-24 20:17:30', '2021-03-24 17:37:32'),
(5, 248, './www-bin/img/10/McMenu138.webp', 24, NULL, 'Spicy Crispy Chicken Sandwich', '(530 Cal.)', 3.89, '2021-03-24 20:17:45', '2021-03-24 17:37:57'),
(5, 249, './www-bin/img/10/McMenu139.webp', 24, NULL, 'Deluxe Crispy Chicken Sandwich', '(530 Cal.)', 4.49, '2021-03-24 20:18:07', '2021-03-24 17:38:20'),
(5, 250, './www-bin/img/10/McMenu140.webp', 24, NULL, 'Big Mac', '(550 Cal.)', 4.69, '2021-03-24 20:18:19', '2021-03-24 17:38:38'),
(5, 251, './www-bin/img/10/McMenu141.webp', 24, NULL, 'Double Bacon Quarter Pounder with Cheese', '(820 Cal.)', 6.08, '2021-03-24 20:19:02', '2021-03-24 17:39:08'),
(5, 252, './www-bin/img/10/McMenu142.webp', 24, NULL, 'Double Quarter Pounder with Cheese', '(720 Cal.)', 6.79, '2021-03-24 20:19:13', '2021-03-24 17:39:33'),
(5, 253, './www-bin/img/10/McMenu143.webp', 24, NULL, 'Quarter Pounder with Cheese', '(520 Cal.)', 4.99, '2021-03-24 20:19:57', '2021-03-24 17:42:22'),
(5, 254, './www-bin/img/10/McMenu144.webp', 24, NULL, 'Cheeseburger', '(300 Cal.)', 1.00, '2021-03-24 20:20:12', '2021-03-24 17:42:41'),
(5, 255, './www-bin/img/10/McMenu145.webp', 24, NULL, 'Double Cheeseburger', '(440 Cal.)', 1.69, '2021-03-24 20:20:26', '2021-03-24 17:43:07'),
(5, 256, './www-bin/img/10/McMenu146.webp', 24, NULL, 'Triple Cheeseburger', '(530 Cal.)', 3.59, '2021-03-24 20:20:53', '2021-03-24 17:43:29'),
(5, 257, './www-bin/img/10/McMenu147.webp', 24, NULL, 'Bacon Quarter Pounder with Cheese', '(630 Cal.)', 6.09, '2021-03-24 20:21:05', '2021-03-24 17:43:53'),
(5, 258, './www-bin/img/10/McMenu148.webp', 24, NULL, 'Quarter Pounder with Cheese Deluxe', '(630 Cal.)', 6.10, '2021-03-24 20:23:11', '2021-03-24 17:44:20'),
(5, 259, './www-bin/img/10/McMenu149.webp', 24, NULL, 'Hamburger', '(250 Cal.)', 0.89, '2021-03-24 20:23:27', '2021-03-24 17:44:38'),
(5, 260, './www-bin/img/10/McMenu150.webp', 24, NULL, 'Double Hamburger', '(340 Cal.)', 1.59, '2021-03-24 20:25:32', '2021-03-24 17:44:52'),
(5, 261, './www-bin/img/10/McMenu151.webp', 24, NULL, 'Double Quarter Cheese Deluxe', '(830 Cal.)', 5.49, '2021-03-24 20:24:11', '2021-03-24 17:45:22'),
(5, 262, './www-bin/img/10/McMenu152.webp', 24, NULL, 'Homestyle Burger', '(430 Cal.)', 4.39, '2021-03-24 20:26:01', '2021-03-24 17:45:47'),
(5, 263, './www-bin/img/10/McMenu153.webp', 24, NULL, 'Bacon McDouble', '(460 Cal.)', 2.39, '2021-03-24 20:26:18', '2021-03-24 17:46:05'),
(5, 264, './www-bin/img/10/McMenu154.webp', 24, NULL, 'McDouble', '(380 Cal.)', 1.89, '2021-03-24 20:26:30', '2021-03-24 17:46:20'),
(5, 265, './www-bin/img/10/McMenu155.webp', 24, NULL, '4 Piece McNuggets', '(170 Cal.)', 1.59, '2021-03-24 20:26:46', '2021-03-24 17:46:41'),
(5, 266, './www-bin/img/10/McMenu156.webp', 24, NULL, '6 Piece McNuggets', '(250 Cal.)', 2.29, '2021-03-24 20:27:14', '2021-03-24 17:46:59'),
(5, 267, './www-bin/img/10/McMenu157.webp', 24, NULL, '10 Piece McNuggets', '(420 Cal.)', 4.19, '2021-03-24 20:27:24', '2021-03-24 17:47:19'),
(5, 268, './www-bin/img/10/McMenu158.webp', 24, NULL, '20 Piece McNuggets', '(830 Cal.)', 6.19, '2021-03-24 20:27:35', '2021-03-24 17:47:45'),
(5, 269, './www-bin/img/10/McMenu159.webp', 24, NULL, '40 McNuggets', '(1660 Cal.)', 9.99, '2021-03-24 20:28:42', '2021-03-24 17:48:10'),
(5, 270, './www-bin/img/10/McMenu160.webp', 24, NULL, 'Filet O Fish', '(380 Cal.)', 4.39, '2021-03-24 20:28:51', '2021-03-24 17:48:25'),
(5, 271, './www-bin/img/10/McMenu161.webp', 24, NULL, 'McChicken', '(400 Cal.)', 1.00, '2021-03-24 20:29:00', '2021-03-24 17:48:40'),
(5, 272, './www-bin/img/10/McMenu162.webp', 24, NULL, 'Hot and Spicy McChicken', '(400 Cal.)', 1.29, '2021-03-24 20:29:11', '2021-03-24 17:49:03'),
(6, 273, './www-bin/img/11/tbellMp1.webp', 25, NULL, 'Beefy 5-Layer Burrito', 'A warm tortilla is covered in a layer of warm nacho cheese and topped with seasoned beef, refried beans, cool sour cream and shredded cheddar cheese. Then it&#039;s wrapped creating a layer of nacho cheese all around the outside of the burrito.', 3.11, '2021-03-30 19:23:07', '2021-03-30 19:15:55'),
(6, 274, './www-bin/img/11/tbellMp2.webp', 25, NULL, 'Chicken Quesadilla', 'An extra flour tortilla filled with melty three-cheese blend, fire grilled chicken, creamy jalape&ntilde;o sauce folded and grilled to perfection.', 4.79, '2021-03-30 19:25:48', '2021-03-30 19:17:01'),
(6, 275, './www-bin/img/11/tbellMp3.webp', 25, NULL, 'Cheesy Gordita Crunch', 'A warm flatbread layered with three-cheese blend and warm nacho cheese sauce and wrapped around a crunchy taco filled with seasoned beef, spicy ranch sauce, crispy lettuce and shredded cheddar cheese.', 4.43, '2021-03-30 19:26:04', '2021-03-30 19:17:54'),
(6, 276, './www-bin/img/11/tbellMp4.webp', 25, NULL, 'Nachos BellGrande', 'A portion of crispy tortilla chips topped with warm nacho cheese sauce, refried beans, seasoned beef, ripe tomatoes and cool sour cream.', 5.03, '2021-03-30 19:26:23', '2021-03-30 19:18:27'),
(6, 277, './www-bin/img/11/tbellMp5.webp', 25, NULL, 'Crunchwrap Supreme', 'A flour tortilla layered with seasoned beef, warm nacho cheese sauce, a crispy tostada shell, crispy lettuce, ripe tomatoes and topped with cool sour cream all wrapped in our signature crunchwrap fold and grilled to go.', 4.67, '2021-03-30 19:26:39', '2021-03-30 19:19:16'),
(6, 278, './www-bin/img/11/tbellMp6.webp', 25, NULL, 'Steak Quesadilla', 'A warm flour tortilla filled with USDA Select Marinated Grilled Steak, Three Cheese Blend, Creamy Jalapeno Sauce, folded over and grilled.', 5.15, '2021-03-30 19:26:51', '2021-03-30 19:19:49'),
(6, 279, './www-bin/img/11/tbellMp7.webp', 25, NULL, 'Cinnabon Delights 12 Pack', 'Warm donut holes filled with Cinnabon&reg; signature cream cheese frosting, and dusted in Makara Cinnamon sugar.', 6.35, '2021-03-30 19:27:03', '2021-03-30 19:20:44'),
(6, 280, './www-bin/img/11/tbellF1.webp', 26, NULL, 'Grilled Cheese Grande Stacker Combo', 'Includes a seasoned beef Grilled Cheese Grande Stacker, two Crunchy Tacos, and a Large fountain drink.', 7.19, '2021-03-30 19:59:48', '2021-03-30 19:38:05'),
(6, 281, './www-bin/img/11/tbellF2.webp', 26, NULL, 'Quesalupa', 'A chewy, flaky Quesalupa shell filled with pepper jack and mozzarella cheeses then topped with seasoned beef, lettuce, real shredded cheddar cheese, reduced-fat sour cream, and tomatoes.', 4.19, '2021-03-30 20:03:13', '2021-03-30 19:39:16'),
(6, 282, './www-bin/img/11/tbellF3.webp', 26, NULL, 'Quesalupa Black Bean', 'A chewy, flaky Quesalupa shell filled with pepper jack and mozzarella cheeses then topped with black beans, lettuce, real shredded cheddar cheese, reduced-fat sour cream, and tomatoes.', 4.19, '2021-03-30 20:04:10', '2021-03-30 19:40:08'),
(6, 283, './www-bin/img/11/tbellF4.webp', 26, NULL, 'Quesalupa Combo', 'Includes a seasoned beef Quesalupa, two Crunchy Tacos, and a Large fountain drink.', 7.19, '2021-03-30 20:04:34', '2021-03-30 19:40:57'),
(6, 284, './www-bin/img/11/tbellF5.webp', 26, NULL, 'Chalupa Cravings Box', 'Includes a seasoned beef Chalupa Supreme, Beefy 5-Layer Burrito, chips &amp; nacho cheese sauce, and a Medium fountain drink.', 6.00, '2021-03-30 20:04:46', '2021-03-30 19:41:50'),
(6, 285, './www-bin/img/11/tbellF6.webp', 26, NULL, 'Spicy Potato Soft Taco', 'A flour tortilla filled with crispy potato bites, lettuce, real shredded cheddar cheese, and creamy chipotle sauce.', 1.20, '2021-03-30 20:04:58', '2021-03-30 19:42:55'),
(6, 286, './www-bin/img/11/tbellF7.webp', 26, NULL, 'Cheesy Fiesta Potatoes', 'Crispy potato bites topped with reduced-fat sour cream and nacho cheese sauce.', 1.91, '2021-03-30 20:05:13', '2021-03-30 19:45:55'),
(6, 287, './www-bin/img/11/tbellF8.webp', 26, NULL, 'Nachos Party Pack', 'Our biggest nachos ever, served in a box and topped with seasoned beef, refried beans, nacho cheese sauce, jalape&ntilde;o peppers, reduced-fat sour cream, tomatoes, and guacamole. Perfect for feeding 3-4 people.', 11.99, '2021-03-30 20:05:26', '2021-03-30 19:47:01'),
(6, 288, './www-bin/img/11/tbellF9.webp', 26, NULL, 'Veggie Nachos Party Pack', 'Our biggest nachos ever, served in a box and topped with refried beans, nacho cheese sauce, jalape&ntilde;o peppers, reduced-fat sour cream, tomatoes, and guacamole. Perfect for feeding 3-4 people.&lt;br&gt;&lt;br&gt;*American Vegetarian Association certi', 11.99, '2021-03-30 20:05:39', '2021-03-30 19:50:55'),
(6, 289, './www-bin/img/11/tbellF10.webp', 26, NULL, 'Wild Strawberry Lemonade Freeze', 'A strawberry-flavored Freeze with a sweet and tart lemonade swirl.', 3.23, '2021-03-30 20:06:33', '2021-03-30 19:52:46'),
(6, 290, './www-bin/img/11/tbellF11.webp', 26, NULL, 'Drinks Party Pack', 'Includes four Medium fountain drinks of your choice.', 4.80, '2021-03-30 20:06:43', '2021-03-30 19:53:32'),
(6, 291, './www-bin/img/11/tbellF12.webp', 26, NULL, 'Taco &amp; Burrito Cravings Pack', 'Includes 4 Crunchy Tacos and 4 Beefy 5-layer Burritos', 14.39, '2021-03-30 20:07:45', '2021-03-30 19:54:36'),
(6, 292, './www-bin/img/11/tbellF13.webp', 26, NULL, 'Taco Party Pack', 'Your choice of 12 of the following tacos: Crunchy or Soft Tacos, Crunchy or Soft Taco Supremes&reg;.', 16.79, '2021-03-30 20:08:02', '2021-03-30 19:55:32'),
(6, 293, './www-bin/img/11/tbellF14.webp', 26, NULL, 'Soft Taco Party Pack', 'Includes 12 Soft Tacos', 16.79, '2021-03-30 20:08:14', '2021-03-30 19:56:17'),
(6, 294, './www-bin/img/11/tbellF15.webp', 26, NULL, 'Supreme Taco Party Pack', 'Your choice of 12 of the following tacos: Crunchy or Soft Taco Supremes&reg;.', 22.79, '2021-03-30 20:08:25', '2021-03-30 19:56:55'),
(6, 295, './www-bin/img/11/tbellF16.webp', 26, NULL, 'Supreme Soft Taco Party Pack', 'Includes 12 Soft Tacos Supreme&reg;.', 22.79, '2021-03-30 20:08:37', '2021-03-30 19:59:15'),
(7, 296, NULL, 0, NULL, 'Turkey Breast Foot Long Regular Sub', 'If a classic is what you crave, then our oven roasted Turkey Breast is the sandwich for you. It&rsquo;s full of flavor and packed with protein. Made-to-order with your choice of crisp veggies, served on our freshly baked bread. ', 7.91, '2021-03-31 20:26:04', '2021-03-31 20:26:04'),
(7, 297, './www-bin/img/12/swayPi1.webp', 27, NULL, 'Turkey Breast Foot Long Regular Sub', 'If a classic is what you crave, then our oven roasted Turkey Breast is the sandwich for you. It&rsquo;s full of flavor and packed with protein. Made-to-order with your choice of crisp veggies, served on our freshly baked bread. ', 7.91, '2021-03-31 20:38:15', '2021-03-31 20:26:51'),
(7, 298, './www-bin/img/12/swayPi2.webp', 27, NULL, 'Meatball Marinara Footlong Regular Sub', 'The Meatball Marinara sandwich is drenched in irresistible marinara sauce, sprinkled with Parmesan cheese, topped with whatever you want (no judgement) and perfectly toasted just for you.', 6.59, '2021-03-31 20:38:29', '2021-03-31 20:28:16'),
(7, 299, './www-bin/img/12/swayPi3.webp', 27, NULL, 'Black Forest Ham Footlong Regular Sub', 'Black Forest Ham sandwich is classic. Just add your own flavor. Oh, and it&#039;s one of eight six-inch Fresh Fit&trade; subs with two servings of crisp veggies on freshly baked bread for under 400 calories.', 6.81, '2021-03-31 20:38:45', '2021-03-31 20:29:27'),
(7, 300, './www-bin/img/12/swayPi4.webp', 27, NULL, 'Tuna Footlong Regular Sub', 'You&rsquo;ll love every bite of our classic tuna sandwich. 100% wild caught tuna blended with creamy mayo then topped with your choice of crisp, fresh veggies. 100% delicious. ', 7.91, '2021-03-31 20:39:02', '2021-03-31 20:31:01'),
(7, 301, './www-bin/img/12/swayPi5.webp', 27, NULL, 'Italian B.M.T. Footlong Regular Sub', 'The Italian B.M.T.&reg; sandwich is filled with Genoa salami, spicy pepperoni, and Black Forest Ham. Big. Meaty. Tasty. Get it. ', 7.91, '2021-03-31 20:39:12', '2021-03-31 20:32:16'),
(7, 302, './www-bin/img/12/swayPi6.webp', 27, NULL, 'Turkey Breast 6 Inch Regular Sub', 'If a classic is what you crave, then our oven roasted Turkey Breast is the sandwich for you. It&rsquo;s full of flavor and packed with protein. Made-to-order with your choice of crisp veggies, served on our freshly baked bread. ', 5.16, '2021-03-31 20:39:27', '2021-03-31 20:33:15'),
(7, 303, './www-bin/img/12/swayPi7.webp', 27, NULL, 'Spicy Italian Footlong Regular Sub', 'Our Spicy Italian sandwich is a combo of pepperoni and Genoa salami. Pile on cheese, crunchy veggies, and finish it with your favorite sauce. Or don&#039;t. Your call. ', 6.59, '2021-03-31 20:39:39', '2021-03-31 20:34:34'),
(7, 304, './www-bin/img/12/swayPi8.webp', 27, NULL, 'Tuna 6 Inch Regular Sub', 'You&rsquo;ll love every bite of our classic tuna sandwich. 100% wild caught tuna blended with creamy mayo then topped with your choice of crisp, fresh veggies. 100% delicious. ', 5.16, '2021-03-31 20:39:52', '2021-03-31 20:35:30'),
(7, 305, './www-bin/img/12/swayPi9.webp', 27, NULL, 'Chicken &amp; Bacon Ranch Footlong Regular Sub', 'The Chicken &amp; Bacon Ranch sandwich is packed with tender all-white meat chicken with seasoning and marinade, savory bacon, melty Monterey cheddar cheese&hellip;and toasted. Aw yeah.', 9.01, '2021-03-31 20:40:07', '2021-03-31 20:36:46'),
(7, 306, './www-bin/img/12/swayPi10.webp', 27, NULL, 'Sweet Onion Teriyaki Footlong Regular Sub', 'Our Sweet Onion Chicken Teriyaki sandwich is stuffed with teriyaki-glazed chicken strips topped with our own fat-free sweet onion sauce. All that, and it&#039;s one of eight 6-inch Fresh Fit&trade; subs with two servings of crisp veggies on freshly baked ', 9.01, '2021-03-31 20:40:18', '2021-03-31 20:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `user_business_cat_main`
--

CREATE TABLE `user_business_cat_main` (
  `bid` bigint(255) DEFAULT NULL,
  `mid` bigint(255) NOT NULL,
  `mcat` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_business_cat_main`
--

INSERT INTO `user_business_cat_main` (`bid`, `mid`, `mcat`, `updated`, `created`) VALUES
(2, 1, 'Appetizers', '2021-02-27 20:26:06', '2021-02-27 20:26:06'),
(2, 2, 'Soups', '2021-02-27 20:29:14', '2021-02-27 20:29:14'),
(2, 5, 'Salads', '2021-03-22 17:58:24', '2021-03-22 17:58:24'),
(2, 6, 'Pasta', '2021-03-22 18:03:27', '2021-03-22 18:03:27'),
(2, 7, 'Chicken', '2021-03-22 18:09:06', '2021-03-22 18:09:06'),
(2, 8, 'Veal', '2021-03-22 18:18:41', '2021-03-22 18:18:41'),
(2, 9, 'Seafood &amp; Fish', '2021-03-22 18:23:25', '2021-03-22 18:23:25'),
(2, 10, 'USDA Prime Steaks', '2021-03-22 18:26:38', '2021-03-22 18:26:38'),
(2, 11, 'Sides', '2021-03-22 18:28:52', '2021-03-22 18:28:52'),
(2, 12, 'Deserts', '2021-03-22 18:52:25', '2021-03-22 18:52:25'),
(5, 14, 'Most Popular', '2021-03-23 20:02:17', '2021-03-23 20:02:17'),
(5, 15, 'Combo Meals', '2021-03-23 20:09:12', '2021-03-23 20:09:12'),
(5, 16, 'Shareables', '2021-03-24 16:43:59', '2021-03-24 16:43:59'),
(5, 17, 'Happy Meal', '2021-03-24 16:47:12', '2021-03-24 16:47:12'),
(5, 18, 'McCaf&eacute;', '2021-03-24 16:52:25', '2021-03-24 16:52:25'),
(5, 19, 'McCaf&eacute; Bakery', '2021-03-24 17:12:25', '2021-03-24 17:12:25'),
(5, 20, 'Condiments', '2021-03-24 17:16:43', '2021-03-24 17:16:43'),
(5, 21, 'Fries, Sides &amp; More', '2021-03-24 17:26:52', '2021-03-24 17:26:52'),
(5, 22, 'Sweets &amp; Treats', '2021-03-24 17:28:10', '2021-03-24 17:28:10'),
(5, 23, 'Beverages', '2021-03-24 17:32:28', '2021-03-24 17:32:28'),
(5, 24, 'Individual Items', '2021-03-24 17:37:09', '2021-03-24 17:37:09'),
(6, 25, 'Popular Items', '2021-03-30 19:13:31', '2021-03-30 19:13:31'),
(6, 26, 'Featured', '2021-03-30 19:37:28', '2021-03-30 19:37:28'),
(7, 27, 'Popular Items', '2021-03-31 20:25:21', '2021-03-31 20:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_business_cat_sub`
--

CREATE TABLE `user_business_cat_sub` (
  `bid` bigint(255) DEFAULT NULL,
  `sid` bigint(255) NOT NULL,
  `scat` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ceated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_business_news`
--

CREATE TABLE `user_business_news` (
  `bid` bigint(255) DEFAULT NULL,
  `news` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_business_news`
--

INSERT INTO `user_business_news` (`bid`, `news`, `updated`, `created`) VALUES
(4, 'Senior level software engineer available for $25/hour. Over 30 years experience and an expert in web apps built in PHP, SQL, HTML, CSS &amp; JavaScript.', '2021-03-22 20:59:33', '2021-03-22 20:59:33'),
(5, 'Stop in today for a McCaf&eacute; ðŸ˜', '2021-03-24 16:50:46', '2021-03-24 16:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_business_orders`
--

CREATE TABLE `user_business_orders` (
  `bid` bigint(255) DEFAULT NULL,
  `aid` bigint(255) DEFAULT NULL,
  `oid` bigint(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `item_count` int(255) DEFAULT NULL,
  `total` decimal(13,2) DEFAULT NULL,
  `tax` decimal(4,3) DEFAULT NULL,
  `completed` int(5) DEFAULT NULL,
  `driver` bigint(255) DEFAULT NULL,
  `dstatus` int(1) NOT NULL DEFAULT 0,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_business_orders`
--

INSERT INTO `user_business_orders` (`bid`, `aid`, `oid`, `item`, `item_count`, `total`, `tax`, `completed`, `driver`, `dstatus`, `updated`, `created`) VALUES
(2, 2, 797036238874, 'Carpaccio', 2, 21.19, 2.290, 0, NULL, 0, '2021-03-01 05:42:47', '2021-02-27 20:33:56'),
(2, 4, 1641012165895, 'Coconut Shrimp', 2, 25.68, 2.780, 4, NULL, 0, '2021-03-06 20:38:09', '2021-02-27 20:40:52'),
(2, 5, 5374122219681, 'Clams Posillipo', 4, 37.90, 4.100, 0, NULL, 1, '2021-03-22 04:02:55', '2021-03-01 05:24:38'),
(5, 2, 254482336615, 'Crispy Chicken Sandwich Meal', 2, 16.48, 1.780, 0, NULL, 0, '2021-03-24 15:07:31', '2021-03-24 15:07:31'),
(2, 10, 8866704558639, 'Carpaccio', 3, 37.95, 4.100, 0, NULL, 0, '2021-03-25 16:25:06', '2021-03-25 16:25:06'),
(2, 10, 8219987723071, 'Chicken Piccata', 2, 33.52, 3.620, 0, NULL, 0, '2021-03-25 17:03:26', '2021-03-25 17:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `aid` bigint(255) DEFAULT NULL,
  `bid` bigint(255) DEFAULT NULL,
  `iid` bigint(255) DEFAULT NULL,
  `sin` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(13,2) DEFAULT NULL,
  `qnty` int(5) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`aid`, `bid`, `iid`, `sin`, `item`, `description`, `price`, `qnty`, `updated`, `created`) VALUES
(2, 2, 4, '', 'French Onion Soup', '', 8.95, 1, '2021-03-07 21:15:23', '2021-03-07 21:15:23'),
(2, 2, 5, 'Please add Tobasco', 'Lobster Bisque Soup', '', 10.95, 2, '2021-03-08 05:52:00', '2021-03-08 05:52:00'),
(10, 5, 127, '', 'Double Quarter Pounder with Cheese Meal', '(790 - 1350 Cal.)', 9.53, 1, '2021-03-24 03:35:55', '2021-03-24 03:35:55'),
(10, 5, 108, '', '40 McNuggets', '(1660 Cal.)', 11.72, 1, '2021-03-24 04:17:55', '2021-03-24 04:17:55'),
(10, 5, 104, 'Pleas add BBQ Sauce', 'Deluxe Crispy Chicken Sandwich Meal', '(850 - 1090 Cal.)', 8.27, 1, '2021-03-24 21:31:23', '2021-03-24 21:31:23'),
(10, 5, 108, '', '40 McNuggets', '(1660 Cal.)', 11.72, 1, '2021-03-24 21:31:42', '2021-03-24 21:31:42'),
(11, 6, 273, '', 'Beefy 5-Layer Burrito', 'A warm tortilla is covered in a layer of warm nacho cheese and topped with seasoned beef, refried beans, cool sour cream and shredded cheddar cheese. Then it&#039;s wrapped creating a layer of nacho cheese all around the outside of the burrito.', 3.11, 1, '2021-03-30 19:27:53', '2021-03-30 19:27:53'),
(11, 6, 275, '', 'Cheesy Gordita Crunch', 'A warm flatbread layered with three-cheese blend and warm nacho cheese sauce and wrapped around a crunchy taco filled with seasoned beef, spicy ranch sauce, crispy lettuce and shredded cheddar cheese.', 4.43, 1, '2021-03-30 19:28:05', '2021-03-30 19:28:05'),
(14, 5, 105, '', 'Big Mac Meal', '(560 - 1120 Cal.)', 7.89, 1, '2021-04-21 20:18:44', '2021-04-21 20:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart_history`
--

CREATE TABLE `user_cart_history` (
  `bid` bigint(255) DEFAULT NULL,
  `aid` bigint(255) DEFAULT NULL,
  `iid` bigint(255) DEFAULT NULL,
  `oid` bigint(255) DEFAULT NULL,
  `sin` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(13,2) DEFAULT NULL,
  `qnty` int(5) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cart_history`
--

INSERT INTO `user_cart_history` (`bid`, `aid`, `iid`, `oid`, `sin`, `item`, `description`, `price`, `qnty`, `updated`, `created`) VALUES
(2, 2, 1, 797036238874, '', 'Carpaccio', 'Thinly sliced prime beef served with spring mix salad, topped with capers, drizzled with white truffle oil. ', 11.95, 1, '2021-02-27 20:33:56', '2021-02-27 20:33:56'),
(2, 2, 6, 797036238874, '', 'Minestrone Soup', 'Vegetable (zucchini, squash, and carrots).', 6.95, 1, '2021-02-27 20:33:56', '2021-02-27 20:33:56'),
(2, 4, 3, 1641012165895, 'Please add cocktail sauce', 'Coconut Shrimp', 'Fresh Shrimp butterflied, dipped in coconut shredding.', 11.95, 1, '2021-02-27 20:40:52', '2021-02-27 20:40:52'),
(2, 4, 5, 1641012165895, '', 'Lobster Bisque Soup', '', 10.95, 1, '2021-02-27 20:40:52', '2021-02-27 20:40:52'),
(2, 5, 2, 5374122219681, '', 'Clams Posillipo', 'Open shell clams pan-seared in white wine and garlic.', 9.95, 2, '2021-03-01 05:24:38', '2021-03-01 05:24:38'),
(2, 5, 6, 5374122219681, 'please add crushed red pepper', 'Minestrone Soup', 'Vegetable (zucchini, squash, and carrots).', 6.95, 2, '2021-03-01 05:24:38', '2021-03-01 05:24:38'),
(5, 2, 102, 254482336615, '', 'Crispy Chicken Sandwich Meal', '(790 - 1030 Cal.)', 7.35, 2, '2021-03-24 15:07:31', '2021-03-24 15:07:31'),
(2, 10, 1, 8866704558639, '', 'Carpaccio', 'Thinly sliced prime beef served with spring mix salad, topped with capers, drizzled with white truffle oil. ', 11.95, 1, '2021-03-25 16:25:06', '2021-03-25 16:25:06'),
(2, 10, 2, 8866704558639, '', 'Clams Posillipo', 'Open shell clams pan-seared in white wine and garlic.', 9.95, 1, '2021-03-25 16:25:06', '2021-03-25 16:25:06'),
(2, 10, 3, 8866704558639, '', 'Coconut Shrimp', 'Fresh Shrimp butterflied, dipped in coconut shredding.', 11.95, 1, '2021-03-25 16:25:06', '2021-03-25 16:25:06'),
(2, 10, 35, 8219987723071, '', 'Chicken Piccata', 'Capers in white wine &amp; lemon sauce.', 14.95, 2, '2021-03-25 17:03:26', '2021-03-25 17:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_driver`
--

CREATE TABLE `user_driver` (
  `aid` bigint(255) DEFAULT NULL,
  `did` bigint(255) NOT NULL,
  `scr` varchar(255) DEFAULT NULL,
  `ali` varchar(255) DEFAULT NULL,
  `dap` int(1) NOT NULL DEFAULT 0,
  `dac` int(1) DEFAULT NULL,
  `dra` int(11) NOT NULL DEFAULT 100,
  `dverified` int(1) DEFAULT NULL,
  `dkey` varchar(255) DEFAULT NULL,
  `dstart` bigint(255) DEFAULT NULL,
  `ssn` varchar(55) DEFAULT NULL,
  `dl` varchar(55) DEFAULT NULL,
  `make` varchar(55) DEFAULT NULL,
  `model` varchar(55) DEFAULT NULL,
  `year` varchar(9) DEFAULT NULL,
  `insurance_provider` varchar(255) DEFAULT NULL,
  `insurance_policy` varchar(255) DEFAULT NULL,
  `dzip` varchar(55) DEFAULT NULL,
  `drate` decimal(13,2) NOT NULL DEFAULT 0.00,
  `dper` int(1) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_driver`
--

INSERT INTO `user_driver` (`aid`, `did`, `scr`, `ali`, `dap`, `dac`, `dra`, `dverified`, `dkey`, `dstart`, `ssn`, `dl`, `make`, `model`, `year`, `insurance_provider`, `insurance_policy`, `dzip`, `drate`, `dper`, `updated`, `created`) VALUES
(7, 1, 'hungry102784', 'hungry102784(0)', 0, NULL, 100, NULL, NULL, NULL, '*******', '*******', '', '', '', '', '', '', 0.00, 0, '2021-03-06 20:45:50', '2021-03-06 20:45:50'),
(2, 2, 'Rex Steakhouse', 'Rex Steakhouse(0)', 1, 1, 100, 1, 'bc087fa975e7c3a0078830e113af1f707577dd2ed0cf74e12309b1b514d85715', 1616011105, '*********', '*********', 'Ferrari', 'Portifino', '2021', 'Farmers', '5TY67654', '77304', 10.00, 0, '2021-03-22 17:49:48', '2021-03-08 18:11:39'),
(9, 3, 'hungry511770', 'hungry511770(0)', 1, 0, 100, 1, '1c1497b5f968007d3a7c159cd0574ec1ecdfaed738b3a89cd38ef5df3f4ba660', 1615927480, '*******', '*******', 'Lamborghini', 'Diablo', '2001', 'Farmers', 'DV23422', '77304', 500.00, 1, '2021-03-16 20:44:40', '2021-03-16 17:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_mtrans`
--

CREATE TABLE `user_mtrans` (
  `aid` bigint(255) DEFAULT NULL,
  `pid` bigint(255) NOT NULL,
  `vtype` int(1) DEFAULT NULL,
  `vamt` decimal(5,2) DEFAULT NULL,
  `vnumber` varchar(25) DEFAULT NULL,
  `vexmo` int(9) DEFAULT NULL,
  `vexyr` int(9) DEFAULT NULL,
  `vccv` int(5) DEFAULT NULL,
  `reciept` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_mtrans`
--

INSERT INTO `user_mtrans` (`aid`, `pid`, `vtype`, `vamt`, `vnumber`, `vexmo`, `vexyr`, `vccv`, `reciept`, `updated`, `created`) VALUES
(2, 1, 1, 0.99, '4114411441144114', 4, 2027, 146, NULL, '2021-03-17 18:28:45', '2021-03-17 18:28:45'),
(2, 2, 3, 99.00, '4114411441144114', 4, 2027, 146, NULL, '2021-03-17 18:29:55', '2021-03-17 18:29:55'),
(2, 3, 2, 99.00, '4114411441144114', 4, 2027, 146, NULL, '2021-03-17 18:30:59', '2021-03-17 18:30:59'),
(2, 4, 1, 0.99, '4414545656778767', 8, 2027, 712, NULL, '2021-03-17 19:57:36', '2021-03-17 19:57:36'),
(2, 5, 3, 99.00, '4414545656778767', 8, 2027, 712, NULL, '2021-03-17 19:58:26', '2021-03-17 19:58:25'),
(2, 6, 2, 99.00, '4414545656778767', 8, 2027, 712, NULL, '2021-03-17 19:59:17', '2021-03-17 19:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `aid` bigint(255) DEFAULT NULL,
  `pid` bigint(255) NOT NULL,
  `pdr` int(11) NOT NULL DEFAULT 80,
  `pic` varchar(255) DEFAULT NULL,
  `ali` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `verified` int(1) DEFAULT NULL,
  `vkey` varchar(255) DEFAULT NULL,
  `vstart` bigint(255) DEFAULT NULL,
  `fname` char(55) DEFAULT NULL,
  `lname` char(55) DEFAULT NULL,
  `add1` varchar(155) DEFAULT NULL,
  `add2` varchar(255) DEFAULT NULL,
  `city` char(55) DEFAULT NULL,
  `state` char(55) DEFAULT NULL,
  `zip` varchar(55) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`aid`, `pid`, `pdr`, `pic`, `ali`, `email`, `verified`, `vkey`, `vstart`, `fname`, `lname`, `add1`, `add2`, `city`, `state`, `zip`, `phone`, `updated`, `created`) VALUES
(2, 1, 80, './www-bin/img/2/IMG_20201124_195650_761.jpg', 'Rex Steakhouse', 'zerofeedelivery@gmail.com', 1, '050781862448e8ce87914120d05d91a4bd4a9e1710ce2d4679881f653292ea5e', 1616011056, 'James', 'Schulze', '13080 HWY 105 #127', '', 'Conroe', 'TX', '77304', '936 588-5058', '2021-04-07 20:35:40', '2021-02-22 21:29:44'),
(4, 2, 80, NULL, 'hungry305273', 'gmx@gmx.com', 0, NULL, NULL, 'Stan', 'Smith', '321 Lakeshore Dr.', '', 'Conroe', 'TX', '77304', '555-555-5555', '2021-02-27 20:42:25', '2021-02-27 20:42:25'),
(5, 3, 80, NULL, 'hungry722205', 'abc@cbs.com', 0, NULL, NULL, 'John', 'Doe', '2121 HWY 105', '', 'Conroe', 'TX', '77304', '936 555-5555', '2021-03-01 03:13:24', '2021-03-01 03:13:24'),
(7, 4, 80, NULL, 'hungry102784', '', 0, 'fc27d2a3e8a2dece608a27869c3f121bfe943f99a8169277a53d79fad2395eb9', NULL, 'Jon', 'Doe', '', '', '', '', '', '', '2021-03-09 21:46:25', '2021-03-06 20:45:29'),
(9, 5, 80, NULL, 'FullStack', 'gemdeals395@gmail.com', 1, 'e5f9ee1b3b9e3a961b138f6056e740a24cc4fb1a1c91af5db9b7bc0fc7c7a42b', 1615927270, 'James', 'Schulze', '13080 HWY 105', '', 'Conroe', 'TX', '77304', '936 320-2695', '2021-03-22 19:05:44', '2021-03-16 14:47:25'),
(10, 6, 80, NULL, 'McDonalds', 'zerofeedelivery@gmail.com', 1, '376c6b0f30438b6270e9dc5b403a4f6fa5c054887f37fd8c424b191c132e635e', 1615927270, 'Stan', 'Ruksford', '2640 N Loop 336', '', 'Conroe', 'TX', '77304', '(936) 756-2000', '2021-03-23 19:34:40', '2021-03-23 19:29:37'),
(11, 7, 80, './www-bin/img/11/tbellLogo1.jpg', 'Taco Bell', 'zerofeedelivery@gmail.com', 1, '0d60839c177f2f4123bf8fd3466be3360754e4e5feaf5c8c7a771646455df084', 1615927270, 'Greg', 'Guerro', '3207 W. Davis', '', 'Conroe', 'TX', '77304', '(936) 788-5353', '2021-03-30 18:08:33', '2021-03-30 17:45:50'),
(12, 8, 80, './www-bin/img/12/swayLogo1.webp', 'Subway', 'zerofeedelivery@gmail.com', 1, '12611d3794a06f93b8f9b42c636c184232c84967dd42e50f5971604eb4410117', 1615927270, 'Elliott', 'Carlman', '3915 W. Davis #120', '', 'Conroe', 'TX', '77304', '936 756-1783', '2021-03-31 20:05:03', '2021-03-31 19:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_ptrans`
--

CREATE TABLE `user_ptrans` (
  `aid` bigint(255) DEFAULT NULL,
  `pid` bigint(255) NOT NULL,
  `id` varchar(255) DEFAULT NULL,
  `intent` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `purchase_description` varchar(255) DEFAULT NULL,
  `purchase_amount` decimal(13,2) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_ptrans`
--

INSERT INTO `user_ptrans` (`aid`, `pid`, `id`, `intent`, `status`, `email`, `payer_id`, `purchase_description`, `purchase_amount`, `updated`, `created`) VALUES
(2, 1, '7GY114712P417102T', 'CAPTURE', 'COMPLETED', 'gemdeals395@gmail.com', 'DM4RHNAANTBTG', 'Profile Verification', 0.99, '2021-03-22 03:42:41', '2021-03-22 03:42:41'),
(2, 2, '96L49891YM273022V', 'CAPTURE', 'COMPLETED', 'gemdeals395@gmail.com', 'DM4RHNAANTBTG', 'Driver Verification', 99.00, '2021-03-22 03:47:15', '2021-03-22 03:47:15'),
(2, 3, '5JJ10560W0180930S', 'CAPTURE', 'COMPLETED', 'gemdeals395@gmail.com', 'DM4RHNAANTBTG', 'Driver Verification', 99.00, '2021-03-22 04:00:00', '2021-03-22 04:00:00'),
(2, 4, '8NV390980H881022A', 'CAPTURE', 'COMPLETED', 'gemdeals395@gmail.com', 'DM4RHNAANTBTG', 'Driver Verification', 99.00, '2021-03-22 04:51:27', '2021-03-22 04:51:27'),
(2, 5, '23P16968UT452313V', 'CAPTURE', 'COMPLETED', 'gemdeals395@gmail.com', 'DM4RHNAANTBTG', 'Driver Verification', 99.00, '2021-03-22 04:59:32', '2021-03-22 04:59:32'),
(2, 6, '7842499845379683E', 'CAPTURE', 'COMPLETED', 'gemdeals395@gmail.com', 'DM4RHNAANTBTG', 'Driver Verification', 99.00, '2021-03-22 16:04:17', '2021-03-22 16:04:17'),
(2, 7, '2S519848KD601444C', 'CAPTURE', 'COMPLETED', 'gemdeals395@gmail.com', 'DM4RHNAANTBTG', 'Driver Verification', 99.00, '2021-03-22 16:06:59', '2021-03-22 16:06:59'),
(2, 8, '1V972297V4653581N', 'CAPTURE', 'COMPLETED', 'gemdeals395@gmail.com', 'DM4RHNAANTBTG', 'Driver Verification', 99.00, '2021-03-22 16:08:43', '2021-03-22 16:08:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_rides`
--

CREATE TABLE `user_rides` (
  `aid` bigint(255) DEFAULT NULL,
  `rid` bigint(255) NOT NULL,
  `driver` bigint(255) DEFAULT NULL,
  `dstatus` int(1) NOT NULL DEFAULT 0,
  `padd1` varchar(155) DEFAULT NULL,
  `padd2` varchar(255) DEFAULT NULL,
  `pcity` char(55) DEFAULT NULL,
  `pstate` char(55) DEFAULT NULL,
  `pzip` varchar(55) DEFAULT NULL,
  `dadd1` varchar(155) DEFAULT NULL,
  `dadd2` varchar(255) DEFAULT NULL,
  `dcity` char(55) DEFAULT NULL,
  `dstate` char(55) DEFAULT NULL,
  `dzip` varchar(55) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_rides`
--

INSERT INTO `user_rides` (`aid`, `rid`, `driver`, `dstatus`, `padd1`, `padd2`, `pcity`, `pstate`, `pzip`, `dadd1`, `dadd2`, `dcity`, `dstate`, `dzip`, `updated`, `created`) VALUES
(2, 55, 2, 1, '13080 HWY 105 #127', '', 'Conroe', 'TX', '77304', '1804 Cripple Creek', '', 'Houston', 'TX', '77581', '2021-03-22 05:13:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_rides_from`
--

CREATE TABLE `user_rides_from` (
  `aid` bigint(255) DEFAULT NULL,
  `rfi` bigint(255) NOT NULL,
  `add1` varchar(155) DEFAULT NULL,
  `add2` varchar(255) DEFAULT NULL,
  `city` char(55) DEFAULT NULL,
  `state` char(55) DEFAULT NULL,
  `zip` varchar(55) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_rides_from`
--

INSERT INTO `user_rides_from` (`aid`, `rfi`, `add1`, `add2`, `city`, `state`, `zip`, `updated`, `created`) VALUES
(2, 1, '13080 HWY 105 #127', '', 'Conroe', 'TX', '77304', '2021-03-10 21:23:30', NULL),
(2, 8, '1804 Cripple Creek', '', 'Houston', 'TX', '77581', '2021-03-12 20:45:21', NULL),
(2, 9, '36 lovegrass on.', '', 'Sunset Valley', 'TX', '78736', '2021-03-12 21:04:47', NULL),
(14, 10, '13080 HWY 105', '', 'Conroe', 'TX', '77304', '2021-04-21 20:23:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_rides_to`
--

CREATE TABLE `user_rides_to` (
  `aid` bigint(255) DEFAULT NULL,
  `rti` bigint(255) NOT NULL,
  `add1` varchar(155) DEFAULT NULL,
  `add2` varchar(255) DEFAULT NULL,
  `city` char(55) DEFAULT NULL,
  `state` char(55) DEFAULT NULL,
  `zip` varchar(55) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_rides_to`
--

INSERT INTO `user_rides_to` (`aid`, `rti`, `add1`, `add2`, `city`, `state`, `zip`, `updated`, `created`) VALUES
(2, 2, '7558 Fireoak', '', 'Austin', 'TX', '78759', '2021-03-10 21:38:24', NULL),
(2, 4, '1804 Cripple Creek', '', 'Houston', 'TX', '77581', '2021-03-12 20:46:54', NULL),
(2, 5, '11800 Brookwood Dr.', '', 'Austin', 'TX', '78750', '2021-03-12 21:05:26', NULL),
(14, 6, '1950 Sunrise', '', 'Pearland', 'TX', '77589', '2021-04-21 20:24:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`adi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_business`
--
ALTER TABLE `user_business`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `user_business_cat_items`
--
ALTER TABLE `user_business_cat_items`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `user_business_cat_main`
--
ALTER TABLE `user_business_cat_main`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `user_business_cat_sub`
--
ALTER TABLE `user_business_cat_sub`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user_driver`
--
ALTER TABLE `user_driver`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `user_mtrans`
--
ALTER TABLE `user_mtrans`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user_ptrans`
--
ALTER TABLE `user_ptrans`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `user_rides`
--
ALTER TABLE `user_rides`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `user_rides_from`
--
ALTER TABLE `user_rides_from`
  ADD PRIMARY KEY (`rfi`);

--
-- Indexes for table `user_rides_to`
--
ALTER TABLE `user_rides_to`
  ADD PRIMARY KEY (`rti`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `adi` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_business`
--
ALTER TABLE `user_business`
  MODIFY `bid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_business_cat_items`
--
ALTER TABLE `user_business_cat_items`
  MODIFY `iid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `user_business_cat_main`
--
ALTER TABLE `user_business_cat_main`
  MODIFY `mid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_business_cat_sub`
--
ALTER TABLE `user_business_cat_sub`
  MODIFY `sid` bigint(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_driver`
--
ALTER TABLE `user_driver`
  MODIFY `did` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_mtrans`
--
ALTER TABLE `user_mtrans`
  MODIFY `pid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `pid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_ptrans`
--
ALTER TABLE `user_ptrans`
  MODIFY `pid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_rides`
--
ALTER TABLE `user_rides`
  MODIFY `rid` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_rides_from`
--
ALTER TABLE `user_rides_from`
  MODIFY `rfi` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_rides_to`
--
ALTER TABLE `user_rides_to`
  MODIFY `rti` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
