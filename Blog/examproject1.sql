-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2017 at 11:47 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `albumimages`
--

CREATE TABLE `albumimages` (
  `id` int(11) NOT NULL,
  `url` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albumimages`
--

INSERT INTO `albumimages` (`id`, `url`) VALUES
(1, 'http://wowslider.com/sliders/demo-31/data1/images/woods1072819.jpg'),
(1, 'https://i.gadgets360cdn.com/large/samsung_galaxy_s8_samsung_display_1485501272554.jpg?output-quality=80'),
(1, 'https://iso.500px.com/wp-content/uploads/2016/04/stock-photo-134534831.jpg'),
(2, 'http://dreamicus.com/data/image/image-04.jpg'),
(2, 'http://farm5.static.flickr.com/4057/4331595911_07200d16b6.jpg'),
(2, 'http://dynamicdrive.com/dynamicindex4/lightbox2/horses.jpg'),
(2, 'http://eeagrants.org/var/eeagrants/storage/images/media/image-bank-images/image-bank-image-7656/173605-1-eng-GB/Image-bank-image-7656_full_page.jpg'),
(2, 'http://www.gettyimages.com/gi-resources/images/Embed/new/embed2.jpg'),
(3, 'https://html5box.com/html5lightbox/images/mountain.jpg'),
(3, 'http://keenthemes.com/preview/metronic/theme/assets/global/plugins/jcrop/demos/demo_files/image3.jpg'),
(3, 'https://ichef-1.bbci.co.uk/news/624/cpsprodpb/1021E/production/_88987066_gettyimages-478405223.jpg'),
(3, 'https://upload.wikimedia.org/wikipedia/commons/8/85/Image-New_Delhi_Lotus.jpg'),
(3, 'https://s3.amazonaws.com/opshead/assets/editorial/2016/03/black%20ops%203%20dlc2%20zombies%20map%20the%20island.jpg'),
(3, 'http://www.gettyimages.com/gi-resources/images/ImageCollections/image1_%20164248809.jpg'),
(4, 'http://i.dailymail.co.uk/i/pix/2016/03/22/13/32738A6E00000578-3504412-image-a-6_1458654517341.jpg'),
(4, 'http://www.australia.com/content/australia/en_us/things-to-do/nature-and-wildlife/_jcr_content/image.adapt.761.HIGH.jpg'),
(4, 'https://www.statoil.com/content/dam/statoil/image/norway/digital-roadmap/digital-roadmap-platform-16-9.png.transform/large/image.png'),
(4, 'http://visuallightbox.com/images/demo/ghost/index_files/vlb_images1/fish.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `albumdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `albumdate`, `title`, `photo`) VALUES
(1, '2017-05-23 23:03:26', 'My First Album', 'https://beebom-redkapmedia.netdna-ssl.com/wp-content/uploads/2016/01/Reverse-Image-Search-Engines-Apps-And-Its-Uses-2016.jpg'),
(2, '2017-05-24 18:23:34', 'My second album', 'https://www.w3schools.com/css/img_forest.jpg'),
(3, '2017-05-24 18:23:34', 'My third album', 'https://www.w3schools.com/css/img_mountains.jpg'),
(4, '2017-05-24 18:23:34', 'My fourth album', 'http://wowslider.com/sliders/demo-34/data1/images/greatwilder1400498.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `title` varchar(50) NOT NULL,
  `content` longtext NOT NULL,
  `summary` longtext NOT NULL,
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`title`, `content`, `summary`, `id`, `photo`) VALUES
('My first blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy', 1, 'https://images.pexels.com/photos/235489/pexels-photo-235489.jpeg?h=350&auto=compress&cs=tinysrgb'),
('My second blog', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised', 2, 'https://cdn.pixabay.com/photo/2016/08/21/23/29/lake-1611044_960_720.jpg'),
('My third blog', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised', 3, 'https://image.freepik.com/free-photo/horizon-texture-aged-scene-weather_1088-693.jpg'),
('My fourth blog', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised', 4, 'http://wowslider.com/sliders/demo-31/data1/images/bench560435.jpg'),
('My fifth blog', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised', 5, 'https://images.pexels.com/photos/292600/pexels-photo-292600.jpeg?h=350&auto=compress&cs=tinysrgb');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `grupa` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `grupa`) VALUES
('haris', 'haris', 2),
('aid', 'aid', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `nickname` varchar(256) NOT NULL,
  `email_address` varchar(256) NOT NULL,
  `web_site` varchar(256) NOT NULL,
  `message` varchar(256) NOT NULL,
  `approved` int(1) NOT NULL,
  `datum` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `content`, `url`) VALUES
(1, 'Telemetric Transmission', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'https://www.youtube.com/watch?v=EdO24YI8el4&list=FLPFtnD_tEbwED0Lg2bbMinA&index=21'),
(2, 'Telemetric Transmission', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'https://www.youtube.com/watch?v=37q5gT0odhA&list=FLPFtnD_tEbwED0Lg2bbMinA&index=24'),
(3, 'Aural Imbalance - 98 State', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using...', 'https://www.youtube.com/watch?v=yJBnJSq9AhY&index=36&list=FLPFtnD_tEbwED0Lg2bbMinA'),
(4, 'Planetary Secrets - Wormhole', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text.', 'https://www.youtube.com/watch?v=cKuoCAGWXl0&index=38&list=FLPFtnD_tEbwED0Lg2bbMinA'),
(5, 'Aural Imbalance - Icefields Of Proxima', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'https://www.youtube.com/watch?v=dcsbA5YBkHQ&list=FLPFtnD_tEbwED0Lg2bbMinA&index=41'),
(6, 'The Future Sound of London', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33', 'https://www.youtube.com/watch?v=5g8a9luSZVI&list=FLPFtnD_tEbwED0Lg2bbMinA&index=46'),
(7, 'Quantic - Time Is The Enemy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960', 'https://www.youtube.com/watch?v=QVxQ1plB95Q&list=FLPFtnD_tEbwED0Lg2bbMinA&index=49'),
(8, 'Marcus Intalex - Jupiter', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isnt anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 ', 'https://www.youtube.com/watch?v=JFJSl3sbVbQ&index=54&list=FLPFtnD_tEbwED0Lg2bbMinA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albumimages`
--
ALTER TABLE `albumimages`
  ADD KEY `id` (`id`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `albumimages`
--
ALTER TABLE `albumimages`
  ADD CONSTRAINT `albumimages_ibfk_1` FOREIGN KEY (`id`) REFERENCES `albums` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
