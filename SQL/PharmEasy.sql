-- Host: localhost
-- Database: `PharmEasy`

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_fname` varchar(20) NOT NULL,
  `admin_lname` varchar(20) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_fname`, `admin_lname`, `admin_password`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `item_id` int(5) NOT NULL,
  `item_title` varchar(250) NOT NULL,
  `item_brand` varchar(250) NOT NULL,
  `item_cat` varchar(15) NOT NULL,
  `item_details` text NOT NULL,
  `item_tags` varchar(250) NOT NULL,
  `item_image` varchar(250) NOT NULL,
  `item_quantity` int(3) NOT NULL,
  `item_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `item_title`, `item_brand`, `item_cat`, `item_details`, `item_tags`, `item_image`, `item_quantity`, `item_price`) VALUES
(18, 'Omron Blood Pressure Monitor HEM-7121J', 'Omron', 'machine', 'Omran B.P Monitor Hem-7121J is an automatic Blood Pressure monitoring device that is made with IntelliSense Technology for the comfortability of patient’s use. It indicates OK when the user wraps the cuff, ensuring that the right amount of pressure is applied to generate accurate and faster results. Now get precise and consistent measurements at your home so you can keep a track of your health easily.', 'Omron Blood Pressure Monitor HEM-7121J , check', 'Blood Pressure.jpg', 49, 1759),
(22, 'Apollo Pharmacy Digital Flexible Thermometer', 'Apollo', 'machine', 'The fast response Apollo Digital Thermometer has a high accuracy rate (+- .20 F), has an easy to read LCD display and comes with an long battery life of up to 200 hours Features  High Accuracy (+- .2 degree F) Liquid Crystal Display Memory for storing the last measured value Battery Life: Approx 200 hours Fast Response time ( 10-20 sec approx) Alarm Signal on measurement of temperature. Auto Shut-off.', 'Apollo Pharmacy Digital Flexible Thermometer', 'Apollo Pharmacy Digital Flexible Thermometer.jpeg', 50, 100),
(23, 'Romsons Respirometer SH-6082', 'ROMSONS', 'machine', 'Let your lungs do healthy and efficient exercising with Romsons Respirometer SH-6082. It has a tri-ball setup that enables patients to perform breathing exercises on a step-up basis. Its light design is easy to handle and comes with a transparent body so you can keep checking your respiration performance. Now bring home this innovative breathing and lung apparatus and get started with your efficient breathing exercises.', 'Romsons Respirometer SH-6082', 'Romsons Respirometer SH-6082.jpeg', 50, 275),
(24, 'Prega News Pregnancy Test Card', 'Prega', 'machine', 'Get pregnancy results in just 5 minutes with Prega News Pregnancy Test Card. It is specially designed for assessing pregnancy results at the comfort of your home with 3 drops of the urine sample. It comes with a sample well and result window that makes it easy for using and reading the results so you can detect whether or not you are pregnant super quick.', 'Prega News Pregnancy Test Card', 'Prega News Pregnancy Test Card.jpeg', 50, 55),
(26, 'Polymed Pulse Oximeter CMS50C', 'Polymed', 'machine', 'Bring home the Polymed Pulse Oximeter CMS50C and experience the comfort of keeping track of your oxygen saturation levels. It is designed to let you conveniently monitor the SpO2 and pulse rate at the same time.', 'Polymed Pulse Oximeter CMS50C', 'Polymed Pulse Oximeter CMS50C.jpeg', 50, 750),
(30, 'Cetaphil Gentle Skin Cleanser, 250 ml', 'Cetaphil', 'self-care', 'Cetaphil Gentle Skin Cleanser is a mild, soap-free formulation that cleanses without irritation; leaves your skin soft and smooth', 'Cetaphil Gentle Skin Cleanser, 250 ml', 'Cetaphil Gentle Skin Cleanser, 250 ml.jpeg', 50, 563),
(31, 'Colgate Sensitive Plus Anticavity Toothpaste, 70 gm', 'Colgate', 'self-care', 'hat is tooth sensitivity? Tooth sensitivity occurs when the enamel that protects our teeth gets thinner or when gum recession occurs, exposing the underlying surface, the dentin, thus reducing the protection to the root and nerves. When such teeth come in contact with something hot, cold, or sweet, sensations are carried directly to the nerves causing painful sensitivity.  Causes for enamel wear and tear: Aggressive brushing, Tooth grinding, Teeth erosion  Causes for gum erosion: Aggressive brushing, aging, gum disease Colgate sensitive plus toothpaste, with its exclusive Pro-Argin™ technology provides INSTANT and LASTING RELIEF from tooth sensitivity with regular use. It WORKS FROM THE FIRST USE* by helping block open tubules to protect sensitive teeth which build LONG-LASTING PROTECTION against sudden shocks of pain. Use it by applying the toothpaste directly on the sensitive teeth for INSTANT RELIEF.', 'Colgate Sensitive Plus Anticavity Toothpaste, 70 gm', 'Colgate Sensitive Plus Anticavity Toothpaste, 70 gm.png', 46, 65),
(38, 'Himalaya Geriforte Syrup 200 ml', 'Himalaya', 'medicine', 'The natural ingredients in Geriforte work synergistically to prevent free radical-induced oxidative damage to various organs.', 'Himalaya Geriforte Syrup 200 ml', 'Himalaya Geriforte Syrup 200 ml.jpeg', 50, 125),
(43, 'Eno Regular Flavoured Powder, 5 gm', 'Eno', 'medicine', 'Eno helps in neutralizing the acid in your stomach. It gets to work in 6 seconds.', 'Eno Regular Flavoured Powder, 5 gm', 'Eno Regular Flavoured Powder, 5 gm.jpeg', 50, 19),
(44, 'Benadryl Cough Formula Syrup 150 ml', 'Benadryl', 'medicine', 'Benadryl Syrup is used in the treatment of cough, and also, relieves allergy symptoms such as runny nose, stuffy nose, sneezing, watery eyes and congestion or stuffiness', 'Benadryl Cough Formula Syrup 150 ml', 'Benadryl Cough Formula Syrup 150 ml.jpeg', 50, 115);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_quantity` int(3) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `item_id`, `user_id`, `order_quantity`, `order_date`, `order_status`) VALUES
(219, 15, 55, 2, '2024-05-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_Lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_id` int(3) NOT NULL,
  `user_fname` varchar(20) NOT NULL,
  `user_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_Lname`, `email`, `user_password`, `user_id`, `user_fname`, `user_address`) VALUES
('user', 'user@gmail.com', 'user', 55, 'user', 'NO.7, AFS, MAKARPURA, VADODARA, GUJARAT, INDIA - 390014');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;
COMMIT;