-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2025 at 05:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_skincanberra`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_about_content`
--

CREATE TABLE `tbl_about_content` (
  `id` int(2) NOT NULL,
  `about_title` varchar(255) DEFAULT NULL,
  `about_details` text DEFAULT NULL,
  `about_image` varchar(200) DEFAULT NULL,
  `sec2_title` varchar(255) DEFAULT NULL,
  `sec2_description` text DEFAULT NULL,
  `sec3_title1` varchar(255) DEFAULT NULL,
  `sec3_details1` text DEFAULT NULL,
  `sec3_image1` varchar(200) DEFAULT NULL,
  `sec3_title2` varchar(255) DEFAULT NULL,
  `sec3_details2` text DEFAULT NULL,
  `sec3_image2` varchar(200) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_about_content`
--

INSERT INTO `tbl_about_content` (`id`, `about_title`, `about_details`, `about_image`, `sec2_title`, `sec2_description`, `sec3_title1`, `sec3_details1`, `sec3_image1`, `sec3_title2`, `sec3_details2`, `sec3_image2`, `update_at`) VALUES
(1, 'About Our Brand', '<p class=\"line-height-36\">At Skin Canberra, we believe beauty starts with&nbsp;<strong>healthy, well-cared</strong>-for&nbsp;<strong>skin</strong>&nbsp;and&nbsp;<strong>hair&nbsp;</strong>. Our goal is to offer treatments that are both&nbsp;<strong>effective</strong>&nbsp;and&nbsp;<strong>gentle</strong>&nbsp;&mdash; helping you feel confident in your own skin every day.</p>\r\n<p class=\"line-height-36\">From rejuvenating&nbsp;<strong>facials</strong>&nbsp;and flawless&nbsp;<strong>makeup</strong>&nbsp;to soothing hair care and precision&nbsp;<strong>laser treatments</strong>, each service is tailored to your needs. We combine expert techniques with&nbsp;<strong>premium, skin-friendly</strong>&nbsp;products to ensure visible, lasting results.</p>\r\n<p class=\"line-height-36\"><strong>Every client is unique</strong>, and so is our approach. We&nbsp;<strong>listen, assess,</strong>&nbsp;and&nbsp;<strong>create</strong>&nbsp;a&nbsp;<strong>personalised plan</strong> that fits your lifestyle and comfort. Step into our calm, welcoming studio and experience beauty done with care, honesty, and precision.</p>', 'about-A0zWnztt.webp', 'Our Story', '<p class=\"line-height-36 mb-5 w-75 mx-auto text-center\">Shikha Beauty Studio began with a simple idea: professional beauty should feel personal. We opened our doors to create a calm, welcoming place where clients get honest advice, tailored treatments and real results &mdash; without the hard sell.</p>', 'Our Mission', 'At Skin Canberra, our mission is to enhance natural beauty through personalised care, expert techniques, and safe, high-quality products. We’re committed to helping every client feel confident, radiant, and comfortable in their own skin — not just for a day, but for the long term.', 'sec-3-Hc1EZxu0.webp', 'Our Vision', 'Our vision is to become a trusted name in beauty and wellness by setting new standards for honest, results-driven treatments. We aim to create a space where self-care meets expertise — blending innovation, compassion, and professionalism to bring out your best self, inside and out.', 'sec-3-eXmHj8iJ.webp', '2025-10-25 08:03:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `address` varchar(400) NOT NULL,
  `added_by` int(5) NOT NULL,
  `update_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `name`, `email`, `password`, `ip_address`, `phone`, `image`, `privilege_id`, `address`, `added_by`, `update_by`, `status`, `created`, `updated`) VALUES
(1, 'laravel7825', 'admin@admin.com', '$2y$12$rfIb3rMql0VAUoF6e.JSoeb91VTN6GC5i6JGvfkK7HZT0JP86pXju', '::1', '2356896589', 'user_1759484555.jpg', 1, 'delhi', 1, 1, 1, '2021-09-06 10:23:19', '2025-10-10 05:59:00'),
(15, 'test1234', 'test@yopmail.com', '$2y$10$fqYWNLFqBT3yt7nCO4xsROQuDPi1Evl74/zTRkNkzlh2k4qVYQ4JG', '::1', '2356897485', 'u_1672132507.jpg', 3, 'delhi', 1, 1, 1, '2022-12-27 09:15:07', '2023-03-05 11:10:42'),
(16, 'test175', 'test175@yopmail.com', '$2y$10$n6uyNrkfB9SHBImdRrCsR.x5sgHFkCCwQtQLODH65CqOasEOrFLBO', '::1', '7865432343', 'u_1672145257.jpg', 3, 'delhi', 1, 1, 1, '2022-12-27 12:47:37', '2023-02-15 10:54:14'),
(17, 'abc', 'abc@yopmail.com', '$2y$10$TbeSFZ0.q5ZSJpfkgnHDiOfsJE0rn29o9L9DiV0PWuYy9SfGwagKi', '::1', '9162925142', 'u_1676480019.jpg', 3, 'ara', 1, 1, 1, '2023-02-14 17:07:38', '2023-02-15 10:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `id` int(11) NOT NULL,
  `main_title` varchar(100) DEFAULT NULL,
  `sub_title` varchar(150) DEFAULT NULL,
  `page` int(11) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`id`, `main_title`, `sub_title`, `page`, `url`, `image`, `status`, `created_at`, `update_at`) VALUES
(2, 'Reveal Your Best Skin, Hair & Confidence', 'Personalized skin and hair care by trusted experts.', 1, NULL, 'banner-k5EhXe6a.webp', 1, '2025-10-23 05:56:09', '2025-11-14 06:38:42'),
(3, 'Beauty & Care Services Designed Just for You', 'From glow-boosting facials to precision haircuts and advanced skin therapies — our professional team delivers personalised treatments with care and cl', 4, NULL, 'banner-xACjIlZw.webp', 1, '2025-10-23 06:22:18', '2025-10-28 02:43:03'),
(4, 'All Your Beauty Needs in One Place', 'From advanced facials to precise hair and brow styling, we bring out the best version of you.', 5, NULL, 'banner-tuyjVLfN.webp', 1, '2025-10-23 06:31:42', '2025-11-04 13:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blg_id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_details` text NOT NULL,
  `blog_image` varchar(255) NOT NULL,
  `blog_url` varchar(255) NOT NULL,
  `related_blogs` varchar(255) NOT NULL,
  `blog_added_by` varchar(255) NOT NULL,
  `blog_cat_id` int(11) NOT NULL,
  `post_date` date NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `blog_status` enum('0','1') NOT NULL,
  `added_at` datetime NOT NULL,
  `modefied_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`blg_id`, `blog_title`, `blog_details`, `blog_image`, `blog_url`, `related_blogs`, `blog_added_by`, `blog_cat_id`, `post_date`, `meta_title`, `meta_description`, `meta_keyword`, `blog_status`, `added_at`, `modefied_at`) VALUES
(1, 'The Most Inspiring Interior Design Of 201688', 'We went down the lane, by the body of the man in black, sodden now from the overnight hail,', 'b_1626281172.jpg', 'the-most-inspiring-interior-design-of-201688', '', 'Admin', 0, '2021-03-23', 'The Most Inspiring Interior Design Of 201685', 'The Most Inspiring Interior Design Of 201685', 'The Most Inspiring Interior Design Of 201685', '1', '2021-07-14 23:10:52', '2021-03-23 17:07:18'),
(2, 'daffodills', 'daffodils daffodils daffodils daffodils', '', 'daffodils ', 'the very much design', 'Admin', 0, '2021-03-23', 'The Most Inspiring Interior Design Of 201685', 'The Most Inspiring Interior Design Of 201685', 'The Most Inspiring Interior Design Of 201685', '1', '2024-03-03 16:46:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cms`
--

CREATE TABLE `tbl_cms` (
  `id` int(11) NOT NULL,
  `page` varchar(100) DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_head` varchar(255) DEFAULT NULL,
  `cms_banner` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `description2` text DEFAULT NULL,
  `description3` text DEFAULT NULL,
  `description4` text DEFAULT NULL,
  `description5` text DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '0-Inactive,1-Active',
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cms`
--

INSERT INTO `tbl_cms` (`id`, `page`, `banner_title`, `banner_head`, `cms_banner`, `description`, `description2`, `description3`, `description4`, `description5`, `status`, `added_at`, `update_at`) VALUES
(5, 'privacy-policy', 'Privacy Policy', '', 'banner-mYAu37Mm.webp', '<h1><strong>Privacy Policy &ndash; SKIN Canberra</strong></h1>\r\n<p>At <strong>SKIN Canberra</strong>, we value your privacy and are committed to protecting your personal information. This policy explains what information we collect, how we use it, and your rights under Australian law.</p>\r\n<hr>\r\n<h3><strong>1. What Information We Collect</strong></h3>\r\n<p>We may collect:</p>\r\n<ul>\r\n<li>Your name, contact details, and date of birth.</li>\r\n<li>Appointment and service history.</li>\r\n<li>Health information (such as allergies or skin conditions) when necessary for treatments.</li>\r\n<li>Note:- Any video or pictures collected for advertisement will be posted after verbal consent only and will be marked as consented when posting online.</li>\r\n</ul>\r\n<hr>\r\n<h3><strong>2. How We Use Your Information</strong></h3>\r\n<p>We use your information to:</p>\r\n<ul>\r\n<li>Book and manage your appointments.</li>\r\n<li>Provide safe and effective treatments.</li>\r\n<li>Send reminders and updates about your bookings.</li>\r\n<li>Improve our services and customer experience.</li>\r\n<li>Comply with legal requirements.</li>\r\n</ul>\r\n<hr>\r\n<h3><strong>3. How We Protect Your Information</strong></h3>\r\n<p>Your personal data is stored securely. We do not share your information with third parties unless required by law.</p>\r\n<hr>\r\n<h3><strong>4. Marketing and Communication</strong></h3>\r\n<p>We may send you promotional offers or updates via email or SMS. You can opt out at any time by clicking &ldquo;unsubscribe&rdquo; or contacting us directly.</p>\r\n<hr>\r\n<h3><strong>5. Cookies and Website Analytics</strong></h3>\r\n<p>Our website may use cookies to improve your experience and track analytics. You can disable cookies in your browser settings.</p>\r\n<hr>\r\n<h3><strong>6. Your Rights</strong></h3>\r\n<p>You have the right to:</p>\r\n<ul>\r\n<li>Access the personal information we hold about you.</li>\r\n<li>Request corrections or updates.</li>\r\n<li>Ask us to delete your information where legally possible.</li>\r\n</ul>\r\n<p>To exercise these rights, please contact us using the details below.</p>\r\n<hr>\r\n<h3><strong>7. Changes to This Policy</strong></h3>\r\n<p>We may update this Privacy Policy from time to time. Any changes will be posted on our website.</p>\r\n<hr>\r\n<h3><strong>8. Contact Us</strong></h3>\r\n<p>If you have questions about this policy or your personal information, contact us at:</p>\r\n<ul>\r\n<li><strong>Email:</strong> [admin@skincanberra.com.au]</li>\r\n<li><strong>Phone:</strong> [0410038603]</li>\r\n<li><strong>Address:</strong> [Unit 1/46 Jenke Circuit, Kambah, ACT 2902]</li>\r\n</ul>', '', '', '', '', 1, '2024-10-20 06:21:31', '2025-11-01 04:10:04'),
(7, 'terms-condition', 'Terms & Conditions', '', 'banner-Tpq98Soq.webp', '<h1><strong>Terms and Conditions | SKIN Canberra</strong></h1>\r\n<p>Welcome to <strong>SKIN Canberra</strong>, your trusted Australian hair and skin clinic. By using our website or booking our services, you agree to these Terms and Conditions. Please read them carefully.</p>\r\n<hr>\r\n<h2><strong>1. Introduction</strong></h2>\r\n<p>These Terms govern your use of our website and services. If you do not agree, please discontinue use immediately.</p>\r\n<hr>\r\n<h2><strong>2. Definitions</strong></h2>\r\n<ul>\r\n<li><strong>We / Us / Our</strong>: SKIN Canberra, the hair and skin clinic/salon.</li>\r\n<li><strong>You / Client / Customer</strong>: Any person using our website or services.</li>\r\n<li><strong>Services</strong>: Hair treatments, skin treatments, beauty services, and related products.</li>\r\n</ul>\r\n<hr>\r\n<h2><strong>3. Compliance with Australian Law</strong></h2>\r\n<p>We operate under:</p>\r\n<ul>\r\n<li><strong>Australian Consumer Law (ACL)</strong> &ndash; https://www.accc.gov.au/business/business-rights-protections/australian-consumer-law.</li>\r\n<li><strong>Privacy Act 1988 (Cth)</strong> &ndash; #privacy-policy.</li>\r\n<li><strong>Work Health and Safety Act 2011</strong> &ndash; Ensuring safe service delivery.</li>\r\n</ul>\r\n<hr>\r\n<h2><strong>4. Booking and Appointments</strong></h2>\r\n<ul>\r\n<li>Book online, by phone, or in person.</li>\r\n<li>Deposits may be required.</li>\r\n<li>Late arrivals may shorten service time.</li>\r\n<li><strong>Cancellation Policy</strong>: Minimum 24 hours&rsquo; notice required to avoid deposit loss, only for medical reasons. Sick certificate needed to get full deposit to be refunded.</li>\r\n</ul>\r\n<hr>\r\n<h2><strong>5. Pricing and Payment</strong></h2>\r\n<ul>\r\n<li>Prices are in <strong>AUD</strong> and include GST.</li>\r\n<li>We may update prices without notice.</li>\r\n<li>Accepted payments: Cash, EFTPOS, Credit/Debit Cards, Digital Wallets.</li>\r\n</ul>\r\n<hr>\r\n<h2><strong>6. Refunds and Guarantees</strong></h2>\r\n<ul>\r\n<li>Under <strong>ACL</strong>, you are entitled to remedies for services not provided with due care.</li>\r\n<li>No refunds for change of mind.</li>\r\n<li>Contact us within <strong>7 days</strong> for service concerns.</li>\r\n<li>#refund-policy.</li>\r\n</ul>\r\n<hr>\r\n<h2><strong>7. Health and Safety</strong></h2>\r\n<ul>\r\n<li>Disclose allergies, medical conditions, or sensitivities before treatment.</li>\r\n<li>We follow strict hygiene protocols.</li>\r\n<li>We are not liable for adverse reactions if full disclosure is not provided.</li>\r\n</ul>\r\n<hr>\r\n<h2><strong>8. Privacy Policy</strong></h2>\r\n<p>We collect personal information for bookings and service delivery. Your data is secure and never shared except as required by law.<br>#privacy-policy.</p>\r\n<hr>\r\n<h2><strong>9. Intellectual Property</strong></h2>\r\n<p>All website content, including images, text, and branding, is our property. Unauthorized use is prohibited.</p>\r\n<hr>\r\n<h2><strong>10. Limitation of Liability</strong></h2>\r\n<p>We are not liable for indirect or consequential damages. Liability is limited to the extent permitted by Australian law.</p>\r\n<hr>\r\n<h2><strong>11. Changes to Terms</strong></h2>\r\n<p>We may update these Terms anytime. Continued use of our website or services means you accept the changes.</p>\r\n<hr>\r\n<h2><strong>12. Contact Us</strong></h2>\r\n<ul>\r\n<li><strong>Email:</strong> [admin@skincanberra.com]</li>\r\n<li><strong>Phone:</strong> [0410038603]</li>\r\n<li><strong>Address:</strong> [Unit 1/46 Jenke Circuit, Kambah, ACT, 2902]</li>\r\n</ul>\r\n<hr>\r\n<h3><strong>SEO Enhancements</strong></h3>\r\n<ul>\r\n<li>Keywords: <em>Australian hair salon terms and conditions</em>, <em>skin clinic policies</em>, <em>beauty service booking rules</em>, <em>refund policy for salons</em>.</li>\r\n<li>Internal links:\r\n<ul>\r\n<li><strong>Privacy Policy</strong></li>\r\n<li><strong>Refund Policy</strong></li>\r\n<li><strong>COVID-19 Safety Guidelines</strong></li>\r\n</ul>\r\n</li>\r\n<li>Add schema markup for <strong>Local Business</strong> and <strong>FAQ</strong> for better Google visibility.</li>\r\n</ul>', '', '', '', '', 1, '2025-01-19 11:14:39', '2025-10-30 07:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(2) NOT NULL,
  `vid` varchar(150) DEFAULT NULL,
  `sv_id` varchar(150) DEFAULT NULL,
  `submit_from` enum('BA','CU','HD') NOT NULL COMMENT 'BA- Book Appoiment, CU-Contact Us, HD - Header',
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '0-new,1-Approve,2-Disapprove,3-Cancel',
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `vid`, `sv_id`, `submit_from`, `fname`, `lname`, `email`, `country`, `phone`, `date`, `time`, `message`, `status`, `added_at`, `update_at`) VALUES
(1, NULL, '6,5', 'HD', 'raj', 'guddu', 'admin@admin.com', 'IN', '1234567890', '2025-10-16', '04:33:00', 'hi', 3, '2025-10-16 16:58:57', NULL),
(2, NULL, '5,4,3,2', 'HD', 'Raj', 'Guddu', 'test152@yopmail.com', 'US', '1234567890', '2025-10-16', '14:00:00', 'test message', 1, '2025-10-16 17:01:19', NULL),
(3, '17,18,19,20', NULL, 'BA', 'raj', 'guddu', 'test152@yopmail.com', 'US', '9162925142', '2025-10-16', '08:00:00', 'test message', 1, '2025-10-16 17:42:49', NULL),
(4, NULL, '13,12,11,10', 'HD', 'raj', 'guddu', 'test152@yopmail.com', 'US', '1234567890', '2025-10-14', '09:00:00', 'test', 0, '2025-10-17 06:30:18', NULL),
(5, '39,40,41', NULL, 'BA', 'Dipanshu', 'Chauhan', 'admin@admin.com', 'IN', '7428401993', '1970-01-01', '01:20:00', 'hello', 0, '2025-10-20 21:55:51', NULL),
(6, '18,19,20', NULL, 'BA', 'Dipanshu', 'Chauhan', 'getdipanshu@gmail.com', 'IN', '7428401993', '1970-01-01', '00:00:00', 'hello', 0, '2025-10-20 21:58:42', NULL),
(7, NULL, '13,10,2', 'HD', 'Sanjeev', 'Kumar', '', 'IN', '9354727012', '2025-10-22', '11:00:00', 'Hello please book me in ', 0, '2025-10-20 22:00:03', NULL),
(8, NULL, '12,11', 'HD', 'Dipanshu', 'Chauhan', 'getdipanshu@gmail.com', 'US', '7428401993', '2025-10-16', '05:11:00', 'hello', 0, '2025-10-20 22:05:09', NULL),
(9, NULL, '3,2', 'HD', 'Dipanshu', 'Chauhan', 'getdipanshu@gmail.com', 'IN', '7428401993', '2025-10-22', '05:18:00', 'hello', 0, '2025-10-20 22:17:24', NULL),
(10, NULL, '16,5,4', 'HD', 'test', 'test', 'applyjhandubaam@yahoo.com', 'AU', '451270383', '2025-11-06', '12:33:00', 'TEST\r\nadsfg nbsfv\r\n', 1, '2025-11-04 14:49:50', NULL),
(11, NULL, '3', 'HD', 'Jane', 'Golmes', '', 'AU', '431592592', '2025-11-12', '10:00:00', '', 0, '2025-11-11 07:34:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(64) NOT NULL DEFAULT '',
  `countries_iso_code` varchar(2) NOT NULL,
  `countries_isd_code` varchar(7) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`countries_id`, `countries_name`, `countries_iso_code`, `countries_isd_code`, `status`) VALUES
(1, 'Afghanistan', 'AF', '93', 1),
(2, 'Albania', 'AL', '355', 1),
(3, 'Algeria', 'DZ', '213', 1),
(4, 'American Samoa', 'AS', '1-684', 1),
(5, 'Andorra', 'AD', '376', 1),
(6, 'Angola', 'AO', '244', 1),
(7, 'Anguilla', 'AI', '1-264', 1),
(8, 'Antarctica', 'AQ', '672', 1),
(9, 'Antigua and Barbuda', 'AG', '1-268', 1),
(10, 'Argentina', 'AR', '54', 1),
(11, 'Armenia', 'AM', '374', 1),
(12, 'Aruba', 'AW', '297', 1),
(13, 'Australia', 'AU', '61', 1),
(14, 'Austria', 'AT', '43', 1),
(15, 'Azerbaijan', 'AZ', '994', 1),
(16, 'Bahamas', 'BS', '1-242', 1),
(17, 'Bahrain', 'BH', '973', 1),
(18, 'Bangladesh', 'BD', '880', 1),
(19, 'Barbados', 'BB', '1-246', 1),
(20, 'Belarus', 'BY', '375', 1),
(21, 'Belgium', 'BE', '32', 1),
(22, 'Belize', 'BZ', '501', 1),
(23, 'Benin', 'BJ', '229', 1),
(24, 'Bermuda', 'BM', '1-441', 1),
(25, 'Bhutan', 'BT', '975', 1),
(26, 'Bolivia', 'BO', '591', 1),
(27, 'Bosnia and Herzegowina', 'BA', '387', 1),
(28, 'Botswana', 'BW', '267', 1),
(29, 'Bouvet Island', 'BV', '47', 1),
(30, 'Brazil', 'BR', '55', 1),
(31, 'British Indian Ocean Territory', 'IO', '246', 1),
(32, 'Brunei Darussalam', 'BN', '673', 1),
(33, 'Bulgaria', 'BG', '359', 1),
(34, 'Burkina Faso', 'BF', '226', 1),
(35, 'Burundi', 'BI', '257', 1),
(36, 'Cambodia', 'KH', '855', 1),
(37, 'Cameroon', 'CM', '237', 1),
(38, 'Canada', 'CA', '1', 1),
(39, 'Cape Verde', 'CV', '238', 1),
(40, 'Cayman Islands', 'KY', '1-345', 1),
(41, 'Central African Republic', 'CF', '236', 1),
(42, 'Chad', 'TD', '235', 1),
(43, 'Chile', 'CL', '56', 1),
(44, 'China', 'CN', '86', 1),
(45, 'Christmas Island', 'CX', '61', 1),
(46, 'Cocos (Keeling) Islands', 'CC', '61', 1),
(47, 'Colombia', 'CO', '57', 1),
(48, 'Comoros', 'KM', '269', 1),
(49, 'Congo Democratic Republic of', 'CG', '242', 1),
(50, 'Cook Islands', 'CK', '682', 1),
(51, 'Costa Rica', 'CR', '506', 1),
(52, 'Cote D\'Ivoire', 'CI', '225', 1),
(53, 'Croatia', 'HR', '385', 1),
(54, 'Cuba', 'CU', '53', 1),
(55, 'Cyprus', 'CY', '357', 1),
(56, 'Czech Republic', 'CZ', '420', 1),
(57, 'Denmark', 'DK', '45', 1),
(58, 'Djibouti', 'DJ', '253', 1),
(59, 'Dominica', 'DM', '1-767', 1),
(60, 'Dominican Republic', 'DO', '1-809', 1),
(61, 'Timor-Leste', 'TL', '670', 1),
(62, 'Ecuador', 'EC', '593', 1),
(63, 'Egypt', 'EG', '20', 1),
(64, 'El Salvador', 'SV', '503', 1),
(65, 'Equatorial Guinea', 'GQ', '240', 1),
(66, 'Eritrea', 'ER', '291', 1),
(67, 'Estonia', 'EE', '372', 1),
(68, 'Ethiopia', 'ET', '251', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', '500', 1),
(70, 'Faroe Islands', 'FO', '298', 1),
(71, 'Fiji', 'FJ', '679', 1),
(72, 'Finland', 'FI', '358', 1),
(73, 'France', 'FR', '33', 1),
(75, 'French Guiana', 'GF', '594', 1),
(76, 'French Polynesia', 'PF', '689', 1),
(77, 'French Southern Territories', 'TF', NULL, 1),
(78, 'Gabon', 'GA', '241', 1),
(79, 'Gambia', 'GM', '220', 1),
(80, 'Georgia', 'GE', '995', 1),
(81, 'Germany', 'DE', '49', 1),
(82, 'Ghana', 'GH', '233', 1),
(83, 'Gibraltar', 'GI', '350', 1),
(84, 'Greece', 'GR', '30', 1),
(85, 'Greenland', 'GL', '299', 1),
(86, 'Grenada', 'GD', '1-473', 1),
(87, 'Guadeloupe', 'GP', '590', 1),
(88, 'Guam', 'GU', '1-671', 1),
(89, 'Guatemala', 'GT', '502', 1),
(90, 'Guinea', 'GN', '224', 1),
(91, 'Guinea-bissau', 'GW', '245', 1),
(92, 'Guyana', 'GY', '592', 1),
(93, 'Haiti', 'HT', '509', 1),
(94, 'Heard Island and McDonald Islands', 'HM', '011', 1),
(95, 'Honduras', 'HN', '504', 1),
(96, 'Hong Kong', 'HK', '852', 1),
(97, 'Hungary', 'HU', '36', 1),
(98, 'Iceland', 'IS', '354', 1),
(99, 'India', 'IN', '91', 1),
(100, 'Indonesia', 'ID', '62', 1),
(101, 'Iran (Islamic Republic of)', 'IR', '98', 1),
(102, 'Iraq', 'IQ', '964', 1),
(103, 'Ireland', 'IE', '353', 1),
(104, 'Israel', 'IL', '972', 1),
(105, 'Italy', 'IT', '39', 1),
(106, 'Jamaica', 'JM', '1-876', 1),
(107, 'Japan', 'JP', '81', 1),
(108, 'Jordan', 'JO', '962', 1),
(109, 'Kazakhstan', 'KZ', '7', 1),
(110, 'Kenya', 'KE', '254', 1),
(111, 'Kiribati', 'KI', '686', 1),
(112, 'Korea, Democratic People\'s Republic of', 'KP', '850', 1),
(113, 'South Korea', 'KR', '82', 1),
(114, 'Kuwait', 'KW', '965', 1),
(115, 'Kyrgyzstan', 'KG', '996', 1),
(116, 'Lao People\'s Democratic Republic', 'LA', '856', 1),
(117, 'Latvia', 'LV', '371', 1),
(118, 'Lebanon', 'LB', '961', 1),
(119, 'Lesotho', 'LS', '266', 1),
(120, 'Liberia', 'LR', '231', 1),
(121, 'Libya', 'LY', '218', 1),
(122, 'Liechtenstein', 'LI', '423', 1),
(123, 'Lithuania', 'LT', '370', 1),
(124, 'Luxembourg', 'LU', '352', 1),
(125, 'Macao', 'MO', '853', 1),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', '389', 1),
(127, 'Madagascar', 'MG', '261', 1),
(128, 'Malawi', 'MW', '265', 1),
(129, 'Malaysia', 'MY', '60', 1),
(130, 'Maldives', 'MV', '960', 1),
(131, 'Mali', 'ML', '223', 1),
(132, 'Malta', 'MT', '356', 1),
(133, 'Marshall Islands', 'MH', '692', 1),
(134, 'Martinique', 'MQ', '596', 1),
(135, 'Mauritania', 'MR', '222', 1),
(136, 'Mauritius', 'MU', '230', 1),
(137, 'Mayotte', 'YT', '262', 1),
(138, 'Mexico', 'MX', '52', 1),
(139, 'Micronesia, Federated States of', 'FM', '691', 1),
(140, 'Moldova', 'MD', '373', 1),
(141, 'Monaco', 'MC', '377', 1),
(142, 'Mongolia', 'MN', '976', 1),
(143, 'Montserrat', 'MS', '1-664', 1),
(144, 'Morocco', 'MA', '212', 1),
(145, 'Mozambique', 'MZ', '258', 1),
(146, 'Myanmar', 'MM', '95', 1),
(147, 'Namibia', 'NA', '264', 1),
(148, 'Nauru', 'NR', '674', 1),
(149, 'Nepal', 'NP', '977', 1),
(150, 'Netherlands', 'NL', '31', 1),
(151, 'Netherlands Antilles', 'AN', '599', 1),
(152, 'New Caledonia', 'NC', '687	', 1),
(153, 'New Zealand', 'NZ', '64', 1),
(154, 'Nicaragua', 'NI', '505', 1),
(155, 'Niger', 'NE', '227', 1),
(156, 'Nigeria', 'NG', '234', 1),
(157, 'Niue', 'NU', '683', 1),
(158, 'Norfolk Island', 'NF', '672', 1),
(159, 'Northern Mariana Islands', 'MP', '1-670', 1),
(160, 'Norway', 'NO', '47', 1),
(161, 'Oman', 'OM', '968', 1),
(162, 'Pakistan', 'PK', '92', 1),
(163, 'Palau', 'PW', '680', 1),
(164, 'Panama', 'PA', '507', 1),
(165, 'Papua New Guinea', 'PG', '675', 1),
(166, 'Paraguay', 'PY', '595', 1),
(167, 'Peru', 'PE', '51', 1),
(168, 'Philippines', 'PH', '63', 1),
(169, 'Pitcairn', 'PN', '64', 1),
(170, 'Poland', 'PL', '48', 1),
(171, 'Portugal', 'PT', '351', 1),
(172, 'Puerto Rico', 'PR', '1-787', 1),
(173, 'Qatar', 'QA', '974', 1),
(174, 'Reunion', 'RE', '262', 1),
(175, 'Romania', 'RO', '40', 1),
(176, 'Russian Federation', 'RU', '7', 1),
(177, 'Rwanda', 'RW', '250', 1),
(178, 'Saint Kitts and Nevis', 'KN', '1-869', 1),
(179, 'Saint Lucia', 'LC', '1-758', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', '1-784', 1),
(181, 'Samoa', 'WS', '685', 1),
(182, 'San Marino', 'SM', '378', 1),
(183, 'Sao Tome and Principe', 'ST', '239', 1),
(184, 'Saudi Arabia', 'SA', '966', 1),
(185, 'Senegal', 'SN', '221', 1),
(186, 'Seychelles', 'SC', '248', 1),
(187, 'Sierra Leone', 'SL', '232', 1),
(188, 'Singapore', 'SG', '65', 1),
(189, 'Slovakia (Slovak Republic)', 'SK', '421', 1),
(190, 'Slovenia', 'SI', '386', 1),
(191, 'Solomon Islands', 'SB', '677', 1),
(192, 'Somalia', 'SO', '252', 1),
(193, 'South Africa', 'ZA', '27', 1),
(194, 'South Georgia and the South Sandwich Islands', 'GS', '500', 1),
(195, 'Spain', 'ES', '34', 1),
(196, 'Sri Lanka', 'LK', '94', 1),
(197, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '290', 1),
(198, 'St. Pierre and Miquelon', 'PM', '508', 1),
(199, 'Sudan', 'SD', '249', 1),
(200, 'Suriname', 'SR', '597', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', '47', 1),
(202, 'Swaziland', 'SZ', '268', 1),
(203, 'Sweden', 'SE', '46', 1),
(204, 'Switzerland', 'CH', '41', 1),
(205, 'Syrian Arab Republic', 'SY', '963', 1),
(206, 'Taiwan', 'TW', '886', 1),
(207, 'Tajikistan', 'TJ', '992', 1),
(208, 'Tanzania, United Republic of', 'TZ', '255', 1),
(209, 'Thailand', 'TH', '66', 1),
(210, 'Togo', 'TG', '228', 1),
(211, 'Tokelau', 'TK', '690', 1),
(212, 'Tonga', 'TO', '676', 1),
(213, 'Trinidad and Tobago', 'TT', '1-868', 1),
(214, 'Tunisia', 'TN', '216', 1),
(215, 'Turkey', 'TR', '90', 1),
(216, 'Turkmenistan', 'TM', '993', 1),
(217, 'Turks and Caicos Islands', 'TC', '1-649', 1),
(218, 'Tuvalu', 'TV', '688', 1),
(219, 'Uganda', 'UG', '256', 1),
(220, 'Ukraine', 'UA', '380', 1),
(221, 'United Arab Emirates', 'AE', '971', 1),
(222, 'United Kingdom', 'GB', '44', 1),
(223, 'United States', 'US', '1', 1),
(224, 'United States Minor Outlying Islands', 'UM', '246', 1),
(225, 'Uruguay', 'UY', '598', 1),
(226, 'Uzbekistan', 'UZ', '998', 1),
(227, 'Vanuatu', 'VU', '678', 1),
(228, 'Vatican City State (Holy See)', 'VA', '379', 1),
(229, 'Venezuela', 'VE', '58', 1),
(230, 'Vietnam', 'VN', '84', 1),
(231, 'Virgin Islands (British)', 'VG', '1-284', 1),
(232, 'Virgin Islands (U.S.)', 'VI', '1-340', 1),
(233, 'Wallis and Futuna Islands', 'WF', '681', 1),
(234, 'Western Sahara', 'EH', '212', 1),
(235, 'Yemen', 'YE', '967', 1),
(236, 'Serbia', 'RS', '381', 1),
(238, 'Zambia', 'ZM', '260', 1),
(239, 'Zimbabwe', 'ZW', '263', 1),
(240, 'Aaland Islands', 'AX', '358', 1),
(241, 'Palestine', 'PS', '970', 1),
(242, 'Montenegro', 'ME', '382', 1),
(243, 'Guernsey', 'GG', '44-1481', 1),
(244, 'Isle of Man', 'IM', '44-1624', 1),
(245, 'Jersey', 'JE', '44-1534', 1),
(247, 'Curaçao', 'CW', '599', 1),
(248, 'Ivory Coast', 'CI', '225', 1),
(249, 'Kosovo', 'XK', '383', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `c_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `short_desc` text NOT NULL,
  `c_image` varchar(200) NOT NULL,
  `c_pdf` varchar(200) NOT NULL,
  `youtube_link` varchar(200) NOT NULL,
  `c_price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`c_id`, `course_name`, `short_desc`, `c_image`, `c_pdf`, `youtube_link`, `c_price`, `status`, `added_at`, `update_at`) VALUES
(2, 'Trumpet Basics', 'Master the foundations of trumpet playing with step-by-step lessons. Perfect                                             for beginners looking to build confidence a', 'cimg-UsrkVzoK.webp', 'cpdf-I3GT4tcz.pdf', '', 400, 1, '2025-12-11 06:40:37', '2025-12-12 15:35:10'),
(3, 'Modern Ballet', 'Graceful movements, posture, and rhythm — experience the beauty of ballet in                                             a modern style. Ideal for both new learners and dance lovers.', 'cimg-9kgPkhd3.webp', 'cpdf-C4x3sZFT.pdf', 'wCYetc9jE4M', 360, 1, '2025-12-11 06:41:47', '2025-12-12 15:35:03'),
(4, 'Arts & Crafts', 'Unleash your creativity through painting, sketching, and DIY craft projects.                                            Fun, relaxing, and great for learners of all ages.', 'cimg-Ee9oEdic.webp', 'cpdf-tLQhS7mD.pdf', '', 390, 1, '2025-12-11 06:42:31', '2025-12-12 15:34:54'),
(5, 'Tennis', 'Learn the basics of tennis, from perfecting your serve to mastering rallies,                                            guided by experienced coaches.', 'cimg-yIeT1LUf.webp', 'cpdf-ikt51Gt4.pdf', '', 420, 1, '2025-12-11 06:43:30', '2025-12-12 15:34:38'),
(6, 'Baking for Beginners', 'Hands-on training to create delicious bread, cakes, and pastries. Ideal for                                            anyone starting their baking journey.', 'cimg-wHWbd95L.webp', 'cpdf-KGLGlhiI.pdf', '', 400, 1, '2025-12-11 06:44:21', '2025-12-12 15:34:24'),
(7, 'Pottery Workshop', 'Shape, mold, and glaze beautiful clay pieces in our interactive pottery                                            sessions. A perfect blend of art and mindfulness.', 'cimg-Ndq6Buzg.webp', 'cpdf-KXqjKMMj.pdf', '', 410, 1, '2025-12-11 06:45:07', '2025-12-12 15:34:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_happy_client`
--

CREATE TABLE `tbl_happy_client` (
  `cl_id` int(5) NOT NULL,
  `client_name` varchar(150) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL COMMENT '1-Active, 0-Inactive',
  `added_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_happy_client`
--

INSERT INTO `tbl_happy_client` (`cl_id`, `client_name`, `logo`, `status`, `added_at`) VALUES
(1, 'a', 'h_1626713649.jpg', '1', '2021-07-19 16:54:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_content`
--

CREATE TABLE `tbl_home_content` (
  `id` int(2) NOT NULL,
  `about_title` varchar(255) DEFAULT NULL,
  `about_details` text DEFAULT NULL,
  `about_image` varchar(200) DEFAULT NULL,
  `sec5_title` varchar(255) DEFAULT NULL,
  `sec5_description` text DEFAULT NULL,
  `sec5_content_title1` varchar(255) DEFAULT NULL,
  `sec5_content_details1` text DEFAULT NULL,
  `sec5_content_image1` varchar(200) DEFAULT NULL,
  `sec5_content_title2` varchar(255) DEFAULT NULL,
  `sec5_content_details2` text DEFAULT NULL,
  `sec5_content_image2` varchar(200) DEFAULT NULL,
  `sec5_content_title3` varchar(255) DEFAULT NULL,
  `sec5_content_details3` text DEFAULT NULL,
  `sec5_content_image3` varchar(200) DEFAULT NULL,
  `sec6_title` varchar(255) DEFAULT NULL,
  `sec6_description` text DEFAULT NULL,
  `pic_title1` varchar(255) DEFAULT NULL,
  `pic_details1` varchar(255) DEFAULT NULL,
  `pic1` varchar(150) DEFAULT NULL,
  `pic_title2` varchar(255) DEFAULT NULL,
  `pic_details2` varchar(255) DEFAULT NULL,
  `pic2` varchar(150) DEFAULT NULL,
  `pic_title3` varchar(255) DEFAULT NULL,
  `pic_details3` varchar(255) DEFAULT NULL,
  `pic3` varchar(150) DEFAULT NULL,
  `pic_title4` varchar(255) DEFAULT NULL,
  `pic_details4` varchar(255) DEFAULT NULL,
  `pic4` varchar(150) DEFAULT NULL,
  `contact_page_image` varchar(150) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_home_content`
--

INSERT INTO `tbl_home_content` (`id`, `about_title`, `about_details`, `about_image`, `sec5_title`, `sec5_description`, `sec5_content_title1`, `sec5_content_details1`, `sec5_content_image1`, `sec5_content_title2`, `sec5_content_details2`, `sec5_content_image2`, `sec5_content_title3`, `sec5_content_details3`, `sec5_content_image3`, `sec6_title`, `sec6_description`, `pic_title1`, `pic_details1`, `pic1`, `pic_title2`, `pic_details2`, `pic2`, `pic_title3`, `pic_details3`, `pic3`, `pic_title4`, `pic_details4`, `pic4`, `contact_page_image`, `update_at`) VALUES
(1, 'About Skin Canberra', '<p>Welcome to&nbsp;<strong>SKIN Canberra</strong>, where science meets beauty to bring out your best features. We are more than a salon &ndash; we are a <strong>specialized hair and skin clinic</strong> dedicated to helping you look and feel your absolute best.</p>\r\n<h3><strong>Our Philosophy</strong></h3>\r\n<p>At SKIN Canberra, we believe beauty is confidence. Our mission is to provide <strong>personalized treatments</strong> that enhance your natural features while maintaining the highest standards of safety and care.</p>\r\n<hr>\r\n<h3><strong>Our Expertise</strong></h3>\r\n<p>We offer a <strong>full spectrum of services</strong>, from everyday beauty essentials to advanced cosmetic treatments:</p>\r\n<h4><strong>Hair Therapy</strong></h4>\r\n<ul>\r\n<li>Deep conditioning and scalp treatments for healthy, lustrous hair.</li>\r\n<li>Professional styling and color services tailored to your personality.</li>\r\n<li>Hair rejuvenation therapies to restore strength and shine.</li>\r\n</ul>\r\n<h4><strong>Skin Treatments</strong></h4>\r\n<ul>\r\n<li><strong>Threading &amp; Waxing</strong> &ndash; Precise and gentle hair removal for a flawless finish.</li>\r\n<li><strong>Facials &amp; Peels</strong> &ndash; Customized treatments to hydrate, brighten, and rejuvenate your skin.</li>\r\n<li><strong>Advanced Skin Care</strong> &ndash; Microdermabrasion, chemical peels, and anti-aging solutions.</li>\r\n<li><strong>Injectables &amp; Botox</strong> &ndash; Subtle enhancements to smooth lines and highlight your best facial features.</li>\r\n</ul>\r\n<hr>\r\n<h3><strong>Why Choose SKIN Canberra?</strong></h3>\r\n<ul>\r\n<li><strong>Qualified Experts</strong>: Our team includes certified beauty professionals and skin specialists.</li>\r\n<li><strong>Premium Products</strong>: We use only trusted, high-quality brands for safe and effective results.</li>\r\n<li><strong>Personalized Care</strong>: Every treatment is tailored to your unique needs and goals.</li>\r\n<li><strong>Relaxing Environment</strong>: A serene, modern space designed for your comfort.</li>\r\n</ul>\r\n<hr>\r\n<h3><strong>Your Journey to Confidence</strong></h3>\r\n<p>Whether you&rsquo;re looking for a quick refresh or a complete transformation, SKIN Canberra is your destination for <strong>hair therapy and skin perfection</strong>. Book your appointment today and experience the art of beauty backed by science.</p>', 'about-tizFuHnM.webp', 'About Us', '<h3><strong>Why Choose SKIN Canberra?</strong></h3>\r\n<ul>\r\n<li><strong>Qualified Experts</strong>: Our team includes certified beauty professionals and skin specialists.</li>\r\n<li><strong>Premium Products</strong>: We use only trusted, high-quality brands for safe and effective results.</li>\r\n<li><strong>Personalized Care</strong>: Every treatment is tailored to your unique needs and goals.</li>\r\n<li><strong>Relaxing Environment</strong>: A serene, modern space designed for your comfort.</li>\r\n</ul>\r\n<hr>\r\n<h3><strong>Your Journey to Confidence</strong></h3>\r\n<p>Whether you&rsquo;re looking for a quick refresh or a complete transformation, SKIN Canberra is your destination for <strong>hair therapy and skin perfection</strong>. Book your appointment today and experience the art of beauty backed by science.</p>', 'Expert Care', '<h2><strong>Why Choose SKIN Canberra?</strong></h2>\r\n<p>At SKIN Canberra, your beauty journey is guided by expertise and care. Here&rsquo;s what makes us different:</p>\r\n<h3><strong>Professional Expertise</strong></h3>\r\n<p>Founded by a <strong>qualified nurse turned hair and skin therapist</strong>, SKIN Canberra combines medical knowledge with advanced beauty techniques. This means every treatment is backed by a deep understanding of skin health and safety.</p>\r\n<h3><strong>Personalized Consultations</strong></h3>\r\n<p>We never believe in one-size-fits-all. Before any treatment, we conduct a <strong>thorough consultation and analysis of your skin and hair</strong> to design a plan that suits your unique needs.</p>\r\n<h3><strong>Results You Can Trust</strong></h3>\r\n<p>Our goal is simple: <strong>to deliver the best possible results while prioritizing your health and confidence</strong>. From basic beauty services to advanced treatments like Botox, every procedure is performed with precision and professionalism.</p>', 'sec-5-cPlv0Qq1.webp', 'Premium Products', '<h3><strong>Australian Trusted Products</strong></h3>\r\n<p>Your safety and results matter. That&rsquo;s why we use only <strong>premium, Australian-approved products</strong> that meet the highest standards of quality and care.</p>\r\n<p class=\"mb-4 line-height-36\">We believe results come from quality. That&rsquo;s why we use carefully chosen, skin-friendly formulas and professional-grade tools. Whether it&rsquo;s a soothing serum or a high-performance hair treatment, every product is selected to nurture your skin, hair, and nails safely and effectively.</p>', 'sec-5-BDrl90TJ.webp', 'Personalized Experience', '<p class=\"mb-4 line-height-36\">No two clients are the same &mdash; and neither are our services. From the moment you step in, we tailor each treatment to your needs, lifestyle, and comfort level. Our warm, welcoming environment makes every visit a little moment of self-care you&rsquo;ll look forward to.</p>', 'sec-5-oobvaJkJ.webp', 'Our Most Loved Treatments', 'Discover the services our clients can’t stop talking about — each designed to refresh, restore, and enhance your natural beauty.', 'Carbon Facial', '“Revitalize Your Skin with Laser Precision.”', 'sec-6-3sAWEByj.webp', 'Hydra Facial', 'Deeply cleanses, hydrates, and revives dull skin for a fresh, radiant look.', 'sec-6-hfK6cxZD.webp', 'Keratin Hair Therapy', 'Deeply cleanses, hydrates, and revives dull skin for a fresh, radiant look.', 'sec-6-LVz8UbRO.webp', 'Chemical Peeling', 'Deeply cleanses, hydrates, and revives dull skin for a fresh, radiant look.', 'sec-6-2bM1XQLT.webp', 'contact-img-XkuTdDZT.webp', '2025-11-01 06:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `m_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `address` varchar(400) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`m_id`, `name`, `email`, `password`, `ip_address`, `phone`, `image`, `privilege_id`, `address`, `status`, `created`, `updated`) VALUES
(1, 'raj guddu', 'raj@yopmail.com', '$2y$12$MQKdEY9fSAK9ErPScydyf.UWPS88yeGZGz0m6EZz2dPpJ.V40MGPy', '::1', '1234567890', '', 0, '', 1, '2025-11-01 09:36:36', '2025-11-02 13:40:20'),
(2, 'raj guddu', 'raj1@yopmail.com', '$2y$12$zwpsaO2ALvwK9uYlAlYNAerOoQGRuz4i6xcfxu94hvGoJJkYeanNS', '::1', '1234567890', '', 0, '', 1, '2025-11-01 09:39:52', '2025-11-02 13:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member_address`
--

CREATE TABLE `tbl_member_address` (
  `add_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL,
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_member_address`
--

INSERT INTO `tbl_member_address` (`add_id`, `m_id`, `name`, `phone`, `address`, `status`, `added_at`, `update_at`) VALUES
(1, 1, 'raj guddu', '1234567890', 'noida delhi 230014', 1, '2025-11-01 11:27:13', '0000-00-00 00:00:00'),
(2, 2, 'raj guddu', '1234567890', 'KHESRAHIYAN\r\nSHRIPALPUR\r\nBHOJPUR', 1, '2025-11-01 15:37:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter`
--

CREATE TABLE `tbl_newsletter` (
  `id` int(5) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_newsletter`
--

INSERT INTO `tbl_newsletter` (`id`, `email`) VALUES
(4, 'rajgudduara18@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL COMMENT '0-Inactive 1-Active',
  `added_on` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `page_name`, `status`, `added_on`, `updated_on`) VALUES
(1, 'home ', '1', '2021-07-22 16:51:33', '2021-07-22 12:20:22'),
(3, 'contact us', '1', '2021-07-22 17:51:01', '0000-00-00 00:00:00'),
(4, 'about us', '1', '2021-07-22 17:51:18', '0000-00-00 00:00:00'),
(5, 'Service', '1', '2025-10-23 06:20:54', '2025-10-23 11:50:41'),
(6, 'Courses', '1', '2025-10-23 06:20:54', '2025-10-23 11:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_transaction`
--

CREATE TABLE `tbl_payment_transaction` (
  `pt_id` int(11) NOT NULL,
  `pay_from` varchar(50) NOT NULL COMMENT 'service, product, course',
  `sbo_id` int(11) NOT NULL COMMENT 'tbl_service_book_online.id',
  `order_id` varchar(50) NOT NULL COMMENT 'tbl_product_order.order_id',
  `c_id` int(11) NOT NULL COMMENT 'tbl_purchased_course.id',
  `paid_amount` int(11) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `paymentIntentId` varchar(100) NOT NULL,
  `txnId` varchar(100) NOT NULL,
  `added_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_payment_transaction`
--

INSERT INTO `tbl_payment_transaction` (`pt_id`, `pay_from`, `sbo_id`, `order_id`, `c_id`, `paid_amount`, `payment_mode`, `payment_status`, `paymentIntentId`, `txnId`, `added_at`) VALUES
(1, 'service', 1, '', 0, 125, 'Stripe', 'succeeded', 'pi_3SayObPPCxuqVBCx1WwFhSex', 'TXN17649387517054', '2025-12-05 12:46:06'),
(2, 'service Dues', 1, '', 0, 1, 'Admin', 'Dues Received', '', '', '2025-12-05 12:47:25'),
(3, 'Product', 0, 'OD17650301211708', 0, 57, 'Stripe', 'succeeded', 'pi_3SbMALPPCxuqVBCx1xMSQDLp', 'TXN17650301218392', '2025-12-06 14:08:57'),
(4, 'service', 2, '', 0, 5, 'Stripe', 'succeeded', 'pi_3SbMDXPPCxuqVBCx0vyhiqCV', 'TXN17650303225125', '2025-12-06 14:12:15'),
(5, 'Product', 0, 'OD17650305055579', 0, 100, 'Stripe', 'succeeded', 'pi_3SbMGTPPCxuqVBCx1rRAnSVP', 'TXN17650305052173', '2025-12-06 14:15:17'),
(6, 'Product', 0, 'OD17650309701042', 0, 100, 'Stripe', 'succeeded', 'pi_3SbMO1PPCxuqVBCx1AwkzyBg', 'TXN17650309704570', '2025-12-06 14:23:06'),
(7, 'Product', 0, 'OD17652896466331', 0, 597, 'Stripe', 'succeeded', 'pi_3ScRgSAts9oibJw60N8WDWdt', 'TXN17652896465815', '2025-12-09 14:14:36'),
(8, 'service', 4, '', 0, 140, 'Stripe', 'succeeded', 'pi_3ScpEcAts9oibJw61hnebGhE', 'TXN17653801907381', '2025-12-10 15:23:26'),
(9, 'Course', 0, '', 3, 360, 'Stripe', 'succeeded', 'pi_3SdYfwAts9oibJw6179ZRvvv', 'TXN17655546876006', '2025-12-12 15:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(2) NOT NULL,
  `cat_id` int(2) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `pro_url` varchar(255) NOT NULL,
  `image1` varchar(100) NOT NULL,
  `image2` varchar(100) NOT NULL,
  `image3` varchar(100) NOT NULL,
  `image4` varchar(100) NOT NULL,
  `alt1` varchar(100) NOT NULL,
  `alt2` varchar(100) NOT NULL,
  `alt3` varchar(100) NOT NULL,
  `alt4` varchar(100) NOT NULL,
  `imgTitle1` varchar(100) NOT NULL,
  `imgTitle2` varchar(100) NOT NULL,
  `imgTitle3` varchar(100) NOT NULL,
  `imgTitle4` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keyIngred` text NOT NULL,
  `application` text NOT NULL,
  `status` int(2) NOT NULL,
  `show_front` int(2) NOT NULL,
  `activeTab` int(2) NOT NULL,
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `cat_id`, `pro_name`, `sub_title`, `pro_url`, `image1`, `image2`, `image3`, `image4`, `alt1`, `alt2`, `alt3`, `alt4`, `imgTitle1`, `imgTitle2`, `imgTitle3`, `imgTitle4`, `description`, `keyIngred`, `application`, `status`, `show_front`, `activeTab`, `added_at`, `update_at`) VALUES
(2, 1, 'Gel Face Cleanser', 'All skin types/ Acne prone / Pretreatment', 'gel-face-cleanser', 'proImage1-qemaU0lw.webp', '', '', '', 'Gel Face Cleanser', '', '', '', 'Gel Face Cleanser', '', '', '', '<p>A foaming cleanser that effortlessly lathers, providing a soothing, cleansing experience leaving the skin feeling revitalised and hydrated.</p>\r\n<ul>\r\n<li>Mild foaming action</li>\r\n<li>Ideal for oily and acne prone skin</li>\r\n<li>Pre-treatment preparation</li>\r\n</ul>', '<ul>\r\n<li>Chamomile</li>\r\n<li>Birch extract</li>\r\n<li>Coconut oil (8%)</li>\r\n</ul>', '<p>Dispense 2-3 pumps and emulsify with water. Massage onto the skin for 2-4 minutes, using circular motions. Rinse with a damp facial cloth .</p>', 1, 1, 4, '2025-10-29 17:26:46', '2025-10-30 10:12:46'),
(3, 1, 'Herbal Face Milk', 'Mature/ sensitive skin', 'herbal-face-milk', 'proImage1-Kq2X8itN.webp', '', '', '', '', '', '', '', '', '', '', '', '<p>Experience luxury with the Herbal Milk Cleanser, a gentle botanical enriched, milk&nbsp;based cleanser that brightens, soothes and refreshes the skin for an indulgent skincare ritual.&nbsp;</p>\r\n<ul>\r\n<li>Deep cleansing and nourishing</li>\r\n<li>Perfect for sensitive and mature skin&nbsp;</li>\r\n</ul>', '<ul>\r\n<li>Herbal extracts</li>\r\n<li>Green tea extract</li>\r\n<li>Chamomile</li>\r\n<li>Chamomile</li>\r\n<li>Peppermint (5%)</li>\r\n<li>Horse chestnut seed oil (.5%)&nbsp;</li>\r\n</ul>', '<p>Dispense 2-3 pumps and emulsify with water. Massage onto the skin for&nbsp; 2-4 minutes, using circular motions. Rinse with a damp facial cloth.&nbsp;</p>', 1, 1, 4, '2025-10-30 10:14:19', '2025-10-30 10:18:30'),
(4, 1, 'Hyaluronic Cleansing Gel', 'Normal/ Congested/ Oily/ Thickened skin', 'hyaluronic-cleansing-gel', 'proImage1-cbpJ0D3V.webp', '', '', '', '', '', '', '', '', '', '', '', '<p>Hyaluronic Gel Cleanser is meticulously crafted with an&nbsp; enhanced AHA delivery system along with potent&nbsp; ingredients to gently exfaliate and deeply clean, resurfacing&nbsp; for a softer, healthier, more youthful appearance.&nbsp;</p>\r\n<ul>\r\n<li>AHA deep cleansing action</li>\r\n<li>Brightening action</li>\r\n<li>Promotes collagen and elastin synthesis&nbsp;</li>\r\n</ul>', '<ul>\r\n<li>Hyaluronic acid 1.5%&nbsp;</li>\r\n<li>AHA Fruit acids 1.5%</li>\r\n<li>Yeast Protein&nbsp;</li>\r\n</ul>', '<p>Dispense 2-3 pumps and emulsify with water. Massage&nbsp; onto the skin for 2-4 minutes, using circular motions.&nbsp; Rinse with a damp facial cloth. Avoid direct contact with</p>', 1, 1, 4, '2025-10-30 10:19:25', '2025-10-30 10:23:17'),
(5, 2, 'Herbal Face Tonic', 'Sensitive / Congested skin', 'herbal-face-tonic', 'proImage1-up8ytzKx.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"148\" data-end=\"278\">An essential elixir, carefully blended with harmonious, herbal ingredients dedicated to balance impurities and restore pH balance.</p>\r\n<p data-start=\"280\" data-end=\"359\">✔ Effectively removes dead skin cells<br data-start=\"317\" data-end=\"320\">✔ Balances pH<br data-start=\"333\" data-end=\"336\">✔ Calms delicate skin</p>', '<p>✔ Comfrey<br data-start=\"400\" data-end=\"403\">✔ Lavendar extract<br data-start=\"421\" data-end=\"424\">✔ Camellia Sinensis (Green Tea) leaf extract<br data-start=\"468\" data-end=\"471\">✔ Tillia Cordata (Linden) flower extract<br data-start=\"511\" data-end=\"514\">✔ Castor oil<br data-start=\"526\" data-end=\"529\">✔ Glycerin</p>', '<p data-start=\"569\" data-end=\"676\">After cleansing, spray the tonic on a cotton pad and wipe the damped cotton pad all over the face and neck.</p>', 1, 1, 1, '2025-11-26 06:39:40', '2025-11-26 06:42:39'),
(6, 2, 'Tonic For Collagen Synthesis', 'Mature skin/ Dry/ Dehydrated', 'tonic-for-collagen-synthesis', 'proImage1-EA7cWKOH.webp', '', '', '', '', '', '', '', '', '', '', '', '<p>An astringent, anti-ageing toner, meticulously crafted&nbsp;with specialised ingredients that stimulate collagen&nbsp;synthesis, cleanse, balance and promote hydration,</p>\r\n<ul>\r\n<li>hydrate and enhance collagen production.</li>\r\n<li>Improve skin texture</li>\r\n<li>PH balance</li>\r\n</ul>', '<ul>\r\n<li>Lactic Acid (3%)</li>\r\n<li>Sodium Citrate (.5%)</li>\r\n</ul>', '<p>After cleansing, spray the tonic over a cotton pad&nbsp;and wipe the damp cotton pad all over the face and&nbsp;neck.&nbsp;</p>', 1, 0, 4, '2025-11-26 06:44:29', '2025-11-26 06:47:48'),
(7, 2, 'Dermal Lotion', 'Oily/ Congested / Break-out prone', 'dermal-lotion-', 'proImage1-kbx9ni5N.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"202\" data-end=\"450\">An advanced clarifying toner specially formulated for oily and breakout-prone skin. It gently exfoliates, removes excess oil, promotes hydration, and helps eliminate harmful bacteria on the skin. Dermal Lotion is also ideal for pre-peel degreasing.</p>\r\n<p data-start=\"452\" data-end=\"588\">✔ Oil control and acne prevention<br data-start=\"485\" data-end=\"488\">✔ Anti-bacterial and anti-inflammatory<br data-start=\"526\" data-end=\"529\">✔ Purifies and cleanses acne-prone skin<br data-start=\"568\" data-end=\"571\">✔ Pore refining</p>', '<p>✔ Salicylic Acid (1%)<br data-start=\"641\" data-end=\"644\">✔ Lactic Acid (0.3%)<br data-start=\"664\" data-end=\"667\">✔ Tea Tree (0.2%)<br data-start=\"684\" data-end=\"687\">✔ Menthol</p>', '<p data-start=\"726\" data-end=\"833\">After cleansing, apply Dermal Lotion to the affected areas using a cotton pad. Avoid the delicate eye area.</p>', 1, 0, 4, '2025-11-26 06:49:01', '2025-11-26 06:50:48'),
(8, 2, 'AHA Tonic', 'Normal / Oily / Uneven Skin Tone', 'aha-tonic', 'proImage1-iA6gQ2t5.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"258\" data-end=\"461\">AHA Tonic is an exfoliating toner formulated to eliminate excess oil and impurities. It helps reveal a softer, smoother, and more even-looking skin texture. Rapid results are visible after the first use.</p>\r\n<p data-start=\"463\" data-end=\"523\">✔ Exfoliates<br data-start=\"475\" data-end=\"478\">✔ Improves skin texture<br data-start=\"501\" data-end=\"504\">✔ Evens skin tone</p>', '<p>✔ Lactic Acid (3%)<br data-start=\"573\" data-end=\"576\">✔ Citric Acid<br data-start=\"589\" data-end=\"592\">✔ Glycolic Acid (2%)<br data-start=\"612\" data-end=\"615\">✔ Glycerin</p>', '<p data-start=\"655\" data-end=\"827\">After cleansing, apply the AHA 5% or 10% Tonic to the face, neck, and d&eacute;collet&eacute; using a cotton pad. Avoid the delicate eye area. For best results, use once or twice a week.</p>', 1, 0, 4, '2025-11-26 06:52:51', '2025-11-26 06:53:47'),
(9, 3, 'C Serum', 'All Skin types/ Pigmentated / Ageing concerns', 'c-serum', 'proImage1-g4V6973l.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"230\" data-end=\"484\">Vitamin C Serum is a powerful C-blend formulated to correct skin tone while stimulating collagen and elastin production. Its high-performance, phyto-whitening complex enhances luminosity, reduces oxidative damage from UV exposure, and nourishes the skin.</p>\r\n<p data-start=\"486\" data-end=\"606\">✔ Reduces oxidative damage caused by UV<br data-start=\"525\" data-end=\"528\">✔ Stimulates collagen and elastin production<br data-start=\"572\" data-end=\"575\">✔ Addresses hyperpigmentation</p>', '<p>✔ Lactic Acid (3%)<br data-start=\"656\" data-end=\"659\">✔ Tilia Vulgaris Flower<br data-start=\"682\" data-end=\"685\">✔ Ascorbic Acid (4%)<br data-start=\"705\" data-end=\"708\">✔ Licorice Root Extract<br data-start=\"731\" data-end=\"734\">✔ Birch Extract</p>', '<p data-start=\"779\" data-end=\"888\">Apply 3&ndash;4 drops of the Vitamin C Serum to the face, neck, and d&eacute;collet&eacute;. Gently massage until fully absorbed.</p>', 1, 0, 4, '2025-11-26 07:24:37', '2025-11-26 07:26:59'),
(10, 3, 'Caviar Serum', 'Mature skin/ Ageing concerns', 'caviar-serum', 'proImage1-xOtZHqCm.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"228\" data-end=\"558\">Experience deep hydration and nourishment with the Caviar Serum. This lightweight yet powerfully restorative formula visibly firms and plumps the skin, promoting a complexion that radiates health and vitality. Enriched with a potent blend of caviar extracts and antioxidants, it is the ultimate serum for youthful, resilient skin.</p>\r\n<p data-start=\"560\" data-end=\"688\">✔ Enhances collagen and elasticity<br data-start=\"594\" data-end=\"597\">✔ Restores moisture and hydration<br data-start=\"630\" data-end=\"633\">✔ Promotes ceramide production<br data-start=\"663\" data-end=\"666\">✔ Smooths fine lines</p>', '<p>✔ Caviar Extract (8%)<br data-start=\"741\" data-end=\"744\">✔ Cetyl Palmitate (3%)<br data-start=\"766\" data-end=\"769\">✔ Elastine (4%)<br data-start=\"784\" data-end=\"787\">✔ Vitamin E (3%)</p>', '<p data-start=\"833\" data-end=\"948\">Apply 3&ndash;4 drops of the Caviar Serum to the face, neck, and d&eacute;collet&eacute; at night. Gently massage until fully absorbed.</p>', 1, 0, 4, '2025-11-26 07:30:26', '2025-11-26 07:32:16'),
(11, 3, 'Hyaluronic Serum', 'All skin types/ Dehydrated / Oily', 'hyaluronic-serum-', 'proImage1-5uJoN1Xd.webp', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 4, '2025-11-26 07:33:32', '2025-11-26 07:34:56'),
(12, 3, 'Retinol Serum', 'Mature / Acne-prone / Pigmentated / Age concerns', 'retinol-serum', 'proImage1-QNwh2lxH.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"225\" data-end=\"455\">Retinol Serum supports cellular health through gentle, natural exfoliation, making it an exceptional night treatment for skin renewal. It improves texture, reduces signs of ageing, and promotes a smoother, more radiant complexion.</p>\r\n<p data-start=\"457\" data-end=\"602\">✔ Promotes cellular turnover<br data-start=\"485\" data-end=\"488\">✔ Smooths skin texture<br data-start=\"510\" data-end=\"513\">✔ Reduces fine lines, wrinkles, dark spots &amp; acne<br data-start=\"562\" data-end=\"565\">✔ Hydrates and rejuvenates the skin</p>', '<p>✔ Retinyl Palmitate (1%)<br data-start=\"658\" data-end=\"661\">✔ Vitamin E (3%)<br data-start=\"677\" data-end=\"680\">✔ Glycerin</p>', '<p data-start=\"720\" data-end=\"871\">Apply 3&ndash;4 drops of the Retinol Serum onto the fingertips. Gently massage onto the face, neck, and d&eacute;collet&eacute; until fully absorbed.<br data-start=\"849\" data-end=\"852\"><strong data-start=\"852\" data-end=\"871\">Night use only.</strong></p>', 1, 0, 4, '2025-11-26 07:36:03', '2025-11-26 07:40:03'),
(13, 3, 'Ultra C++ Serum', 'All Skin Types / Hyperpigmented / Photo-Damaged Skin', 'ultra-c-serum', 'proImage1-HOOsbJUD.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"255\" data-end=\"526\">Ultra C++ Serum is a powerful antioxidant-rich formula featuring 15% L-ascorbic acid. It provides strong protection against external aggressors while helping reverse signs of damage and dullness. This high-performance serum brightens the skin and visibly reduces pigment.</p>\r\n<p data-start=\"528\" data-end=\"712\">✔ Comprehensive antioxidant protection<br data-start=\"566\" data-end=\"569\">✔ Brightens skin tone<br data-start=\"590\" data-end=\"593\">✔ Helps smooth the appearance of fine lines &amp; wrinkles<br data-start=\"647\" data-end=\"650\">✔ Protects against environmental stress<br data-start=\"689\" data-end=\"692\">✔ Inhibits pigment</p>', '<p>✔ L-Ascorbic Acid 15%<br data-start=\"765\" data-end=\"768\">✔ Tocopherol Acetate 1%<br data-start=\"791\" data-end=\"794\">✔ Ferulic Acid 0.5%<br data-start=\"813\" data-end=\"816\">✔ Sodium Hyaluronate<br data-start=\"836\" data-end=\"839\">✔ C-blend<br data-start=\"848\" data-end=\"851\">✔ Liquorice Extract<br data-start=\"870\" data-end=\"873\">✔ Arbutin<br data-start=\"882\" data-end=\"885\">✔ Aloe Barbadensis Leaf Juice</p>', '<p>Apply the serum daily on cleansed, dry skin&mdash;preferably in the morning&mdash;before applying moisturiser and sunscreen.</p>', 1, 0, 4, '2025-11-26 07:41:57', '2025-11-26 07:46:18'),
(14, 3, 'Lifting Serum', 'Laxed / Mature Skin', 'lifting-serum', 'proImage1-fb6fJVKk.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"210\" data-end=\"451\">Lifting Serum is a liposome-based, vitamin-rich, peptide-driven formula designed to restore elasticity and smooth fine lines. It is especially suited for prematurely aged or laxed skin, helping to strengthen and nourish the skin from within.</p>\r\n<p data-start=\"453\" data-end=\"544\">✔ Combats loss of elastin and collagen<br data-start=\"491\" data-end=\"494\">✔ Infuses essential nutrients deep into the skin</p>', '<p>✔ Panthenol (0.5%)<br data-start=\"594\" data-end=\"597\">✔ Vitamin E (5%)<br data-start=\"613\" data-end=\"616\">✔ Phospholipids (6%)<br data-start=\"636\" data-end=\"639\">✔ Saccharomyces Lysate Extract (12%)<br data-start=\"675\" data-end=\"678\">✔ Betula Alba Extract (8%)<br data-start=\"704\" data-end=\"707\">✔ Retinyl Palmitate (0.3%)</p>', '<p>Apply 3&ndash;4 drops of the Lifting Serum to the fingertips. Massage in an upward and outward motion across the face and neck. Allow the serum to fully absorb into the skin.</p>', 1, 0, 4, '2025-11-26 07:48:47', '2025-11-26 07:54:18'),
(15, 3, 'Copper Peptide Serum', 'All Skin Types / Age Concerns / Hair Rejuvenation', 'copper-peptide-serum', 'proImage1-TmGVqJLV.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"259\" data-end=\"540\">Copper Peptide Serum contains potent biocidal properties and plays a key role in the synthesis and stabilisation of skin proteins. Designed for superior rejuvenation, it can be applied to the face, neck, and scalp to support repair, cell renewal, and a more revitalised appearance.</p>\r\n<p data-start=\"542\" data-end=\"625\">✔ Improves scalp health<br data-start=\"565\" data-end=\"568\">✔ Neutralises the skin microbiome<br data-start=\"601\" data-end=\"604\">✔ Anti-inflammatory</p>', '<p>✔ Copper Peptide (2%)<br data-start=\"678\" data-end=\"681\">✔ Panthenol (1%)<br data-start=\"697\" data-end=\"700\">✔ Yeast (10%)<br data-start=\"713\" data-end=\"716\">✔ Aloe Barbadensis (5%)<br data-start=\"739\" data-end=\"742\">✔ Horse Chestnut Seed Extract (1%)<br data-start=\"776\" data-end=\"779\">✔ Allantoin (0.1%)</p>', '<p>Apply a pea-sized amount to the desired area and gently massage.<br data-start=\"891\" data-end=\"894\">For optimal results, use at night.</p>', 1, 0, 4, '2025-11-26 07:55:37', '2025-11-26 07:56:57'),
(16, 4, 'C Cream', 'Pigmentation / Age Concerns / Sun-Damaged Skin', 'c-cream', 'proImage1-qYxR1o6J.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"225\" data-end=\"447\">C Cream is a potent vitamin C&ndash;based formula that brightens, refines skin texture, and combats signs of ageing and discoloration. It works effectively to lighten darkened areas while promoting a radiant and even complexion.</p>\r\n<p data-start=\"449\" data-end=\"550\">✔ Reduces the appearance of pigmentation and uneven skin tone<br data-start=\"510\" data-end=\"513\">✔ Brightens overall skin complexion</p>', '<p>✔ Sodium Ascorbyl Phosphate (6%)<br data-start=\"614\" data-end=\"617\">✔ Citric Acid (0.5%)<br data-start=\"637\" data-end=\"640\">✔ Niacinamide (3%)</p>', '<p>Generously apply C Cream to the face and neck in the morning and evening.<br data-start=\"761\" data-end=\"764\">Follow with UV Cream for enhanced protection.</p>', 1, 0, 4, '2025-11-26 08:26:30', '2025-11-26 08:28:07'),
(17, 4, 'Caviar Cream', 'All Skin Types / Age Concerns / Dehydrated Skin', 'caviar-cream', 'proImage1-Vs3dKK62.webp', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 4, '2025-11-26 08:29:13', '2025-11-26 08:29:59'),
(18, 4, 'Peptide Cream', 'All Skin Types / Age Concerns / Pigmentation', 'peptide-cream', 'proImage1-mKuiZqsj.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"238\" data-end=\"513\">Peptide Cream is crafted with a luxurious blend of active ingredients designed to boost collagen production, reduce inflammation, even out skin tone, and diminish the appearance of wrinkles. It helps strengthen the skin barrier while promoting healthier, more resilient skin.</p>\r\n<p data-start=\"515\" data-end=\"644\">✔ Strengthens the skin barrier<br data-start=\"545\" data-end=\"548\">✔ Enhances skin metabolism<br data-start=\"574\" data-end=\"577\">✔ Anti-ageing properties<br data-start=\"601\" data-end=\"604\">✔ Hydrates &amp; protects the skin barrier</p>', '<p data-start=\"676\" data-end=\"769\">✔ Pea &amp; Soy Protein (0.5%)<br data-start=\"702\" data-end=\"705\">✔ Grape Seed Oil<br data-start=\"721\" data-end=\"724\">✔ Tocopheryl Acetate<br data-start=\"744\" data-end=\"747\">✔ Sodium Hyaluronate</p>', '<p>Apply Peptide Cream to clean, dry skin and gently massage until fully absorbed.</p>', 1, 0, 4, '2025-11-26 08:31:10', '2025-11-26 08:32:19'),
(19, 4, 'Dermal Cream', 'Oily / Congested / Problem Skin', 'dermal-cream', 'proImage1-YkqXOR47.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"223\" data-end=\"445\">Dermal Cream is a sebum-regulating formula that helps combat inflammation and control breakouts while delivering antioxidant protection. Its lightweight, non-greasy texture supports clearer, calmer, and more balanced skin.</p>\r\n<p data-start=\"447\" data-end=\"547\">✔ Clarifying, non-greasy feel<br data-start=\"476\" data-end=\"479\">✔ Reduces inflammation caused by acne<br data-start=\"516\" data-end=\"519\">✔ Balances moisture levels</p>', '<p>✔ Tea Tree Leaf Extract (2%)<br data-start=\"607\" data-end=\"610\">✔ Colloidal Sulphur (3%)<br data-start=\"634\" data-end=\"637\">✔ <em data-start=\"639\" data-end=\"658\">Additional active</em> (0.5%)</p>', '<p data-start=\"695\" data-end=\"804\">Apply Dermal Cream to clean, dry skin on the face, avoiding the eye area.<br data-start=\"768\" data-end=\"771\">Use at night for optimal results.</p>', 0, 0, 3, '2025-11-26 08:34:18', '2025-11-26 08:35:16'),
(20, 4, 'Hyaluronic Cream', 'All Skin Types / Dry / Dehydrated Skin', 'hyaluronic-cream', 'proImage1-fO5DpDdX.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"238\" data-end=\"491\">Deliver intense hydration with this rich, antioxidant-driven moisturiser designed to soothe, hydrate, and smooth the skin. Hyaluronic Cream locks in moisture to restore softness and promote long-lasting hydration for a healthier, more supple complexion.</p>\r\n<p data-start=\"493\" data-end=\"572\">✔ Provides immediate, long-lasting hydration<br data-start=\"537\" data-end=\"540\">✔ Soothes and smooths the skin</p>', '<p>✔ Vitamin E (2%)<br data-start=\"620\" data-end=\"623\">✔ Lecithin (2%)<br data-start=\"638\" data-end=\"641\">✔ Hyaluronic Acid (1%)<br data-start=\"663\" data-end=\"666\">✔ Avocado Oil</p>', '<p data-start=\"709\" data-end=\"824\">Apply a small amount of Hyaluronic Cream to the skin.<br data-start=\"762\" data-end=\"765\">Massage in upward and outward motions until fully absorbed.</p>', 1, 0, 4, '2025-11-26 08:37:46', '2025-11-26 08:40:27'),
(21, 4, 'AHA Cream', 'Age Concerns / Dry / Rough Skin', 'aha-cream', 'proImage1-Y6kY3bVE.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"217\" data-end=\"463\">AHA Cream is a lactic acid&ndash;based moisturiser designed to resurface and brighten the skin, revealing a smoother and more radiant complexion. It helps improve texture, enhance clarity, and boost overall hydration for visibly healthier-looking skin.</p>\r\n<p data-start=\"465\" data-end=\"565\">✔ Improves skin texture and clarity<br data-start=\"500\" data-end=\"503\">✔ Brightens the complexion<br data-start=\"529\" data-end=\"532\">✔ Hydrates and softens the skin</p>', '<p>✔ Glycolic Acid (0.5%)<br data-start=\"619\" data-end=\"622\">✔ Citric Acid (1%)<br data-start=\"640\" data-end=\"643\">✔ Lactic Acid (3%)<br data-start=\"661\" data-end=\"664\">✔ Vitamin E (0.5%)</p>', '<p data-start=\"712\" data-end=\"822\">Apply AHA 15 Cream at night to clean, dry skin on the face.<br data-start=\"771\" data-end=\"774\">Introduce gradually to allow the skin to adjust.</p>', 1, 0, 4, '2025-11-26 08:41:56', '2025-11-26 08:42:57'),
(22, 4, 'Calendula Cream', 'Irritated / Sensitive Skin', 'calendula-cream', 'proImage1-b4GibWXz.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"224\" data-end=\"526\">Calendula Cream is crafted with soothing, anti-inflammatory ingredients that help quickly relieve extremely dry and irritated skin. Enriched with a botanical complex, it provides calming nourishment while protecting and restoring the skin&rsquo;s barrier. Ideal for reducing redness, dryness, and flaky skin.</p>\r\n<p data-start=\"528\" data-end=\"657\">✔ Facilitates skin healing<br data-start=\"554\" data-end=\"557\">✔ Reduces redness and dry, flaky skin<br data-start=\"594\" data-end=\"597\">✔ Moisturising and soothing<br data-start=\"624\" data-end=\"627\">✔ Provides lasting hydration</p>', '<p>✔ St John&rsquo;s Wort (3%)<br data-start=\"710\" data-end=\"713\">✔ Lanolin (2%)<br data-start=\"727\" data-end=\"730\">✔ Lavender Oil (0.5%)<br data-start=\"751\" data-end=\"754\">✔ Calendula Officinalis (3%)<br data-start=\"782\" data-end=\"785\">✔ Jojoba Oil (3%)<br data-start=\"802\" data-end=\"805\">✔ Vitamin E (1%)</p>', '<p>Gently massage Calendula Cream into the skin as needed for daily moisturising.</p>', 0, 0, 3, '2025-11-26 08:44:13', '2025-11-26 08:44:58'),
(23, 4, 'Retinol Cream', 'All Skin Types / Fine Lines & Wrinkles / Hyperpigmentation', 'retinol-cream', 'proImage1-oqg37p3c.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"252\" data-end=\"524\">Retinol Cream is a luxurious lotion featuring a vitamin A complex combined with hydrating agents and a potent antioxidant blend. It works to accelerate cell turnover, reduce visible signs of ageing, and improve overall skin texture for a smoother, more refined complexion.</p>\r\n<p data-start=\"526\" data-end=\"699\">✔ Increases cell turnover<br data-start=\"551\" data-end=\"554\">✔ Reduces visible signs of ageing<br data-start=\"587\" data-end=\"590\">✔ Smooths fine lines and wrinkles<br data-start=\"623\" data-end=\"626\">✔ Helps to retexturise the skin<br data-start=\"657\" data-end=\"660\">✔ Mimics the skin&rsquo;s natural retinoids</p>', '<p>✔ Retinyl Palmitate (1%)<br data-start=\"755\" data-end=\"758\">✔ Lanolin (3%)<br data-start=\"772\" data-end=\"775\">✔ Vitamin E (2%)</p>', '<p>Apply to clean, dry skin on the face, neck, and d&eacute;colletage.<br data-start=\"881\" data-end=\"884\">Introduce gradually to allow the skin to adapt.<br data-start=\"931\" data-end=\"934\"><strong data-start=\"934\" data-end=\"953\">Night use only.</strong></p>', 1, 0, 4, '2025-11-26 08:48:22', '2025-11-26 08:49:10'),
(24, 4, 'AHA 15 Cream', 'Age Concerns / Dry / Rough Skin / Scarring', 'aha--cream', 'proImage1-wiBMAfsQ.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"234\" data-end=\"519\">AHA 15 Cream is expertly formulated to resurface and brighten the skin, promoting a smoother and more radiant appearance. This potent blend of AHAs supports collagen production, fades pigmentation, smooths fine lines, and helps minimise acne scars while improving overall skin texture.</p>\r\n<p data-start=\"521\" data-end=\"701\">✔ Increases collagen and elastin synthesis<br data-start=\"563\" data-end=\"566\">✔ Diminishes pigmentation<br data-start=\"591\" data-end=\"594\">✔ Smooths fine lines and wrinkles<br data-start=\"627\" data-end=\"630\">✔ Controls problem skin and helps reduce the appearance of acne scars</p>', '<p>✔ Glycolic Acid (1%)<br data-start=\"753\" data-end=\"756\">✔ Citric Acid (3%)<br data-start=\"774\" data-end=\"777\">✔ Lanolin<br data-start=\"786\" data-end=\"789\">✔ Lactic Acid (6%)<br data-start=\"807\" data-end=\"810\">✔ Salicylic Acid (3%)<br data-start=\"831\" data-end=\"834\">✔ Vitamin E (1%)</p>', '<p>Apply AHA 15 Cream at night to clean, dry skin on the face.<br data-start=\"939\" data-end=\"942\">Introduce gradually to allow the skin to adjust.</p>', 1, 0, 4, '2025-11-26 08:51:23', '2025-11-26 08:52:46'),
(25, 5, 'Lipogel A', 'Oily / Congested Skin Types', 'lipogel-a', 'proImage1-3AcLMnH5.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"213\" data-end=\"562\">Lipogel A is a specialised gel infused with active ingredients encapsulated in liposomes for targeted delivery. Enriched with a blend of medicinal herbs, this gel works deeply within the epidermal layer to promote cell renewal and improve overall skin clarity. Ideal for oily and congested skin, it helps brighten, refine, and smooth the complexion.</p>\r\n<p data-start=\"564\" data-end=\"688\">✔ Brightens skin tone<br data-start=\"585\" data-end=\"588\">✔ Pore refining<br data-start=\"603\" data-end=\"606\">✔ Helps retexturise the skin<br data-start=\"634\" data-end=\"637\">✔ Reduces the appearance of fine lines &amp; wrinkles</p>', '<p>✔ Retinyl Palmitate (0.3%)<br data-start=\"746\" data-end=\"749\">✔ Green Tea Extract (0.5%)<br data-start=\"775\" data-end=\"778\">✔ Horse Chestnut Seed Extract (0.5%)<br data-start=\"814\" data-end=\"817\">✔ Tea Tree Oil (0.3%)<br data-start=\"838\" data-end=\"841\">✔ Linden (0.5%)<br data-start=\"856\" data-end=\"859\">✔ Chamomile (0.5%)<br data-start=\"877\" data-end=\"880\">✔ Vitamin E (0.5%)</p>', '<p>Apply a generous amount of Lipogel A to the skin, focusing on areas of concern.<br data-start=\"1007\" data-end=\"1010\">Gently massage into the skin using circular motions until fully absorbed.</p>', 0, 0, 1, '2025-11-26 08:55:36', '2025-11-26 08:59:29'),
(26, 5, 'Lipogel L', 'Post Treatment / Sensitive Skin / Itchy Skin', 'lipogel-l', 'proImage1-PUuaokOG.webp', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 0, 4, '2025-11-26 09:05:14', '2025-11-26 09:06:18'),
(27, 5, 'Hyaluronic Anti-Wrinkle Gel', 'Dry / Dehydrated / Fine Lines & Wrinkles / Technology Compatible', 'hyaluronic-anti-wrinkle-gel', 'proImage1-HxrrzGkM.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"286\" data-end=\"641\">Revitalise and repair dry, damaged skin with this deeply hydrating anti-wrinkle gel. Formulated with Hyaluronic Acid and soothing botanicals, it restores skin youthfulness, improves elasticity, and leaves the complexion smooth, plump, and refreshed.<br data-start=\"535\" data-end=\"538\">Designed to be <em data-start=\"553\" data-end=\"575\">technology-infusible</em>, it enhances treatment results when used with compatible devices.</p>\r\n<p data-start=\"643\" data-end=\"742\">✔ Technology-infusible<br data-start=\"665\" data-end=\"668\">✔ Provides immediate and long-term hydration<br data-start=\"712\" data-end=\"715\">✔ Helps smooth fine lines</p>', '<p>✔ Allantoin (0.5%)<br data-start=\"792\" data-end=\"795\">✔ Linden (0.5%)<br data-start=\"810\" data-end=\"813\">✔ Green Tea Extract (0.5%)<br data-start=\"839\" data-end=\"842\">✔ Hyaluronic Acid (1%)<br data-start=\"864\" data-end=\"867\">✔ Chamomile (1%)<br data-start=\"883\" data-end=\"886\">✔ Horse Chestnut Extract (0.5%)</p>', '<p data-start=\"947\" data-end=\"1120\">Apply a generous amount of Hyaluronic Anti-Wrinkle Gel to the skin, focusing on areas of concern.<br data-start=\"1044\" data-end=\"1047\">Gently massage into the skin using circular motions until fully absorbed.</p>', 1, 0, 4, '2025-11-26 09:08:17', '2025-11-26 09:10:25'),
(28, 5, 'Neutral Gel', 'All Skin Types / Congested Skin', 'neutral-gel', 'proImage1-6cTN9hRw.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"221\" data-end=\"492\">Neutral Gel is a conductive gel formulated to enhance product penetration and increase the effectiveness of skincare treatments. Designed for use with technology-based serums and devices, it supports optimal treatment performance and delivers smoother, more even results.</p>\r\n<p data-start=\"494\" data-end=\"538\">✔ Optimal technology treatment enhancement</p>', '<p>✔ Green Tea Leaf Extract (0.5%)<br data-start=\"601\" data-end=\"604\">✔ Linden (0.5%)<br data-start=\"619\" data-end=\"622\">✔ Chamomile (0.5%)<br data-start=\"640\" data-end=\"643\">✔ Horse Chestnut Extract (0.5%)<br data-start=\"674\" data-end=\"677\">✔ Allantoin (0.5%)</p>', '<p>Blend 10&ndash;20 ml of Neutral Gel with the recommended serums.<br data-start=\"783\" data-end=\"786\">Apply the mixture to the treatment area and use appropriate technology for best results.</p>', 1, 0, 4, '2025-11-26 09:15:05', '2025-11-26 09:16:45'),
(29, 5, 'PorePrep', 'Opens & Cleanses Pores', 'poreprep', 'proImage1-15tRI1YE.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"206\" data-end=\"533\">PorePrep is designed exclusively for skincare professionals. This soothing gel is an essential tool in the treatment room, gently opening the skin&rsquo;s pores to prepare it for extractions and advanced procedures. It also perfectly complements Vapozone treatments, ensuring optimal results and delivering a superior spa experience.</p>\r\n<p data-start=\"535\" data-end=\"560\">✔ Gentle pore cleansing</p>', '<p>✔ Urea<br data-start=\"598\" data-end=\"601\">✔ Glycerin</p>', '<p>Generously apply the Soothing Gel to the skin, ensuring even coverage.<br data-start=\"711\" data-end=\"714\">Wrap the treated area with cling wrap and allow it to sit for approximately 10 minutes.<br data-start=\"801\" data-end=\"804\">During professional treatments, use a spatula or cotton tips for precise extractions.</p>', 1, 0, 4, '2025-11-26 09:18:16', '2025-11-26 09:19:18'),
(30, 6, 'UV Cream', 'All Skin Types', 'uv-cream', 'proImage1-ixKsCtZZ.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"198\" data-end=\"499\">UV Cream is a lightweight, non-greasy moisturiser that blends seamlessly into the skin. Formulated to leave no white cast, it is ideal for daily use and wears beautifully under makeup. This protective cream helps prevent photo-ageing while keeping the skin hydrated and comfortable throughout the day.</p>\r\n<p data-start=\"501\" data-end=\"576\">✔ Two-in-one moisturiser<br data-start=\"525\" data-end=\"528\">✔ Prevents photo-ageing<br data-start=\"551\" data-end=\"554\">✔ Non-greasy formula</p>', '<p>✔ Ethylhexyl Methoxycinnamate<br data-start=\"637\" data-end=\"640\">✔ Benzophenone-3<br data-start=\"656\" data-end=\"659\">✔ Phospholipids (2%)<br data-start=\"679\" data-end=\"682\">✔ Vitamin E (1.5%)</p>', '<p data-start=\"730\" data-end=\"862\">Apply a generous amount 20 minutes before sun exposure or after treatments.<br data-start=\"805\" data-end=\"808\">Reapply at least every 2 hours for optimal protection.</p>', 1, 0, 4, '2025-11-26 09:22:26', '2025-11-26 09:23:31'),
(31, 7, 'Herbal Mask', 'All Skin Types / Dehydrated / Sensitive Skin', 'herbal-mask', 'proImage1-ocOJWwYF.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"234\" data-end=\"622\">The Herbal Mask is infused with a powerful blend of natural extracts that replenish the skin with essential moisture, vitamins, and fatty acids. This soothing formulation helps restore the skin&rsquo;s natural lipid balance while visibly calming, protecting, and nourishing the complexion. It also supports the natural synthesis of collagen and elastin for healthier, more radiant-looking skin.</p>\r\n<p data-start=\"624\" data-end=\"708\">✔ Calms and soothes<br data-start=\"643\" data-end=\"646\">✔ Prevents transepidermal water loss<br data-start=\"682\" data-end=\"685\">✔ Restores pH balance</p>', '<p>✔ Green Tea<br data-start=\"751\" data-end=\"754\">✔ Linden<br data-start=\"762\" data-end=\"765\">✔ St. John&rsquo;s Wort<br data-start=\"782\" data-end=\"785\">✔ Chamomile<br data-start=\"796\" data-end=\"799\">✔ Horse Chestnut Seed Extract (3%)<br data-start=\"833\" data-end=\"836\">✔ Kaolin</p>', '<p>Using a mask brush, apply an even layer of the Herbal Mask over the entire face.<br data-start=\"954\" data-end=\"957\">Leave on for 15 minutes, then rinse thoroughly with lukewarm water.</p>', 1, 0, 4, '2025-11-26 09:35:14', '2025-11-26 09:36:17'),
(32, 7, 'Hyaluronic Mask', 'All Skin Types / Dry / Dehydrated Skin', 'hyaluronic-mask', 'proImage1-0hGMtOxW.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"260\" data-end=\"666\">The Hyaluronic Mask is a luxurious, deeply hydrating treatment designed to revitalise and plump the skin. Formulated with potent humectants, botanicals, and antioxidants, it delivers intense moisture while helping to smooth fine lines and protect the skin from environmental damage. This mask supports healthy collagen production and reinforces the skin&rsquo;s moisture barrier for a supple, radiant complexion.</p>\r\n<p data-start=\"668\" data-end=\"761\">✔ Intense hydration<br data-start=\"687\" data-end=\"690\">✔ Promotes collagen production<br data-start=\"720\" data-end=\"723\">✔ Prevents transepidermal water loss</p>', '<p>✔ Cucumber Extract (3%)<br data-start=\"816\" data-end=\"819\">✔ Hyaluronic Acid (1%)<br data-start=\"841\" data-end=\"844\">✔ Allantoin<br data-start=\"855\" data-end=\"858\">✔ Betula Alba Bark Extract<br data-start=\"884\" data-end=\"887\">✔ Aloe Vera<br data-start=\"898\" data-end=\"901\">✔ Green Tea Extract</p>', '<p>Use a mask brush to apply a generous, even layer of the Hyaluronic Mask to the face and neck, avoiding the eyelids.<br data-start=\"1065\" data-end=\"1068\">Leave on for 5&ndash;10 minutes, then rinse off with lukewarm water.</p>', 1, 0, 4, '2025-11-26 09:38:03', '2025-11-26 09:40:26'),
(33, 7, 'Rebalancing Mask', 'Normal / Oily / Combination / Mature Skin', 'rebalancing-mask', 'proImage1-rOXx7rpg.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"241\" data-end=\"541\">The Rebalancing Mask is a clay-based treatment ideal for mature or congested skin. It rejuvenates the complexion by regulating excess oil, clearing dead skin cells, and calming irritation. This mask helps balance the skin&rsquo;s pH levels while promoting a smoother, clearer, and more youthful appearance.</p>\r\n<p data-start=\"543\" data-end=\"668\">✔ Regulates excess oil production<br data-start=\"576\" data-end=\"579\">✔ Prevents redness and irritation<br data-start=\"612\" data-end=\"615\">✔ Balances pH levels<br data-start=\"635\" data-end=\"638\">✔ Soothes and heals the skin</p>', '<p>✔ Kaolin (15%)<br data-start=\"714\" data-end=\"717\">✔ Zinc Oxide (4%)<br data-start=\"734\" data-end=\"737\">✔ Algae Extract (5%)<br data-start=\"757\" data-end=\"760\">✔ Aloe Barbadensis (2%)</p>', '<p>Apply a generous layer of the Rebalancing Mask to the face and neck using a mask brush, avoiding the delicate eye area.<br data-start=\"932\" data-end=\"935\">Leave on for 15 minutes, then rinse off with lukewarm water.</p>', 1, 0, 4, '2025-11-26 09:41:56', '2025-11-26 09:43:09'),
(34, 7, 'Soothing Mask', 'All Skin Types / Sensitive / Barrier-Impaired Skin', 'soothing-mask', 'proImage1-FaXjWb74.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"244\" data-end=\"618\">The Soothing Mask is formulated with a nourishing blend ideal for sensitive and compromised skin. Enriched with honey, St. John&rsquo;s Wort, calendula extract, and phospholipids, it delivers exceptional moisturising and calming benefits while supporting the skin&rsquo;s natural repair process. This mask helps restore comfort, reduce inflammation, and strengthen the moisture barrier.</p>\r\n<p data-start=\"620\" data-end=\"708\">✔ Promotes cellular turnover<br data-start=\"648\" data-end=\"651\">✔ Provides moisture and hydration<br data-start=\"684\" data-end=\"687\">✔ Anti-inflammatory</p>', '<p>✔ Zinc Oxide (4%)<br data-start=\"757\" data-end=\"760\">✔ Honey (6%)<br data-start=\"772\" data-end=\"775\">✔ Calendula Flower Extract (1%)</p>', '<p>Apply a generous layer of the Soothing Mask to the face and neck using a mask brush, avoiding the delicate eye area.<br data-start=\"952\" data-end=\"955\">Leave on for 15 minutes, then rinse off with lukewarm water.</p>', 1, 0, 4, '2025-11-26 09:44:25', '2025-11-26 09:45:32'),
(35, 7, 'Dermal Mask', 'Oily / Congested / Acne-Prone Skin', 'dermal-mask', 'proImage1-2Fu1Qp5k.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"224\" data-end=\"568\">The Dermal Mask is an antibacterial and anti-inflammatory treatment designed specifically for oily, congested, and acne-prone skin. This purifying formula helps clear impurities, regulate sebum production, and detoxify the skin while supporting gentle exfoliation and renewal. It can also be used as a targeted spot treatment for problem areas.</p>\r\n<p data-start=\"570\" data-end=\"725\">✔ Suitable for use as a targeted spot treatment<br data-start=\"617\" data-end=\"620\">✔ Regulates sebum production<br data-start=\"648\" data-end=\"651\">✔ Anti-inflammatory action<br data-start=\"677\" data-end=\"680\">✔ Supports exfoliation and cellular renewal</p>', '<p>✔ Salicylic Acid (1%)<br data-start=\"778\" data-end=\"781\">✔ Glycerin (3%)<br data-start=\"796\" data-end=\"799\">✔ Zinc Oxide (3%)<br data-start=\"816\" data-end=\"819\">✔ Kaolin (12%)<br data-start=\"833\" data-end=\"836\">✔ Tea Tree Oil (2%)</p>', '<p>Apply a generous layer of the Dermal Mask to the face and neck using a mask brush, avoiding the delicate eye area.<br data-start=\"999\" data-end=\"1002\">Leave on for 15 minutes, then rinse off with lukewarm water.</p>', 1, 0, 4, '2025-11-26 09:47:11', '2025-11-26 09:48:18'),
(36, 8, 'Glow Peel Serum', 'All Skin Types / Age Concerns / Problematic / Dehydrated Skin', 'glow-peel-serum', 'proImage1-qo3zIdsD.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"259\" data-end=\"602\">Glow Peel Serum is an advanced exfoliating formula enriched with a blend of herbal enzymes and lactic acid. It gently removes dull, lifeless skin cells while refining texture and boosting radiance. This rejuvenating serum accelerates cellular renewal, smooths fine lines, and deeply hydrates to reveal a brighter, healthier-looking complexion.</p>\r\n<p data-start=\"604\" data-end=\"724\">✔ Long-lasting hydration<br data-start=\"628\" data-end=\"631\">✔ Accelerates cellular renewal<br data-start=\"661\" data-end=\"664\">✔ Smoothes wrinkles and fine lines<br data-start=\"698\" data-end=\"701\">✔ Brightens skin tone</p>', '<p>✔ Lactic Acid (15%)<br data-start=\"775\" data-end=\"778\">✔ Arginine<br data-start=\"788\" data-end=\"791\">✔ Hyaluronic Acid (2%)<br data-start=\"813\" data-end=\"816\">✔ Aloe Barbadensis Leaf Juice</p>', '<p data-start=\"875\" data-end=\"982\">In the evening, apply 3&ndash;4 drops of Glow Peel Serum to cleansed skin.<br data-start=\"943\" data-end=\"946\">Gently massage until fully absorbed.</p>', 1, 0, 4, '2025-11-26 09:50:01', '2025-11-26 09:50:51'),
(37, 8, 'Peeling Cream', 'All Skin Types / Dehydrated / Oily / Uneven Skin Tone', 'peeling-cream', 'proImage1-eZi9KuvD.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"247\" data-end=\"544\">Peeling Cream is a potent mechanical exfoliant designed for both the face and body. Formulated with gentle embedded beads, it effectively removes dead skin cells to reveal smoother, refreshed, and more radiant skin. Ideal for improving texture, boosting softness, and enhancing product absorption.</p>\r\n<p data-start=\"546\" data-end=\"616\">✔ Suitable for face and body<br data-start=\"574\" data-end=\"577\">✔ Smooth, renewing exfoliating action</p>', '<p data-start=\"648\" data-end=\"679\">✔ Almond Extract<br data-start=\"664\" data-end=\"667\">✔ Glycerin</p>', '<p>Apply a pea-sized amount of Peeling Cream to the face or body.<br data-start=\"769\" data-end=\"772\">Gently massage in circular motions for 1&ndash;2 minutes, depending on the desired exfoliation intensity.<br data-start=\"871\" data-end=\"874\">Rinse thoroughly with warm water.</p>', 1, 0, 4, '2025-11-26 09:51:57', '2025-11-26 09:52:46'),
(38, 9, 'Q10 Eye Cream', 'All Skin Types / Fine Lines / Dark Circles / Puffiness', 'q-eye-cream', 'proImage1-xDIThGoy.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"248\" data-end=\"593\">Q10 Eye Cream is a peptide-driven formula designed to strengthen, protect, and rejuvenate the delicate skin around the eyes. Enriched with CoQ10 and nourishing botanicals, it supports cell repair, boosts micro-circulation, and helps diminish dark circles and puffiness. With regular use, the eye area appears firmer, smoother, and more youthful.</p>\r\n<p data-start=\"595\" data-end=\"802\">✔ Protects delicate skin from free radical damage<br data-start=\"644\" data-end=\"647\">✔ Provides hydrating and tightening effects<br data-start=\"690\" data-end=\"693\">✔ Boosts micro-circulation around the eyes<br data-start=\"735\" data-end=\"738\">✔ Reduces the appearance of fine lines, wrinkles &amp; crow&rsquo;s feet</p>', '<p>✔ CoQ10 (Coenzyme Q10)<br data-start=\"856\" data-end=\"859\">✔ Grape Seed Oil<br data-start=\"875\" data-end=\"878\">✔ Elastine<br data-start=\"888\" data-end=\"891\">✔ Jojoba Seed Oil</p>', '<p>Apply half a pea-sized amount of Q10 Eye Cream to the desired eye area.<br data-start=\"1009\" data-end=\"1012\">Gently massage until the cream is fully absorbed.<br data-start=\"1061\" data-end=\"1064\">Avoid direct contact with the eyes.</p>', 1, 0, 4, '2025-11-26 09:55:05', '2025-11-26 09:55:56'),
(39, 10, 'Hyaluronic Acid', 'Dry / Dehydrated Skin / Fine Lines & Wrinkles', 'hyaluronic-acid', 'proImage1-QrkwDNZT.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"243\" data-end=\"586\">This Hyaluronic Acid serum delivers deep, long-lasting hydration while helping to strengthen the skin barrier and reduce transepidermal water loss. Its lightweight texture absorbs quickly, leaving the skin plump, smooth, and refreshed. It is also fully compatible with other technology serums, making it ideal for advanced skincare treatments.</p>\r\n<p data-start=\"588\" data-end=\"727\">✔ Reduces transepidermal water loss<br data-start=\"623\" data-end=\"626\">✔ Compatible with other technology serums<br data-start=\"667\" data-end=\"670\">✔ Long-lasting hydration<br data-start=\"694\" data-end=\"697\">✔ Provides a plumping effect</p>', '<p>✔ Sodium Hyaluronate</p>', '<p data-start=\"808\" data-end=\"936\">For meso-poration and ultrasound treatments, mix the serum with Neutral Gel and perform the treatment according to instructions.</p>', 1, 0, 4, '2025-11-26 09:58:19', '2025-11-26 09:59:08'),
(40, 10, 'C Peptide', 'All Skin Types / Pigmentation / Sun-Damaged Skin / Mature Skin', 'c-peptide', 'proImage1-bYLzLzpq.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"248\" data-end=\"532\">C Peptide Serum combines a potent blend of peptides with vitamin C to brighten, rejuvenate, and strengthen the skin. This advanced formula helps lighten pigmentation, improve overall texture, and reduce visible signs of ageing by increasing cellular turnover and smoothing fine lines.</p>\r\n<p data-start=\"534\" data-end=\"645\">✔ Lightens pigmentation<br data-start=\"557\" data-end=\"560\">✔ Reduces the appearance of fine lines and wrinkles<br data-start=\"611\" data-end=\"614\">✔ Increases cellular turnover</p>', '<p>✔ Cucumber Extract (4%)<br data-start=\"700\" data-end=\"703\">✔ Soy Peptide (7%)</p>', '<p>For meso-poration and ultrasound treatments, mix the serum with Neutral Gel and perform the treatment according to instructions.</p>', 1, 0, 4, '2025-11-26 10:00:13', '2025-11-26 10:01:40'),
(41, 10, 'Niacin', 'Sensitive / Barrier-Impaired / Problematic / Pigmentation', 'niacin', 'proImage1-PqDoKVBC.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"237\" data-end=\"556\">Niacin helps strengthen the skin barrier, improving moisture retention and boosting resilience. It reduces the appearance of uneven skin tone, dark spots, and fine lines while encouraging collagen production. This gentle yet powerful serum also enhances texture, supports moisture balance, and repairs compromised skin.</p>\r\n<p data-start=\"558\" data-end=\"666\">✔ Reduces pigmentation<br data-start=\"580\" data-end=\"583\">✔ Aids skin moisture<br data-start=\"603\" data-end=\"606\">✔ Repairs the skin barrier<br data-start=\"632\" data-end=\"635\">✔ Evens skin tone and texture</p>', '<p>✔ Niacinamide (10%)</p>', '<p data-start=\"746\" data-end=\"874\">For meso-poration and ultrasound treatments, mix the serum with Neutral Gel and perform the treatment according to instructions.</p>', 1, 0, 4, '2025-11-26 10:03:47', '2025-11-26 10:04:41'),
(42, 10, 'Caviar', 'Mature Skin', 'caviar', 'proImage1-uW5OkuCk.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"197\" data-end=\"564\">Caviar is a highly effective moisturising and antioxidant-rich treatment designed to deeply hydrate and revitalise mature skin. Its luxurious formula supports overall skin health, restores essential moisture, and enhances softness and suppleness. Caviar also helps strengthen the skin barrier while boosting hydration levels for a more youthful, resilient complexion.</p>\r\n<p data-start=\"566\" data-end=\"690\">✔ Improves skin health<br data-start=\"588\" data-end=\"591\">✔ Restores moisture levels<br data-start=\"617\" data-end=\"620\">✔ Helps restore barrier function<br data-start=\"652\" data-end=\"655\">✔ Increases hydration in the skin</p>', '<p data-start=\"721\" data-end=\"745\">✔ Caviar Extract (10%)</p>', '<p data-start=\"773\" data-end=\"901\">For meso-poration and ultrasound treatments, mix the serum with Neutral Gel and perform the treatment according to instructions.</p>', 1, 0, 4, '2025-11-26 10:06:04', '2025-11-26 10:06:53'),
(43, 10, 'Panthenol', 'Dry / Sun-Damaged Skin / Sensitive Skin / Barrier-Impaired', 'panthenol', 'proImage1-ipuBDUo1.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"244\" data-end=\"628\">Panthenol is a vitamin B5&ndash;based serum that delivers deep hydration, comfort, and repair to dry or sensitised skin. Its soothing properties help calm irritation, redness, and itching, while supporting the skin&rsquo;s healing processes. Panthenol also strengthens the skin barrier, enhances moisture retention, and promotes collagen and elastin production for healthier, more resilient skin.</p>\r\n<p data-start=\"630\" data-end=\"787\">✔ Calms inflammation and speeds wound healing<br data-start=\"675\" data-end=\"678\">✔ Promotes collagen and elastin production<br data-start=\"720\" data-end=\"723\">✔ Strengthens the skin barrier<br data-start=\"753\" data-end=\"756\">✔ Helps repair sensitive skin</p>', '<p data-start=\"818\" data-end=\"837\">✔ Panthenol (25%)</p>', '<p>For meso-poration and ultrasound treatments, mix the serum with Neutral Gel and perform the treatment according to instructions.</p>', 1, 0, 4, '2025-11-26 10:08:35', '2025-11-26 10:09:32'),
(44, 10, 'Phosphatidylcholine', 'All Skin Types / Body & Skin Treatments', 'phosphatidylcholine', 'proImage1-8a4AiaOK.webp', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 1, '2025-11-26 10:19:56', '0000-00-00 00:00:00'),
(45, 10, 'Phosphatidylcholine', 'All Skin Types / Body & Skin Treatments', 'phosphatidylcholine', 'proImage1-Z5LPr2WW.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"245\" data-end=\"642\">Phosphatidylcholine is an active serum that blends seamlessly with other treatment serums to enhance overall skin results. It supports skin regeneration, boosts hydration, and strengthens the skin barrier while improving the absorption and effectiveness of complementary products. This serum also aids cellular rejuvenation and reduces transepidermal water loss for healthier, more resilient skin.</p>\r\n<p data-start=\"644\" data-end=\"764\">✔ Aids in skin regeneration<br data-start=\"671\" data-end=\"674\">✔ Enhanced product penetration<br data-start=\"704\" data-end=\"707\">✔ Improves hydration<br data-start=\"727\" data-end=\"730\">✔ Supports cellular rejuvenation</p>', '<p>✔ Phospholipids (5%)</p>', '<p>For meso-poration and ultrasound treatments, mix the serum with Neutral Gel and perform the treatment according to instructions.</p>', 1, 0, 4, '2025-11-26 10:20:26', '2025-11-26 10:21:30'),
(46, 10, 'Green Tea', 'Face & Body / Problematic / Sensitive Skin', 'green-tea', 'proImage1-5yowjtdl.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"228\" data-end=\"607\">Harnessing the power of green tea&rsquo;s potent polyphenols&mdash;especially EGCG&mdash;this serum delivers exceptional antioxidant protection. Green Tea Serum supports hydration, strengthens the skin barrier, and aids in recovery from UV damage. Its anti-inflammatory properties soothe redness, calm irritation, and promote overall skin repair. Suitable for sensitive and problematic skin types.</p>\r\n<p data-start=\"609\" data-end=\"826\">✔ Rich in catechins like EGCG&mdash;potent antioxidant blend<br data-start=\"663\" data-end=\"666\">✔ Exhibits anti-inflammatory effects; soothes and reduces redness<br data-start=\"731\" data-end=\"734\">✔ Fortifies the skin&rsquo;s structure<br data-start=\"766\" data-end=\"769\">✔ Aids in fat oxidation<br data-start=\"792\" data-end=\"795\">✔ Promotes collagen synthesis</p>', '<p>✔ Green Tea Extract (5%)</p>', '<p data-start=\"911\" data-end=\"1039\">For meso-poration and ultrasound treatments, mix the serum with Neutral Gel and perform the treatment according to instructions.</p>', 1, 0, 4, '2025-11-26 10:23:45', '2025-11-26 10:25:21');
INSERT INTO `tbl_product` (`pro_id`, `cat_id`, `pro_name`, `sub_title`, `pro_url`, `image1`, `image2`, `image3`, `image4`, `alt1`, `alt2`, `alt3`, `alt4`, `imgTitle1`, `imgTitle2`, `imgTitle3`, `imgTitle4`, `description`, `keyIngred`, `application`, `status`, `show_front`, `activeTab`, `added_at`, `update_at`) VALUES
(48, 10, 'Liposome', 'Technology Serum / Hydration Booster', 'liposome', 'proImage1-2URKTpeb.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"220\" data-end=\"590\">The Liposome technology serum enhances the absorption of active ingredients, allowing them to penetrate deeper into the skin for more targeted and effective results. It can be used alone for added hydration or combined with other technology serums to amplify their benefits. Liposome Serum helps replenish moisture, reduce oxidative stress, and support cellular renewal.</p>\r\n<p data-start=\"592\" data-end=\"741\">✔ Facilitates deeper penetration of ingredients<br data-start=\"639\" data-end=\"642\">✔ Helps replenish and lock in moisture<br data-start=\"680\" data-end=\"683\">✔ Reduces oxidative stress<br data-start=\"709\" data-end=\"712\">✔ Supports cellular renewal</p>', '<p data-start=\"773\" data-end=\"804\">✔ Phospholipids<br data-start=\"788\" data-end=\"791\">✔ Liposomes</p>', '<p data-start=\"832\" data-end=\"968\">For meso-poration and ultrasound treatments, mix the serum with other active serums and perform the treatment according to instructions.</p>', 1, 0, 4, '2025-11-26 10:30:58', '2025-11-26 10:31:58'),
(49, 10, 'Caffeine', 'All Skin Types / Irritated / Inflamed Skin / Pre-Mature Skin', 'caffeine', 'proImage1-CmKhfUzI.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"244\" data-end=\"677\">Caffeine Serum is a powerful antioxidant treatment that helps protect and repair skin damaged by pollutants and environmental aggressors. Known for its anti-ageing properties, caffeine helps reduce discoloration, calm inflammation, and brighten the complexion. Its energising effect supports cellular activity, combats signs of fatigue, and promotes healthier, more radiant skin. Also highly effective for body contouring treatments.</p>\r\n<p data-start=\"679\" data-end=\"914\">✔ Promotes improved microcirculation<br data-start=\"715\" data-end=\"718\">✔ Reduces the appearance of puffiness<br data-start=\"755\" data-end=\"758\">✔ Anti-inflammatory<br data-start=\"777\" data-end=\"780\">✔ Soothes and calms the skin<br data-start=\"808\" data-end=\"811\">✔ Acts as a cellular energiser to combat fatigue<br data-start=\"859\" data-end=\"862\">✔ Provides robust protection against free radicals</p>', '<p>✔ Caffeine (5%)</p>', '<p data-start=\"990\" data-end=\"1126\">For meso-poration and ultrasound treatments, mix the serum with other active serums and perform the treatment according to instructions.</p>', 1, 0, 4, '2025-11-26 10:50:16', '2025-11-26 10:51:21'),
(50, 11, 'Anticellulite Thermo Gel', 'Cellulite Reduction / Body Contouring / Firming Treatment', 'anticellulite-thermo-gel', 'proImage1-53ewLGCQ.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"273\" data-end=\"607\">This professional-grade Thermo Gel is formulated to target cellulite and support fat reduction through a warming (thermal) effect. It stimulates lipolysis, promotes detoxification, and helps reduce the visibility of cellulite. With consistent use, it enhances skin tone, contributes to a firmer appearance, and smooths uneven texture.</p>\r\n<p data-start=\"609\" data-end=\"789\">✔ Stimulates lipolysis<br data-start=\"631\" data-end=\"634\">✔ Promotes detoxification<br data-start=\"659\" data-end=\"662\">✔ Reduces the visibility of cellulite<br data-start=\"699\" data-end=\"702\">✔ Improves skin tone for a firmer appearance<br data-start=\"746\" data-end=\"749\">✔ Contributes to smoother skin texture</p>', '<p>✔ Caffeine (1%)<br data-start=\"836\" data-end=\"839\">✔ Ivy Extract (3%)<br data-start=\"857\" data-end=\"860\">✔ Glycerin<br data-start=\"870\" data-end=\"873\">✔ Algae Extract (3%)<br data-start=\"893\" data-end=\"896\">✔ Cinnamon Oil<br data-start=\"910\" data-end=\"913\">✔ Rosemary Oil</p>', '<p>Wear gloves and gently apply the Anti-Cellulite Thermogel to cellulite-prone areas.<br data-start=\"1040\" data-end=\"1043\">Cover with foil wrap and leave on for 15 minutes.<br data-start=\"1092\" data-end=\"1095\">Wipe off with a cool, damp cloth.</p>', 1, 0, 4, '2025-11-26 10:55:04', '2025-11-26 10:56:18'),
(51, 11, 'Anticellulite Crio Gel', 'Cellulite Reduction / Firming / Body Contouring', 'anticellulite-crio-gel', 'proImage1-y3UNNuV8.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"259\" data-end=\"660\">Anticellulite Crio Gel is a cutting-edge formula designed to combat cellulite while supporting overall skin health. Enriched with potent active ingredients, this lightweight, non-greasy gel offers a comprehensive approach to firming, smoothing, and refining the appearance of the skin. It also encourages lymphatic drainage and is compatible with ultrasound cavitation treatments for enhanced results.</p>\r\n<p data-start=\"662\" data-end=\"835\">✔ Firming and moisturising<br data-start=\"688\" data-end=\"691\">✔ Prevents cellulite formation<br data-start=\"721\" data-end=\"724\">✔ Encourages lymphatic drainage<br data-start=\"755\" data-end=\"758\">✔ Increased firmness and elasticity<br data-start=\"793\" data-end=\"796\">✔ Ultrasound cavitation compatibility</p>', '<p>✔ Algae Extract (3%)<br data-start=\"887\" data-end=\"890\">✔ Rosemary Oil (1%)<br data-start=\"909\" data-end=\"912\">✔ Caffeine (1%)<br data-start=\"927\" data-end=\"930\">✔ Chamomile</p>', '<p>Generously apply Anticellulite Crio Gel to targeted areas, massaging gently until fully absorbed.<br data-start=\"1068\" data-end=\"1071\">For optimal results, incorporate ultrasound cavitation as part of the treatment protocol.</p>', 1, 0, 4, '2025-11-26 11:08:36', '2025-11-26 11:09:38'),
(53, 11, 'Slimming Gel', 'All Skin Types', 'slimming-gel', 'proImage1-kRpdOOag.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"206\" data-end=\"525\">Slimming Gel is formulated to support weight loss by helping break down fatty deposits and detoxify tissues. This powerful blend can be used as a massage cream or infused with technology-based treatments. With consistent use, it helps reduce the appearance of cellulite and improves the skin&rsquo;s overall tone and texture.</p>\r\n<p data-start=\"527\" data-end=\"566\">✔ Reduces the appearance of cellulite</p>', '<p>✔ Caffeine (3%)<br data-start=\"613\" data-end=\"616\">✔ Horse Chestnut Seed Extract (0.2%)<br data-start=\"652\" data-end=\"655\">✔ Ivy Extract</p>', '<p>Gently massage Slimming Gel onto the target area until fully absorbed.<br data-start=\"768\" data-end=\"771\">Can be used between cavitation or other body contouring treatments.</p>', 1, 0, 4, '2025-11-26 11:12:31', '2025-11-26 11:13:21'),
(54, 11, 'Chocolate Milk', 'All Skin Types / Dry / Dehydrated Body Skin', 'chocolate-milk', 'proImage1-IUOyONOW.webp', '', '', '', '', '', '', '', '', '', '', '', '<p>Infused with the richness of chocolate, this luxuriously crafted body treatment deeply nourishes and moisturises the skin. Chocolate Milk leaves the body feeling exceptionally soft, smooth, and hydrated, making it perfect for dry or moisture-depleted skin.</p>', '<p data-start=\"527\" data-end=\"571\">✔ Caprylic Acid (9%)<br data-start=\"547\" data-end=\"550\">✔ Cocoa Butter (4%)</p>', '<p>Gently massage onto the skin, concentrating on areas that need extra nourishment.</p>', 1, 0, 4, '2025-11-26 11:14:50', '2025-11-26 11:15:46'),
(55, 11, 'Natural Milk', 'All Skin Types / Dry / Dehydrated Body Skin / Stretch Marks', 'natural-milk', 'proImage1-34wht9P0.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"251\" data-end=\"620\">Crafted from natural, skin-loving ingredients, Natural Milk is a luxurious body treatment designed to relax, deeply hydrate, and visibly improve skin texture. It helps diminish the appearance of stretch marks, leaving the skin soft, smooth, and plump. Its nourishing formula is especially beneficial for pregnant women or anyone seeking extra moisture and skin support.</p>\r\n<p data-start=\"622\" data-end=\"753\">✔ Provides deep hydration for soft, plump skin<br data-start=\"668\" data-end=\"671\">✔ Helps reduce the appearance of stretch marks<br data-start=\"717\" data-end=\"720\">✔ Beneficial for pregnant women</p>', '<p>✔ Marigold<br data-start=\"795\" data-end=\"798\">✔ Olive Oil<br data-start=\"809\" data-end=\"812\">✔ Stearic Acid<br data-start=\"826\" data-end=\"829\">✔ Grape Seed Oil<br data-start=\"845\" data-end=\"848\">✔ Vitamin E<br data-start=\"859\" data-end=\"862\">✔ Allantoin<br data-start=\"873\" data-end=\"876\">✔ Olive Fruit Oil<br data-start=\"893\" data-end=\"896\">✔ Calendula Extract<br data-start=\"915\" data-end=\"918\">✔ Panthenol<br data-start=\"929\" data-end=\"932\">✔ Lavender Oil</p>', '<p data-start=\"976\" data-end=\"1070\">Gently massage Natural Milk onto the skin, concentrating on areas that need extra nourishment.</p>', 1, 0, 4, '2025-11-26 11:23:42', '2025-11-26 11:29:53'),
(56, 11, 'Ultra-Firming Cream', 'All Skin Types / Laxed Skin', 'ultra-firming-cream', 'proImage1-Gkb02rR5.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"233\" data-end=\"536\">Experience the power of an innovative blend of proteins, herbal extracts, and antioxidants with the Ultra-Firming Cream. This rejuvenating formula enhances skin elasticity, improves firmness, and promotes a more toned appearance. With regular use, the skin becomes smoother, tighter, and more resilient.</p>\r\n<p data-start=\"538\" data-end=\"626\">✔ Resistant to loss of elasticity<br data-start=\"571\" data-end=\"574\">✔ Improves firmness and tone<br data-start=\"602\" data-end=\"605\">✔ Astringent action</p>', '<p>✔ Elastin<br data-start=\"667\" data-end=\"670\">✔ Glycine Soya<br data-start=\"684\" data-end=\"687\">✔ Ivy Extract<br data-start=\"700\" data-end=\"703\">✔ Green Tea Extract<br data-start=\"722\" data-end=\"725\">✔ Horse Chestnut Extract<br data-start=\"749\" data-end=\"752\">✔ Stearic Acid</p>', '<p>Apply the cream twice daily to the desired areas of the body.<br data-start=\"857\" data-end=\"860\">Gently massage until fully absorbed.</p>', 1, 0, 4, '2025-11-26 11:32:11', '2025-11-26 11:33:16'),
(57, 11, 'Anticellulite Wrap', 'Firming / Cellulite Reduction / Body Treatment', 'anticellulite-wrap', 'proImage1-bxwuDxXU.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"250\" data-end=\"585\">Anticellulite Wrap is a body-firming treatment meticulously formulated to enhance skin elasticity and tone. Its powerful active ingredients help fortify the skin, promote blood circulation, and support toxin elimination. With consistent use, it reduces the appearance of cellulite, revealing smoother, firmer, and tighter-looking skin.</p>\r\n<p data-start=\"587\" data-end=\"714\">✔ Enhances skin elasticity<br data-start=\"613\" data-end=\"616\">✔ Increases blood circulation<br data-start=\"645\" data-end=\"648\">✔ Accelerates toxin elimination<br data-start=\"679\" data-end=\"682\">✔ Reduces cellulite appearance</p>', '<p>✔ Ivy Extract (3%)<br data-start=\"764\" data-end=\"767\">✔ Algae Extract (3%)<br data-start=\"787\" data-end=\"790\">✔ Laminaria Peptide Extract<br data-start=\"817\" data-end=\"820\">✔ St John&rsquo;s Wort<br data-start=\"836\" data-end=\"839\">✔ Caffeine<br data-start=\"849\" data-end=\"852\">✔ Rosemary Oil (1%)<br data-start=\"871\" data-end=\"874\">✔ Caffeine (1%)<br data-start=\"889\" data-end=\"892\">✔ Chamomile<br data-start=\"903\" data-end=\"906\">✔ Yarrow Extract</p>', '<p>Massage the gel into cellulite-prone areas.<br data-start=\"995\" data-end=\"998\">Wrap the treated area in foil and leave on for 30 minutes.<br data-start=\"1056\" data-end=\"1059\">Remove the foil and wipe away any residue with a wet towel.</p>', 1, 0, 4, '2025-11-26 11:35:01', '2025-11-26 11:36:14'),
(58, 12, 'Argipeel', 'All Skin Types', 'argipeel', 'proImage1-dmh6wzxg.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"198\" data-end=\"564\">Argipeel is a gentle enzyme peel suitable even for sensitive skin types, delivering effective results without causing strong reactions. This advanced peel boosts collagen synthesis, enhances skin elasticity, and helps reduce the appearance of fine lines and wrinkles. It also supports the renewal of damaged skin while providing deep hydration and soothing benefits.</p>\r\n<p data-start=\"566\" data-end=\"701\">✔ Improves fine lines<br data-start=\"587\" data-end=\"590\">✔ Aloe Barbadensis Leaf Juice &ndash; soothing &amp; hydrating<br data-start=\"642\" data-end=\"645\">✔ Keratolytic action<br data-start=\"665\" data-end=\"668\">✔ Stimulates collagen synthesis</p>', '<p>✔ Allantoin<br data-start=\"744\" data-end=\"747\">✔ Hyaluronic Acid<br data-start=\"764\" data-end=\"767\">✔ Lactic Acid<br data-start=\"780\" data-end=\"783\">✔ Arginine</p>', '', 1, 0, 4, '2025-11-26 11:38:35', '2025-11-26 11:41:40'),
(59, 12, 'AHA 20 Peel', 'All Skin Types / Problematic Skin / Age Concerns', 'aha--peel', 'proImage1-Hld9uxZO.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"238\" data-end=\"540\">AHA 20 Peel combines the power of lactic and glycolic acids to deliver a superior keratolytic effect. This advanced formula enhances cellular regeneration, boosts hydration, and promotes smoother, brighter, and more refined skin. Ideal for targeting dullness, uneven texture, and early signs of ageing.</p>\r\n<p data-start=\"542\" data-end=\"679\">✔ Encourages cellular regeneration<br data-start=\"576\" data-end=\"579\">✔ Increases moisture and hydration levels<br data-start=\"620\" data-end=\"623\">✔ Illuminates and brightens<br data-start=\"650\" data-end=\"653\">✔ Retextures and softens</p>', '<p>✔ Lactic Acid (20%)<br data-start=\"730\" data-end=\"733\">✔ Glycolic Acid</p>', '', 1, 0, 4, '2025-11-26 11:43:08', '2025-11-26 11:44:39'),
(60, 12, 'Renew Peel', 'Dry / Pigmented / Fine Lines & Wrinkles', 'renew-peel', 'proImage1-sLDOmIn7.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"227\" data-end=\"545\">Renew Peel is a 30% AHA chemical peel that delivers gentle yet effective exfoliation, leaving the skin smoother, brighter, and more hydrated. This advanced formulation works synergistically to target fine lines, wrinkles, pigmentation, loss of firmness, and dull skin&mdash;promoting a revitalised and even-toned complexion.</p>\r\n<p data-start=\"547\" data-end=\"742\">✔ Lightens skin pigmentation<br data-start=\"575\" data-end=\"578\">✔ Improves dullness and uneven skin tone<br data-start=\"618\" data-end=\"621\">✔ Strengthens the stratum corneum<br data-start=\"654\" data-end=\"657\">✔ Stimulates collagen synthesis<br data-start=\"688\" data-end=\"691\">✔ Reduces the appearance of fine lines &amp; wrinkles</p>', '<p>✔ Copper Peptide (2%)<br data-start=\"795\" data-end=\"798\">✔ Glycolic Acid (12%)<br data-start=\"819\" data-end=\"822\">✔ Lactic Acid (20%)<br data-start=\"841\" data-end=\"844\">✔ Kojic Acid (1.5%)<br data-start=\"863\" data-end=\"866\">✔ Arginine (8%)</p>', '', 1, 0, 3, '2025-11-26 11:46:16', '2025-11-26 11:47:34'),
(61, 12, 'Jessner Peel', 'Acne-Prone / Problematic / Pigmentation', 'jessner-peel', 'proImage1-msViyngi.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"231\" data-end=\"581\">Jessner Peel is a broad-spectrum chemical peel (suitable for Fitzpatrick skin types 1&ndash;3) that harnesses the power of salicylic acid, lactic acid, and citric acid to gently lift away dull, damaged skin. This refining treatment purifies the complexion, smooths texture, and helps reduce acne-related inflammation while promoting clearer, brighter skin.</p>\r\n<p data-start=\"583\" data-end=\"720\">✔ Anti-bacterial action<br data-start=\"606\" data-end=\"609\">✔ Treats acne inflammation<br data-start=\"635\" data-end=\"638\">✔ Purifies and refines pores<br data-start=\"666\" data-end=\"669\">✔ Smooths the appearance of fine lines &amp; wrinkles</p>', '<p data-start=\"752\" data-end=\"797\">✔ Salicylic Acid (20%)<br data-start=\"774\" data-end=\"777\">✔ Citric Acid (9%)</p>', '', 1, 0, 3, '2025-11-26 11:49:05', '2025-11-26 11:50:23'),
(62, 12, 'Reserfc 30', 'Acne-Prone / Problematic / Seborrheic Skin', 'reserfc-', 'proImage1-YDMkQJHW.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"230\" data-end=\"597\">Reserfc 30 is a salicylic acid&ndash;based peel with strong desmolytic and keratolytic properties, making it highly effective for acne-prone and seborrheic skin. Its fat-soluble nature allows it to penetrate deep into pores, dissolve excess sebum, and regulate oil production. This peel helps calm inflammation, purify congested skin, and promote clearer, smoother texture.</p>\r\n<p data-start=\"599\" data-end=\"691\">✔ Prevents acne inflammation<br data-start=\"627\" data-end=\"630\">✔ Stabilises excess sebum<br data-start=\"655\" data-end=\"658\">✔ Purifies and decongests pores</p>', '<p>✔ Salicylic Acid (30% &amp; 20%)</p>', '', 1, 0, 4, '2025-11-26 11:52:08', '2025-11-26 11:53:19'),
(63, 12, 'Enzyme Peel', 'All Skin Types / Sensitive Skin', 'enzyme-peel', 'proImage1-BUt45fCB.webp', '', '', '', '', '', '', '', '', '', '', '', '<p data-start=\"221\" data-end=\"530\">Enzyme Peel harnesses the gentle exfoliating power of rice and papain enzymes to delicately remove dead skin cells. This mild yet effective peel smooths and refines the complexion, making it ideal even for sensitive skin. With regular use, it helps brighten the skin and promotes a renewed, refreshed surface.</p>\r\n<p data-start=\"532\" data-end=\"643\">✔ Refines skin texture<br data-start=\"554\" data-end=\"557\">✔ Brightens the complexion<br data-start=\"583\" data-end=\"586\">✔ Provides a smooth renewing action on the skin surface</p>', '<p>✔ Avena Sativa<br data-start=\"689\" data-end=\"692\">✔ Oryza Sativa<br data-start=\"706\" data-end=\"709\">✔ Zinc Oxide<br data-start=\"721\" data-end=\"724\">✔ Kaolin<br data-start=\"732\" data-end=\"735\">✔ Papain<br data-start=\"743\" data-end=\"746\">✔ Camellia Sinensis Leaf Extract<br data-start=\"778\" data-end=\"781\">✔ Chlorella Vulgaris Extract</p>', '', 1, 0, 3, '2025-11-26 11:55:08', '2025-11-26 11:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_attributes`
--

CREATE TABLE `tbl_product_attributes` (
  `attrId` int(2) NOT NULL,
  `pro_id` int(2) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `value` int(2) NOT NULL,
  `sp` int(2) NOT NULL,
  `status` int(2) NOT NULL COMMENT '0-inactive, 1-active',
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_attributes`
--

INSERT INTO `tbl_product_attributes` (`attrId`, `pro_id`, `unit`, `value`, `sp`, `status`, `added_at`, `update_at`) VALUES
(1, 2, 'ml', 200, 168, 1, '2025-10-30 07:04:28', '2025-10-30 10:12:33'),
(3, 2, 'ml', 100, 87, 1, '2025-10-30 07:48:04', '0000-00-00 00:00:00'),
(4, 3, 'ml', 200, 100, 1, '2025-10-30 10:18:00', '0000-00-00 00:00:00'),
(5, 3, 'ml', 500, 250, 1, '2025-10-30 10:18:21', '0000-00-00 00:00:00'),
(6, 4, 'ml', 200, 57, 1, '2025-10-30 10:22:50', '0000-00-00 00:00:00'),
(7, 5, '10', 200, 199, 1, '2025-11-26 06:41:00', '0000-00-00 00:00:00'),
(8, 6, '10', 200, 199, 1, '2025-11-26 06:47:35', '0000-00-00 00:00:00'),
(9, 7, '10', 200, 199, 1, '2025-11-26 06:50:37', '0000-00-00 00:00:00'),
(10, 8, '10', 200, 199, 1, '2025-11-26 06:53:38', '0000-00-00 00:00:00'),
(11, 9, '10', 30, 199, 1, '2025-11-26 07:26:44', '0000-00-00 00:00:00'),
(12, 10, '10', 30, 199, 1, '2025-11-26 07:32:04', '0000-00-00 00:00:00'),
(13, 11, '10', 30, 199, 1, '2025-11-26 07:34:50', '0000-00-00 00:00:00'),
(14, 12, '10', 30, 199, 1, '2025-11-26 07:39:48', '0000-00-00 00:00:00'),
(15, 13, '10', 30, 199, 1, '2025-11-26 07:46:11', '0000-00-00 00:00:00'),
(16, 14, '10', 30, 199, 1, '2025-11-26 07:53:26', '0000-00-00 00:00:00'),
(17, 15, '10', 30, 199, 1, '2025-11-26 07:56:48', '0000-00-00 00:00:00'),
(18, 16, '10', 50, 199, 1, '2025-11-26 08:27:34', '0000-00-00 00:00:00'),
(19, 17, '10', 50, 199, 1, '2025-11-26 08:29:53', '0000-00-00 00:00:00'),
(20, 18, '10', 60, 199, 1, '2025-11-26 08:32:01', '0000-00-00 00:00:00'),
(21, 19, '10', 50, 199, 1, '2025-11-26 08:35:16', '0000-00-00 00:00:00'),
(22, 20, '10', 30, 199, 1, '2025-11-26 08:40:14', '0000-00-00 00:00:00'),
(23, 21, '10', 60, 109, 1, '2025-11-26 08:42:50', '0000-00-00 00:00:00'),
(24, 22, '10', 50, 199, 1, '2025-11-26 08:44:58', '0000-00-00 00:00:00'),
(25, 23, '10', 60, 199, 1, '2025-11-26 08:49:04', '0000-00-00 00:00:00'),
(26, 24, '10', 60, 199, 1, '2025-11-26 08:52:36', '0000-00-00 00:00:00'),
(27, 25, '10', 50, 199, 1, '2025-11-26 08:56:34', '0000-00-00 00:00:00'),
(28, 26, '10', 60, 199, 1, '2025-11-26 09:05:55', '0000-00-00 00:00:00'),
(29, 27, '10', 30, 199, 1, '2025-11-26 09:10:11', '0000-00-00 00:00:00'),
(30, 28, '10', 200, 10, 1, '2025-11-26 09:16:36', '0000-00-00 00:00:00'),
(31, 29, '10', 200, 199, 1, '2025-11-26 09:19:06', '0000-00-00 00:00:00'),
(32, 30, '10', 50, 199, 1, '2025-11-26 09:23:16', '0000-00-00 00:00:00'),
(33, 31, '10', 50, 199, 1, '2025-11-26 09:36:09', '0000-00-00 00:00:00'),
(34, 32, '10', 50, 199, 1, '2025-11-26 09:39:54', '0000-00-00 00:00:00'),
(35, 33, '10', 50, 199, 1, '2025-11-26 09:42:41', '0000-00-00 00:00:00'),
(36, 34, '10', 50, 199, 1, '2025-11-26 09:45:24', '0000-00-00 00:00:00'),
(37, 35, '10', 50, 199, 1, '2025-11-26 09:47:58', '0000-00-00 00:00:00'),
(38, 36, '10', 30, 199, 1, '2025-11-26 09:50:44', '0000-00-00 00:00:00'),
(39, 37, '10', 200, 199, 1, '2025-11-26 09:52:40', '0000-00-00 00:00:00'),
(40, 38, '10', 30, 199, 1, '2025-11-26 09:55:46', '0000-00-00 00:00:00'),
(41, 39, '10', 20, 199, 1, '2025-11-26 09:58:59', '0000-00-00 00:00:00'),
(42, 40, '10', 20, 199, 1, '2025-11-26 10:01:31', '0000-00-00 00:00:00'),
(43, 41, '10', 20, 199, 1, '2025-11-26 10:04:32', '0000-00-00 00:00:00'),
(44, 42, '10', 20, 199, 1, '2025-11-26 10:06:47', '0000-00-00 00:00:00'),
(45, 43, '10', 20, 199, 1, '2025-11-26 10:09:22', '0000-00-00 00:00:00'),
(46, 45, '10', 20, 199, 1, '2025-11-26 10:21:20', '0000-00-00 00:00:00'),
(47, 46, '10', 20, 199, 1, '2025-11-26 10:24:57', '0000-00-00 00:00:00'),
(48, 48, '10', 20, 199, 1, '2025-11-26 10:31:50', '0000-00-00 00:00:00'),
(49, 49, '10', 20, 199, 1, '2025-11-26 10:51:15', '0000-00-00 00:00:00'),
(50, 50, '10', 200, 199, 1, '2025-11-26 10:56:04', '0000-00-00 00:00:00'),
(51, 51, '10', 20, 199, 1, '2025-11-26 11:09:31', '0000-00-00 00:00:00'),
(52, 53, '10', 20, 199, 1, '2025-11-26 11:13:15', '0000-00-00 00:00:00'),
(53, 54, '10', 200, 199, 1, '2025-11-26 11:15:40', '0000-00-00 00:00:00'),
(54, 55, '10', 200, 199, 1, '2025-11-26 11:29:43', '0000-00-00 00:00:00'),
(55, 56, '10', 125, 199, 1, '2025-11-26 11:33:06', '0000-00-00 00:00:00'),
(56, 57, '10', 200, 199, 1, '2025-11-26 11:35:59', '0000-00-00 00:00:00'),
(57, 58, '10', 30, 199, 1, '2025-11-26 11:40:29', '0000-00-00 00:00:00'),
(58, 59, '10', 30, 199, 1, '2025-11-26 11:44:31', '0000-00-00 00:00:00'),
(59, 60, '10', 30, 199, 1, '2025-11-26 11:47:14', '0000-00-00 00:00:00'),
(60, 61, '10', 30, 199, 1, '2025-11-26 11:50:09', '0000-00-00 00:00:00'),
(61, 63, '10', 125, 199, 1, '2025-11-26 11:56:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_category`
--

CREATE TABLE `tbl_product_category` (
  `id` int(2) NOT NULL,
  `category_name` varchar(200) DEFAULT NULL,
  `status` int(2) NOT NULL COMMENT '0-inactive, 1-active, 2-soft delete',
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_category`
--

INSERT INTO `tbl_product_category` (`id`, `category_name`, `status`, `added_at`, `update_at`) VALUES
(1, 'Cleansers', 1, '2025-10-29 07:07:51', '2025-10-29 07:02:37'),
(2, 'Tonics', 1, '2025-10-29 06:46:41', '2025-10-29 07:02:43'),
(3, 'Serums', 1, '2025-10-29 07:14:54', '0000-00-00 00:00:00'),
(4, 'Treatment Creams', 1, '2025-10-29 07:15:09', '0000-00-00 00:00:00'),
(5, 'Intensive Facial Gels', 1, '2025-10-29 07:15:30', '0000-00-00 00:00:00'),
(6, 'Sun Protection', 1, '2025-10-29 07:15:46', '0000-00-00 00:00:00'),
(7, 'Face Masks', 1, '2025-10-29 07:15:56', '0000-00-00 00:00:00'),
(8, 'Exfoliants', 1, '2025-10-29 07:16:09', '0000-00-00 00:00:00'),
(9, 'Eye Cream', 1, '2025-10-29 07:16:20', '2025-11-26 09:54:30'),
(10, 'Technology Serums', 1, '2025-10-29 07:16:30', '2025-10-30 07:10:56'),
(11, 'Body Products', 1, '2025-10-29 07:17:23', '2025-11-26 10:54:04'),
(12, 'Chemical Peels', 1, '2025-10-29 07:17:44', '2025-10-30 07:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_order`
--

CREATE TABLE `tbl_product_order` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `add_id` int(11) NOT NULL,
  `product_details` text NOT NULL,
  `total_qty` int(11) NOT NULL,
  `net_total` varchar(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-order place, 2-shipped, 3-delivered, 4-cancel',
  `payment_mode` varchar(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `paymentIntentId` varchar(100) NOT NULL,
  `txnId` varchar(100) NOT NULL,
  `orderdate` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_order`
--

INSERT INTO `tbl_product_order` (`id`, `m_id`, `order_id`, `add_id`, `product_details`, `total_qty`, `net_total`, `status`, `payment_mode`, `payment_status`, `paymentIntentId`, `txnId`, `orderdate`, `update_at`) VALUES
(1, 2, 'OD17620153008862', 2, '[{\"id\":\"3-4\",\"name\":\"Herbal Face Milk\",\"price\":100,\"quantity\":3,\"subtotal\":300,\"attributes\":{\"pro_id\":\"3\",\"attrid\":\"4\",\"image\":\"proImage1-AsAvhGC9.webp\",\"unit\":\"ml\",\"value\":200}},{\"id\":\"4-7\",\"name\":\"Hyaluronic Cleansing Gel\",\"price\":36,\"quantity\":2,\"subtotal\":72,\"attributes\":{\"pro_id\":\"4\",\"attrid\":\"7\",\"image\":\"proImage1-2A9Q0pUs.webp\",\"unit\":\"ml\",\"value\":100}},{\"id\":\"2-3\",\"name\":\"Gel Face Cleanser\",\"price\":87,\"quantity\":1,\"subtotal\":87,\"attributes\":{\"pro_id\":\"2\",\"attrid\":\"3\",\"image\":\"proImage1-3VxZkySQ.webp\",\"unit\":\"ml\",\"value\":100}}]', 6, '459', 1, '', '', '', '', '2025-11-01 16:41:40', '0000-00-00 00:00:00'),
(2, 2, 'OD17620154471126', 2, '[{\"id\":\"4-7\",\"name\":\"Hyaluronic Cleansing Gel\",\"price\":36,\"quantity\":1,\"subtotal\":36,\"attributes\":{\"pro_id\":\"4\",\"attrid\":\"7\",\"image\":\"proImage1-2A9Q0pUs.webp\",\"unit\":\"ml\",\"value\":100}}]', 1, '36', 1, '', '', '', '', '2025-11-01 16:44:07', '0000-00-00 00:00:00'),
(3, 2, 'OD17620876197596', 2, '[{\"id\":\"4-7\",\"name\":\"Hyaluronic Cleansing Gel\",\"price\":36,\"quantity\":1,\"subtotal\":36,\"attributes\":{\"pro_id\":\"4\",\"attrid\":\"7\",\"image\":\"proImage1-2A9Q0pUs.webp\",\"unit\":\"ml\",\"value\":100}},{\"id\":\"3-4\",\"name\":\"Herbal Face Milk\",\"price\":100,\"quantity\":2,\"subtotal\":200,\"attributes\":{\"pro_id\":\"3\",\"attrid\":\"4\",\"image\":\"proImage1-AsAvhGC9.webp\",\"unit\":\"ml\",\"value\":200}}]', 3, '236', 1, '', '', '', '', '2025-11-02 12:46:59', '0000-00-00 00:00:00'),
(4, 1, 'OD17620906357673', 1, '[{\"id\":\"2-1\",\"name\":\"Gel Face Cleanser\",\"price\":168,\"quantity\":1,\"subtotal\":168,\"attributes\":{\"pro_id\":\"2\",\"attrid\":\"1\",\"image\":\"proImage1-qemaU0lw.webp\",\"unit\":\"ml\",\"value\":200}},{\"id\":\"2-3\",\"name\":\"Gel Face Cleanser\",\"price\":87,\"quantity\":1,\"subtotal\":87,\"attributes\":{\"pro_id\":\"2\",\"attrid\":\"3\",\"image\":\"proImage1-qemaU0lw.webp\",\"unit\":\"ml\",\"value\":100}}]', 2, '255', 1, '', '', '', '', '2025-11-02 13:37:15', '0000-00-00 00:00:00'),
(5, 1, 'OD17621469555816', 1, '[{\"id\":\"3-4\",\"name\":\"Herbal Face Milk\",\"price\":100,\"quantity\":1,\"subtotal\":100,\"attributes\":{\"pro_id\":\"3\",\"attrid\":\"4\",\"image\":\"proImage1-Kq2X8itN.webp\",\"unit\":\"ml\",\"value\":200}},{\"id\":\"4-6\",\"name\":\"Hyaluronic Cleansing Gel\",\"price\":57,\"quantity\":1,\"subtotal\":57,\"attributes\":{\"pro_id\":\"4\",\"attrid\":\"6\",\"image\":\"proImage1-cbpJ0D3V.webp\",\"unit\":\"ml\",\"value\":200}},{\"id\":\"2-3\",\"name\":\"Gel Face Cleanser\",\"price\":87,\"quantity\":2,\"subtotal\":174,\"attributes\":{\"pro_id\":\"2\",\"attrid\":\"3\",\"image\":\"proImage1-qemaU0lw.webp\",\"unit\":\"ml\",\"value\":100}}]', 4, '331', 1, '', '', '', '', '2025-11-03 05:15:55', '0000-00-00 00:00:00'),
(6, 1, 'OD17621571693129', 1, '[{\"id\":\"2-3\",\"name\":\"Gel Face Cleanser\",\"price\":87,\"quantity\":1,\"subtotal\":87,\"attributes\":{\"pro_id\":\"2\",\"attrid\":\"3\",\"image\":\"proImage1-qemaU0lw.webp\",\"unit\":\"ml\",\"value\":100}},{\"id\":\"2-1\",\"name\":\"Gel Face Cleanser\",\"price\":168,\"quantity\":1,\"subtotal\":168,\"attributes\":{\"pro_id\":\"2\",\"attrid\":\"1\",\"image\":\"proImage1-qemaU0lw.webp\",\"unit\":\"ml\",\"value\":200}},{\"id\":\"4-6\",\"name\":\"Hyaluronic Cleansing Gel\",\"price\":57,\"quantity\":1,\"subtotal\":57,\"attributes\":{\"pro_id\":\"4\",\"attrid\":\"6\",\"image\":\"proImage1-cbpJ0D3V.webp\",\"unit\":\"ml\",\"value\":200}}]', 3, '312', 2, '', '', '', '', '2025-11-03 08:06:09', '2025-11-04 16:00:17'),
(7, 1, 'OD17650301211708', 1, '[{\"id\":\"4-6\",\"name\":\"Hyaluronic Cleansing Gel\",\"price\":57,\"quantity\":1,\"subtotal\":57,\"attributes\":{\"pro_id\":\"4\",\"attrid\":\"6\",\"image\":\"proImage1-cbpJ0D3V.webp\",\"unit\":\"ml\",\"value\":200}}]', 1, '57', 1, 'Stripe', 'succeeded', 'pi_3SbMALPPCxuqVBCx1xMSQDLp', 'TXN17650301218392', '2025-12-06 14:08:41', '0000-00-00 00:00:00'),
(8, 1, 'OD17650305055579', 1, '[{\"id\":\"3-4\",\"name\":\"Herbal Face Milk\",\"price\":100,\"quantity\":1,\"subtotal\":100,\"attributes\":{\"pro_id\":\"3\",\"attrid\":\"4\",\"image\":\"proImage1-Kq2X8itN.webp\",\"unit\":\"ml\",\"value\":200}}]', 1, '100', 1, 'Stripe', 'succeeded', 'pi_3SbMGTPPCxuqVBCx1rRAnSVP', 'TXN17650305052173', '2025-12-06 14:15:05', '0000-00-00 00:00:00'),
(9, 1, 'OD17650309701042', 1, '[{\"id\":\"3-4\",\"name\":\"Herbal Face Milk\",\"price\":100,\"quantity\":1,\"subtotal\":100,\"attributes\":{\"pro_id\":\"3\",\"attrid\":\"4\",\"image\":\"proImage1-Kq2X8itN.webp\",\"unit\":\"ml\",\"value\":200}}]', 1, '100', 1, 'Stripe', 'succeeded', 'pi_3SbMO1PPCxuqVBCx1AwkzyBg', 'TXN17650309704570', '2025-12-06 14:22:50', '0000-00-00 00:00:00'),
(10, 1, 'OD17652896466331', 1, '[{\"id\":\"38-40\",\"name\":\"Q10 Eye Cream\",\"price\":199,\"quantity\":1,\"subtotal\":199,\"attributes\":{\"pro_id\":\"38\",\"attrid\":\"40\",\"image\":\"proImage1-xDIThGoy.webp\",\"unit\":\"10\",\"value\":30}},{\"id\":\"39-41\",\"name\":\"Hyaluronic Acid\",\"price\":199,\"quantity\":1,\"subtotal\":199,\"attributes\":{\"pro_id\":\"39\",\"attrid\":\"41\",\"image\":\"proImage1-QrkwDNZT.webp\",\"unit\":\"10\",\"value\":20}},{\"id\":\"40-42\",\"name\":\"C Peptide\",\"price\":199,\"quantity\":1,\"subtotal\":199,\"attributes\":{\"pro_id\":\"40\",\"attrid\":\"42\",\"image\":\"proImage1-bYLzLzpq.webp\",\"unit\":\"10\",\"value\":20}}]', 3, '597', 3, 'Stripe', 'succeeded', 'pi_3ScRgSAts9oibJw60N8WDWdt', 'TXN17652896465815', '2025-12-09 14:14:06', '2025-12-14 16:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_order_log`
--

CREATE TABLE `tbl_product_order_log` (
  `log_id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `add_id` int(11) NOT NULL,
  `product_details` text NOT NULL,
  `total_qty` int(11) NOT NULL,
  `net_total` varchar(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-order place, 2-shipped, 3-delivered, 4-cancel',
  `orderdate` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product_order_log`
--

INSERT INTO `tbl_product_order_log` (`log_id`, `m_id`, `order_id`, `add_id`, `product_details`, `total_qty`, `net_total`, `status`, `orderdate`, `update_at`) VALUES
(1, 1, 'OD17650301211708', 1, '[{\"id\":\"4-6\",\"name\":\"Hyaluronic Cleansing Gel\",\"price\":57,\"quantity\":1,\"subtotal\":57,\"attributes\":{\"pro_id\":\"4\",\"attrid\":\"6\",\"image\":\"proImage1-cbpJ0D3V.webp\",\"unit\":\"ml\",\"value\":200}}]', 1, '57', 1, '2025-12-06 14:08:41', '0000-00-00 00:00:00'),
(2, 1, 'OD17650305055579', 1, '[{\"id\":\"3-4\",\"name\":\"Herbal Face Milk\",\"price\":100,\"quantity\":1,\"subtotal\":100,\"attributes\":{\"pro_id\":\"3\",\"attrid\":\"4\",\"image\":\"proImage1-Kq2X8itN.webp\",\"unit\":\"ml\",\"value\":200}}]', 1, '100', 1, '2025-12-06 14:15:05', '0000-00-00 00:00:00'),
(3, 1, 'OD17650309701042', 1, '[{\"id\":\"3-4\",\"name\":\"Herbal Face Milk\",\"price\":100,\"quantity\":1,\"subtotal\":100,\"attributes\":{\"pro_id\":\"3\",\"attrid\":\"4\",\"image\":\"proImage1-Kq2X8itN.webp\",\"unit\":\"ml\",\"value\":200}}]', 1, '100', 1, '2025-12-06 14:22:50', '0000-00-00 00:00:00'),
(4, 1, 'OD17652896466331', 1, '[{\"id\":\"38-40\",\"name\":\"Q10 Eye Cream\",\"price\":199,\"quantity\":1,\"subtotal\":199,\"attributes\":{\"pro_id\":\"38\",\"attrid\":\"40\",\"image\":\"proImage1-xDIThGoy.webp\",\"unit\":\"10\",\"value\":30}},{\"id\":\"39-41\",\"name\":\"Hyaluronic Acid\",\"price\":199,\"quantity\":1,\"subtotal\":199,\"attributes\":{\"pro_id\":\"39\",\"attrid\":\"41\",\"image\":\"proImage1-QrkwDNZT.webp\",\"unit\":\"10\",\"value\":20}},{\"id\":\"40-42\",\"name\":\"C Peptide\",\"price\":199,\"quantity\":1,\"subtotal\":199,\"attributes\":{\"pro_id\":\"40\",\"attrid\":\"42\",\"image\":\"proImage1-bYLzLzpq.webp\",\"unit\":\"10\",\"value\":20}}]', 3, '597', 1, '2025-12-09 14:14:06', '0000-00-00 00:00:00'),
(5, 1, 'OD17652897783042', 1, '[{\"id\":\"3-4\",\"name\":\"Herbal Face Milk\",\"price\":100,\"quantity\":1,\"subtotal\":100,\"attributes\":{\"pro_id\":\"3\",\"attrid\":\"4\",\"image\":\"proImage1-Kq2X8itN.webp\",\"unit\":\"ml\",\"value\":200}}]', 1, '100', 1, '2025-12-09 14:16:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchased_course`
--

CREATE TABLE `tbl_purchased_course` (
  `id` int(11) NOT NULL,
  `m_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `c_price` int(11) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `paymentIntentId` varchar(100) NOT NULL,
  `txnId` varchar(100) NOT NULL,
  `purchase_date` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_purchased_course`
--

INSERT INTO `tbl_purchased_course` (`id`, `m_id`, `c_id`, `c_price`, `payment_mode`, `payment_status`, `paymentIntentId`, `txnId`, `purchase_date`, `update_at`) VALUES
(1, 1, 7, 410, 'Stripe', 'succeeded', 'pi_3Sd6UhPPCxuqVBCx1sdjSIDB', 'TXN17654465176608', '2025-12-11 09:49:12', '0000-00-00 00:00:00'),
(2, 1, 6, 400, 'Stripe', 'succeeded', 'pi_3Sd6boPPCxuqVBCx1KaotAWg', 'TXN17654469675517', '2025-12-11 09:56:33', '0000-00-00 00:00:00'),
(3, 1, 3, 360, 'Stripe', 'succeeded', 'pi_3SdYfwAts9oibJw6179ZRvvv', 'TXN17655546876006', '2025-12-12 15:54:51', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_realresult`
--

CREATE TABLE `tbl_realresult` (
  `id` int(2) NOT NULL,
  `alt` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `added_at` datetime NOT NULL,
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_realresult`
--

INSERT INTO `tbl_realresult` (`id`, `alt`, `title`, `image`, `status`, `added_at`, `update_at`) VALUES
(1, 'p1', 'p1', 'image-f1S5HGet.webp', 1, '2025-10-24 10:32:33', '0000-00-00 00:00:00'),
(2, 'p2', 'p2', 'image-S7Bc21OI.webp', 1, '2025-10-24 10:32:33', '0000-00-00 00:00:00'),
(3, 'p3', 'p3', 'image-lLWBPm5g.webp', 1, '2025-10-24 10:32:33', '0000-00-00 00:00:00'),
(4, 'p4', 'p4', 'image-TQTtnb2f.webp', 1, '2025-10-24 10:32:34', '2025-10-31 09:12:09'),
(5, 's1', 's1', 'image-9HiefM3b.webp', 1, '2025-10-24 10:33:55', '0000-00-00 00:00:00'),
(6, 's2', 's2', 'image-2fFaBK0U.webp', 1, '2025-10-24 10:33:55', '0000-00-00 00:00:00'),
(7, 's3', 's3', 'image-ed2eoI7r.webp', 1, '2025-10-24 10:33:55', '0000-00-00 00:00:00'),
(8, 's4', 's4', 'image-3dQpsCZI.webp', 1, '2025-10-24 10:33:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `sv_id` int(2) NOT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_image` varchar(150) DEFAULT NULL,
  `thumbnail_image` varchar(150) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `serv_title` varchar(255) DEFAULT NULL,
  `serv_url` varchar(255) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `show_front` int(2) DEFAULT NULL COMMENT '0-notshow, 1-show',
  `status` int(2) DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`sv_id`, `banner_title`, `banner_image`, `thumbnail_image`, `service_name`, `serv_title`, `serv_url`, `photo`, `details`, `show_front`, `status`, `added_at`, `update_at`) VALUES
(2, 'Smooth, Hair-Free Skin with Waxing', 'service-banner-1grw9fru.webp', 'service-t-GVPsg0gd.webp', 'Waxing', 'Smooth, Gentle & Professional Hair Removal', 'waxing', 'service-0PBPcWLd.webp', '<p class=\"mb-4 line-height-36\">Waxing is a hair removal method in which warm or cold wax is applied to the skin and then pulled off quickly to remove hair from the root. It&rsquo;s used on areas like the legs, arms, face, and bikini line for longer-lasting smoothness.</p>\r\n<h6 class=\"text-20\">Benefits:</h6>\r\n<ul class=\"text-18 line-height-36\">\r\n<li>Hair is removed from the root, so it takes 3&ndash;6 weeks to grow back.</li>\r\n<li>Removes dead skin cells along with hair, leaving skin smoother.</li>\r\n<li>Unlike shaving, waxing avoids skin damage from sharp blades.</li>\r\n<li>Skin feels softer and looks more polished compared to other methods.</li>\r\n</ul>', 0, 1, '2025-10-11 07:32:48', '2025-11-04 09:44:06'),
(3, 'Vibrant Hair Colour for Stunning Look', 'service-banner-WgsT8SQX.webp', 'service-t-LNSQRxrj.webp', 'Hair Colour', 'Color, Highlights & Glam', 'hair-colour', 'service-FcRL5x03.webp', '<h4 class=\"text-20 mt-4\">Hair Colour</h4>\r\n<p class=\"mb-4 line-height-36\">Hair colour is the process of changing or enhancing the natural color of hair using dyes or pigments. It can be used to cover gray hair, add highlights, or completely transform the hair shade for aesthetic or fashion purposes.</p>\r\n<ul class=\"text-18 line-height-36 list-disc pl-4\">\r\n<li>Adds vibrancy and complements your skin tone and style.</li>\r\n<li>Provides a youthful look by masking unwanted gray strands.</li>\r\n<li>Techniques like highlights or balayage create texture and movement.</li>\r\n<li>A fresh hair colour can make you feel more attractive and refreshed.</li>\r\n<li>Offers endless options for expressing personality and creativity.</li>\r\n</ul>', 0, 1, '2025-10-11 07:33:36', '2025-11-04 09:44:34'),
(4, 'Stylish Haircuts to Suit Your Personality', 'service-banner-2QuDEQWO.webp', 'service-t-os1DdoPO.webp', 'Haircut', 'Precision Cuts & Wearable Looks', 'haircut-', 'service-Va4U7vXX.webp', '<p class=\"mb-4 line-height-36\">A haircut involves trimming or shaping the hair to maintain its health, length, or style. It&rsquo;s done to refresh your look, improve hair condition, and enhance overall appearance &mdash; whether for fashion, hygiene, or personal care.</p>\r\n<h4 class=\"text-20 mt-4\">Benefits:</h4>\r\n<ul class=\"text-18 line-height-36 list-disc pl-4\">\r\n<li>Removes split ends and damaged strands, promoting healthier growth.</li>\r\n<li>Highlights facial features and complements your personal style with a neat, fresh finish.</li>\r\n<li>Keeps hairstyles tidy and well-defined.</li>\r\n<li>Boosts confidence with a polished, revitalized look.</li>\r\n<li>Makes hair easier to manage, style, and maintain.</li>\r\n</ul>', 0, 1, '2025-10-11 07:34:25', '2025-11-04 09:45:43'),
(5, 'Precise Threading for Perfectly Shaped Brows', 'service-banner-bUi8iCqD.webp', 'service-t-9P3Jspvh.webp', 'Threading', 'Precise Brow & Facial Hair Shaping', 'threading', 'service-v5rdacH3.webp', '<p class=\"mb-4 line-height-36\">Threading is a hair removal service that uses a twisted cotton thread to remove unwanted facial hair from the root. It is most commonly used for shaping eyebrows and removing upper lip or facial hair with precision.</p>\r\n<h6 class=\"text-20\">Benefits</h6>\r\n<ul class=\"text-18 line-height-36\">\r\n<li>Allows for accurate shaping, especially around the eyebrows.<br>No heat or chemicals, making it safe for sensitive skin.</li>\r\n<li>Hair is removed from the root, so regrowth takes 2&ndash;6 weeks.</li>\r\n<li>Less likely to cause redness, bumps, or ingrown hairs compared to waxing.</li>\r\n<li>Fast process with minimal tools, often more cost-effective than other methods.</li>\r\n</ul>', 0, 1, '2025-10-11 07:35:12', '2025-11-04 09:46:12'),
(6, 'Permanent Makeup for Effortless Beauty', 'service-banner-0wOvdWz6.webp', 'service-t-jG3hCcVu.webp', 'PMU', 'Your Beauty, Enhanced', 'pmu', 'service-9PWFvF15.webp', '<p class=\"mb-4 line-height-36\">PMU, or Permanent Makeup, is a cosmetic tattooing technique where pigment is implanted into the upper layers of the skin to enhance facial features such as eyebrows, eyes, and lips. It includes procedures like microblading, lip blushing, eyeliner tattoo, and lip neutralization. Benefits</p>\r\n<h6 class=\"text-20\">Benefits:</h6>\r\n<ul class=\"text-18 line-height-36\">\r\n<li>Reduces the need for daily makeup routines like filling in brows or applying lipstick.</li>\r\n<li>Results can last 1&ndash;3 years, depending on the procedure and skin type.</li>\r\n<li>Defines and improves the appearance of eyebrows, lips, and eyes while still looking natural.</li>\r\n<li>Ideal for active lifestyles&mdash;no need to worry about makeup smudging or fading throughout the day.</li>\r\n<li>Helps those with sparse brows, uneven lips, or makeup allergies feel more confident and polished</li>\r\n</ul>', 0, 1, '2025-10-11 07:35:47', '2025-11-04 12:52:00'),
(10, 'Eyebrows            (LASH + TINT + THREADING)', 'service-banner-Lb9dQeWP.webp', 'service-t-AAelzBI7.webp', 'All about Brows', 'Eyelash Lift and Tint, Henna Brows, Brows wax or thread and Tint', 'all-about-brows', 'service-JcljRhDG.webp', '<p class=\"mb-4 line-height-36\">We deeply believe that Eyes speak louder than words and we do all services to pamper your eyebrows.<br>Eyebrow tinting is very comfortable procedure where semi-permanent dye is applied to the eyebrows to enhance, shape, and define them. It darkens lighter brow hairs, making the brows appear fuller and more defined.</p>\r\n<h6 class=\"text-20\">Benefits:</h6>\r\n<ul class=\"text-18 line-height-36 list-disc pl-4\">\r\n<li>Tinting darkens fine or light hairs, creating the appearance of thicker, fuller brows.</li>\r\n<li>Helps define the natural brow shape by adding depth and dimension.</li>\r\n<li>Reduces the need for daily brow makeup like pencils, powders, or gels.</li>\r\n<li>The tint can be matched to your hair and skin tone for a natural or bold look.</li>\r\n<li>Tint typically lasts 3&ndash;6 weeks, depending on skin type and aftercare.</li>\r\n</ul>', 1, 1, '2025-10-15 08:46:26', '2025-11-04 09:47:12'),
(11, 'Tighten & Lift Skin with Fibroblast', 'service-banner-kdnS32BT.webp', 'service-t-EcF5jprr.webp', 'Fibroblast (Skin Tightening)', 'Smooth & Tight', 'fibroblast-skin-tightening-', 'service-XH9OQnBM.webp', '<p class=\"mb-4 line-height-36\">Fibroblast treatment, also known as Plasma Pen or Plasma Skin Tightening, is a non-surgical cosmetic procedure that uses a plasma device to deliver controlled micro-injuries to the skin&rsquo;s surface. This stimulates fibroblast cells to produce more collagen, elastin, and hyaluronic acid, tightening and rejuvenating the skin naturally.</p>\r\n<h6 class=\"text-20\">Benefits of Fibroblast Treatment:</h6>\r\n<ul class=\"text-18 line-height-36 list-disc pl-4\">\r\n<li><strong>Non-Surgical Skin Tightening:</strong> Lifts and firms areas like eyelids, neck, and jawline without invasive surgery.</li>\r\n<li><strong>Reduces Wrinkles &amp; Fine Lines:</strong> Smooths out crow&rsquo;s feet, frown lines, and under-eye wrinkles.</li>\r\n<li><strong>Improves Skin Texture:</strong> Helps reduce acne scars, pigmentation, and stretch marks.</li>\r\n<li><strong>Boosts Collagen Production:</strong> Promotes long-term skin regeneration and youthfulness.</li>\r\n<li><strong>Minimal Downtime:</strong> Quicker recovery compared to traditional surgical procedures with long-lasting results.</li>\r\n</ul>', 1, 1, '2025-10-15 09:08:46', '2025-11-04 09:47:37'),
(12, 'Beauty & Care Services Designed Just for You', 'service-banner-GuB0V398.webp', 'service-t-Z3LTeDoF.webp', 'Mole, Wart, and Skin Tag Removal', 'Tag, Wart & Mole Care', 'mole-wart-and-skin-tag-removal', 'service-JZKa2lFy.webp', '<p class=\"mb-4 line-height-36\">Mole, wart, and skin tag removal is a minor cosmetic or medical procedure used to eliminate unwanted skin growths. Techniques may include <strong>cryotherapy (freezing)</strong>, <strong>electrocautery</strong>, <strong>laser removal</strong>, or <strong>excision</strong>, depending on the type, size, and location of the growth.</p>\r\n<h6 class=\"text-20\">Benefits of Mole, Wart &amp; Skin Tag Removal:</h6>\r\n<ul class=\"text-18 line-height-36\">\r\n<li><strong>Improves Appearance:</strong> Removes unsightly or bothersome growths for smoother, clearer skin.</li>\r\n<li><strong>Enhances Comfort:</strong> Eliminates irritation caused by rubbing against clothing or jewelry.</li>\r\n<li><strong>Boosts Confidence:</strong> Increases self-esteem, especially when growths are on visible areas like the face or neck.</li>\r\n<li><strong>Quick and Minimally Invasive:</strong> Most procedures are fast, low-risk, and performed with little to no downtime.</li>\r\n<li><strong>Prevents Further Issues:</strong> Helps avoid potential complications like bleeding, infection, or growth changes (in some cases, lesions may be sent for testing).</li>\r\n</ul>', 1, 1, '2025-10-15 09:15:59', '2025-11-04 12:53:08'),
(13, 'Expert Solutions for Every Hair Problem', 'service-banner-NR9wUg0T.webp', 'service-t-SLntuElL.webp', 'All About Hair concerns', 'Tiny Touch, Big Impact', 'all-about-hair-concerns', 'service-MgvaNQ4r.webp', '<p class=\"mb-4 line-height-36\">Nanoplasty is an advanced, chemical-free hair straightening treatment that uses nanotechnology and natural ingredients (like amino acids and proteins) to restructure and smooth the hair from the inside out. Unlike traditional keratin or chemical relaxers, nanoplasty is formaldehyde-free and safe for all hair types, including damaged or chemically treated hair.</p>\r\n<h6 class=\"text-20\">Benefits of Nanoplasty:</h6>\r\n<ul class=\"text-18 line-height-36\">\r\n<li><strong>Smooths and Straightens Hair Naturally:</strong> Provides sleek, frizz-free, and straight hair without harsh chemicals.</li>\r\n<li><strong>Formaldehyde-Free and Non-Toxic:</strong> A safer alternative to keratin treatments, ideal for sensitive scalps and health-conscious clients.</li>\r\n<li><strong>Long-Lasting Results:</strong> Results can last 3 to 6 months, depending on hair type and aftercare.</li>\r\n<li><strong>Improves Hair Health:</strong> Infuses hair with nutrients like amino acids, making it stronger, shinier, and more manageable.</li>\r\n<li><strong>Suitable for All Hair Types:</strong> Safe to use on bleached, colored, or previously chemically treated hair.</li>\r\n</ul>', 1, 1, '2025-10-15 09:23:24', '2025-11-04 09:48:54'),
(15, 'Enhance Your Beauty with Botox & Fillers', 'service-banner-Ml6movMq.webp', 'service-t-kLIG1es5.webp', 'Anti Wrinkle Injections', 'Botox and Dermal fillers', 'anti-wrinkle-injections', 'service-0VJjydWX.webp', '<p><strong>Botox and Dermal Fillers</strong> are two popular <strong>non-surgical cosmetic treatments</strong> that help reduce signs of aging and enhance facial features.&nbsp;</p>\r\n<h3>Botox</h3>\r\n<ul>\r\n<li>\r\n<p>Temporarily relaxes facial muscles to <strong>smooth dynamic wrinkles</strong> (like forehead lines, crow&rsquo;s feet, and frown lines).</p>\r\n</li>\r\n<li>\r\n<p>Quick procedure with minimal downtime.</p>\r\n</li>\r\n<li>\r\n<p>Effects last <strong>3&ndash;6 months</strong> depending on area and dosage.</p>\r\n</li>\r\n</ul>\r\n<h3>Dermal Fillers</h3>\r\n<ul>\r\n<li>\r\n<p>Restore volume, <strong>plump lips, cheeks, and under-eye areas</strong>, and smooth deep lines.</p>\r\n</li>\r\n<li>\r\n<p>Made of <strong>hyaluronic acid or other safe substances</strong> that mimic natural tissues.</p>\r\n</li>\r\n<li>\r\n<p>Results are immediate and can last <strong>6&ndash;18 months</strong> depending on product and area treated.</p>\r\n</li>\r\n</ul>\r\n<h3>Benefits</h3>\r\n<ul>\r\n<li>\r\n<p>Rejuvenates your appearance without surgery</p>\r\n</li>\r\n<li>\r\n<p>Enhances facial symmetry and contours</p>\r\n</li>\r\n<li>\r\n<p>Minimally invasive with fast recovery</p>\r\n</li>\r\n<li>\r\n<p>Combines well for a natural, youthful look</p>\r\n</li>\r\n</ul>', 1, 1, '2025-10-31 09:51:28', '2025-11-18 06:02:32'),
(16, 'Rejuvenate Your Glow with Premium Facials', 'service-banner-uYJc8OQJ.webp', 'service-t-4etuvUJg.webp', 'Premium Facials', 'Premium Facials', 'premium-facials', 'service-rFkMawJv.webp', '<p data-start=\"126\" data-end=\"395\">Premium facials are luxurious skincare treatments designed to rejuvenate, nourish, and revitalize your skin. Using advanced techniques and high-quality ingredients, these facials target specific skin concerns, leaving your complexion glowing, refreshed, and youthful.</p>\r\n<p data-start=\"397\" data-end=\"431\"><strong data-start=\"397\" data-end=\"429\">Benefits of Premium Facials:</strong></p>\r\n<ul data-start=\"432\" data-end=\"1028\">\r\n<li data-start=\"432\" data-end=\"556\">\r\n<p data-start=\"434\" data-end=\"556\"><strong data-start=\"434\" data-end=\"469\">Deep Cleansing and Exfoliation:</strong> Removes impurities, dead skin cells, and unclogs pores for a smooth, radiant finish.</p>\r\n</li>\r\n<li data-start=\"557\" data-end=\"689\">\r\n<p data-start=\"559\" data-end=\"689\"><strong data-start=\"559\" data-end=\"589\">Hydration and Nourishment:</strong> Infuses skin with essential nutrients, vitamins, and moisturizing agents to restore natural glow.</p>\r\n</li>\r\n<li data-start=\"690\" data-end=\"807\">\r\n<p data-start=\"692\" data-end=\"807\"><strong data-start=\"692\" data-end=\"729\">Anti-Aging and Skin Rejuvenation:</strong> Reduces fine lines, wrinkles, and signs of aging for firmer, youthful skin.</p>\r\n</li>\r\n<li data-start=\"808\" data-end=\"925\">\r\n<p data-start=\"810\" data-end=\"925\"><strong data-start=\"810\" data-end=\"843\">Relaxation and Stress Relief:</strong> Combines soothing massage techniques to relax facial muscles and reduce stress.</p>\r\n</li>\r\n<li data-start=\"926\" data-end=\"1028\">\r\n<p data-start=\"928\" data-end=\"1028\"><strong data-start=\"928\" data-end=\"960\">Suitable for All Skin Types:</strong> Safe and effective for sensitive, dry, oily, or combination skin.</p>\r\n</li>\r\n</ul>', 1, 1, '2025-11-02 23:30:56', '2025-11-04 09:51:07'),
(17, 'Advanced Skin Treatments for Radiant Glow', 'service-banner-pmKGRjhX.webp', 'service-t-nPYjMaik.webp', 'Skin Treatment', NULL, 'skin-treatment', 'service-SBzLBTua.webp', '<p><strong>Skin Treatment</strong> targets and improves <strong>any kind of skin concern</strong> &mdash; from acne and pigmentation to dryness, aging, or sensitivity.&nbsp;</p>\r\n<h3>What It Does</h3>\r\n<ul>\r\n<li>\r\n<p>Deeply cleanses, nourishes, and rejuvenates the skin.</p>\r\n</li>\r\n<li>\r\n<p>Uses customized products and techniques based on your <strong>skin type and condition</strong>.</p>\r\n</li>\r\n<li>\r\n<p>Can include facials, peels, LED therapy, or advanced rejuvenation treatments.</p>\r\n</li>\r\n</ul>\r\n<h3>Benefits</h3>\r\n<ul>\r\n<li>\r\n<p>Treats acne, dullness, fine lines, and uneven tone.</p>\r\n</li>\r\n<li>\r\n<p>Restores balance, hydration, and natural glow.</p>\r\n</li>\r\n<li>\r\n<p>Strengthens skin health for long-term improvement.</p>\r\n</li>\r\n<li>\r\n<p>Leaves your skin fresh, smooth, and radiant.&nbsp;</p>\r\n</li>\r\n</ul>\r\n<p>&nbsp;</p>', 1, 1, '2025-11-02 23:31:22', '2025-11-04 09:51:37'),
(18, 'Expert Skin & Scalp - Analysis & Consultation', 'service-banner-LJfhz99W.webp', 'service-t-DYT7r5Lt.webp', 'Skin & Scalp     -     Analyze & Consultation', NULL, 'skin--scalp---analyze--consultation', 'service-m8Qo8TJY.webp', '<p><strong>Skin and Scalp Analyzer</strong> is an advanced diagnostic tool that helps professionals <strong>analyze your skin or scalp condition</strong> in detail to create a personalized treatment plan.&nbsp;</p>\r\n<h3>How It Works</h3>\r\n<ul>\r\n<li>\r\n<p>Uses <strong>high-resolution imaging and sensors</strong> to examine hydration, oil levels, pores, dandruff, and follicle health.</p>\r\n</li>\r\n<li>\r\n<p>Identifies concerns like dryness, acne, pigmentation, hair thinning, or scalp buildup.</p>\r\n</li>\r\n<li>\r\n<p>Provides accurate, real-time data for customized skincare or haircare solutions.</p>\r\n</li>\r\n</ul>\r\n<h3>Benefits</h3>\r\n<ul>\r\n<li>\r\n<p>Detailed insight into your skin or scalp health</p>\r\n</li>\r\n<li>\r\n<p>Helps select the <strong>right treatments and products</strong> for your needs</p>\r\n</li>\r\n<li>\r\n<p>Tracks progress over time with before-and-after images</p>\r\n</li>\r\n<li>\r\n<p>Non-invasive, quick, and completely painless</p>\r\n</li>\r\n</ul>', 1, 1, '2025-11-02 23:32:06', '2025-11-04 14:58:42'),
(19, 'Smooth Skin Forever with Laser Hair Removal', 'service-banner-5c8fgvnQ.webp', 'service-t-3HXUsHKm.webp', 'Laser Hair removal', NULL, 'laser-hair-removal', 'service-ZEBcea6P.webp', '<p><strong>IPL Hair Reduction</strong> is a non-invasive treatment that uses <strong>Intense Pulsed Light (IPL)</strong> to target hair follicles, reducing unwanted hair growth safely and effectively.</p>\r\n<h3>How It Works</h3>\r\n<ul>\r\n<li>\r\n<p>IPL emits <strong>light energy</strong> that is absorbed by the pigment in hair follicles.</p>\r\n</li>\r\n<li>\r\n<p>This energy <strong>damages the follicle</strong>, slowing down and reducing hair growth over multiple sessions.</p>\r\n</li>\r\n<li>\r\n<p>Suitable for various areas like legs, arms, underarms, face, and bikini line.</p>\r\n</li>\r\n</ul>\r\n<h3>Benefits</h3>\r\n<ul>\r\n<li>\r\n<p>Long-lasting hair reduction with smooth results</p>\r\n</li>\r\n<li>\r\n<p>Safe, non-invasive, and precise</p>\r\n</li>\r\n<li>\r\n<p>Minimal discomfort and downtime</p>\r\n</li>\r\n<li>\r\n<p>Can treat large areas efficiently</p>\r\n</li>\r\n<li>\r\n<p>Reduces hair regrowth and thickness over time</p>\r\n</li>\r\n</ul>', 1, 1, '2025-11-03 09:33:07', '2025-11-04 09:42:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services_variants`
--

CREATE TABLE `tbl_services_variants` (
  `vid` int(2) NOT NULL,
  `sv_id` int(2) DEFAULT NULL,
  `v_name` varchar(200) DEFAULT NULL,
  `v_url` varchar(200) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `duration` varchar(10) DEFAULT NULL COMMENT 'in minutes',
  `mrp` int(2) DEFAULT NULL,
  `sp` int(2) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_services_variants`
--

INSERT INTO `tbl_services_variants` (`vid`, `sv_id`, `v_name`, `v_url`, `photo`, `duration`, `mrp`, `sp`, `details`, `status`, `position`, `added_at`, `update_at`) VALUES
(7, 6, 'Microblading', 'microblading', 'svariant-RlzTsxE2.webp', '60', 350, 649, 'Semi-permanent technique creating natural-looking hair strokes for fuller, defined brows.', 1, 0, '2025-10-15 08:09:10', '2025-11-16 06:09:31'),
(8, 2, 'Eyebrow Waxing', 'eyebrow-waxing', 'svariant-x7dy6pSJ.webp', '10', 30, 25, 'Quickly shapes eyebrows for a clean, defined look that lasts weeks.', 1, 1, '2025-10-15 10:17:44', '2025-11-16 06:18:52'),
(9, 2, 'Full Face', 'full-face', 'svariant-Wk6lznjL.webp', '10', 70, 59, 'Removes unwanted facial hair for smooth, even, and glowing skin.', 1, 0, '2025-10-15 10:18:56', '2025-11-16 06:14:09'),
(10, 2, 'Side Locks', 'side-locks', 'svariant-AoeDN62a.webp', '5', 30, 20, 'Cleans up sideburns for a sharp, well-groomed appearance.', 1, 0, '2025-10-15 10:20:16', '2025-11-16 06:14:21'),
(11, 2, 'Chin Wax', 'chin-wax', 'svariant-pk8p8ylH.webp', '5', 20, 15, 'Smooths the chin by removing unwanted hair, giving a flawless finish.', 1, 0, '2025-10-15 10:21:34', '2025-11-16 06:16:32'),
(12, 2, 'Full Arm Wax', 'full-arm-wax', 'svariant-dBEHQYVB.webp', '10', 50, 40, 'Removes hair from the entire arm for long-lasting smoothness.', 1, 0, '2025-10-15 10:22:31', '2025-11-16 06:16:39'),
(13, 2, 'Full Leg Wax', 'full-leg-wax', 'svariant-41c9Vv3V.webp', '10', 80, 70, 'Eliminates hair from ankle to thigh, leaving legs silky and hair-free.', 1, 0, '2025-10-15 10:24:07', '2025-11-16 06:16:47'),
(14, 2, 'Half Arms Wax', 'half-arms-wax', 'svariant-epZOOPcR.webp', '10', 40, 30, 'Targets upper or lower arm for smooth, neat skin.', 1, 0, '2025-10-15 10:25:03', '2025-11-16 06:16:55'),
(15, 2, 'Half Legs Wax', 'half-legs-wax', 'svariant-p1XVWXw3.webp', '5', 40, 30, 'Smooths either upper or lower half of the legs with lasting results.', 1, 0, '2025-10-15 10:26:13', '2025-11-16 06:17:06'),
(16, 2, '3/4 Legs Wax', '-legs-wax', 'svariant-tlXY6XUi.webp', '5', 50, 40, 'Removes hair from ankle to mid-thigh for a polished look.', 1, 0, '2025-10-15 10:27:01', '2025-11-16 06:17:13'),
(17, 2, 'Underarms Wax', 'underarms-wax', 'svariant-avioR5FQ.webp', '5', 20, 15, 'Provides hair-free underarms and helps maintain cleaner, smoother skin.', 1, 0, '2025-10-15 10:27:51', '2025-11-16 06:17:22'),
(18, 2, 'Back Wax', 'back-wax', 'svariant-x1zhS7T9.webp', '10', 40, 30, 'Removes hair from the back for smooth, clean skin and easier maintenance.', 1, 0, '2025-10-15 10:29:06', '2025-11-16 06:17:30'),
(19, 2, 'Tummy Wax', 'tummy-wax', 'svariant-JdRjKWpW.webp', '10', 35, 30, 'Clears unwanted hair from the stomach area for a neat, smooth finish.', 1, 0, '2025-10-15 10:29:50', '2025-11-16 06:17:37'),
(20, 2, 'Full Body Wax', 'full-body-wax', 'svariant-7fGedTG5.webp', '30', 250, 249, 'Professional hair removal from head to toe for weeks of smoothness.', 1, 0, '2025-10-15 10:30:43', '2025-11-16 06:17:49'),
(21, 5, 'Full Face Threading', 'full-face-threading', 'svariant-GqaHnLXd.webp', '10', NULL, 57, 'Removes unwanted facial hair, leaving your skin smooth and glowing.', 1, 0, '2025-10-17 07:16:34', '2025-11-16 06:10:41'),
(22, 5, 'Eyebrows', 'eyebrows', 'svariant-gp9EqzXC.webp', '5', NULL, 20, 'Perfectly shaped brows to enhance your facial features and give a defined look.', 1, 0, '2025-10-17 07:17:36', '2025-11-16 06:10:51'),
(23, 5, 'Lip Threading', 'lip-threading', 'svariant-TLSCy6rz.webp', '5', NULL, 10, 'Removes fine hair around the upper lip for a clean, flawless finish.', 1, 0, '2025-10-17 07:18:08', '2025-11-16 06:10:57'),
(24, 5, 'Chin', 'chin', 'svariant-J6ZmeIPN.webp', '5', NULL, 15, 'Eliminates unwanted hair on the chin area, creating a neat and polished look.', 1, 0, '2025-10-17 07:18:41', '2025-11-16 06:11:04'),
(25, 5, 'Side Locks', 'side-locks', 'svariant-12BRcRjt.webp', '5', NULL, 20, 'Cleans and defines side areas of the face for a smooth, refined appearance.', 1, 0, '2025-10-17 07:19:16', '2025-11-16 06:11:10'),
(26, 5, 'Forehead', 'forehead', 'svariant-oUTch31m.webp', '5', NULL, 10, 'Removes stray hair from the forehead, ensuring a clean and even hairline.', 1, 0, '2025-10-17 07:19:56', '2025-11-16 06:11:16'),
(27, 4, 'Trimming', 'trimming', 'svariant-gb4mpjgY.webp', '10', NULL, 40, 'Neatly removes split ends and uneven lengths to maintain healthy, beautiful hair.', 1, 0, '2025-10-17 07:21:25', '2025-11-16 06:11:33'),
(28, 4, 'U Cut', 'u-cut', 'svariant-nggCLFTD.webp', '10', NULL, 47, 'A classic U-shaped cut that adds natural volume and flow to your hair.', 1, 0, '2025-10-17 07:22:04', '2025-11-16 06:11:40'),
(29, 4, 'Full Head Layers', 'full-head-layers', 'svariant-YKAd3cy1.webp', '15', NULL, 69, 'Multi-layered cut for added movement, bounce, and a stylish finish.', 1, 0, '2025-10-17 07:22:39', '2025-11-16 06:11:48'),
(30, 4, 'Bangs', 'bangs', 'svariant-n78c4rah.webp', '5', NULL, 20, 'Front fringes styled to frame your face and give a trendy, youthful look.', 1, 0, '2025-10-17 07:23:10', '2025-11-16 06:11:58'),
(31, 4, 'Feather Cut', 'feather-cut', 'svariant-pIfle4Ey.webp', '15', NULL, 59, 'The feather cut adds soft, airy layers, framing your face with volume, texture, and movement.', 1, 0, '2025-10-17 07:23:38', '2025-11-16 06:12:10'),
(32, 4, 'Face Framing', 'face-framing', 'svariant-ni2aMDeb.webp', '10', NULL, 30, 'Face framing shapes front hair sections to highlight features, adding dimension, movement, and balance.', 1, 0, '2025-10-17 07:24:18', '2025-11-16 06:12:18'),
(33, 3, 'Root Touch-up', 'root-touch-up', 'svariant-FnFrTpZV.webp', '30', NULL, 149, 'Covers grey or grown-out roots to refresh your hair color seamlessly.', 1, 0, '2025-10-17 07:26:22', '2025-11-16 06:12:32'),
(34, 3, 'Global', 'global', 'svariant-qMcBCv49.webp', '50', NULL, 199, 'Price varies according to length and thickness.\r\nFull hair color application from roots to ends for a complete color transformation.', 1, 0, '2025-10-17 07:29:15', '2025-11-16 06:12:38'),
(35, 3, 'Full Head Foils', 'full-head-foils', 'svariant-qT12TB9j.webp', '60', NULL, 279, 'Price varies according to length and thickness.\r\nHighlights applied throughout the entire head for a bright, dimensional look.', 1, 0, '2025-10-17 07:30:26', '2025-11-16 06:12:47'),
(36, 3, 'Half Head Foils', 'half-head-foils', 'svariant-EgwLNCzT.webp', '40', NULL, 249, 'Price varies according to length and thickness.\r\nPartial highlights to add subtle brightness and natural depth.', 1, 0, '2025-10-17 07:31:01', '2025-11-16 06:13:13'),
(37, 3, 'Lowlights', 'lowlights', 'svariant-mehH8O3p.webp', '30', NULL, 229, 'Price varies according to length and thickness.\r\nAdds darker tones to create contrast, richness, and texture in your hair.', 1, 0, '2025-10-17 07:31:43', '2025-11-16 06:13:23'),
(38, 3, 'Balayage', 'balayage', 'svariant-ZegjG3ef.webp', '50', NULL, 279, 'Price varies according to length and thickness.\r\nHand-painted highlights for a soft, sun-kissed, and natural gradient effect.', 1, 0, '2025-10-17 07:32:23', '2025-11-16 06:13:32'),
(39, 3, 'Ombre', 'ombre-', 'svariant-esR1RHUK.webp', '60', NULL, 229, 'Price varies according to length and thickness.\r\nGradual color transition from dark roots to lighter ends for a bold, stylish finish.', 1, 0, '2025-10-17 07:32:51', '2025-11-16 06:13:42'),
(40, 3, 'Toner', 'toner', 'svariant-Rsn2sn6E.webp', '20', NULL, 149, 'Neutralizes brassy or unwanted tones, enhancing your hair’s overall shade and shine.', 1, 0, '2025-10-17 07:33:33', '2025-11-16 06:13:50'),
(41, 3, 'Glow/Shine hair Therapy', 'glowshine-hair-therapy', 'svariant-DSJ47dxN.webp', '20', NULL, 99, 'Price varies according to length and thickness.\r\nRestores gloss, smoothness, and vibrancy to dull or color-treated hair.', 1, 0, '2025-10-17 07:34:13', '2025-11-16 06:13:56'),
(42, 6, 'Ombre Brows', 'ombre-brows', 'svariant-kvd9oWGa.webp', '60', NULL, 599, 'Softly shaded brows with a gradient effect, darker at the tail and lighter at the front for a polished look.', 1, 0, '2025-10-17 07:36:21', '2025-11-16 06:09:40'),
(43, 6, 'Combination Eyebrows', 'combination-eyebrows', 'svariant-4vFTze5o.webp', '60', NULL, 749, 'A blend of microblading and ombre shading for perfectly defined yet natural brows.', 1, 0, '2025-10-17 07:36:51', '2025-11-16 06:09:52'),
(44, 10, 'Eyebrow Tinting', 'eyebrow-tinting', 'svariant-XnLBmxgB.webp', '5', NULL, 25, 'Enhances your brows with rich color, giving them a fuller and more defined appearance.', 1, 0, '2025-10-17 07:39:54', '2025-11-16 06:08:46'),
(45, 10, 'Eyelash Tinting', 'eyelash-tinting', 'svariant-3dJFE2V3.webp', '5', NULL, 25, 'Darkens and defines your lashes, creating a mascara-like effect without daily makeup.', 1, 0, '2025-10-17 07:40:24', '2025-11-16 06:08:54'),
(46, 10, 'Lash Lift and Tint', 'lash-lift-and-tint', 'svariant-1MlYBcCK.webp', '10', NULL, 65, 'Gently curls and lifts your natural lashes for a long-lasting, wide-eyed look.', 1, 0, '2025-10-17 07:41:03', '2025-11-16 06:09:02'),
(47, 13, 'Keratin Treatment', 'keratin-treatment', 'svariant-JFrcPKpK.webp', '90', NULL, 229, 'Smooths and straightens the hair while reducing frizz.', 1, 0, '2025-10-17 07:53:55', '2025-11-16 06:01:59'),
(48, 13, 'Hair Botox', 'hair-botox', 'svariant-t3WOZTop.webp', '90', NULL, 239, 'Repairs damaged hair, reduces frizz and split ends, improves strength, shine, and manageability for months.', 1, 0, '2025-10-17 07:54:30', '2025-11-16 06:02:07'),
(49, 13, 'Anti Frizz Treatment', 'anti-frizz-treatment-', 'svariant-juL8wXRv.webp', '30', NULL, 149, 'Smooths, tames frizz, hydrates hair, protects against humidity, leaving hair soft, shiny, and manageable.', 1, 0, '2025-10-17 07:55:08', '2025-11-16 06:02:20'),
(50, 10, 'Henna Tint', 'henna-tint', 'svariant-N4dZ81ag.webp', '5', NULL, 49, 'Henna brows are a natural, chemical-free tint that colors skin and hairs for weeks.', 1, 0, '2025-11-02 05:57:23', '2025-11-16 06:09:11'),
(51, 2, 'Brazilian waxing', 'brazilian-waxing-', 'svariant-ZaDEIeuj.webp', '10', NULL, 65, 'Get ultra-smooth results with our Brazilian Waxing — clean, confident, and beautifully long-lasting.', 1, 0, '2025-11-02 06:58:15', '2025-11-16 06:18:44'),
(52, 2, 'Bikini waxing', 'bikini-waxing-', 'svariant-1ZXhg02q.webp', '10', NULL, 42, 'Experience smooth, clean skin with our Bikini Waxing — gentle, precise, and long-lasting confidence.', 1, 15, '2025-11-02 07:01:10', '2025-11-16 06:19:00'),
(53, 2, 'Buttocks and Behind wax', 'buttocks-and-behind-wax', 'svariant-3zwNSNzV.webp', '10', NULL, 42, 'Get smooth, hair-free skin with our Buttocks & Behind Wax for a confident, flawless look.', 1, 17, '2025-11-02 07:01:58', '2025-11-16 06:19:07'),
(54, 6, 'Lip pigmentation', 'lip-pigmentation-', 'svariant-f6MHavBB.webp', '60', NULL, 499, 'A gentle lip tattoo deposits pigment, creating a natural tint for fuller, even, and defined lips.', 1, 0, '2025-11-02 07:33:16', '2025-11-16 06:10:00'),
(55, 6, 'Lip neutralization', 'lip-neutralization', 'svariant-X9rXCKsP.webp', '60', NULL, 599, 'Lip neutralization gently corrects darkness, creating an even base for a natural, enhanced lip appearance.', 1, 0, '2025-11-02 07:34:07', '2025-11-16 06:10:13'),
(56, 11, 'Forehead and Frown lines', 'forehead-and-frown-lines', 'svariant-4lg9hKG1.webp', '30', NULL, 199, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:12:41', '2025-11-16 06:06:42'),
(57, 11, 'Crow feet (around eyes)', 'crow-feet-around-eyes', 'svariant-AHmio7vC.webp', '40', NULL, 149, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:14:39', '2025-11-16 06:06:56'),
(58, 11, 'Neck/Decolletage', 'neckdecolletage', 'svariant-ItuAkR8M.webp', '30', NULL, 299, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:16:27', '2025-11-16 06:07:59'),
(59, 11, 'Upper eyelid or Lower eyelid', 'upper-eyelid-or-lower-eyelid', 'svariant-9h6F8MBK.webp', '30', NULL, 299, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:19:05', '2025-11-16 06:08:09'),
(60, 11, 'Fibroblast full face', 'fibroblast-full-face-', 'svariant-muPPxr9y.webp', '90', NULL, 999, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:46:40', '2025-11-16 06:08:19'),
(61, 11, 'upper and lower eye and eyebrow lift', 'upper-and-lower-eye-and-eyebrow-lift', 'svariant-rG07xR1l.webp', '40', NULL, 349, 'Fibroblast is an advanced cosmetic treatment that uses a tiny plasma arc to create controlled micro-injuries on the skin’s surface. This stimulates your body’s natural production of collagen and elastin, helping to tighten, lift, and smooth the treated area over time.', 1, 0, '2025-11-02 08:48:00', '2025-11-16 06:08:28'),
(62, 13, 'Hair Fall treatment', 'hair-fall-treatment', 'svariant-3eY5A3oI.webp', '30', NULL, 89, 'Reduces shedding, strengthens roots, stimulates growth, nourishes scalp, and promotes thicker, healthier-looking hair over time.', 1, 0, '2025-11-02 09:11:05', '2025-11-16 06:02:27'),
(63, 13, 'Dandruff Treatment', 'dandruff-treatment', 'svariant-Eh5JOCF1.webp', '30', NULL, 89, 'Dandruff Treatment soothes scalp, eliminates flakes, restores health, reduces hair fall, and boosts growth.', 1, 0, '2025-11-02 09:18:23', '2025-11-16 06:02:36'),
(64, 13, 'Hair Growth treatment with Xosome (Spa)', 'hair-growth-tretment-with-xosome', 'svariant-ukccdU5s.webp', '30', NULL, 119, 'Hair Growth Treatment with Xosome Penetration stimulates follicles, promotes growth, and strengthens hair using deep-absorbing nanotechnology.', 1, 0, '2025-11-02 09:21:38', '2025-11-16 06:03:01'),
(65, 13, 'Nanoplasty', 'nanoplasty-', 'svariant-lKwEf0UQ.webp', '60', NULL, 349, 'Nanoplasty repairs, smooths, and strengthens damaged hair deeply using nanotechnology for frizz-free, shiny hair.', 1, 0, '2025-11-02 09:26:33', '2025-11-16 06:03:21'),
(66, 13, 'Shine/Glow Hair therapy', 'shineglow-hair-therapy', 'svariant-0gkqdLqH.webp', '30', NULL, 79, 'Hydrated & Glossy Hair Treatment deeply nourishes, restores moisture, repairs damage, smooths frizz, and enhances shine.', 1, 0, '2025-11-02 09:27:34', '2025-11-16 06:03:30'),
(67, 15, 'Anti Wrinkle Injection', 'Anti Wrinkle Injection', 'svariant-6KuwOaUH.webp', '30', NULL, 99, 'Botox is a non-surgical cosmetic treatment that reduces the appearance of dynamic wrinkles by temporarily relaxing targeted facial muscles.', 1, 0, '2025-11-02 10:16:42', '2025-11-18 06:07:14'),
(68, 15, 'Fillers', 'dermal-fillers', 'svariant-xMmkmjqw.webp', '30', NULL, 599, 'Dermal Fillers are non-surgical cosmetic treatments used to restore volume, smooth wrinkles, and enhance facial contours.', 1, 0, '2025-11-02 10:18:07', '2025-11-16 06:01:18'),
(69, 12, 'Tag Removal', 'tag-removal', 'svariant-HhKIZreL.webp', '15', NULL, 99, '**Skin Tag Removal** is a quick and safe cosmetic procedure to **eliminate small, harmless skin growths** that appear on areas like the neck, underarms, eyelids, or body folds. ✨💆‍♀️', 1, 0, '2025-11-02 10:24:56', '2025-11-16 06:06:08'),
(70, 12, 'Mole Removal', 'mole-removal', 'svariant-a6hGZh1s.webp', '15', NULL, 59, '**Mole Removal** is a safe and professional procedure to **eliminate unwanted or suspicious moles** for cosmetic or medical reasons. ✨💆‍♀️', 1, 0, '2025-11-02 10:25:57', '2025-11-16 06:06:19'),
(71, 18, 'Skin analysis', 'skin-analysis', 'svariant-ebK9pYf8.webp', '30', NULL, 49, 'Skin Analysis is a professional assessment that helps identify your skin type, condition, and specific concerns to create a personalized skincare plan.', 1, 0, '2025-11-03 07:52:29', '2025-11-16 05:53:16'),
(72, 18, 'Scalp Analysis', 'scalp-analysis', 'svariant-iLytR3BC.webp', '30', NULL, 49, 'Scalp Analysis is a professional examination that helps determine the health of your scalp and hair follicles to identify issues like dandruff, hair loss, or oil imbalance.', 1, 0, '2025-11-03 07:54:23', '2025-11-16 05:53:08'),
(73, 16, 'BB Glow', 'bb-glow', 'svariant-WDA1Co6P.webp', '30', NULL, 199, 'Infuses tinted serums to brighten, even skin tone, and reduce dullness for long-lasting glow.', 1, 0, '2025-11-03 08:31:18', '2025-11-16 05:59:28'),
(74, 16, 'Oxygeneo Facial', 'oxygeneo-facial', 'svariant-VOcngim0.webp', '30', NULL, 189, 'Exfoliates, infuses, and oxygenates the skin to enhance texture, hydration, and youthful radiance.', 1, 0, '2025-11-03 08:32:14', '2025-11-16 05:59:36'),
(75, 16, 'Healing Facial', 'healing-facial', 'svariant-TdKz811d.webp', '30', NULL, 149, 'Relieves stress, improves circulation, and restores natural glow through soothing massage and deep relaxation.', 1, 0, '2025-11-03 08:37:10', '2025-11-16 05:59:43'),
(76, 16, 'Hydrafacial Advanced', 'hydrafacial-advanced', 'svariant-4wVZea66.webp', '30', NULL, 229, 'Deeply cleanses, exfoliates, and hydrates the skin using a non-invasive multi-step facial treatment.', 1, 0, '2025-11-03 08:40:13', '2025-11-16 05:59:52'),
(77, 17, 'Plasma Jet', 'plasma-jet', 'svariant-HxH6rnmu.webp', '30', NULL, 249, 'Plasma Treatment is an advanced, non-surgical cosmetic therapy that uses plasma energy to rejuvenate the skin and stimulate healing.', 1, 0, '2025-11-03 08:45:16', '2025-11-16 05:55:08'),
(78, 17, 'Microneedling', 'microneedling', 'svariant-DPb02h5m.webp', '30', NULL, 249, 'Microneedling is a minimally invasive skin treatment that stimulates collagen and elastin production to improve skin texture, tone, and overall appearance.', 1, 0, '2025-11-03 08:51:31', '2025-11-16 05:55:16'),
(79, 17, 'Serum Penetration (xosome)', 'serum-penetration-xosome', 'svariant-czeacRgd.webp', '30', NULL, 229, 'Serum Penetration with Xosome is an advanced skincare treatment that uses Xosome technology to deliver active ingredients deep into the skin for maximum effectiveness.', 1, 0, '2025-11-03 08:53:30', '2025-11-16 05:55:26'),
(80, 17, 'HIFU (Skin Tightening)', 'hifu-skin-tightening', 'svariant-5on6g3Yb.webp', '30', NULL, 399, 'HIFU (High-Intensity Focused Ultrasound) is a non-surgical, non-invasive treatment that tightens and lifts the skin using focused ultrasound energy.', 1, 0, '2025-11-03 08:57:58', '2025-11-16 05:55:33'),
(81, 17, 'Rosacea', 'rosacea', 'svariant-rTcSkVie.webp', '30', NULL, 169, 'Rosacea Treatment is a specialized skincare approach designed to reduce redness, inflammation, and visible blood vessels caused by rosacea.', 1, 0, '2025-11-03 09:07:05', '2025-11-16 05:55:41'),
(82, 17, 'Chemical Peels', 'chemical-peels', 'svariant-YNWsX581.webp', '20', NULL, 129, 'Chemical Peel is a professional skincare treatment that **removes dead skin cells and stimulates skin regeneration** using specially formulated acids.', 1, 0, '2025-11-03 09:12:41', '2025-11-16 05:55:49'),
(83, 17, 'Acne and acne scarring', 'acne-and-acne-scarring', 'svariant-ZADLZeVK.webp', '30', NULL, 189, 'Acne & Acne Scarring Treatment is a specialized skincare approach designed to treat active acne and reduce the appearance of scars for clearer, smoother skin with our Medical Grade Products.', 1, 0, '2025-11-03 09:14:53', '2025-11-16 05:56:02'),
(84, 17, 'Back Acne and Scarring', 'back-acne-and-scarring', 'svariant-vJaKukh0.webp', '30', NULL, 159, 'Back Acne & Scarring Treatment is a targeted skincare solution designed to treat active back acne and reduce acne scars, leaving your skin smooth and clear.', 1, 0, '2025-11-03 09:16:48', '2025-11-16 05:56:10'),
(85, 17, 'Melasma', 'melasma', 'svariant-j3f6tmrj.webp', '30', NULL, 249, 'Melasma Treatment is a professional skincare approach designed to reduce pigmentation, even out skin tone, and prevent recurrence using a combination of advanced treatments and medical-grade products.', 1, 0, '2025-11-03 09:19:23', '2025-11-16 05:56:21'),
(86, 17, 'Carbon laser peel Facial', 'carbon-laser-peel-facial', 'svariant-NbT27rDX.webp', '30', NULL, 199, 'Carbon Laser Peel is a non-invasive facial treatment that exfoliates, cleanses, and rejuvenates the skin while reducing acne and pigmentation.', 1, 0, '2025-11-03 09:36:39', '2025-11-16 05:56:30'),
(87, 19, 'Bikini Sides IPL', 'bikini-sides-ipl', 'svariant-bME449vE.webp', '10', NULL, 69, 'Removes unwanted hair from bikini sides, leaving your skin smooth, soft, and irritation-free.', 1, 0, '2025-11-04 06:58:17', '2025-11-16 05:30:08'),
(88, 19, 'Brazilian Labia IPL', 'brazilian-labia-ipl', 'svariant-7qInyYp9.webp', '10', NULL, 79, 'Targets hair around the labia area for a clean, long-lasting, and comfortable smooth finish.', 1, 0, '2025-11-04 06:58:43', '2025-11-16 05:30:18'),
(89, 19, 'Brazilian Shaft IPL (Excluding Scrotum)', 'brazilian-shaft-ipl-excluding-scrotum', 'svariant-1p1R2nqa.webp', '10', NULL, 199, 'Precisely removes hair along the shaft, excluding scrotum, ensuring a sleek and confident look.', 1, 0, '2025-11-04 06:59:05', '2025-11-16 05:30:26'),
(90, 19, 'Full Body IPL', 'full-body-ipl', 'svariant-jhvquQ3o.webp', '10', NULL, 450, 'Comprehensive treatment covering the entire body for smooth, hair-free, and radiant skin all over.', 1, 0, '2025-11-04 06:59:34', '2025-11-16 05:30:33'),
(91, 19, 'Chin IPL add on', 'chin-ipl-add-on', 'svariant-hKr5uqcw.webp', '10', NULL, 10, 'Removes coarse chin hair, leaving your face softer, clearer, and beautifully smooth.', 1, 0, '2025-11-04 07:00:56', '2025-11-16 05:30:45'),
(93, 19, 'Fingers and Toes IPL Add on', 'fingers-and-toes-ipl-add-on', 'svariant-diCkDykB.webp', '10', NULL, 10, 'Eliminates fine hair from fingers and toes, giving a polished, neat appearance to hands and feet.', 1, 0, '2025-11-04 07:01:41', '2025-11-16 05:30:57'),
(94, 19, '1/2 Arm Lower IPL', '-arm-lower-ipl', 'svariant-xaNCRToO.webp', '10', NULL, 89, 'Targets hair from elbow to wrist, providing silky-smooth, hair-free lower arms.', 1, 0, '2025-11-04 07:01:58', '2025-11-16 05:31:10'),
(95, 19, '1/2 Arm top IPL', '-arm-top-ipl', 'svariant-ygFBakYm.webp', '10', NULL, 99, 'Removes unwanted hair from upper arms, giving a clean, even-toned, and smooth finish.', 1, 0, '2025-11-04 07:02:19', '2025-11-16 05:31:17'),
(96, 19, '1/2 Leg Lower IPL', '-leg-lower-ipl', 'svariant-D4oLSdbV.webp', '10', NULL, 99, 'Removes hair from knees to ankles for soft, touchable, and long-lasting smooth legs.', 1, 0, '2025-11-04 07:02:39', '2025-11-16 05:31:25'),
(97, 19, '1/2 Leg Top IPL', '-leg-top-ipl', 'svariant-LRc8EBUu.webp', '10', NULL, 109, 'Eliminates hair from thighs to knees, ensuring smoother, flawless upper legs.', 1, 0, '2025-11-04 07:03:08', '2025-11-16 05:31:34'),
(98, 19, 'Inner Bottom with Labia IPL Add on', 'inner-bottom-with-labia-ipl-add-on', 'svariant-EJxOjZjf.webp', '10', NULL, 10, 'Targets intimate inner bottom and labia areas, ensuring cleanliness and lasting smoothness.', 1, 0, '2025-11-04 07:04:39', '2025-11-16 05:31:42'),
(99, 19, 'Inner Bottom with Shaft IPL Add on', 'inner-bottom-with-shaft-ipl-add-on', 'svariant-HjD6ey0F.webp', '10', NULL, 10, 'Removes hair from inner bottom and shaft area for smooth, hygienic, and confident skin.', 1, 0, '2025-11-04 07:05:02', '2025-11-16 05:31:55'),
(100, 19, 'Back IPL', 'back-ipl', 'svariant-Vb1Rxmt7.webp', '10', NULL, 129, 'Removes unwanted back hair for smooth, clear, and evenly toned skin.', 1, 0, '2025-11-04 07:05:23', '2025-11-16 05:32:04'),
(101, 19, 'Back of thighs or Inner thighs IPL', 'back-of-thighs-or-inner-thighs-ipl', 'svariant-wVumYZdo.webp', '10', NULL, 59, 'Targets stubborn hair on back or inner thighs, leaving the area silky and irritation-free.', 1, 0, '2025-11-04 07:05:47', '2025-11-16 05:32:15'),
(102, 19, 'Beard Sculpt IPL', 'beard-sculpt-ipl', 'svariant-79zkyd4N.webp', '10', NULL, 69, 'Defines beard edges perfectly, maintaining a clean, sharp, and well-groomed look.', 1, 0, '2025-11-04 07:06:13', '2025-11-16 05:32:47'),
(103, 19, 'Breast bone + Nipples IPL Add on', 'breast-bone--nipples-ipl-add-on', 'svariant-nHHtpb5j.webp', '10', NULL, 15, 'Safely removes fine hair around chest and nipples, leaving the skin soft and smooth.', 1, 0, '2025-11-04 07:06:41', '2025-11-16 05:32:55'),
(104, 19, 'Chest IPL', 'chest-ipl', 'svariant-UvklL0JG.webp', '10', NULL, 89, 'Eliminates chest hair for a clean, smooth, and masculine or feminine refined appearance.', 1, 0, '2025-11-04 07:06:58', '2025-11-16 05:33:07'),
(105, 19, 'Chin IPL', 'chin-ipl', 'svariant-cAiSWcuj.webp', '10', NULL, 29, 'Removes stubborn chin hair, improving facial texture and providing a soft, flawless finish.', 1, 0, '2025-11-04 07:07:13', '2025-11-16 05:33:17'),
(106, 19, 'Full Arm IPL', 'full-arm-ipl', 'svariant-mKiBo91X.webp', '10', NULL, 129, 'Covers both upper and lower arms for consistently smooth, hair-free, radiant skin.', 1, 0, '2025-11-04 07:07:29', '2025-11-16 05:33:28'),
(107, 19, 'Full Face IPL', 'full-face-ipl', 'svariant-toJ4IDSb.webp', '15', NULL, 69, 'Removes facial hair gently, revealing bright, smooth, and even-toned skin.', 1, 0, '2025-11-04 07:07:46', '2025-11-16 05:48:22'),
(108, 19, 'Full Leg IPL', 'full-leg-ipl', 'svariant-Gz9VFc1r.webp', '15', NULL, 199, 'Removes hair from thighs to ankles, ensuring long-lasting smoothness and confidence.', 1, 0, '2025-11-04 07:08:05', '2025-11-16 05:48:36'),
(109, 19, 'Inner + Outer Bottom IPL', 'inner--outer-bottom-ipl', 'svariant-y0UdFxuK.webp', '10', NULL, 59, 'Targets both inner and outer bottom areas for complete smoothness and comfort.', 1, 0, '2025-11-04 07:08:22', '2025-11-16 05:50:35'),
(110, 19, 'IPL Consultation + Test Patch Redeemable', 'ipl-consultation--test-patch-redeemable', 'svariant-4daok38E.webp', '5', NULL, 49, 'Personalized skin test to ensure IPL suitability and comfort before your full treatment.', 1, 0, '2025-11-04 07:08:40', '2025-11-16 05:51:09'),
(111, 19, 'Lip IPL', 'lip-ipl', 'svariant-ADny3jct.webp', '5', NULL, 20, 'Gently removes fine upper lip hair, leaving the skin smooth and makeup-ready.', 1, 0, '2025-11-04 07:08:56', '2025-11-16 05:51:20'),
(112, 19, 'Neck Front or Back', 'neck-front-or-back', 'svariant-xDDZ3e2R.webp', '10', NULL, 39, 'Removes neck hair for a clean, polished look from any angle.', 1, 0, '2025-11-04 07:09:13', '2025-11-16 05:51:33'),
(113, 19, 'Outer Bottom IPL', 'outer-bottom-ipl', 'svariant-eVM0mFB3.webp', '10', NULL, 49, 'Targets outer bottom area for hygienic, smooth, and irritation-free skin.', 1, 0, '2025-11-04 07:09:34', '2025-11-16 05:51:49'),
(114, 19, 'Shoulders IPL', 'shoulders-ipl', 'svariant-rtySzenl.webp', '5', NULL, 59, 'Removes unwanted shoulder hair for a clean, well-groomed, and even-toned appearance.', 1, 0, '2025-11-04 07:09:48', '2025-11-16 05:52:01'),
(115, 19, 'Sides of Face IPL', 'sides-of-face-ipl', 'svariant-L8SeJBp8.webp', '5', NULL, 39, 'Smooths facial sides by removing fine hair, giving a soft, radiant glow.', 1, 0, '2025-11-04 07:10:01', '2025-11-16 05:52:12'),
(116, 19, 'Stomach IPL', 'stomach-ipl', 'svariant-zQgqlZBQ.webp', '10', NULL, 89, 'Eliminates unwanted hair from the stomach area for smooth, confident skin.', 1, 0, '2025-11-04 07:10:16', '2025-11-16 05:52:23'),
(117, 19, 'Underarms IPL', 'underarms-ipl', 'svariant-ZO6PiUU0.webp', '30', NULL, 39, 'Removes underarm hair effectively, reducing regrowth and leaving skin fresh and smooth.', 1, 0, '2025-11-04 07:10:37', '2025-11-04 09:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_book_log`
--

CREATE TABLE `tbl_service_book_log` (
  `log_id` int(11) NOT NULL,
  `sv_id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'tbl_service_time.st_id',
  `total_amount` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `dues_amount` int(11) NOT NULL,
  `service_date` date NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-Pending, 2-Approved, 3-Declined, 4-Completed',
  `added_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_service_book_log`
--

INSERT INTO `tbl_service_book_log` (`log_id`, `sv_id`, `vid`, `st_id`, `total_amount`, `paid_amount`, `dues_amount`, `service_date`, `first_name`, `last_name`, `email`, `country`, `phone`, `message`, `status`, `added_at`) VALUES
(5, 19, 108, 1, 199, 199, 0, '2025-12-20', 'raj', 'guddu', '', 'AU', '1234567890', '', 1, '2025-12-19 06:22:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_book_online`
--

CREATE TABLE `tbl_service_book_online` (
  `id` int(11) NOT NULL,
  `sv_id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `st_id` int(11) NOT NULL COMMENT 'tbl_service_time.st_id',
  `total_amount` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `dues_amount` int(11) NOT NULL,
  `service_date` date NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-Pending, 2-Approved, 3-Declined, 4-Completed',
  `remind` int(2) NOT NULL COMMENT '0-No, 1-Yes',
  `payment_mode` varchar(100) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `paymentIntentId` varchar(100) NOT NULL,
  `txnId` varchar(100) NOT NULL,
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_service_book_online`
--

INSERT INTO `tbl_service_book_online` (`id`, `sv_id`, `vid`, `st_id`, `total_amount`, `paid_amount`, `dues_amount`, `service_date`, `first_name`, `last_name`, `email`, `country`, `phone`, `message`, `status`, `remind`, `payment_mode`, `payment_status`, `paymentIntentId`, `txnId`, `added_at`, `update_at`) VALUES
(1, 17, 78, 1, 249, 126, 123, '2025-12-06', 'raj', 'guddu', 'test152@yopmail.com', 'AU', '1234567890', 'test', 1, 0, 'Stripe', 'succeeded', 'pi_3SayObPPCxuqVBCx1WwFhSex', 'TXN17649387517054', '2025-12-05 12:45:51', '2025-12-05 12:47:25'),
(2, 4, 30, 1, 20, 5, 15, '2025-12-07', 'raj', 'guddu', 'test152@yopmail.com', 'AU', '1234567890', '', 1, 0, 'Stripe', 'succeeded', 'pi_3SbMDXPPCxuqVBCx0vyhiqCV', 'TXN17650303225125', '2025-12-06 14:12:02', NULL),
(3, 19, 106, 1, 129, 0, 129, '2025-12-10', 'raj', 'guddu', 'admin@admin.com', 'AU', '1234567890', 'dada', 1, 0, '', '', '', '', '2025-12-08 15:52:24', NULL),
(4, 3, 35, 1, 279, 140, 139, '2025-12-11', 'raj', 'guddu', 'raj@yopmail.com', 'AU', '1234567890', 'test', 1, 0, 'Stripe', 'succeeded', 'pi_3ScpEcAts9oibJw61hnebGhE', 'TXN17653801907381', '2025-12-10 15:23:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_time`
--

CREATE TABLE `tbl_service_time` (
  `st_id` int(11) NOT NULL,
  `serv_time` varchar(150) NOT NULL,
  `status` int(11) NOT NULL,
  `added_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_service_time`
--

INSERT INTO `tbl_service_time` (`st_id`, `serv_time`, `status`, `added_at`) VALUES
(1, '9:00 am', 1, '2025-11-10 10:00:33'),
(2, '10:00 am', 1, '2025-11-10 10:00:33'),
(3, '11:00 am', 1, '2025-11-10 10:01:12'),
(4, '12:00 pm', 1, '2025-11-10 10:01:12'),
(5, '1:00 pm', 1, '2025-11-10 10:01:53'),
(6, '2:00 pm', 1, '2025-11-10 10:01:53'),
(7, '3:00 pm', 1, '2025-11-10 10:01:53'),
(8, '4:00 pm', 1, '2025-11-10 10:01:53'),
(9, '5:00 pm', 1, '2025-11-10 10:01:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `facebook_link` varchar(200) DEFAULT NULL,
  `twitter_link` varchar(200) DEFAULT NULL,
  `google_link` varchar(200) DEFAULT NULL,
  `linkedin_link` varchar(200) DEFAULT NULL,
  `youtube_link` varchar(200) DEFAULT NULL,
  `instagram_link` varchar(200) DEFAULT NULL,
  `pinterest_link` varchar(200) DEFAULT NULL,
  `opening_hours` text DEFAULT NULL,
  `marquee1` text DEFAULT NULL,
  `marquee2` text DEFAULT NULL,
  `marquee3` text DEFAULT NULL,
  `marquee4` text DEFAULT NULL,
  `weeklyHolidays` varchar(100) NOT NULL COMMENT 'for calender off day'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `address`, `phone`, `email`, `name`, `website`, `facebook_link`, `twitter_link`, `google_link`, `linkedin_link`, `youtube_link`, `instagram_link`, `pinterest_link`, `opening_hours`, `marquee1`, `marquee2`, `marquee3`, `marquee4`, `weeklyHolidays`) VALUES
(1, 'Unit 1/46 Jenke Cct, Kambah ACT 2902, Australia', '+61410038603', 'bebeautiful@skincanberra.com', 'SkinCanberra', 'www.website.com', 'https://www.facebook.com/share/1BamZssND6/', 'https://twitter.com/skincanberra', 'https://maps.app.goo.gl/X3wRoDEp9URs8KZTA', '', 'http://youtube.com/', 'https://www.instagram.com/skincanberra', '', '<ul>\r\n<li><strong>Address: </strong>Unit 1/46 Jenke Cct, Kambah ACT 2902, Australia</li>\r\n<li><strong>Mon:</strong> Closed</li>\r\n<li><strong>Tue :</strong> Closed</li>\r\n<li><strong>Wed and Thu:&nbsp;</strong>10AM - 5PM</li>\r\n<li><strong>Fri and Sat:&nbsp;</strong>10AM - 7PM</li>\r\n<li><strong>Sun :</strong> 10AM&nbsp;-&nbsp;3PM</li>\r\n</ul>', 'Glow Naturally With Expert Skin & Beauty Care', '', '', '', '1,2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_termcondition`
--

CREATE TABLE `tbl_termcondition` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` enum('1','0') NOT NULL COMMENT '1-Active, 0-Inactive',
  `added_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_termcondition`
--

INSERT INTO `tbl_termcondition` (`id`, `title`, `url`, `description`, `status`, `added_at`, `updated_at`) VALUES
(1, 'privacy policy', 'privacy-policy', 'about us', '0', '0000-00-00 00:00:00', '2021-07-20 21:15:04'),
(4, 'term condition 2', 'term-condition-2', 'term condition', '0', '2021-07-20 22:23:16', '2021-07-20 22:23:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(5) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `post` varchar(150) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `thumb_image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0-inactive, 1-active',
  `added_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name`, `description`, `post`, `photo`, `thumb_image`, `video`, `status`, `added_at`, `update_at`) VALUES
(1, 'Breanna Neville', 'I have had two appointments with Shikha so far and have already scheduled my next. I have had great experiences with the Hydra Facial.\r\nShe definitely makes you feel very comfortable, answers all my questions and I leave feeling very relaxed and my skin rejuvenated. Looking forward to my next appointment.', 'Hydra Facial', 'testimonial-NwqnR3jj.webp', NULL, NULL, 1, '2025-10-15 05:32:46', '2025-10-15 10:49:52'),
(2, 'Jessica Apolinar', 'I had a great experience at Shikha Beauty Studio. The consultation and the chemical peel process was well done - I experienced great results with noticeable improvements with my skin texture and acne scars and the process was very reasonably priced. Shikha is very gentle, friendly and professional and understands Asian skin needs. I highly recommend you visit!', 'Chemical peel process', NULL, NULL, NULL, 1, '2025-10-15 05:33:27', '2025-10-15 10:51:17'),
(3, 'Jithu Alin', 'I have got my nanoplasty done from Shikha. I was so keen on keeping my curls at the tip of my hair and the result was awesome. Shikha is a wonderful human being and has got great knowledge in skin and hair. I will definitely recommend her to people who are looking for chemical free treatments for hair and skin.', 'Nanoplasty', 'testimonial-r1RKK1dI.webp', NULL, NULL, 1, '2025-10-15 05:34:02', '2025-10-15 10:52:21'),
(4, 'Jane Gomes', 'I have been attending Shikha\'s hair salon for well over a year and been extremely satisfied with her service. It never wavers   and I would keep coming back to her whenever I  needed to. Her hair colouring and cut are superb. I wish her all the best.', 'hair coloring', 'testimonial-AcRedFeu.webp', NULL, NULL, 1, '2025-10-15 05:34:48', '2025-10-15 10:53:30'),
(5, NULL, NULL, NULL, NULL, 'testimonial-bIGjS9E5.webp', 'testimonial-3d4ctj15.mp4', 0, '2025-10-15 05:35:31', '2025-11-04 10:23:09'),
(6, NULL, NULL, NULL, NULL, 'testimonial-iXcFMeif.webp', 'testimonial-2kEGZWii.mp4', 0, '2025-10-15 05:35:53', '2025-11-04 10:23:02'),
(7, NULL, NULL, NULL, NULL, 'testimonial-fQzNZY2s.webp', 'pgQPquFKKpc', 0, '2025-10-15 05:36:14', '2025-11-04 10:22:54'),
(8, NULL, NULL, NULL, NULL, 'testimonial-bYrpFfgp.webp', 'pgQPquFKKpc', 0, '2025-10-15 05:36:34', '2025-11-04 10:22:46'),
(9, 'Breanna Neville', 'Chrissy was amazing. Absolutely 10/10 would recommend to everyone', 'hair coloring', NULL, NULL, NULL, 1, '2025-10-15 12:28:21', '2025-10-15 12:28:28'),
(10, 'Alexis Epstein', 'This is an excellent beauty salon. Shikha prides herself on giving individual attention and care to every customer. Her facials are excellent, and come with a super relaxing head massage. Her waxing services are also excellent and she is very clean and hygienic. Her studio is in her home so I always feel private and safe there. I highly recommend Shikha also for her incredibly reasonable prices. You won\'t find a better deal for such excellent service anywhere!', 'Body waxing, Eyebrow threading, Waxing', NULL, NULL, NULL, 1, '2025-10-15 12:31:23', '2025-10-15 12:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(5) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL DEFAULT 'King of Town',
  `description` text DEFAULT NULL,
  `status` enum('publish','pending','draft') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users_temp`
--

CREATE TABLE `tbl_users_temp` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `country` int(11) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(150) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` varchar(400) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_users_temp`
--

INSERT INTO `tbl_users_temp` (`user_id`, `fname`, `mname`, `lname`, `country`, `dob`, `gender`, `email`, `password`, `ip_address`, `phone`, `image`, `address`, `status`, `created`, `updated`) VALUES
(1, 'md', 'raj', 'guddu', 99, '1986-01-02', 'male', 'raj@yopmail.com', '123456', '::1', '9162925142', 'u_1672925916.jpg', 'delhi', 0, '2023-01-05 02:08:36', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_about_content`
--
ALTER TABLE `tbl_about_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_image` (`about_image`),
  ADD KEY `sec3_image1` (`sec3_image1`,`sec3_image2`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page` (`page`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blg_id`);

--
-- Indexes for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page` (`page`,`status`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`countries_id`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `tbl_happy_client`
--
ALTER TABLE `tbl_happy_client`
  ADD PRIMARY KEY (`cl_id`);

--
-- Indexes for table `tbl_home_content`
--
ALTER TABLE `tbl_home_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_image` (`about_image`),
  ADD KEY `sec5_content_image1` (`sec5_content_image1`),
  ADD KEY `sec5_content_image2` (`sec5_content_image2`),
  ADD KEY `sec5_content_image3` (`sec5_content_image3`,`pic1`),
  ADD KEY `pic2` (`pic2`,`pic3`,`pic4`),
  ADD KEY `contact_page_image` (`contact_page_image`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `email` (`email`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_member_address`
--
ALTER TABLE `tbl_member_address`
  ADD PRIMARY KEY (`add_id`),
  ADD KEY `m_id` (`m_id`),
  ADD KEY `status` (`status`),
  ADD KEY `m_id_2` (`m_id`,`status`);

--
-- Indexes for table `tbl_newsletter`
--
ALTER TABLE `tbl_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment_transaction`
--
ALTER TABLE `tbl_payment_transaction`
  ADD PRIMARY KEY (`pt_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `cat_id` (`cat_id`),
  ADD KEY `pro_url` (`pro_url`),
  ADD KEY `status` (`status`),
  ADD KEY `show_front` (`show_front`),
  ADD KEY `pro_url_2` (`pro_url`,`status`);

--
-- Indexes for table `tbl_product_attributes`
--
ALTER TABLE `tbl_product_attributes`
  ADD PRIMARY KEY (`attrId`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_product_order`
--
ALTER TABLE `tbl_product_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product_order_log`
--
ALTER TABLE `tbl_product_order_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_purchased_course`
--
ALTER TABLE `tbl_purchased_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_realresult`
--
ALTER TABLE `tbl_realresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`sv_id`),
  ADD KEY `serv_url` (`serv_url`,`status`),
  ADD KEY `service_name` (`service_name`),
  ADD KEY `banner_image` (`banner_image`,`thumbnail_image`,`photo`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_services_variants`
--
ALTER TABLE `tbl_services_variants`
  ADD PRIMARY KEY (`vid`),
  ADD KEY `v_url` (`v_url`),
  ADD KEY `sv_id` (`sv_id`),
  ADD KEY `status` (`status`),
  ADD KEY `sv_id_2` (`sv_id`,`status`);

--
-- Indexes for table `tbl_service_book_log`
--
ALTER TABLE `tbl_service_book_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_service_book_online`
--
ALTER TABLE `tbl_service_book_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service_time`
--
ALTER TABLE `tbl_service_time`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `tbl_termcondition`
--
ALTER TABLE `tbl_termcondition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `tbl_users_temp`
--
ALTER TABLE `tbl_users_temp`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_about_content`
--
ALTER TABLE `tbl_about_content`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_cms`
--
ALTER TABLE `tbl_cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_happy_client`
--
ALTER TABLE `tbl_happy_client`
  MODIFY `cl_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_home_content`
--
ALTER TABLE `tbl_home_content`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_member_address`
--
ALTER TABLE `tbl_member_address`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_newsletter`
--
ALTER TABLE `tbl_newsletter`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_payment_transaction`
--
ALTER TABLE `tbl_payment_transaction`
  MODIFY `pt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbl_product_attributes`
--
ALTER TABLE `tbl_product_attributes`
  MODIFY `attrId` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `tbl_product_category`
--
ALTER TABLE `tbl_product_category`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_product_order`
--
ALTER TABLE `tbl_product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_product_order_log`
--
ALTER TABLE `tbl_product_order_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_purchased_course`
--
ALTER TABLE `tbl_purchased_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_realresult`
--
ALTER TABLE `tbl_realresult`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `sv_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_services_variants`
--
ALTER TABLE `tbl_services_variants`
  MODIFY `vid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `tbl_service_book_log`
--
ALTER TABLE `tbl_service_book_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_service_book_online`
--
ALTER TABLE `tbl_service_book_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_service_time`
--
ALTER TABLE `tbl_service_time`
  MODIFY `st_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_termcondition`
--
ALTER TABLE `tbl_termcondition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users_temp`
--
ALTER TABLE `tbl_users_temp`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
