-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2025 at 10:27 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_sankalp`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `banner_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image_desktop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner_title`, `banner_content`, `banner_url_link`, `banner_image_desktop`, `banner_image_mobile`, `created_at`, `updated_at`) VALUES
(6, NULL, NULL, NULL, 'banner-image-30-12-2024-03-43-37.jpg', NULL, '2024-09-14 09:12:30', '2024-12-30 10:13:37'),
(7, NULL, NULL, NULL, 'banner-image-30-12-2024-03-43-11.jpg', NULL, '2024-09-14 09:13:02', '2024-12-30 10:13:11'),
(8, 'Welcome to Hotel Sankalp Banaras', NULL, NULL, 'banner-image-30-12-2024-03-42-47.jpg', NULL, '2024-09-14 09:13:39', '2024-12-30 10:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotel_facilities`
--

CREATE TABLE `hotel_facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facilities_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `facilities_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facilities_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_facilities`
--

INSERT INTO `hotel_facilities` (`id`, `title`, `slug`, `facilities_content`, `facilities_icon`, `facilities_image`, `created_at`, `updated_at`) VALUES
(3, 'Qulity Room', 'qulity-room', 'Experience unparalleled comfort and luxury at our quality rooms, conveniently located near Varanasi.', 'facilities-icon-14-09-2024-03-00-32.png', NULL, '2024-09-14 09:30:33', '2024-09-14 09:30:33'),
(4, 'Best Accommodation', 'best-accommodation', 'Experience the pinnacle of comfort with our Best Accommodation near the heart of Varanasi.', 'facilities-icon-14-09-2024-03-02-45.png', NULL, '2024-09-14 09:32:45', '2024-09-14 09:32:45'),
(6, 'Restaurants', 'restaurants', 'Savor exquisite flavors at our restaurant, offering a culinary journey that complements your stay near Varanasi.', 'facilities-icon-14-09-2024-03-03-56.png', NULL, '2024-09-14 09:33:56', '2024-09-14 09:33:56'),
(7, 'Lift', 'lift', 'Enjoy seamless vertical transport during your stay with our hotel\'s convenient lift access, ensuring effortless navigation between floors for guests.', 'facilities-icon-14-09-2024-03-04-31.png', NULL, '2024-09-14 09:34:31', '2024-09-14 09:34:31'),
(8, '24 Hours Power backup', '24-hours-power-backup', 'Experience uninterrupted comfort with our hotel\'s 24-hour power backup, ensuring seamless access to facilities and services round the clock.', 'facilities-icon-14-09-2024-03-05-04.png', NULL, '2024-09-14 09:35:04', '2024-09-14 09:35:04'),
(9, 'Free Wi Fi', 'free-wi-fi', 'Enjoy complimentary Wi-Fi access throughout your stay, ensuring you stay connected and productive during your visit to our hotel.', 'facilities-icon-14-09-2024-03-05-31.png', NULL, '2024-09-14 09:35:31', '2024-09-14 09:35:31'),
(10, 'Fully Air-Conditioned', 'fully-air-conditioned', 'Enjoy optimal comfort and relaxation throughout your stay with our hotel\'s fully air-conditioned facilities,ensuring a pleasant environment.', 'facilities-icon-14-09-2024-03-05-58.png', NULL, '2024-09-14 09:35:58', '2024-09-14 09:35:58'),
(12, 'Welcome Drink', 'welcome-drink', 'Indulge in a refreshing welcome drink upon arrival, adding a touch of hospitality to your stay at our hotel. It\'s our way of warm welcome for all guests.', 'facilities-icon-14-09-2024-03-07-54.png', NULL, '2024-09-14 09:37:55', '2024-09-14 09:37:55'),
(13, 'Roof Top Restaurant', 'roof-top-restaurant', 'Enjoy dining at our Rooftop Restaurant, where exquisite cuisine pairs with stunning views for an unforgettable experience.', 'facilities-icon-14-09-2024-03-08-19.png', NULL, '2024-09-14 09:38:19', '2024-09-14 09:38:19'),
(14, 'Guides Available on Request', 'guides-available-on-request', 'Personalized guides are available to enhance your stay, offering tailored expert assistance to explore the area based on your interests.', 'facilities-icon-14-09-2024-03-08-57.png', NULL, '2024-09-14 09:38:57', '2024-09-14 09:38:57'),
(15, 'Hair Dryer', 'hair-dryer', 'Every room includes a hair dryer, providing guests with convenience and comfort to style their hair during their stay.', 'facilities-icon-14-09-2024-03-09-22.png', NULL, '2024-09-14 09:39:22', '2024-09-14 09:39:22'),
(16, 'Major Credit Cards accepted', 'major-credit-cards-accepted', 'Our hotel gladly accepts all major credit cards, ensuring convenient payment options for our guests during their stay. Seamless credit card access provided.', 'facilities-icon-14-09-2024-03-10-36.png', NULL, '2024-09-14 09:40:36', '2024-09-14 09:40:36'),
(17, 'Kettle in Room', 'kettle-in-room', 'Guests can enjoy the convenience of having a kettle in their room, ensuring a comfortable and relaxing stay with easy access to hot beverages at any time.', 'facilities-icon-14-09-2024-03-10-57.png', NULL, '2024-09-14 09:40:57', '2024-09-14 09:40:57'),
(18, 'Parking', 'parking', 'Parking facilities are available at the hotel, ensuring convenient and secure parking for guests\' vehicles during their stay.', 'facilities-icon-14-09-2024-03-11-26.png', NULL, '2024-09-14 09:41:26', '2024-09-14 09:41:26'),
(19, 'Intercom', 'intercom', 'Intercom systems in hotels enable easy communication between guests and staff, improving service efficiency and enhancing the guest experience.', 'facilities-icon-14-09-2024-03-11-51.png', NULL, '2024-09-14 09:41:51', '2024-09-14 09:41:51'),
(20, '24x7 Dinning', '24x7-dinning', 'Enjoy 24/7 dining at our hotel, offering delicious meals anytime, day or night, for your convenience during your stay.', 'facilities-icon-14-09-2024-03-12-23.png', NULL, '2024-09-14 09:42:23', '2024-09-14 09:42:23'),
(21, 'Smart TV', 'smart-tv', 'Experience Smart TVs in every room, providing easy access to streaming services and apps for an elevated guest experience.', 'facilities-icon-14-09-2024-03-12-46.png', NULL, '2024-09-14 09:42:46', '2024-09-14 09:42:46'),
(22, 'Mini Bar', 'mini-bar', 'The Mini Bar in our hotel offers a curated selection of beverages and snacks, providing guests with convenient refreshments right in their room.', 'facilities-icon-14-09-2024-03-13-09.png', NULL, '2024-09-14 09:43:09', '2024-09-14 09:43:09'),
(23, 'Safety Locker', 'safety-locker', 'The hotel provides safety lockers as part of its facilities, ensuring guests\' peace of mind by offering secure storage for their valuables during their stay.', 'facilities-icon-14-09-2024-03-13-34.png', NULL, '2024-09-14 09:43:34', '2024-09-14 09:43:34'),
(24, 'On demand Electric Press', 'on-demand-electric-press', 'The hotel provides an on-demand electric press service, offering guests convenient ironing facilities for a more comfortable stay.', 'facilities-icon-14-09-2024-03-14-02.png', NULL, '2024-09-14 09:44:02', '2024-09-14 09:44:02'),
(25, 'Laundry', 'laundry', 'The hotel provides convenient laundry facilities, ensuring guests enjoy a seamless stay with clean, fresh attire and hassle-free service.', 'facilities-icon-14-09-2024-03-14-26.png', NULL, '2024-09-14 09:44:26', '2024-09-14 09:44:26'),
(26, 'Pickup & Drop Service', 'pickup-drop-service', 'The hotel provides convenient Pickup & Drop Service, ensuring smooth transportation for guests to and from their chosen destinations.', 'facilities-icon-14-09-2024-03-14-54.png', NULL, '2024-09-14 09:44:54', '2024-09-14 09:44:54'),
(27, '24x7 Hot & Cold Water', '24x7-hot-cold-water', 'Enjoy round-the-clock access to both hot and cold water at our hotel, ensuring your comfort and convenience throughout your stay.', 'facilities-icon-14-09-2024-03-15-20.png', NULL, '2024-09-14 09:45:20', '2024-09-14 09:45:20'),
(28, 'Special Offers', 'special-offers', 'Discover exclusive deals and packages for your stay near Varanasi, tailored to make your experience unforgettable.', 'facilities-icon-14-09-2024-03-15-46.png', NULL, '2024-09-14 09:45:46', '2024-09-14 09:45:46');

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rooms`
--

CREATE TABLE `hotel_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_price` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`id`, `title`, `room_price`, `slug`, `main_image`, `details`, `created_at`, `updated_at`) VALUES
(9, 'Deluxe Room', '5000', 'deluxe-double-room', NULL, 'Discover Varanasi’s charm in a Deluxe Room featuring traditional decor, modern amenities, and breathtaking views of the Ganges River.', '2024-09-15 23:25:59', '2024-12-26 11:51:12'),
(10, 'Executive Room', '6000', 'super-deluxe-double-room', NULL, 'Enjoy comfort and style in our Executive Room—a spacious retreat with modern amenities near Varanasi\'s iconic ghats.', '2024-09-15 23:42:52', '2024-12-26 11:36:19'),
(11, 'Triple Bed Room', '6500', 'triple-bed-room', NULL, 'Experience the charm of Varanasi from our Balcony Triple Room, offering stunning views and a relaxing retreat after a day of exploration.', '2024-09-15 23:43:39', '2024-09-15 23:43:39'),
(12, 'Family Room', '7000', 'family-quad-room', NULL, 'Experience the charm of Varanasi from our Family Quad Room, offering stunning views and a relaxing retreat after a day of exploration.', '2024-09-15 23:44:13', '2024-12-27 11:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_13_054032_create_permission_tables', 1),
(7, '2024_09_13_064806_create_banner_table', 2),
(9, '2024_09_13_090948_create_hotel_facilities_table', 3),
(10, '2024_09_13_105835_create_hotel_rooms_table', 4),
(11, '2024_09_13_105850_create_room_images_table', 4),
(13, '2024_09_16_081340_create_visits_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', 'CEIFyD958GuEGdmVQhe0ZnjtfXYsGvwD6Q8ckQ8KCe2eJmOgUVp7YIIwUSNhOJHx', '2024-09-16 04:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'home', 'web', '2024-09-16 02:00:14', '2024-09-16 02:00:14'),
(2, 'about-us', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(3, 'our-room', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(4, 'facilities', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(5, 'contact-us', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(6, 'home-quick-enquiry.store', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(7, 'book-a-room.store', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(8, 'contact-form.store', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(9, 'login', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(10, 'forget.password', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(11, 'forget.password.post', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(12, 'reset.password.get', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(13, 'reset.password.post', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(14, 'logout', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(15, 'users', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(16, 'users.create', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(17, 'users.store', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(18, 'users.show', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(19, 'users.edit', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(20, 'users.update', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(21, 'users.destroy', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(22, 'roles.index', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(23, 'roles.create', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(24, 'roles.store', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(25, 'roles.show', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(26, 'roles.edit', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(27, 'roles.update', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(28, 'roles.destroy', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(29, 'permissions.index', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(30, 'permissions.create', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(31, 'permissions.store', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(32, 'permissions.show', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(33, 'permissions.edit', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(34, 'permissions.update', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(35, 'permissions.destroy', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(36, 'dashboard', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(37, 'manage-profile', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(38, 'manage-profile.update', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(39, 'banner', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(40, 'banner.add', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(41, 'banner.store', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(42, 'banner.edit', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(43, 'banner.update', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(44, 'banner.delete', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(45, 'hotel-facilities', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(46, 'hotel-facilities.add', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(47, 'hotel-facilities.store', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(48, 'hotel-facilities.edit', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(49, 'hotel-facilities.update', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(50, 'hotel-facilities.delete', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(51, 'hotel-room', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(52, 'hotel-room.add', 'web', '2024-09-16 02:00:15', '2024-09-16 02:00:15'),
(53, 'hotel-room.store', 'web', '2024-09-16 02:00:16', '2024-09-16 02:00:16'),
(54, 'hotel-room.edit', 'web', '2024-09-16 02:00:16', '2024-09-16 02:00:16'),
(55, 'hotel-room.update', 'web', '2024-09-16 02:00:16', '2024-09-16 02:00:16'),
(56, 'hotel-room.delete', 'web', '2024-09-16 02:00:16', '2024-09-16 02:00:16'),
(57, 'multiple-img.delete', 'web', '2024-09-16 02:00:16', '2024-09-16 02:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-09-16 02:06:06', '2024-09-16 02:06:06'),
(2, 'Webadmin', 'web', '2024-09-16 04:31:23', '2024-09-16 04:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(18, 2),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(21, 2),
(22, 1),
(22, 2),
(23, 1),
(23, 2),
(24, 1),
(24, 2),
(25, 1),
(25, 2),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hotel_room_id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`id`, `hotel_room_id`, `image_path`, `created_at`, `updated_at`) VALUES
(40, 12, 'room-image-_A8A9856-10-07-01-897.JPG', '2024-12-26 16:37:15', '2024-12-26 16:37:15'),
(41, 12, 'room-image-_A8A9859-10-07-15-502.JPG', '2024-12-26 16:37:28', '2024-12-26 16:37:28'),
(42, 12, 'room-image-_A8A9861-10-07-28-227.JPG', '2024-12-26 16:37:39', '2024-12-26 16:37:39'),
(43, 12, 'room-image-_A8A9863-10-07-39-935.JPG', '2024-12-26 16:37:52', '2024-12-26 16:37:52'),
(47, 12, 'room-image-_A8A9924-10-11-26-006.JPG', '2024-12-26 16:41:38', '2024-12-26 16:41:38'),
(48, 12, 'room-image-_A8A9926-10-11-38-566.JPG', '2024-12-26 16:41:50', '2024-12-26 16:41:50'),
(49, 12, 'room-image-_A8A9928-10-11-50-100.JPG', '2024-12-26 16:42:00', '2024-12-26 16:42:00'),
(50, 12, 'room-image-_A8A9930-10-12-00-752.JPG', '2024-12-26 16:42:14', '2024-12-26 16:42:14'),
(51, 12, 'room-image-_A8A9924-10-12-20-504.JPG', '2024-12-26 16:42:33', '2024-12-26 16:42:33'),
(52, 12, 'room-image-_A8A9926-10-12-33-072.JPG', '2024-12-26 16:42:44', '2024-12-26 16:42:44'),
(53, 12, 'room-image-_A8A9928-10-12-44-989.JPG', '2024-12-26 16:42:55', '2024-12-26 16:42:55'),
(54, 12, 'room-image-_A8A9930-10-12-55-742.JPG', '2024-12-26 16:43:07', '2024-12-26 16:43:07'),
(55, 11, 'room-image-_A8A9942-10-22-09-178.JPG', '2024-12-26 16:52:23', '2024-12-26 16:52:23'),
(56, 11, 'room-image-_A8A9946-10-22-23-922.JPG', '2024-12-26 16:52:39', '2024-12-26 16:52:39'),
(57, 11, 'room-image-_A8A9949-10-22-39-918.JPG', '2024-12-26 16:52:54', '2024-12-26 16:52:54'),
(58, 11, 'room-image-_A8A9951-10-22-54-742.JPG', '2024-12-26 16:53:06', '2024-12-26 16:53:06'),
(61, 11, 'room-image-_A8A9955-10-25-20-969.JPG', '2024-12-26 16:55:40', '2024-12-26 16:55:40'),
(62, 11, 'room-image-_A8A9937-10-27-07-791.JPG', '2024-12-26 16:57:25', '2024-12-26 16:57:25'),
(63, 11, 'room-image-_A8A9939-10-27-25-081.JPG', '2024-12-26 16:57:43', '2024-12-26 16:57:43'),
(64, 11, 'room-image-_A8A9937-10-27-35-015.JPG', '2024-12-26 16:57:51', '2024-12-26 16:57:51'),
(65, 11, 'room-image-_A8A9939-10-27-51-415.JPG', '2024-12-26 16:58:08', '2024-12-26 16:58:08'),
(66, 10, 'room-image-_A8A9900-10-32-26-357.JPG', '2024-12-26 17:02:40', '2024-12-26 17:02:40'),
(68, 10, 'room-image-_A8A9902-10-32-40-148.JPG', '2024-12-26 17:02:58', '2024-12-26 17:02:58'),
(70, 10, 'room-image-_A8A9904-10-36-19-922.JPG', '2024-12-26 17:06:29', '2024-12-26 17:06:29'),
(71, 10, 'room-image-_A8A9906-10-36-29-058.JPG', '2024-12-26 17:06:39', '2024-12-26 17:06:39'),
(72, 10, 'room-image-_A8A9908-10-36-39-960.JPG', '2024-12-26 17:06:57', '2024-12-26 17:06:57'),
(73, 10, 'room-image-_A8A9910-10-36-57-783.JPG', '2024-12-26 17:07:14', '2024-12-26 17:07:14'),
(74, 10, 'room-image-_A8A9914-10-37-14-044.JPG', '2024-12-26 17:07:27', '2024-12-26 17:07:27'),
(76, 10, 'room-image-_A8A9895-10-41-36-165.JPG', '2024-12-26 17:11:50', '2024-12-26 17:11:50'),
(77, 10, 'room-image-_A8A9897-10-41-50-092.JPG', '2024-12-26 17:12:05', '2024-12-26 17:12:05'),
(78, 10, 'room-image-_A8A9915-10-42-05-047.JPG', '2024-12-26 17:12:22', '2024-12-26 17:12:22'),
(79, 10, 'room-image-_A8A9897-10-42-53-634.JPG', '2024-12-26 17:13:11', '2024-12-26 17:13:11'),
(80, 10, 'room-image-_A8A9937-10-44-25-689.JPG', '2024-12-26 17:14:42', '2024-12-26 17:14:42'),
(81, 10, 'room-image-_A8A9939-10-44-42-476.JPG', '2024-12-26 17:14:58', '2024-12-26 17:14:58'),
(82, 9, 'room-image-_A8A9919-10-51-12-244.JPG', '2024-12-26 17:21:39', '2024-12-26 17:21:39'),
(83, 9, 'room-image-_A8A9921-10-53-29-943.JPG', '2024-12-26 17:23:43', '2024-12-26 17:23:43'),
(84, 9, 'room-image-_A8A9922-10-54-18-970.JPG', '2024-12-26 17:24:38', '2024-12-26 17:24:38'),
(86, 9, 'room-image-_A8A9924-10-56-22-120.JPG', '2024-12-26 17:26:35', '2024-12-26 17:26:35'),
(88, 9, 'room-image-_A8A9926-10-56-43-989.JPG', '2024-12-26 17:26:54', '2024-12-26 17:26:54'),
(89, 9, 'room-image-_A8A9928-10-58-28-730.JPG', '2024-12-26 17:28:42', '2024-12-26 17:28:42'),
(90, 9, 'room-image-_A8A9930-10-58-42-596.JPG', '2024-12-26 17:28:58', '2024-12-26 17:28:58'),
(91, 9, 'room-image-_A8A9932-10-59-32-333.JPG', '2024-12-26 17:29:46', '2024-12-26 17:29:46'),
(92, 9, 'room-image-_A8A9934-10-59-46-946.JPG', '2024-12-26 17:30:01', '2024-12-26 17:30:01'),
(93, 9, 'room-image-_A8A9886-11-00-48-107.JPG', '2024-12-26 17:31:01', '2024-12-26 17:31:01'),
(94, 9, 'room-image-_A8A9888-11-01-01-917.JPG', '2024-12-26 17:31:16', '2024-12-26 17:31:16'),
(99, 9, 'room-image-_A8A9849-11-06-00-332.JPG', '2024-12-26 17:36:12', '2024-12-26 17:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_img` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '1=active, 0=inactive',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `profile_img`, `phone_number`, `username`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin@gmail.com', NULL, '7865678765', 'admin', '1', NULL, '$2y$10$TofMzfGZF7WLKtP4iks2GegBoLkM76Lcg/J6yXMXBbaHa.HN9ebtS', NULL, '2024-09-16 02:06:06', '2024-09-16 02:27:40'),
(4, 'Hotel Sankalp Banaras', 'sankalpbanaras@gmail.com', NULL, '9415285030', NULL, '1', NULL, '$2y$10$ztGDCHVMRliSUcmKPwOuh.IZtT5Y.LbCyEOj9DwdiKJVWiUx1YqzK', NULL, '2024-09-16 04:30:57', '2024-12-26 12:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pagename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visited_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `pagename`, `user_agent_name`, `visited_at`, `ip_address`, `created_at`, `updated_at`) VALUES
(3, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-16 09:25:34', '49.36.168.12', '2024-09-16 03:55:34', '2024-09-16 03:55:34'),
(6, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Mobile Safari/537.36 Chrome-Lighthouse', '2024-09-16 10:45:00', '66.249.82.193', '2024-09-16 05:15:00', '2024-09-16 05:15:00'),
(7, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Safari/537.36 Chrome-Lighthouse', '2024-09-16 10:45:00', '66.249.82.194', '2024-09-16 05:15:00', '2024-09-16 05:15:00'),
(8, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Mobile Safari/537.36 Chrome-Lighthouse', '2024-09-16 10:45:04', '66.249.82.204', '2024-09-16 05:15:04', '2024-09-16 05:15:04'),
(9, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Safari/537.36 Chrome-Lighthouse', '2024-09-16 10:45:05', '66.249.82.203', '2024-09-16 05:15:05', '2024-09-16 05:15:05'),
(10, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Mobile Safari/537.36 Chrome-Lighthouse', '2024-09-16 10:45:18', '66.249.82.202', '2024-09-16 05:15:18', '2024-09-16 05:15:18'),
(11, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36 GTmetrix', '2024-09-16 10:50:15', '172.255.48.130', '2024-09-16 05:20:15', '2024-09-16 05:20:15'),
(12, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/61.0.3163.100 Chrome/61.0.3163.100 Safari/537.36 PingdomPageSpeed/1.0 (pingbot/2.0; +http://www.pingdom.com/)', '2024-09-16 10:50:18', '18.215.147.161', '2024-09-16 05:20:18', '2024-09-16 05:20:18'),
(24, 'https://www.hotelsankalp.com/facilities', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Mobile Safari/537.36 Chrome-Lighthouse', '2024-09-16 10:58:10', '142.250.32.32', '2024-09-16 05:28:10', '2024-09-16 05:28:10'),
(25, 'https://www.hotelsankalp.com/facilities', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Safari/537.36 Chrome-Lighthouse', '2024-09-16 10:58:10', '142.250.32.33', '2024-09-16 05:28:10', '2024-09-16 05:28:10'),
(26, 'https://www.hotelsankalp.com/facilities', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Mobile Safari/537.36 Chrome-Lighthouse', '2024-09-16 10:58:20', '142.250.32.34', '2024-09-16 05:28:20', '2024-09-16 05:28:20'),
(29, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4143.7 Mobile Safari/537.36 Chrome-Lighthouse', '2024-09-16 10:58:41', '49.13.115.141', '2024-09-16 05:28:41', '2024-09-16 05:28:41'),
(30, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4143.7 Mobile Safari/537.36 Chrome-Lighthouse', '2024-09-16 10:58:44', '188.245.88.197', '2024-09-16 05:28:44', '2024-09-16 05:28:44'),
(31, 'https://www.hotelsankalp.com/about-us', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Mobile Safari/537.36 Chrome-Lighthouse', '2024-09-16 11:13:27', '74.125.208.138', '2024-09-16 05:43:27', '2024-09-16 05:43:27'),
(32, 'https://www.hotelsankalp.com/about-us', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4590.2 Safari/537.36 Chrome-Lighthouse', '2024-09-16 11:13:27', '74.125.208.139', '2024-09-16 05:43:27', '2024-09-16 05:43:27'),
(34, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '2024-09-16 11:15:39', '72.14.201.139', '2024-09-16 05:45:39', '2024-09-16 05:45:39'),
(35, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '2024-09-16 11:19:45', '72.14.201.141', '2024-09-16 05:49:45', '2024-09-16 05:49:45'),
(37, 'https://sankalpbanaras.com', 'Mozilla/5.0 (compatible; coccocbot-web/1.0; +http://help.coccoc.com/searchengine)', '2024-09-16 11:58:27', '103.131.71.84', '2024-09-16 06:28:27', '2024-09-16 06:28:27'),
(38, 'https://www.hotelsankalp.com/login', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '2024-09-16 12:13:13', '110.226.234.44', '2024-09-16 06:43:13', '2024-09-16 06:43:13'),
(39, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-16 12:19:04', '49.51.47.100', '2024-09-16 06:49:04', '2024-09-16 06:49:04'),
(40, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-09-16 13:20:32', '174.138.21.94', '2024-09-16 07:50:32', '2024-09-16 07:50:32'),
(41, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-16 13:27:15', '43.130.3.122', '2024-09-16 07:57:15', '2024-09-16 07:57:15'),
(42, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-16 13:48:54', '165.22.51.162', '2024-09-16 08:18:54', '2024-09-16 08:18:54'),
(43, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2024-09-16 13:59:13', '141.98.255.149', '2024-09-16 08:29:13', '2024-09-16 08:29:13'),
(44, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-09-16 15:13:46', '88.99.136.18', '2024-09-16 09:43:46', '2024-09-16 09:43:46'),
(45, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.104 Safari/537.36', '2024-09-16 16:54:44', '183.207.45.95', '2024-09-16 11:24:44', '2024-09-16 11:24:44'),
(48, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-16 18:16:17', '147.182.154.216', '2024-09-16 12:46:17', '2024-09-16 12:46:17'),
(50, 'http://www.hotelsankalp.com', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.0; +https://openai.com/gptbot)', '2024-09-16 18:22:05', '20.171.206.36', '2024-09-16 12:52:05', '2024-09-16 12:52:05'),
(58, 'http://hotelsankalp.com', 'Mozilla/4.0+(compatible;+MSIE+8.0;+Windows+NT+5.2)', '2024-09-16 22:40:20', '167.114.1.235', '2024-09-16 17:10:20', '2024-09-16 17:10:20'),
(59, 'https://www.hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-17 00:25:29', '66.249.64.129', '2024-09-16 18:55:29', '2024-09-16 18:55:29'),
(60, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-17 03:30:44', '182.42.104.32', '2024-09-16 22:00:44', '2024-09-16 22:00:44'),
(62, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-17 04:29:51', '66.249.64.128', '2024-09-16 22:59:51', '2024-09-16 22:59:51'),
(63, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-17 04:31:25', '182.42.105.144', '2024-09-16 23:01:25', '2024-09-16 23:01:25'),
(64, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-17 05:29:54', '49.51.179.103', '2024-09-16 23:59:54', '2024-09-16 23:59:54'),
(65, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-17 06:27:53', '170.106.104.42', '2024-09-17 00:57:53', '2024-09-17 00:57:53'),
(67, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-09-17 09:53:56', '52.26.165.204', '2024-09-17 04:23:56', '2024-09-17 04:23:56'),
(69, 'https://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-17 10:18:38', '66.249.64.98', '2024-09-17 04:48:38', '2024-09-17 04:48:38'),
(71, 'http://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-17 11:02:51', '66.249.64.107', '2024-09-17 05:32:51', '2024-09-17 05:32:51'),
(72, 'http://hotelsankalp.com', 'Mozilla/5.0 X11; Ubuntu; Linux x86_64; rv:126.0 Gecko/20100101 Firefox/126.0', '2024-09-17 11:21:28', '188.143.169.41', '2024-09-17 05:51:28', '2024-09-17 05:51:28'),
(73, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2024-09-17 11:28:36', '54.200.201.191', '2024-09-17 05:58:36', '2024-09-17 05:58:36'),
(74, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-17 12:32:43', '66.249.77.195', '2024-09-17 07:02:43', '2024-09-17 07:02:43'),
(76, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-17 12:45:23', '66.249.79.4', '2024-09-17 07:15:23', '2024-09-17 07:15:23'),
(77, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-09-17 13:05:32', '93.158.91.19', '2024-09-17 07:35:32', '2024-09-17 07:35:32'),
(78, 'https://hotelsankalp.com/about-us', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; GoogleOther)', '2024-09-17 13:18:42', '66.249.72.98', '2024-09-17 07:48:42', '2024-09-17 07:48:42'),
(80, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-17 13:51:18', '147.182.141.125', '2024-09-17 08:21:18', '2024-09-17 08:21:18'),
(81, 'https://hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-17 14:32:44', '66.249.72.99', '2024-09-17 09:02:44', '2024-09-17 09:02:44'),
(82, 'https://hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; GoogleOther)', '2024-09-17 14:48:41', '66.249.72.100', '2024-09-17 09:18:41', '2024-09-17 09:18:41'),
(83, 'https://www.hotelsankalp.com/facilities', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-17 15:32:44', '66.249.77.193', '2024-09-17 10:02:44', '2024-09-17 10:02:44'),
(87, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-17 17:15:24', '43.153.110.177', '2024-09-17 11:45:24', '2024-09-17 11:45:24'),
(88, 'https://www.hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-17 17:32:43', '66.249.77.194', '2024-09-17 12:02:43', '2024-09-17 12:02:43'),
(89, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-17 18:09:17', '43.159.128.237', '2024-09-17 12:39:17', '2024-09-17 12:39:17'),
(90, 'http://hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-17 20:38:57', '167.94.138.39', '2024-09-17 15:08:57', '2024-09-17 15:08:57'),
(92, 'https://hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-17 22:46:44', '167.94.146.57', '2024-09-17 17:16:44', '2024-09-17 17:16:44'),
(93, 'https://hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-17 23:04:40', '162.142.125.212', '2024-09-17 17:34:40', '2024-09-17 17:34:40'),
(94, 'http://hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-17 23:19:22', '167.94.145.104', '2024-09-17 17:49:22', '2024-09-17 17:49:22'),
(98, 'http://hotelsankalp.com/contact-us', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-18 00:42:50', '66.249.72.107', '2024-09-17 19:12:50', '2024-09-17 19:12:50'),
(99, 'https://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 9; SM-M305F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.111 Mobile Safari/537.36', '2024-09-18 01:24:38', '18.205.41.114', '2024-09-17 19:54:38', '2024-09-17 19:54:38'),
(100, 'http://hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_6) AppleWebKit/537.78.2 (KHTML, like Gecko) Version/7.0.6 Safari/537.78.2', '2024-09-18 02:03:34', '165.22.31.161', '2024-09-17 20:33:34', '2024-09-17 20:33:34'),
(101, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-18 02:44:39', '222.79.103.59', '2024-09-17 21:14:39', '2024-09-17 21:14:39'),
(102, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:124.0) Gecko/20100101 Firefox/124.0', '2024-09-18 05:04:06', '185.254.190.163', '2024-09-17 23:34:06', '2024-09-17 23:34:06'),
(103, 'https://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 12; Pixel 6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '2024-09-18 07:24:26', '35.163.75.238', '2024-09-18 01:54:26', '2024-09-18 01:54:26'),
(104, 'https://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 12; Pixel 6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '2024-09-18 07:24:48', '35.91.63.219', '2024-09-18 01:54:48', '2024-09-18 01:54:48'),
(109, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-18 08:43:09', '43.133.66.151', '2024-09-18 03:13:09', '2024-09-18 03:13:09'),
(110, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '2024-09-18 08:43:48', '111.7.106.107', '2024-09-18 03:13:48', '2024-09-18 03:13:48'),
(111, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-18 09:18:08', '43.159.63.75', '2024-09-18 03:48:08', '2024-09-18 03:48:08'),
(112, 'http://mail.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-18 09:20:58', '159.223.202.220', '2024-09-18 03:50:58', '2024-09-18 03:50:58'),
(113, 'https://hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '2024-09-18 09:29:37', '123.160.223.75', '2024-09-18 03:59:37', '2024-09-18 03:59:37'),
(114, 'https://hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36', '2024-09-18 09:29:41', '123.160.223.74', '2024-09-18 03:59:41', '2024-09-18 03:59:41'),
(115, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0; Le X620 Build/MRA58K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Mobile Safari/537.36', '2024-09-18 10:12:22', '45.148.10.59', '2024-09-18 04:42:22', '2024-09-18 04:42:22'),
(116, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3881.0 Safari/537.36', '2024-09-18 10:12:22', '45.148.10.59', '2024-09-18 04:42:22', '2024-09-18 04:42:22'),
(121, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '2024-09-18 12:19:32', '3.110.127.77', '2024-09-18 06:49:32', '2024-09-18 06:49:32'),
(122, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-18 12:22:47', '92.249.29.93', '2024-09-18 06:52:47', '2024-09-18 06:52:47'),
(124, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', '2024-09-18 13:40:58', '152.58.154.18', '2024-09-18 08:10:58', '2024-09-18 08:10:58'),
(125, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-18 14:47:40', '167.172.83.244', '2024-09-18 09:17:40', '2024-09-18 09:17:40'),
(127, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-18 17:51:41', '43.159.128.172', '2024-09-18 12:21:41', '2024-09-18 12:21:41'),
(128, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Linux; U; Android 11; zh-cn; Redmi K30 Pro Build/RKQ1.200826.002) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/79.0.3945.147 Mobile Safari/537.36', '2024-09-18 17:59:31', '1.92.151.215', '2024-09-18 12:29:31', '2024-09-18 12:29:31'),
(130, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-18 20:49:29', '103.77.240.226', '2024-09-18 15:19:29', '2024-09-18 15:19:29'),
(131, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', '2024-09-18 21:21:07', '42.83.147.34', '2024-09-18 15:51:07', '2024-09-18 15:51:07'),
(135, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-18 23:22:36', '178.128.80.220', '2024-09-18 17:52:36', '2024-09-18 17:52:36'),
(136, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-18 23:37:48', '165.22.58.11', '2024-09-18 18:07:48', '2024-09-18 18:07:48'),
(137, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-18 23:54:54', '49.51.204.74', '2024-09-18 18:24:54', '2024-09-18 18:24:54'),
(138, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-19 00:30:53', '182.42.110.255', '2024-09-18 19:00:53', '2024-09-18 19:00:53'),
(139, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-19 01:29:55', '106.227.49.113', '2024-09-18 19:59:55', '2024-09-18 19:59:55'),
(141, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-09-19 04:43:05', '178.254.29.124', '2024-09-18 23:13:05', '2024-09-18 23:13:05'),
(142, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-09-19 05:12:19', '34.172.113.36', '2024-09-18 23:42:19', '2024-09-18 23:42:19'),
(143, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2024-09-19 06:39:25', '124.243.180.250', '2024-09-19 01:09:25', '2024-09-19 01:09:25'),
(144, 'https://www.hotelsankalp.com/about-us', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-19 06:40:29', '66.249.65.68', '2024-09-19 01:10:29', '2024-09-19 01:10:29'),
(154, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4143.7 Mobile Safari/537.36 Chrome-Lighthouse', '2024-09-19 11:01:54', '116.203.252.30', '2024-09-19 05:31:54', '2024-09-19 05:31:54'),
(156, 'https://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 12; Pixel 6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '2024-09-19 11:50:42', '44.243.195.17', '2024-09-19 06:20:42', '2024-09-19 06:20:42'),
(157, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-19 12:18:14', '170.106.84.136', '2024-09-19 06:48:14', '2024-09-19 06:48:14'),
(161, 'https://hotelsankalp.com', 'Mozilla/5.0 (compatible; XML Sitemaps Generator; www.xml-sitemaps.com) Gecko XML-Sitemaps/1.0', '2024-09-19 13:51:08', '85.92.66.148', '2024-09-19 08:21:08', '2024-09-19 08:21:08'),
(162, 'https://hotelsankalp.com', '\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/78.0.3882.0 Safari/537.36\"', '2024-09-19 13:51:13', '85.92.66.150', '2024-09-19 08:21:13', '2024-09-19 08:21:13'),
(163, 'https://www.hotelsankalp.com/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-19 13:53:49', '106.219.187.163', '2024-09-19 08:23:49', '2024-09-19 08:23:49'),
(165, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-19 14:56:42', '139.59.98.10', '2024-09-19 09:26:42', '2024-09-19 09:26:42'),
(166, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-09-19 15:25:24', '54.69.8.168', '2024-09-19 09:55:24', '2024-09-19 09:55:24'),
(167, 'http://hotelsankalp.com/facilities', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-19 15:33:17', '66.249.79.163', '2024-09-19 10:03:17', '2024-09-19 10:03:17'),
(172, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-19 22:53:03', '125.75.66.97', '2024-09-19 17:23:03', '2024-09-19 17:23:03'),
(173, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-19 23:46:16', '180.110.203.108', '2024-09-19 18:16:16', '2024-09-19 18:16:16'),
(174, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-09-20 01:32:26', '2.56.172.165', '2024-09-19 20:02:26', '2024-09-19 20:02:26'),
(175, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:56.0) Gecko/20100101 Firefox/56.0', '2024-09-20 01:59:03', '213.128.67.98', '2024-09-19 20:29:03', '2024-09-19 20:29:03'),
(177, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '2024-09-20 04:20:51', '110.224.127.213', '2024-09-19 22:50:51', '2024-09-19 22:50:51'),
(180, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36', '2024-09-20 05:36:17', '5.188.62.26', '2024-09-20 00:06:17', '2024-09-20 00:06:17'),
(181, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-20 06:00:46', '43.155.166.202', '2024-09-20 00:30:46', '2024-09-20 00:30:46'),
(184, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-09-20 10:57:52', '128.90.157.5', '2024-09-20 05:27:52', '2024-09-20 05:27:52'),
(185, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-09-20 13:22:42', '195.90.221.76', '2024-09-20 07:52:42', '2024-09-20 07:52:42'),
(186, 'https://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 12; Pixel 6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '2024-09-20 13:48:10', '35.87.187.95', '2024-09-20 08:18:10', '2024-09-20 08:18:10'),
(187, 'https://sankalpbanaras.com', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', '2024-09-20 15:45:24', '35.171.144.152', '2024-09-20 10:15:24', '2024-09-20 10:15:24'),
(188, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', '2024-09-20 15:45:26', '54.88.179.33', '2024-09-20 10:15:26', '2024-09-20 10:15:26'),
(189, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-20 17:06:31', '199.45.154.115', '2024-09-20 11:36:31', '2024-09-20 11:36:31'),
(190, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-20 17:36:17', '206.168.34.32', '2024-09-20 12:06:17', '2024-09-20 12:06:17'),
(191, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-20 17:47:20', '199.45.154.159', '2024-09-20 12:17:20', '2024-09-20 12:17:20'),
(192, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-20 17:55:18', '162.142.125.39', '2024-09-20 12:25:18', '2024-09-20 12:25:18'),
(193, 'https://www.hotelsankalp.com', 'Mozilla/5.0 researchscan.comsys.rwth-aachen.de', '2024-09-20 18:07:21', '137.226.113.44', '2024-09-20 12:37:21', '2024-09-20 12:37:21'),
(194, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-20 18:13:41', '64.227.150.160', '2024-09-20 12:43:41', '2024-09-20 12:43:41'),
(195, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2024-09-20 18:28:53', '54.245.69.250', '2024-09-20 12:58:53', '2024-09-20 12:58:53'),
(197, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2024-09-20 18:52:52', '54.218.75.226', '2024-09-20 13:22:52', '2024-09-20 13:22:52'),
(199, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-20 19:42:10', '199.45.155.72', '2024-09-20 14:12:10', '2024-09-20 14:12:10'),
(201, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-20 20:43:27', '206.168.34.119', '2024-09-20 15:13:27', '2024-09-20 15:13:27'),
(202, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-20 20:55:42', '199.45.155.80', '2024-09-20 15:25:42', '2024-09-20 15:25:42'),
(203, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-20 21:02:07', '167.94.138.35', '2024-09-20 15:32:07', '2024-09-20 15:32:07'),
(204, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-09-20 21:57:40', '3.218.244.37', '2024-09-20 16:27:40', '2024-09-20 16:27:40'),
(205, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-20 23:30:49', '113.62.169.130', '2024-09-20 18:00:49', '2024-09-20 18:00:49'),
(207, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-09-21 00:14:03', '13.115.125.121', '2024-09-20 18:44:03', '2024-09-20 18:44:03'),
(209, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2024-09-21 08:35:37', '139.59.242.208', '2024-09-21 03:05:37', '2024-09-21 03:05:37'),
(210, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 Hutool', '2024-09-21 09:14:48', '111.72.128.98', '2024-09-21 03:44:48', '2024-09-21 03:44:48'),
(211, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 OPR/100.0.0.0', '2024-09-21 09:19:11', '135.148.195.7', '2024-09-21 03:49:11', '2024-09-21 03:49:11'),
(212, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-21 10:20:50', '167.172.83.149', '2024-09-21 04:50:50', '2024-09-21 04:50:50'),
(213, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-21 10:37:30', '43.135.181.13', '2024-09-21 05:07:30', '2024-09-21 05:07:30'),
(216, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 14; SM-S901B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.280 Mobile Safari/537.36 OPR/80.4.4244.7786', '2024-09-21 12:29:47', '93.158.90.68', '2024-09-21 06:59:47', '2024-09-21 06:59:47'),
(217, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-21 12:55:55', '49.51.36.179', '2024-09-21 07:25:55', '2024-09-21 07:25:55'),
(218, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-21 13:45:23', '209.38.106.222', '2024-09-21 08:15:23', '2024-09-21 08:15:23'),
(219, 'http://sankalpbanaras.com', 'Mozilla/4.0+(compatible;+MSIE+8.0;+Windows+NT+5.2)', '2024-09-21 14:05:41', '54.39.52.23', '2024-09-21 08:35:41', '2024-09-21 08:35:41'),
(222, 'https://sankalpbanaras.com', 'Mozilla/3.01Gold (Win95; I)', '2024-09-21 17:15:49', '94.156.71.224', '2024-09-21 11:45:49', '2024-09-21 11:45:49'),
(223, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-21 22:55:31', '125.94.144.102', '2024-09-21 17:25:31', '2024-09-21 17:25:31'),
(224, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0', '2024-09-21 22:59:57', '37.235.54.209', '2024-09-21 17:29:57', '2024-09-21 17:29:57'),
(226, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-09-22 00:55:02', '3.239.254.7', '2024-09-21 19:25:02', '2024-09-21 19:25:02'),
(227, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 Hutool', '2024-09-22 04:04:48', '49.72.81.24', '2024-09-21 22:34:48', '2024-09-21 22:34:48'),
(228, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11) AppleWebKit/601.1.27 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/601.1.27', '2024-09-22 04:13:21', '121.237.36.28', '2024-09-21 22:43:21', '2024-09-21 22:43:21'),
(229, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Linux; U; Android 7.0; zh-CN; HUAWEI NXT-TL00 Build/HUAWEINXT-TL00) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/12.0.6.986 Mobile Safari/537.36', '2024-09-22 04:20:04', '121.237.36.27', '2024-09-21 22:50:04', '2024-09-21 22:50:04'),
(230, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-22 04:58:53', '43.135.133.194', '2024-09-21 23:28:53', '2024-09-21 23:28:53'),
(232, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-22 06:10:53', '134.236.227.13', '2024-09-22 00:40:53', '2024-09-22 00:40:53'),
(233, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 Hutool', '2024-09-22 06:47:33', '180.107.219.226', '2024-09-22 01:17:33', '2024-09-22 01:17:33'),
(234, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '2024-09-22 07:37:00', '45.15.17.3', '2024-09-22 02:07:00', '2024-09-22 02:07:00'),
(235, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-22 07:44:12', '43.153.93.68', '2024-09-22 02:14:12', '2024-09-22 02:14:12'),
(236, 'https://hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '2024-09-22 07:55:18', '111.7.96.170', '2024-09-22 02:25:18', '2024-09-22 02:25:18'),
(238, 'http://sankalpbanaras.com/about-us', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2024-09-22 08:44:03', '190.92.216.45', '2024-09-22 03:14:03', '2024-09-22 03:14:03'),
(239, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-09-22 09:33:49', '93.158.91.12', '2024-09-22 04:03:49', '2024-09-22 04:03:49'),
(241, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-22 12:13:31', '92.249.29.194', '2024-09-22 06:43:31', '2024-09-22 06:43:31'),
(243, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-09-22 12:34:55', '87.236.176.117', '2024-09-22 07:04:55', '2024-09-22 07:04:55'),
(244, 'http://hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-09-22 15:19:16', '199.244.88.222', '2024-09-22 09:49:16', '2024-09-22 09:49:16'),
(245, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-09-22 15:25:46', '3.113.26.183', '2024-09-22 09:55:46', '2024-09-22 09:55:46'),
(247, 'http://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 14; SM-S901B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.6099.280 Mobile Safari/537.36 OPR/80.4.4244.7786', '2024-09-22 17:12:52', '130.255.166.82', '2024-09-22 11:42:52', '2024-09-22 11:42:52'),
(249, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-22 18:35:51', '138.197.96.58', '2024-09-22 13:05:51', '2024-09-22 13:05:51'),
(251, 'https://www.hotelsankalp.com/about-us', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-22 18:46:40', '66.249.79.225', '2024-09-22 13:16:40', '2024-09-22 13:16:40'),
(253, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-09-22 20:25:37', '13.231.178.246', '2024-09-22 14:55:37', '2024-09-22 14:55:37'),
(254, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 Hutool', '2024-09-22 20:44:41', '60.167.21.22', '2024-09-22 15:14:41', '2024-09-22 15:14:41'),
(255, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-22 20:57:47', '49.51.233.46', '2024-09-22 15:27:47', '2024-09-22 15:27:47'),
(256, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-22 21:00:18', '182.42.111.213', '2024-09-22 15:30:18', '2024-09-22 15:30:18'),
(257, 'http://sankalpbanaras.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-09-22 21:11:17', '199.244.88.229', '2024-09-22 15:41:17', '2024-09-22 15:41:17'),
(258, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-22 21:58:55', '124.225.164.130', '2024-09-22 16:28:55', '2024-09-22 16:28:55'),
(259, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-09-22 22:30:51', '152.42.217.201', '2024-09-22 17:00:51', '2024-09-22 17:00:51'),
(262, 'https://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) EdgiOS/120.0.2210.86 Version/17.0 Mobile/15E148 Safari/604.1', '2024-09-23 02:17:20', '188.127.247.62', '2024-09-22 20:47:20', '2024-09-22 20:47:20'),
(263, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-09-23 02:59:49', '87.236.176.247', '2024-09-22 21:29:49', '2024-09-22 21:29:49'),
(264, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-23 03:23:08', '209.38.198.55', '2024-09-22 21:53:08', '2024-09-22 21:53:08'),
(265, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-23 04:29:09', '92.249.29.97', '2024-09-22 22:59:09', '2024-09-22 22:59:09'),
(266, 'https://www.hotelsankalp.com/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-09-23 06:34:11', '49.36.208.143', '2024-09-23 01:04:11', '2024-09-23 01:04:11'),
(267, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 Hutool', '2024-09-23 07:05:14', '111.72.135.50', '2024-09-23 01:35:14', '2024-09-23 01:35:14'),
(268, 'http://sankalpbanaras.com/', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; Trident/6.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3)', '2024-09-23 07:54:43', '78.153.140.222', '2024-09-23 02:24:43', '2024-09-23 02:24:43'),
(270, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-23 12:13:09', '43.159.129.209', '2024-09-23 06:43:09', '2024-09-23 06:43:09'),
(271, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-09-23 13:39:47', '35.87.1.247', '2024-09-23 08:09:47', '2024-09-23 08:09:47'),
(273, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '2024-09-23 14:56:10', '49.36.168.43', '2024-09-23 09:26:10', '2024-09-23 09:26:10'),
(274, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-09-23 16:42:40', '5.133.192.171', '2024-09-23 11:12:40', '2024-09-23 11:12:40'),
(278, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 Hutool', '2024-09-23 19:01:29', '49.84.207.8', '2024-09-23 13:31:29', '2024-09-23 13:31:29'),
(279, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-23 19:40:29', '114.80.36.40', '2024-09-23 14:10:29', '2024-09-23 14:10:29'),
(280, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Mobile Safari/537.36', '2024-09-23 22:10:34', '123.6.49.12', '2024-09-23 16:40:34', '2024-09-23 16:40:34'),
(281, 'http://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Mobile Safari/537.36', '2024-09-23 22:10:34', '123.6.49.12', '2024-09-23 16:40:34', '2024-09-23 16:40:34'),
(283, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 Hutool', '2024-09-24 00:05:40', '220.173.123.231', '2024-09-23 18:35:40', '2024-09-23 18:35:40'),
(284, 'https://www.hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-24 02:43:09', '66.249.64.131', '2024-09-23 21:13:09', '2024-09-23 21:13:09'),
(285, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-24 03:15:09', '43.159.140.236', '2024-09-23 21:45:09', '2024-09-23 21:45:09'),
(288, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', '2024-09-24 06:42:35', '205.169.39.47', '2024-09-24 01:12:35', '2024-09-24 01:12:35'),
(289, 'https://www.hotelsankalp.com/facilities', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '2024-09-24 09:38:06', '103.240.205.89', '2024-09-24 04:08:06', '2024-09-24 04:08:06'),
(291, 'https://www.hotelsankalp.com/facilities', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', '2024-09-24 09:47:52', '47.9.34.208', '2024-09-24 04:17:52', '2024-09-24 04:17:52'),
(292, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-24 11:09:36', '167.71.250.8', '2024-09-24 05:39:36', '2024-09-24 05:39:36'),
(293, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-24 11:09:36', '167.71.250.8', '2024-09-24 05:39:36', '2024-09-24 05:39:36'),
(294, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-09-24 13:02:05', '34.213.230.53', '2024-09-24 07:32:05', '2024-09-24 07:32:05'),
(296, 'https://sankalpbanaras.com', 'Mozilla/5.0 (compatible; coccocbot-web/1.0; +http://help.coccoc.com/searchengine)', '2024-09-24 13:23:15', '103.131.71.224', '2024-09-24 07:53:15', '2024-09-24 07:53:15'),
(298, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 (compatible; coccocbot-web/1.0; +http://help.coccoc.com/searchengine)', '2024-09-24 13:23:21', '103.131.71.67', '2024-09-24 07:53:21', '2024-09-24 07:53:21'),
(299, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', '2024-09-24 16:13:39', '107.181.244.204', '2024-09-24 10:43:39', '2024-09-24 10:43:39'),
(300, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-24 16:59:56', '43.134.66.205', '2024-09-24 11:29:56', '2024-09-24 11:29:56'),
(301, 'https://www.hotelsankalp.com/facilities', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', '2024-09-24 18:15:47', '103.240.163.116', '2024-09-24 12:45:47', '2024-09-24 12:45:47'),
(302, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-24 19:23:10', '58.49.233.126', '2024-09-24 13:53:10', '2024-09-24 13:53:10'),
(303, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-24 19:25:28', '174.138.71.122', '2024-09-24 13:55:28', '2024-09-24 13:55:28'),
(304, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_2)', '2024-09-24 21:12:50', '94.247.172.129', '2024-09-24 15:42:50', '2024-09-24 15:42:50'),
(305, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-09-24 21:24:40', '128.90.174.5', '2024-09-24 15:54:40', '2024-09-24 15:54:40'),
(306, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_2_1 like Mac OS X) AppleWebKit/604.4.7 (KHTML, like Gecko) Mobile/15C153 MicroMessenger/6.7.1 NetType/4G Language/zh_CN', '2024-09-24 22:12:15', '121.237.36.29', '2024-09-24 16:42:15', '2024-09-24 16:42:15'),
(307, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 Hutool', '2024-09-24 23:52:26', '121.239.245.230', '2024-09-24 18:22:26', '2024-09-24 18:22:26'),
(309, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-25 03:41:28', '157.230.11.106', '2024-09-24 22:11:28', '2024-09-24 22:11:28'),
(310, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2024-09-25 04:34:27', '135.148.195.1', '2024-09-24 23:04:27', '2024-09-24 23:04:27'),
(311, 'https://hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-09-25 06:16:54', '188.34.192.162', '2024-09-25 00:46:54', '2024-09-25 00:46:54'),
(313, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-25 08:22:09', '43.157.66.187', '2024-09-25 02:52:09', '2024-09-25 02:52:09');
INSERT INTO `visits` (`id`, `pagename`, `user_agent_name`, `visited_at`, `ip_address`, `created_at`, `updated_at`) VALUES
(314, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-25 09:32:54', '43.159.143.187', '2024-09-25 04:02:54', '2024-09-25 04:02:54'),
(315, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-25 13:21:06', '206.81.23.86', '2024-09-25 07:51:06', '2024-09-25 07:51:06'),
(316, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-25 13:21:06', '206.81.23.86', '2024-09-25 07:51:06', '2024-09-25 07:51:06'),
(318, 'http://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-25 14:29:54', '66.249.79.164', '2024-09-25 08:59:54', '2024-09-25 08:59:54'),
(321, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 Hutool', '2024-09-25 16:13:44', '117.92.203.144', '2024-09-25 10:43:44', '2024-09-25 10:43:44'),
(322, 'http://hotelsankalp.com', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-09-25 16:46:43', '40.77.167.44', '2024-09-25 11:16:43', '2024-09-25 11:16:43'),
(323, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-25 16:49:02', '36.41.75.167', '2024-09-25 11:19:02', '2024-09-25 11:19:02'),
(324, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-09-25 17:03:49', '51.15.124.33', '2024-09-25 11:33:49', '2024-09-25 11:33:49'),
(325, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-25 17:45:10', '101.91.148.219', '2024-09-25 12:15:10', '2024-09-25 12:15:10'),
(326, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', '2024-09-25 18:05:25', '95.216.75.207', '2024-09-25 12:35:25', '2024-09-25 12:35:25'),
(327, 'http://sankalpbanaras.com/about-us', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.47', '2024-09-25 19:40:42', '49.0.206.198', '2024-09-25 14:10:42', '2024-09-25 14:10:42'),
(328, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-09-25 20:04:34', '128.199.221.96', '2024-09-25 14:34:34', '2024-09-25 14:34:34'),
(330, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-25 22:52:16', '43.134.37.211', '2024-09-25 17:22:16', '2024-09-25 17:22:16'),
(331, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-26 00:53:55', '46.101.232.160', '2024-09-25 19:23:55', '2024-09-25 19:23:55'),
(332, 'http://mail.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-26 01:43:17', '159.65.205.253', '2024-09-25 20:13:17', '2024-09-25 20:13:17'),
(333, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-09-26 01:59:43', '62.141.44.236', '2024-09-25 20:29:43', '2024-09-25 20:29:43'),
(335, 'https://hotelsankalp.com/about-us', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-26 02:04:44', '66.249.79.161', '2024-09-25 20:34:44', '2024-09-25 20:34:44'),
(337, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-26 02:36:04', '92.249.29.207', '2024-09-25 21:06:04', '2024-09-25 21:06:04'),
(340, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 Hutool', '2024-09-26 06:13:10', '218.6.99.170', '2024-09-26 00:43:10', '2024-09-26 00:43:10'),
(343, 'http://hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-09-26 07:44:15', '199.244.88.224', '2024-09-26 02:14:15', '2024-09-26 02:14:15'),
(345, 'https://www.hotelsankalp.com/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-09-26 08:50:22', '49.36.215.213', '2024-09-26 03:20:22', '2024-09-26 03:20:22'),
(347, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-26 09:35:30', '66.249.79.100', '2024-09-26 04:05:30', '2024-09-26 04:05:30'),
(348, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-26 09:36:27', '66.249.79.98', '2024-09-26 04:06:27', '2024-09-26 04:06:27'),
(349, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2024-09-26 11:34:25', '44.243.110.248', '2024-09-26 06:04:25', '2024-09-26 06:04:25'),
(350, 'http://hotelsankalp.com', 'Python/3.12 aiohttp/3.10.6', '2024-09-26 12:00:31', '54.175.91.75', '2024-09-26 06:30:31', '2024-09-26 06:30:31'),
(351, 'https://hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-09-26 12:27:56', '54.186.62.228', '2024-09-26 06:57:56', '2024-09-26 06:57:56'),
(353, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-26 13:32:48', '204.48.25.196', '2024-09-26 08:02:48', '2024-09-26 08:02:48'),
(355, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-26 15:20:08', '203.33.203.148', '2024-09-26 09:50:08', '2024-09-26 09:50:08'),
(357, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', '2024-09-26 16:19:08', '101.47.17.215', '2024-09-26 10:49:08', '2024-09-26 10:49:08'),
(358, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-26 16:21:17', '60.188.57.0', '2024-09-26 10:51:17', '2024-09-26 10:51:17'),
(359, 'http://sankalpbanaras.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-09-26 16:24:58', '199.244.88.231', '2024-09-26 10:54:58', '2024-09-26 10:54:58'),
(360, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-26 18:11:21', '152.42.143.71', '2024-09-26 12:41:21', '2024-09-26 12:41:21'),
(361, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0', '2024-09-26 18:50:23', '43.134.189.72', '2024-09-26 13:20:23', '2024-09-26 13:20:23'),
(363, 'https://hotelsankalp.com/contact-us', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-27 02:08:33', '66.249.64.99', '2024-09-26 20:38:33', '2024-09-26 20:38:33'),
(367, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', '2024-09-27 07:01:44', '192.36.109.131', '2024-09-27 01:31:44', '2024-09-27 01:31:44'),
(368, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7;en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17', '2024-09-27 07:33:09', '94.156.68.236', '2024-09-27 02:03:09', '2024-09-27 02:03:09'),
(369, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.1 Safari/605.1.15', '2024-09-27 08:11:52', '129.226.92.211', '2024-09-27 02:41:52', '2024-09-27 02:41:52'),
(371, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.0.3) Gecko/2008092417 Firefox/3.0.3', '2024-09-27 11:06:33', '193.43.135.237', '2024-09-27 05:36:33', '2024-09-27 05:36:33'),
(372, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36 Hutool', '2024-09-27 11:40:07', '117.84.184.16', '2024-09-27 06:10:07', '2024-09-27 06:10:07'),
(373, 'https://www.hotelsankalp.com/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-09-27 13:12:46', '106.194.23.152', '2024-09-27 07:42:46', '2024-09-27 07:42:46'),
(374, 'https://hotelsankalp.com', 'Mozilla/5.0 (SS; Linux x86_64; rv:127.0) Gecko/20100101 Firefox/127.0', '2024-09-27 13:27:14', '38.179.19.151', '2024-09-27 07:57:14', '2024-09-27 07:57:14'),
(375, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-27 13:51:13', '68.183.45.135', '2024-09-27 08:21:13', '2024-09-27 08:21:13'),
(378, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-27 15:09:58', '117.62.235.53', '2024-09-27 09:39:58', '2024-09-27 09:39:58'),
(379, 'https://hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '2024-09-27 15:24:58', '111.7.96.163', '2024-09-27 09:54:58', '2024-09-27 09:54:58'),
(382, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-27 16:22:07', '221.229.106.25', '2024-09-27 10:52:07', '2024-09-27 10:52:07'),
(383, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-27 16:44:36', '165.22.51.194', '2024-09-27 11:14:36', '2024-09-27 11:14:36'),
(384, 'http://www.sankalpbanaras.com/facilities', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-27 17:09:41', '43.131.39.179', '2024-09-27 11:39:41', '2024-09-27 11:39:41'),
(385, 'http://www.sankalpbanaras.com/home-quick-enquiry.store', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-27 17:12:16', '43.153.122.30', '2024-09-27 11:42:16', '2024-09-27 11:42:16'),
(387, 'http://www.sankalpbanaras.com/about-us', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-27 18:10:59', '43.135.142.7', '2024-09-27 12:40:59', '2024-09-27 12:40:59'),
(390, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.0.3) Gecko/2008092417 Firefox/3.0.3', '2024-09-27 20:06:06', '45.14.195.15', '2024-09-27 14:36:06', '2024-09-27 14:36:06'),
(391, 'http://sankalpbanaras.com/about-us', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36', '2024-09-27 21:12:39', '119.13.103.228', '2024-09-27 15:42:39', '2024-09-27 15:42:39'),
(393, 'http://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-27 23:25:21', '66.249.64.108', '2024-09-27 17:55:21', '2024-09-27 17:55:21'),
(394, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-28 00:30:37', '206.168.34.43', '2024-09-27 19:00:37', '2024-09-27 19:00:37'),
(395, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-28 00:58:54', '104.248.207.16', '2024-09-27 19:28:54', '2024-09-27 19:28:54'),
(396, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-28 00:58:54', '104.248.207.16', '2024-09-27 19:28:54', '2024-09-27 19:28:54'),
(397, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-28 01:23:37', '167.94.138.60', '2024-09-27 19:53:37', '2024-09-27 19:53:37'),
(398, 'http://mail.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-28 01:49:00', '137.184.163.24', '2024-09-27 20:19:00', '2024-09-27 20:19:00'),
(400, 'http://sankalpbanaras.com', 'Mozilla/5.0 (10.0; Win64; x6410.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.120 Safari/537.36', '2024-09-28 05:30:12', '5.188.62.21', '2024-09-28 00:00:12', '2024-09-28 00:00:12'),
(401, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-28 08:27:31', '188.166.63.59', '2024-09-28 02:57:31', '2024-09-28 02:57:31'),
(402, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-28 10:34:33', '43.128.100.206', '2024-09-28 05:04:33', '2024-09-28 05:04:33'),
(403, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-28 11:06:11', '43.135.134.127', '2024-09-28 05:36:11', '2024-09-28 05:36:11'),
(404, 'http://hotelsankalp.com', 'Go-http-client/1.1', '2024-09-28 11:37:08', '45.61.121.58', '2024-09-28 06:07:08', '2024-09-28 06:07:08'),
(405, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.3', '2024-09-28 14:20:26', '93.158.91.241', '2024-09-28 08:50:26', '2024-09-28 08:50:26'),
(406, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-09-28 14:27:36', '87.236.176.191', '2024-09-28 08:57:36', '2024-09-28 08:57:36'),
(407, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 9; G8341) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.111 Mobile Safari/537.36', '2024-09-28 15:03:27', '46.19.137.50', '2024-09-28 09:33:27', '2024-09-28 09:33:27'),
(408, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-28 15:10:25', '120.71.59.24', '2024-09-28 09:40:25', '2024-09-28 09:40:25'),
(409, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-28 16:13:41', '49.7.227.204', '2024-09-28 10:43:41', '2024-09-28 10:43:41'),
(410, 'https://sankalpbanaras.com', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-09-28 16:49:53', '40.77.167.235', '2024-09-28 11:19:53', '2024-09-28 11:19:53'),
(411, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-28 17:47:13', '43.157.22.57', '2024-09-28 12:17:13', '2024-09-28 12:17:13'),
(412, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-28 18:25:16', '142.93.170.98', '2024-09-28 12:55:16', '2024-09-28 12:55:16'),
(413, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-28 19:25:01', '49.51.243.156', '2024-09-28 13:55:01', '2024-09-28 13:55:01'),
(414, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:56.0) Gecko/20100101 Firefox/56.0', '2024-09-28 21:44:05', '185.114.245.109', '2024-09-28 16:14:05', '2024-09-28 16:14:05'),
(416, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-28 23:18:10', '92.249.29.243', '2024-09-28 17:48:10', '2024-09-28 17:48:10'),
(417, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-09-29 04:36:07', '87.236.176.149', '2024-09-28 23:06:07', '2024-09-28 23:06:07'),
(418, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-29 06:05:17', '43.156.202.34', '2024-09-29 00:35:17', '2024-09-29 00:35:17'),
(419, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 CK={} (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', '2024-09-29 12:35:10', '45.61.55.132', '2024-09-29 07:05:10', '2024-09-29 07:05:10'),
(420, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-29 13:05:05', '161.35.93.12', '2024-09-29 07:35:05', '2024-09-29 07:35:05'),
(421, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-29 13:05:05', '161.35.93.12', '2024-09-29 07:35:05', '2024-09-29 07:35:05'),
(422, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Mobile Safari/537.36', '2024-09-29 16:18:59', '72.14.201.143', '2024-09-29 10:48:59', '2024-09-29 10:48:59'),
(424, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-29 17:57:12', '170.106.140.110', '2024-09-29 12:27:12', '2024-09-29 12:27:12'),
(425, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-09-29 18:18:16', '92.249.29.233', '2024-09-29 12:48:16', '2024-09-29 12:48:16'),
(426, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-29 20:34:47', '43.135.138.128', '2024-09-29 15:04:47', '2024-09-29 15:04:47'),
(427, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-09-29 20:45:58', '93.158.91.11', '2024-09-29 15:15:58', '2024-09-29 15:15:58'),
(429, 'https://www.hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-29 21:01:26', '66.249.69.68', '2024-09-29 15:31:26', '2024-09-29 15:31:26'),
(430, 'http://hotelsankalp.com/facilities', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-29 21:23:05', '66.249.75.131', '2024-09-29 15:53:05', '2024-09-29 15:53:05'),
(431, 'https://www.hotelsankalp.com/contact-us', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-29 22:31:26', '66.249.69.69', '2024-09-29 17:01:26', '2024-09-29 17:01:26'),
(432, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-30 00:21:23', '159.65.178.33', '2024-09-29 18:51:23', '2024-09-29 18:51:23'),
(433, 'http://mail.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-30 00:24:17', '64.227.164.79', '2024-09-29 18:54:17', '2024-09-29 18:54:17'),
(434, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-09-30 01:36:36', '15.204.182.106', '2024-09-29 20:06:36', '2024-09-29 20:06:36'),
(435, 'https://sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-30 01:40:40', '162.142.125.204', '2024-09-29 20:10:40', '2024-09-29 20:10:40'),
(436, 'http://sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-30 03:04:32', '199.45.154.124', '2024-09-29 21:34:32', '2024-09-29 21:34:32'),
(437, 'https://sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-09-30 03:11:30', '206.168.34.44', '2024-09-29 21:41:30', '2024-09-29 21:41:30'),
(438, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-30 04:05:59', '170.106.192.208', '2024-09-29 22:35:59', '2024-09-29 22:35:59'),
(439, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-09-30 05:34:00', '217.160.202.182', '2024-09-30 00:04:00', '2024-09-30 00:04:00'),
(440, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-30 05:36:13', '43.135.129.233', '2024-09-30 00:06:13', '2024-09-30 00:06:13'),
(441, 'https://www.hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-30 05:39:08', '66.249.69.67', '2024-09-30 00:09:08', '2024-09-30 00:09:08'),
(442, 'https://sankalpbanaras.com', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', '2024-09-30 05:49:10', '20.171.206.68', '2024-09-30 00:19:10', '2024-09-30 00:19:10'),
(443, 'https://sankalpbanaras.com/facilities', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', '2024-09-30 05:49:43', '20.171.206.138', '2024-09-30 00:19:43', '2024-09-30 00:19:43'),
(445, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-09-30 07:53:29', '72.14.201.168', '2024-09-30 02:23:29', '2024-09-30 02:23:29'),
(447, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-30 11:39:10', '129.226.93.214', '2024-09-30 06:09:10', '2024-09-30 06:09:10'),
(448, 'http://hotelsankalp.com/facilities', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.6613.137 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-09-30 12:08:10', '66.249.75.132', '2024-09-30 06:38:10', '2024-09-30 06:38:10'),
(449, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-30 16:07:25', '121.229.185.160', '2024-09-30 10:37:25', '2024-09-30 10:37:25'),
(450, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; WOW64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.5666.197 Safari/537.36', '2024-09-30 18:00:11', '15.204.142.133', '2024-09-30 12:30:11', '2024-09-30 12:30:11'),
(451, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-30 18:53:37', '43.135.149.154', '2024-09-30 13:23:37', '2024-09-30 13:23:37'),
(452, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-09-30 18:57:19', '164.90.222.126', '2024-09-30 13:27:19', '2024-09-30 13:27:19'),
(453, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-09-30 19:03:09', '43.134.142.8', '2024-09-30 13:33:09', '2024-09-30 13:33:09'),
(454, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10', '2024-09-30 22:52:43', '89.169.33.220', '2024-09-30 17:22:43', '2024-09-30 17:22:43'),
(456, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.70 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-01 02:02:31', '66.249.79.166', '2024-09-30 20:32:31', '2024-09-30 20:32:31'),
(457, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-01 02:02:44', '66.249.79.167', '2024-09-30 20:32:44', '2024-09-30 20:32:44'),
(458, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', '2024-10-01 02:56:13', '42.83.147.56', '2024-09-30 21:26:13', '2024-09-30 21:26:13'),
(460, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-10-01 04:04:41', '116.99.225.202', '2024-09-30 22:34:41', '2024-09-30 22:34:41'),
(461, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-01 04:54:15', '43.135.182.95', '2024-09-30 23:24:15', '2024-09-30 23:24:15'),
(462, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', '2024-10-01 06:10:25', '152.58.131.112', '2024-10-01 00:40:25', '2024-10-01 00:40:25'),
(463, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-01 06:13:32', '84.17.46.243', '2024-10-01 00:43:32', '2024-10-01 00:43:32'),
(464, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.2623.112 Safari/537.36', '2024-10-01 06:20:47', '115.231.78.4', '2024-10-01 00:50:47', '2024-10-01 00:50:47'),
(466, 'https://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-01 09:47:26', '119.96.24.54', '2024-10-01 04:17:26', '2024-10-01 04:17:26'),
(467, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36', '2024-10-01 10:02:55', '86.127.230.242', '2024-10-01 04:32:55', '2024-10-01 04:32:55'),
(470, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-01 12:23:16', '206.189.119.132', '2024-10-01 06:53:16', '2024-10-01 06:53:16'),
(471, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-01 12:23:16', '206.189.119.132', '2024-10-01 06:53:16', '2024-10-01 06:53:16'),
(472, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', '2024-10-01 15:03:29', '192.200.113.156', '2024-10-01 09:33:29', '2024-10-01 09:33:29'),
(474, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-01 17:56:22', '43.133.77.230', '2024-10-01 12:26:22', '2024-10-01 12:26:22'),
(475, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-01 18:16:38', '111.172.249.49', '2024-10-01 12:46:38', '2024-10-01 12:46:38'),
(476, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2024-10-01 20:40:19', '94.74.87.185', '2024-10-01 15:10:19', '2024-10-01 15:10:19'),
(477, 'http://hotelsankalp.com', 'curl/7.54.0', '2024-10-01 21:54:03', '31.16.112.125', '2024-10-01 16:24:03', '2024-10-01 16:24:03'),
(478, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-10-01 22:09:23', '5.135.152.155', '2024-10-01 16:39:23', '2024-10-01 16:39:23'),
(479, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.70 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-02 03:11:35', '66.249.69.66', '2024-10-01 21:41:35', '2024-10-01 21:41:35'),
(480, 'http://mail.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-02 05:13:33', '128.199.8.218', '2024-10-01 23:43:33', '2024-10-01 23:43:33'),
(483, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-02 10:22:05', '43.159.144.16', '2024-10-02 04:52:05', '2024-10-02 04:52:05'),
(484, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:130.0) Gecko/20100101 Firefox/130.0', '2024-10-02 11:09:07', '49.36.215.213', '2024-10-02 05:39:07', '2024-10-02 05:39:07'),
(485, 'http://mail.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43', '2024-10-02 15:27:26', '107.181.244.204', '2024-10-02 09:57:26', '2024-10-02 09:57:26'),
(486, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.70 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-02 17:35:24', '66.249.69.67', '2024-10-02 12:05:24', '2024-10-02 12:05:24'),
(487, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-02 17:37:56', '43.135.133.194', '2024-10-02 12:07:56', '2024-10-02 12:07:56'),
(488, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-02 17:58:13', '43.130.34.74', '2024-10-02 12:28:13', '2024-10-02 12:28:13'),
(489, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-02 18:13:13', '193.32.126.222', '2024-10-02 12:43:13', '2024-10-02 12:43:13'),
(490, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-02 18:13:27', '134.122.113.164', '2024-10-02 12:43:27', '2024-10-02 12:43:27'),
(491, 'http://sankalpbanaras.com/our-room', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36 Edg/101.0.1210.47', '2024-10-02 18:44:09', '190.92.202.50', '2024-10-02 13:14:09', '2024-10-02 13:14:09'),
(492, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-02 20:27:54', '125.94.144.102', '2024-10-02 14:57:54', '2024-10-02 14:57:54'),
(493, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-02 21:26:06', '111.172.249.49', '2024-10-02 15:56:06', '2024-10-02 15:56:06'),
(494, 'https://hotelsankalp.com/contact-us', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', '2024-10-02 22:00:01', '15.204.183.221', '2024-10-02 16:30:01', '2024-10-02 16:30:01'),
(496, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-10-02 22:04:03', '128.199.221.96', '2024-10-02 16:34:03', '2024-10-02 16:34:03'),
(510, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 12; Pixel 6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '2024-10-03 03:03:30', '34.219.199.26', '2024-10-02 21:33:30', '2024-10-02 21:33:30'),
(512, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-03 04:04:41', '43.135.140.225', '2024-10-02 22:34:41', '2024-10-02 22:34:41'),
(513, 'https://sankalpbanaras.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2024-10-03 04:21:50', '35.153.204.222', '2024-10-02 22:51:50', '2024-10-02 22:51:50'),
(514, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-03 04:53:07', '170.106.181.163', '2024-10-02 23:23:07', '2024-10-02 23:23:07'),
(516, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', '2024-10-03 05:48:35', '72.14.201.185', '2024-10-03 00:18:35', '2024-10-03 00:18:35'),
(518, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', '2024-10-03 05:48:37', '103.115.206.115', '2024-10-03 00:18:37', '2024-10-03 00:18:37'),
(519, 'https://hotelsankalp.com/about-us', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', '2024-10-03 05:48:38', '193.186.4.175', '2024-10-03 00:18:38', '2024-10-03 00:18:38'),
(520, 'https://www.hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-03 06:03:51', '66.249.69.67', '2024-10-03 00:33:51', '2024-10-03 00:33:51'),
(521, 'http://hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', '2024-10-03 06:15:24', '121.244.91.21', '2024-10-03 00:45:24', '2024-10-03 00:45:24'),
(524, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-03 08:12:49', '92.249.29.127', '2024-10-03 02:42:49', '2024-10-03 02:42:49'),
(526, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '2024-10-03 08:15:36', '193.186.4.137', '2024-10-03 02:45:36', '2024-10-03 02:45:36'),
(527, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '2024-10-03 08:17:59', '106.219.191.218', '2024-10-03 02:47:59', '2024-10-03 02:47:59'),
(528, 'https://mail.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-03 08:18:36', '49.36.215.213', '2024-10-03 02:48:36', '2024-10-03 02:48:36'),
(529, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.3', '2024-10-03 08:53:28', '192.36.109.127', '2024-10-03 03:23:28', '2024-10-03 03:23:28'),
(530, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', '2024-10-03 09:12:41', '72.14.201.138', '2024-10-03 03:42:41', '2024-10-03 03:42:41'),
(531, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-10-03 11:04:00', '46.101.9.216', '2024-10-03 05:34:00', '2024-10-03 05:34:00'),
(532, 'http://mail.sankalpbanaras.com', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-10-03 11:05:08', '87.236.176.26', '2024-10-03 05:35:08', '2024-10-03 05:35:08'),
(533, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-03 11:49:22', '170.106.82.193', '2024-10-03 06:19:22', '2024-10-03 06:19:22'),
(534, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-03 12:16:45', '43.134.37.211', '2024-10-03 06:46:45', '2024-10-03 06:46:45'),
(536, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-03 14:01:04', '159.65.90.134', '2024-10-03 08:31:04', '2024-10-03 08:31:04'),
(538, 'http://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.70 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-03 17:32:04', '66.249.75.132', '2024-10-03 12:02:04', '2024-10-03 12:02:04'),
(539, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-10-03 18:02:50', '87.236.176.214', '2024-10-03 12:32:50', '2024-10-03 12:32:50'),
(540, 'http://hotelsankalp.com', 'serpstatbot/2.1 (advanced backlink tracking bot; https://serpstatbot.com/; abuse@serpstatbot.com)', '2024-10-03 18:39:08', '144.76.68.14', '2024-10-03 13:09:08', '2024-10-03 13:09:08'),
(541, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-03 18:44:15', '124.226.222.66', '2024-10-03 13:14:15', '2024-10-03 13:14:15'),
(542, 'http://hotelsankalp.com/our-room', 'serpstatbot/2.1 (advanced backlink tracking bot; https://serpstatbot.com/; abuse@serpstatbot.com)', '2024-10-03 19:11:24', '144.76.68.14', '2024-10-03 13:41:24', '2024-10-03 13:41:24'),
(543, 'http://hotelsankalp.com/facilities', 'serpstatbot/2.1 (advanced backlink tracking bot; https://serpstatbot.com/; abuse@serpstatbot.com)', '2024-10-03 19:11:33', '144.76.68.14', '2024-10-03 13:41:33', '2024-10-03 13:41:33'),
(544, 'http://hotelsankalp.com/contact-us', 'serpstatbot/2.1 (advanced backlink tracking bot; https://serpstatbot.com/; abuse@serpstatbot.com)', '2024-10-03 19:11:52', '144.76.68.14', '2024-10-03 13:41:52', '2024-10-03 13:41:52'),
(545, 'http://hotelsankalp.com/about-us', 'serpstatbot/2.1 (advanced backlink tracking bot; https://serpstatbot.com/; abuse@serpstatbot.com)', '2024-10-03 19:12:11', '144.76.68.14', '2024-10-03 13:42:11', '2024-10-03 13:42:11'),
(546, 'https://sankalpbanaras.com/about-us', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36', '2024-10-03 19:23:15', '54.208.99.3', '2024-10-03 13:53:15', '2024-10-03 13:53:15'),
(547, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-03 19:41:18', '36.111.67.189', '2024-10-03 14:11:18', '2024-10-03 14:11:18'),
(548, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-03 19:58:04', '49.51.204.74', '2024-10-03 14:28:04', '2024-10-03 14:28:04'),
(549, 'http://sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-03 20:12:53', '167.94.146.54', '2024-10-03 14:42:53', '2024-10-03 14:42:53'),
(550, 'https://sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-03 20:16:17', '162.142.125.194', '2024-10-03 14:46:17', '2024-10-03 14:46:17'),
(551, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-03 21:05:59', '43.159.144.16', '2024-10-03 15:35:59', '2024-10-03 15:35:59'),
(552, 'https://sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-03 21:29:58', '167.94.138.124', '2024-10-03 15:59:58', '2024-10-03 15:59:58'),
(553, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-03 21:39:24', '66.249.79.99', '2024-10-03 16:09:24', '2024-10-03 16:09:24'),
(554, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-10-03 22:10:32', '5.62.60.153', '2024-10-03 16:40:32', '2024-10-03 16:40:32'),
(558, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-10-03 22:25:14', '5.62.56.105', '2024-10-03 16:55:14', '2024-10-03 16:55:14'),
(560, 'http://sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-03 22:27:23', '167.94.145.98', '2024-10-03 16:57:23', '2024-10-03 16:57:23'),
(561, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', '2024-10-03 23:52:25', '42.83.147.53', '2024-10-03 18:22:25', '2024-10-03 18:22:25'),
(562, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', '2024-10-03 23:52:27', '42.83.147.53', '2024-10-03 18:22:27', '2024-10-03 18:22:27'),
(563, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-10-04 00:42:33', '87.236.176.73', '2024-10-03 19:12:33', '2024-10-03 19:12:33'),
(564, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-04 05:52:09', '49.51.206.130', '2024-10-04 00:22:09', '2024-10-04 00:22:09'),
(565, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-04 06:23:44', '43.131.39.179', '2024-10-04 00:53:44', '2024-10-04 00:53:44'),
(567, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-10-04 09:44:52', '128.90.157.2', '2024-10-04 04:14:52', '2024-10-04 04:14:52'),
(568, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', '2024-10-04 10:06:04', '178.62.82.141', '2024-10-04 04:36:04', '2024-10-04 04:36:04'),
(571, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-04 11:18:24', '49.36.215.213', '2024-10-04 05:48:24', '2024-10-04 05:48:24'),
(572, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-04 11:58:51', '170.106.171.77', '2024-10-04 06:28:51', '2024-10-04 06:28:51'),
(573, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-04 12:49:10', '49.51.243.156', '2024-10-04 07:19:10', '2024-10-04 07:19:10'),
(574, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-04 14:37:44', '66.249.69.69', '2024-10-04 09:07:44', '2024-10-04 09:07:44'),
(575, 'http://hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.3.1 Safari/605.1.1', '2024-10-04 15:02:52', '93.158.90.66', '2024-10-04 09:32:52', '2024-10-04 09:32:52'),
(576, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-10-04 15:09:07', '146.70.184.32', '2024-10-04 09:39:07', '2024-10-04 09:39:07'),
(577, 'http://hotelsankalp.com', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_4_11; tr) AppleWebKit/528.4+ (KHTML, like Gecko) Version/4.0dp1 Safari/526.11.2', '2024-10-04 16:45:08', '103.251.167.10', '2024-10-04 11:15:08', '2024-10-04 11:15:08'),
(578, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-04 17:10:40', '182.42.105.144', '2024-10-04 11:40:40', '2024-10-04 11:40:40'),
(579, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-10-04 17:26:39', '93.158.91.30', '2024-10-04 11:56:39', '2024-10-04 11:56:39'),
(581, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-04 18:23:25', '43.130.16.212', '2024-10-04 12:53:25', '2024-10-04 12:53:25'),
(582, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-04 19:38:23', '143.244.163.160', '2024-10-04 14:08:23', '2024-10-04 14:08:23'),
(583, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-04 19:38:24', '143.244.163.160', '2024-10-04 14:08:24', '2024-10-04 14:08:24'),
(628, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-10-04 23:44:46', '128.199.221.96', '2024-10-04 18:14:46', '2024-10-04 18:14:46'),
(629, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-10-04 23:44:46', '128.199.221.96', '2024-10-04 18:14:46', '2024-10-04 18:14:46'),
(630, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-10-04 23:44:47', '128.199.221.96', '2024-10-04 18:14:47', '2024-10-04 18:14:47');
INSERT INTO `visits` (`id`, `pagename`, `user_agent_name`, `visited_at`, `ip_address`, `created_at`, `updated_at`) VALUES
(631, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-10-04 23:48:37', '128.199.221.96', '2024-10-04 18:18:37', '2024-10-04 18:18:37'),
(632, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-10-04 23:48:37', '128.199.221.96', '2024-10-04 18:18:37', '2024-10-04 18:18:37'),
(633, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-10-04 23:48:38', '128.199.221.96', '2024-10-04 18:18:38', '2024-10-04 18:18:38'),
(634, 'http://sankalpbanaras.com', 'Mozilla/5.0 X11; Ubuntu; Linux x86_64; rv:126.0 Gecko/20100101 Firefox/126.0', '2024-10-05 00:47:36', '188.143.169.41', '2024-10-04 19:17:36', '2024-10-04 19:17:36'),
(635, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2024-10-05 01:41:47', '5.166.229.23', '2024-10-04 20:11:47', '2024-10-04 20:11:47'),
(637, 'https://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 12; Pixel 6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '2024-10-05 02:38:14', '35.84.39.245', '2024-10-04 21:08:14', '2024-10-04 21:08:14'),
(638, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-05 03:52:43', '43.135.145.117', '2024-10-04 22:22:43', '2024-10-04 22:22:43'),
(639, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-05 04:44:15', '43.135.130.202', '2024-10-04 23:14:15', '2024-10-04 23:14:15'),
(640, 'https://www.hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-05 06:02:07', '66.249.75.200', '2024-10-05 00:32:07', '2024-10-05 00:32:07'),
(641, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-05 06:35:44', '66.249.74.103', '2024-10-05 01:05:44', '2024-10-05 01:05:44'),
(643, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-10-05 08:34:28', '5.62.58.49', '2024-10-05 03:04:28', '2024-10-05 03:04:28'),
(644, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-05 10:56:09', '43.155.160.173', '2024-10-05 05:26:09', '2024-10-05 05:26:09'),
(645, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:56.0) Gecko/20100101 Firefox/56.0', '2024-10-05 10:58:16', '209.97.140.33', '2024-10-05 05:28:16', '2024-10-05 05:28:16'),
(646, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-05 11:08:22', '170.106.197.109', '2024-10-05 05:38:22', '2024-10-05 05:38:22'),
(647, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-05 12:11:46', '84.17.46.212', '2024-10-05 06:41:46', '2024-10-05 06:41:46'),
(648, 'http://sankalpbanaras.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36', '2024-10-05 12:16:28', '44.243.168.31', '2024-10-05 06:46:28', '2024-10-05 06:46:28'),
(649, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-05 13:57:21', '178.62.234.206', '2024-10-05 08:27:21', '2024-10-05 08:27:21'),
(650, 'http://sankalpbanaras.com', 'curl/7.54.0', '2024-10-05 14:36:24', '68.4.214.180', '2024-10-05 09:06:24', '2024-10-05 09:06:24'),
(651, 'https://www.hotelsankalp.com/facilities', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/26.0 Chrome/122.0.0.0 Mobile Safari/537.36', '2024-10-05 15:15:51', '47.9.82.57', '2024-10-05 09:45:51', '2024-10-05 09:45:51'),
(652, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-05 16:27:38', '182.43.70.143', '2024-10-05 10:57:38', '2024-10-05 10:57:38'),
(653, 'http://hotelsankalp.com', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-10-05 16:29:31', '87.236.176.119', '2024-10-05 10:59:31', '2024-10-05 10:59:31'),
(654, 'https://hotelsankalp.com', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-10-05 16:39:14', '87.236.176.157', '2024-10-05 11:09:14', '2024-10-05 11:09:14'),
(655, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-05 17:26:35', '43.135.182.43', '2024-10-05 11:56:35', '2024-10-05 11:56:35'),
(656, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-05 17:40:59', '43.135.133.194', '2024-10-05 12:10:59', '2024-10-05 12:10:59'),
(657, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-05 18:19:53', '143.110.255.190', '2024-10-05 12:49:53', '2024-10-05 12:49:53'),
(658, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-10-05 18:23:24', '205.169.39.38', '2024-10-05 12:53:24', '2024-10-05 12:53:24'),
(659, 'http://sankalpbanaras.com/our-room', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2024-10-05 18:58:03', '159.138.109.72', '2024-10-05 13:28:03', '2024-10-05 13:28:03'),
(660, 'https://sankalpbanaras.com', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', '2024-10-05 19:08:08', '35.171.144.152', '2024-10-05 13:38:08', '2024-10-05 13:38:08'),
(661, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', '2024-10-05 19:08:10', '54.88.179.33', '2024-10-05 13:38:10', '2024-10-05 13:38:10'),
(662, 'http://sankalpbanaras.com', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', '2024-10-05 19:08:11', '54.88.179.33', '2024-10-05 13:38:11', '2024-10-05 13:38:11'),
(669, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-10-05 22:22:14', '161.97.173.42', '2024-10-05 16:52:14', '2024-10-05 16:52:14'),
(670, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-10-06 00:42:44', '5.133.192.160', '2024-10-05 19:12:44', '2024-10-05 19:12:44'),
(671, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-06 01:55:13', '43.131.243.208', '2024-10-05 20:25:13', '2024-10-05 20:25:13'),
(672, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-10-06 02:22:46', '178.254.24.91', '2024-10-05 20:52:46', '2024-10-05 20:52:46'),
(673, 'http://hotelsankalp.com', 'Mozilla/5.0 (compatible; Example3/1.0; +https://www.example3.com/domain/hotelsankalp.com)', '2024-10-06 02:39:43', '172.104.34.17', '2024-10-05 21:09:43', '2024-10-05 21:09:43'),
(674, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-06 03:17:31', '43.135.138.128', '2024-10-05 21:47:31', '2024-10-05 21:47:31'),
(675, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-06 04:20:53', '66.249.75.200', '2024-10-05 22:50:53', '2024-10-05 22:50:53'),
(676, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', '2024-10-06 04:29:42', '3.84.98.245', '2024-10-05 22:59:42', '2024-10-05 22:59:42'),
(679, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', '2024-10-06 08:40:12', '47.129.232.163', '2024-10-06 03:10:12', '2024-10-06 03:10:12'),
(680, 'http://hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-10-06 09:01:23', '199.244.88.223', '2024-10-06 03:31:23', '2024-10-06 03:31:23'),
(681, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-06 09:10:25', '43.155.183.138', '2024-10-06 03:40:25', '2024-10-06 03:40:25'),
(682, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-06 10:00:23', '43.134.89.111', '2024-10-06 04:30:23', '2024-10-06 04:30:23'),
(683, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-10-06 11:26:15', '205.169.39.12', '2024-10-06 05:56:15', '2024-10-06 05:56:15'),
(684, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-06 14:40:11', '175.6.217.4', '2024-10-06 09:10:11', '2024-10-06 09:10:11'),
(685, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-06 15:48:22', '182.40.104.255', '2024-10-06 10:18:22', '2024-10-06 10:18:22'),
(686, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-06 16:07:07', '43.159.148.221', '2024-10-06 10:37:07', '2024-10-06 10:37:07'),
(687, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-06 16:14:00', '66.249.75.201', '2024-10-06 10:44:00', '2024-10-06 10:44:00'),
(688, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '2024-10-06 16:50:46', '128.199.189.117', '2024-10-06 11:20:46', '2024-10-06 11:20:46'),
(689, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-06 17:05:22', '43.159.128.172', '2024-10-06 11:35:22', '2024-10-06 11:35:22'),
(690, 'http://sankalpbanaras.com/our-room', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '2024-10-06 17:45:54', '124.243.185.12', '2024-10-06 12:15:54', '2024-10-06 12:15:54'),
(691, 'https://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-06 18:25:07', '66.249.77.96', '2024-10-06 12:55:07', '2024-10-06 12:55:07'),
(692, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-06 18:52:59', '68.183.49.39', '2024-10-06 13:22:59', '2024-10-06 13:22:59'),
(693, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-06 18:53:00', '68.183.49.39', '2024-10-06 13:23:00', '2024-10-06 13:23:00'),
(694, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-06 19:22:51', '92.249.29.11', '2024-10-06 13:52:51', '2024-10-06 13:52:51'),
(697, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '2024-10-06 20:03:22', '35.188.52.31', '2024-10-06 14:33:22', '2024-10-06 14:33:22'),
(705, 'http://hotelsankalp.com/home', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '2024-10-06 20:03:25', '35.188.52.31', '2024-10-06 14:33:25', '2024-10-06 14:33:25'),
(708, 'https://hotelsankalp.com', 'Opera/7.51 (Windows NT 5.1; U) [en]', '2024-10-06 20:59:20', '18.219.43.50', '2024-10-06 15:29:20', '2024-10-06 15:29:20'),
(728, 'http://sankalpbanaras.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-10-06 21:58:22', '199.244.88.221', '2024-10-06 16:28:22', '2024-10-06 16:28:22'),
(729, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-07 00:22:27', '49.51.233.95', '2024-10-06 18:52:27', '2024-10-06 18:52:27'),
(730, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-07 01:44:48', '43.130.16.140', '2024-10-06 20:14:48', '2024-10-06 20:14:48'),
(732, 'http://hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-07 02:45:40', '206.168.34.221', '2024-10-06 21:15:40', '2024-10-06 21:15:40'),
(733, 'https://hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-07 02:50:54', '199.45.154.113', '2024-10-06 21:20:54', '2024-10-06 21:20:54'),
(734, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 YaBrowser/22.7.0 Yowser/2.5 Safari/537.36', '2024-10-07 06:53:31', '143.244.44.139', '2024-10-07 01:23:31', '2024-10-07 01:23:31'),
(735, 'https://sankalpbanaras.com', 'Mozilla/6.4 (Windows NT 11.1) Gecko/2010102 Firefox/99.0', '2024-10-07 06:57:12', '51.15.184.67', '2024-10-07 01:27:12', '2024-10-07 01:27:12'),
(736, 'https://www.hotelsankalp.com/about-us', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-07 07:01:04', '66.249.75.200', '2024-10-07 01:31:04', '2024-10-07 01:31:04'),
(737, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:108.0) Gecko/20100101 Firefox/108.0', '2024-10-07 07:50:25', '128.90.174.17', '2024-10-07 02:20:25', '2024-10-07 02:20:25'),
(739, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-07 08:56:33', '170.106.82.193', '2024-10-07 03:26:33', '2024-10-07 03:26:33'),
(740, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-07 09:00:53', '92.249.29.111', '2024-10-07 03:30:53', '2024-10-07 03:30:53'),
(742, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-07 09:54:06', '43.135.149.154', '2024-10-07 04:24:06', '2024-10-07 04:24:06'),
(743, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-07 11:10:15', '146.190.55.38', '2024-10-07 05:40:15', '2024-10-07 05:40:15'),
(744, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-07 12:52:24', '143.198.47.124', '2024-10-07 07:22:24', '2024-10-07 07:22:24'),
(745, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-10-07 13:09:56', '157.173.122.176', '2024-10-07 07:39:56', '2024-10-07 07:39:56'),
(746, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-07 13:10:13', '114.80.36.40', '2024-10-07 07:40:13', '2024-10-07 07:40:13'),
(747, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-07 14:07:41', '58.49.233.126', '2024-10-07 08:37:41', '2024-10-07 08:37:41'),
(748, 'https://www.hotelsankalp.com/contact-us', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-07 14:23:24', '66.249.79.225', '2024-10-07 08:53:24', '2024-10-07 08:53:24'),
(749, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-07 15:01:36', '43.130.7.211', '2024-10-07 09:31:36', '2024-10-07 09:31:36'),
(750, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36', '2024-10-07 15:27:03', '128.199.189.117', '2024-10-07 09:57:03', '2024-10-07 09:57:03'),
(751, 'http://sankalpbanaras.com/about-us', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '2024-10-07 15:54:26', '124.243.147.254', '2024-10-07 10:24:26', '2024-10-07 10:24:26'),
(752, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-07 16:35:51', '49.51.233.46', '2024-10-07 11:05:51', '2024-10-07 11:05:51'),
(753, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-10-07 17:37:27', '140.245.57.193', '2024-10-07 12:07:27', '2024-10-07 12:07:27'),
(754, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36', '2024-10-07 20:23:40', '154.28.229.68', '2024-10-07 14:53:40', '2024-10-07 14:53:40'),
(755, 'http://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA096667) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.1733.98 Mobile Safari/537.3', '2024-10-07 20:23:41', '159.65.144.72', '2024-10-07 14:53:41', '2024-10-07 14:53:41'),
(756, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA096667) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.1733.98 Mobile Safari/537.3', '2024-10-07 20:23:41', '159.89.17.243', '2024-10-07 14:53:41', '2024-10-07 14:53:41'),
(759, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA096667) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.1733.98 Mobile Safari/537.3', '2024-10-07 20:23:41', '164.92.244.132', '2024-10-07 14:53:41', '2024-10-07 14:53:41'),
(761, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA096667) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.1733.98 Mobile Safari/537.3', '2024-10-07 20:23:41', '159.89.12.166', '2024-10-07 14:53:41', '2024-10-07 14:53:41'),
(819, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-10-07 20:23:53', '195.211.77.140', '2024-10-07 14:53:53', '2024-10-07 14:53:53'),
(826, 'https://hotelsankalp.com', 'Go-http-client/1.1', '2024-10-07 20:24:01', '146.190.63.48', '2024-10-07 14:54:01', '2024-10-07 14:54:01'),
(827, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-10-07 20:24:19', '195.211.77.142', '2024-10-07 14:54:19', '2024-10-07 14:54:19'),
(828, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-10-07 20:24:36', '205.169.39.18', '2024-10-07 14:54:36', '2024-10-07 14:54:36'),
(829, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-10-07 20:24:36', '205.169.39.6', '2024-10-07 14:54:36', '2024-10-07 14:54:36'),
(830, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/92.0.4515.159 Safari/537.36', '2024-10-07 20:24:37', '34.122.147.229', '2024-10-07 14:54:37', '2024-10-07 14:54:37'),
(831, 'http://hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) HeadlessChrome/92.0.4515.159 Safari/537.36', '2024-10-07 20:24:37', '34.72.176.129', '2024-10-07 14:54:37', '2024-10-07 14:54:37'),
(832, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '2024-10-07 20:24:58', '205.169.39.105', '2024-10-07 14:54:58', '2024-10-07 14:54:58'),
(833, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', '2024-10-07 20:24:59', '205.169.39.113', '2024-10-07 14:54:59', '2024-10-07 14:54:59'),
(834, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2024-10-07 20:25:13', '205.169.39.105', '2024-10-07 14:55:13', '2024-10-07 14:55:13'),
(835, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.79 Safari/537.36', '2024-10-07 20:25:17', '205.169.39.113', '2024-10-07 14:55:17', '2024-10-07 14:55:17'),
(836, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-10-07 20:48:40', '154.28.229.189', '2024-10-07 15:18:40', '2024-10-07 15:18:40'),
(837, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-10-07 20:48:40', '154.28.229.226', '2024-10-07 15:18:40', '2024-10-07 15:18:40'),
(838, 'https://mail.hotelsankalp.com/about-us', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-10-07 20:48:41', '154.28.229.226', '2024-10-07 15:18:41', '2024-10-07 15:18:41'),
(839, 'https://hotelsankalp.com/about-us', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-10-07 20:48:42', '154.28.229.189', '2024-10-07 15:18:42', '2024-10-07 15:18:42'),
(840, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', '2024-10-07 20:56:57', '94.139.236.94', '2024-10-07 15:26:57', '2024-10-07 15:26:57'),
(841, 'https://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', '2024-10-07 20:56:59', '54.207.150.106', '2024-10-07 15:26:59', '2024-10-07 15:26:59'),
(842, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', '2024-10-07 20:57:02', '94.139.228.10', '2024-10-07 15:27:02', '2024-10-07 15:27:02'),
(843, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.5 Mobile/15E148 Safari/604.1', '2024-10-07 20:57:03', '15.228.182.157', '2024-10-07 15:27:03', '2024-10-07 15:27:03'),
(844, 'https://hotelsankalp.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-10-07 21:47:34', '104.164.173.3', '2024-10-07 16:17:34', '2024-10-07 16:17:34'),
(845, 'https://hotelsankalp.com/about-us', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36', '2024-10-07 21:47:35', '104.164.173.3', '2024-10-07 16:17:35', '2024-10-07 16:17:35'),
(846, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2024-10-07 21:51:15', '193.32.126.218', '2024-10-07 16:21:15', '2024-10-07 16:21:15'),
(847, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2024-10-07 21:55:15', '193.32.126.218', '2024-10-07 16:25:15', '2024-10-07 16:25:15'),
(848, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0', '2024-10-07 22:36:53', '93.174.93.127', '2024-10-07 17:06:53', '2024-10-07 17:06:53'),
(849, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-07 23:18:45', '49.51.36.179', '2024-10-07 17:48:45', '2024-10-07 17:48:45'),
(850, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_2_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.2 Mobile/15E148 Safari/604.1', '2024-10-07 23:37:26', '68.183.245.101', '2024-10-07 18:07:26', '2024-10-07 18:07:26'),
(851, 'http://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-08 00:26:59', '66.249.79.163', '2024-10-07 18:56:59', '2024-10-07 18:56:59'),
(852, 'http://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-08 00:27:55', '66.249.79.162', '2024-10-07 18:57:55', '2024-10-07 18:57:55'),
(853, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-08 01:15:14', '43.134.37.211', '2024-10-07 19:45:14', '2024-10-07 19:45:14'),
(854, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2024-10-08 01:48:28', '131.153.143.50', '2024-10-07 20:18:28', '2024-10-07 20:18:28'),
(855, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2024-10-08 01:48:28', '131.153.240.178', '2024-10-07 20:18:28', '2024-10-07 20:18:28'),
(856, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2024-10-08 01:48:28', '131.153.143.50', '2024-10-07 20:18:28', '2024-10-07 20:18:28'),
(857, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2024-10-08 01:48:28', '131.153.143.50', '2024-10-07 20:18:28', '2024-10-07 20:18:28'),
(858, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2024-10-08 01:48:28', '131.153.143.50', '2024-10-07 20:18:28', '2024-10-07 20:18:28'),
(859, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2024-10-08 01:48:28', '131.153.143.50', '2024-10-07 20:18:28', '2024-10-07 20:18:28'),
(860, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2024-10-08 01:48:28', '131.153.143.50', '2024-10-07 20:18:28', '2024-10-07 20:18:28'),
(861, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2024-10-08 01:48:28', '131.153.143.50', '2024-10-07 20:18:28', '2024-10-07 20:18:28'),
(862, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36', '2024-10-08 01:48:28', '131.153.240.162', '2024-10-07 20:18:28', '2024-10-07 20:18:28'),
(863, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', '2024-10-08 03:56:31', '138.199.42.170', '2024-10-07 22:26:31', '2024-10-07 22:26:31'),
(864, 'http://sankalpbanaras.com', 'Mozilla/5.0 (compatible; wpbot/1.1; +https://forms.gle/ajBaxygz9jSR8p8G9)', '2024-10-08 04:06:13', '18.246.250.235', '2024-10-07 22:36:13', '2024-10-07 22:36:13'),
(865, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 5.7; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3939.88 Safari/537.36', '2024-10-08 04:16:36', '123.60.68.42', '2024-10-07 22:46:36', '2024-10-07 22:46:36'),
(867, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-08 04:38:17', '72.14.201.173', '2024-10-07 23:08:17', '2024-10-07 23:08:17'),
(868, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-08 04:38:18', '49.36.215.213', '2024-10-07 23:08:18', '2024-10-07 23:08:18'),
(869, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-10-08 05:21:49', '31.13.224.102', '2024-10-07 23:51:49', '2024-10-07 23:51:49'),
(870, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4240.193 Safari/537.36', '2024-10-08 05:37:51', '185.104.184.198', '2024-10-08 00:07:51', '2024-10-08 00:07:51'),
(872, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-08 06:16:16', '143.110.255.3', '2024-10-08 00:46:16', '2024-10-08 00:46:16'),
(873, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', '2024-10-08 07:13:43', '3.25.98.119', '2024-10-08 01:43:43', '2024-10-08 01:43:43'),
(874, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-08 07:53:02', '43.156.228.27', '2024-10-08 02:23:02', '2024-10-08 02:23:02'),
(876, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-08 08:57:23', '43.131.249.153', '2024-10-08 03:27:23', '2024-10-08 03:27:23'),
(877, 'https://hotelsankalp.com/about-us', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-08 09:30:29', '66.249.79.161', '2024-10-08 04:00:29', '2024-10-08 04:00:29'),
(879, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', '2024-10-08 09:31:14', '87.120.116.60', '2024-10-08 04:01:14', '2024-10-08 04:01:14'),
(880, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; archive.org_bot +http://archive.org/details/archive.org_bot) Zeno/28c0f3f warc/v0.8.53', '2024-10-08 09:56:42', '207.241.235.164', '2024-10-08 04:26:42', '2024-10-08 04:26:42'),
(883, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 OPR/107.0.0.0', '2024-10-08 11:02:59', '62.182.86.19', '2024-10-08 05:32:59', '2024-10-08 05:32:59'),
(884, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-08 11:07:30', '147.182.152.185', '2024-10-08 05:37:30', '2024-10-08 05:37:30'),
(885, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-08 11:27:26', '58.49.233.126', '2024-10-08 05:57:26', '2024-10-08 05:57:26'),
(886, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2024-10-08 12:01:14', '35.91.188.160', '2024-10-08 06:31:14', '2024-10-08 06:31:14'),
(887, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-08 12:21:17', '223.244.35.77', '2024-10-08 06:51:17', '2024-10-08 06:51:17'),
(888, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:86.0) Gecko/20100101 Firefox/86.0', '2024-10-08 13:58:33', '212.98.84.140', '2024-10-08 08:28:33', '2024-10-08 08:28:33'),
(889, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-08 14:33:51', '43.135.166.178', '2024-10-08 09:03:51', '2024-10-08 09:03:51'),
(890, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.92 Safari/537.36', '2024-10-08 14:36:55', '195.181.174.227', '2024-10-08 09:06:55', '2024-10-08 09:06:55'),
(891, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-08 16:03:50', '43.131.39.179', '2024-10-08 10:33:50', '2024-10-08 10:33:50'),
(892, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.5938.132 Safari/537.36', '2024-10-08 16:11:02', '205.169.39.20', '2024-10-08 10:41:02', '2024-10-08 10:41:02'),
(893, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-08 16:25:10', '66.249.79.168', '2024-10-08 10:55:10', '2024-10-08 10:55:10'),
(894, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', '2024-10-08 16:50:47', '42.83.147.56', '2024-10-08 11:20:47', '2024-10-08 11:20:47'),
(895, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (compatible; archive.org_bot +http://archive.org/details/archive.org_bot) Zeno/1ffbe0b warc/v0.8.53', '2024-10-08 16:56:01', '207.241.235.133', '2024-10-08 11:26:01', '2024-10-08 11:26:01'),
(896, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-08 17:47:19', '165.22.245.198', '2024-10-08 12:17:19', '2024-10-08 12:17:19'),
(897, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-08 18:37:43', '64.23.202.135', '2024-10-08 13:07:43', '2024-10-08 13:07:43'),
(898, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-08 18:37:44', '64.23.202.135', '2024-10-08 13:07:44', '2024-10-08 13:07:44'),
(900, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '2024-10-08 19:31:59', '34.71.131.115', '2024-10-08 14:01:59', '2024-10-08 14:01:59'),
(909, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-08 20:32:36', '92.249.29.80', '2024-10-08 15:02:36', '2024-10-08 15:02:36'),
(911, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-08 21:20:56', '72.14.201.224', '2024-10-08 15:50:56', '2024-10-08 15:50:56'),
(913, 'http://sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-08 22:11:13', '206.168.34.223', '2024-10-08 16:41:13', '2024-10-08 16:41:13'),
(914, 'https://sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-08 22:45:19', '199.45.155.72', '2024-10-08 17:15:19', '2024-10-08 17:15:19'),
(915, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-08 23:01:01', '49.51.204.74', '2024-10-08 17:31:01', '2024-10-08 17:31:01'),
(916, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-08 23:59:11', '43.133.72.69', '2024-10-08 18:29:11', '2024-10-08 18:29:11'),
(917, 'https://www.sankalpbanaras.com', '\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36\"', '2024-10-09 01:02:25', '139.171.25.97', '2024-10-08 19:32:25', '2024-10-08 19:32:25'),
(918, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-09 02:11:26', '134.209.19.21', '2024-10-08 20:41:26', '2024-10-08 20:41:26'),
(919, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-09 02:28:52', '66.249.66.161', '2024-10-08 20:58:52', '2024-10-08 20:58:52'),
(920, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-09 02:29:08', '66.249.66.162', '2024-10-08 20:59:08', '2024-10-08 20:59:08'),
(921, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-09 04:21:21', '58.49.233.126', '2024-10-08 22:51:21', '2024-10-08 22:51:21'),
(922, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.3', '2024-10-09 06:15:50', '192.71.3.222', '2024-10-09 00:45:50', '2024-10-09 00:45:50'),
(923, 'http://sankalpbanaras.com/pricing.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-09 07:16:09', '43.156.202.34', '2024-10-09 01:46:09', '2024-10-09 01:46:09'),
(924, 'http://sankalpbanaras.com/index-2.html', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-09 07:19:17', '162.62.231.139', '2024-10-09 01:49:17', '2024-10-09 01:49:17'),
(925, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-10-09 08:10:19', '128.199.221.96', '2024-10-09 02:40:19', '2024-10-09 02:40:19'),
(926, 'https://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 12; Pixel 6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', '2024-10-09 09:14:15', '34.223.40.60', '2024-10-09 03:44:15', '2024-10-09 03:44:15'),
(927, 'https://hotelsankalp.com/a/xyzt/dsxxjy', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-10-09 09:26:45', '40.77.167.152', '2024-10-09 03:56:45', '2024-10-09 03:56:45'),
(928, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-09 10:07:31', '159.223.183.63', '2024-10-09 04:37:31', '2024-10-09 04:37:31'),
(932, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-09 13:32:48', '165.22.245.198', '2024-10-09 08:02:48', '2024-10-09 08:02:48'),
(933, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-09 14:07:08', '104.236.31.68', '2024-10-09 08:37:08', '2024-10-09 08:37:08'),
(934, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko)Chrome/74.0.3729.169 Safari/537.36', '2024-10-09 15:56:51', '42.83.147.53', '2024-10-09 10:26:51', '2024-10-09 10:26:51'),
(935, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.119 Safari/537.36', '2024-10-09 16:13:47', '3.214.216.57', '2024-10-09 10:43:47', '2024-10-09 10:43:47'),
(936, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (X11; NetBSD x86; en-us) AppleWebKit/666.6+ (KHTML, like Gecko) Chromium/20.0.0000.00 Chrome/20.0.0000.00 Safari/666.6+', '2024-10-09 16:13:47', '3.214.216.57', '2024-10-09 10:43:47', '2024-10-09 10:43:47'),
(937, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-09 18:17:11', '123.187.240.242', '2024-10-09 12:47:11', '2024-10-09 12:47:11'),
(938, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36 Edg/121.0.0.0 AtContent/95.5.5392.49', '2024-10-09 18:52:10', '93.174.93.127', '2024-10-09 13:22:10', '2024-10-09 13:22:10'),
(939, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '2024-10-09 20:24:46', '185.201.188.24', '2024-10-09 14:54:46', '2024-10-09 14:54:46'),
(940, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-10-09 20:24:50', '195.211.77.140', '2024-10-09 14:54:50', '2024-10-09 14:54:50'),
(941, 'https://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', '2024-10-09 20:25:03', '195.211.77.142', '2024-10-09 14:55:03', '2024-10-09 14:55:03'),
(942, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-09 20:55:46', '167.94.145.110', '2024-10-09 15:25:46', '2024-10-09 15:25:46'),
(943, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-09 22:05:51', '66.249.66.160', '2024-10-09 16:35:51', '2024-10-09 16:35:51'),
(944, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-09 22:09:21', '92.249.29.72', '2024-10-09 16:39:21', '2024-10-09 16:39:21'),
(946, 'https://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.89 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-09 22:28:50', '66.249.66.42', '2024-10-09 16:58:50', '2024-10-09 16:58:50'),
(947, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-09 22:46:32', '43.157.40.112', '2024-10-09 17:16:32', '2024-10-09 17:16:32'),
(948, 'http://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 4.4.2; Nexus 4 Build/KOT49H) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/34.0.1847.114 Mobile Safari/537.36', '2024-10-09 22:49:18', '86.127.230.242', '2024-10-09 17:19:18', '2024-10-09 17:19:18'),
(950, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-10-10 00:56:42', '43.133.77.230', '2024-10-09 19:26:42', '2024-10-09 19:26:42'),
(951, 'http://mail.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-10 01:20:38', '161.35.119.140', '2024-10-09 19:50:38', '2024-10-09 19:50:38'),
(952, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-10 02:57:07', '64.226.102.213', '2024-10-09 21:27:07', '2024-10-09 21:27:07'),
(953, 'https://www.hotelsankalp.com/login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-10 04:18:44', '49.36.215.213', '2024-10-09 22:48:44', '2024-10-09 22:48:44'),
(954, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0', '2024-10-10 04:22:05', '54.38.85.104', '2024-10-09 22:52:05', '2024-10-09 22:52:05'),
(955, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-10 04:52:16', '103.53.42.51', '2024-10-09 23:22:16', '2024-10-09 23:22:16'),
(956, 'http://sankalpbanaras.com/wp-admin/css', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2024-10-11 00:21:50', '103.53.42.51', '2024-10-10 18:51:50', '2024-10-10 18:51:50'),
(957, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:56.0) Gecko/20100101 Firefox/56.0', '2024-10-12 00:32:19', '103.53.42.51', '2024-10-11 19:02:19', '2024-10-11 19:02:19'),
(958, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-10-13 01:38:24', '103.53.42.51', '2024-10-12 20:08:24', '2024-10-12 20:08:24'),
(959, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows Phone OS 7.5; Trident/5.0; IEMobile/9.0)', '2024-10-14 00:15:09', '103.53.42.51', '2024-10-13 18:45:09', '2024-10-13 18:45:09'),
(960, 'http://sankalpbanaras.com', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows Phone OS 7.5; Trident/5.0; IEMobile/9.0)', '2024-10-14 00:15:09', '103.53.42.51', '2024-10-13 18:45:09', '2024-10-13 18:45:09'),
(961, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-10-15 00:28:01', '103.53.42.51', '2024-10-14 18:58:01', '2024-10-14 18:58:01'),
(962, 'http://hotelsankalp.com/admin/.env', 'Mozilla/5.0 (Windows NT 6.2; rv:41.0) Gecko/20100101 Firefox/41.0', '2024-10-16 01:02:37', '103.53.42.51', '2024-10-15 19:32:37', '2024-10-15 19:32:37'),
(963, 'http://hotelsankalp.com/wp-admin/css', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', '2024-10-17 00:20:14', '103.53.42.51', '2024-10-16 18:50:14', '2024-10-16 18:50:14');
INSERT INTO `visits` (`id`, `pagename`, `user_agent_name`, `visited_at`, `ip_address`, `created_at`, `updated_at`) VALUES
(964, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-10-18 00:25:04', '103.53.42.51', '2024-10-17 18:55:04', '2024-10-17 18:55:04'),
(965, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '2024-10-19 00:28:27', '103.53.42.51', '2024-10-18 18:58:27', '2024-10-18 18:58:27'),
(966, 'https://www.hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-20 01:27:03', '103.53.42.51', '2024-10-19 19:57:03', '2024-10-19 19:57:03'),
(967, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', '2024-10-21 00:51:37', '103.53.42.51', '2024-10-20 19:21:37', '2024-10-20 19:21:37'),
(968, 'https://www.hotelsankalp.com/contactus.html', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-10-22 00:23:54', '103.53.42.51', '2024-10-21 18:53:54', '2024-10-21 18:53:54'),
(969, 'http://sankalpbanaras.com/sitemap_index.xml', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-10-23 00:17:23', '103.53.42.51', '2024-10-22 18:47:23', '2024-10-22 18:47:23'),
(970, 'http://hotelsankalp.com', 'Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123', '2024-10-24 00:36:04', '103.53.42.51', '2024-10-23 19:06:04', '2024-10-23 19:06:04'),
(971, 'http://hotelsankalp.com', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-25 00:45:48', '103.53.42.51', '2024-10-24 19:15:48', '2024-10-24 19:15:48'),
(972, 'http://mail.sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-26 01:19:12', '103.53.42.51', '2024-10-25 19:49:12', '2024-10-25 19:49:12'),
(973, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', '2024-10-27 00:03:05', '103.53.42.51', '2024-10-26 18:33:05', '2024-10-26 18:33:05'),
(974, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-10-28 00:50:16', '103.53.42.51', '2024-10-27 19:20:16', '2024-10-27 19:20:16'),
(975, 'http://mail.sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', '2024-10-29 00:18:46', '103.53.42.51', '2024-10-28 18:48:46', '2024-10-28 18:48:46'),
(976, 'https://www.hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.6723.69 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-10-30 00:03:47', '103.53.42.51', '2024-10-29 18:33:47', '2024-10-29 18:33:47'),
(977, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-10-31 00:20:04', '103.53.42.51', '2024-10-30 18:50:04', '2024-10-30 18:50:04'),
(978, 'https://www.hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.6723.69 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-11-01 01:03:19', '103.53.42.51', '2024-10-31 19:33:19', '2024-10-31 19:33:19'),
(979, 'https://www.hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.6723.69 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-11-02 01:33:34', '103.53.42.51', '2024-11-01 20:03:34', '2024-11-01 20:03:34'),
(980, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-11-03 01:08:56', '103.53.42.51', '2024-11-02 19:38:56', '2024-11-02 19:38:56'),
(981, 'https://hotelsankalp.com', 'Apache-HttpClient/5.1.4 (Java/11.0.18)', '2024-11-04 01:05:04', '103.53.42.51', '2024-11-03 19:35:04', '2024-11-03 19:35:04'),
(982, 'http://sankalpbanaras.com/sitemap_index.xml', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-11-05 00:11:28', '103.53.42.51', '2024-11-04 18:41:28', '2024-11-04 18:41:28'),
(983, 'http://www.sankalpbanaras.com/sitemap_index.xml', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', '2024-11-06 01:17:54', '103.53.42.51', '2024-11-05 19:47:54', '2024-11-05 19:47:54'),
(984, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3', '2024-11-07 00:02:56', '103.53.42.51', '2024-11-06 18:32:56', '2024-11-06 18:32:56'),
(985, 'https://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-11-08 00:30:06', '103.53.42.51', '2024-11-07 19:00:06', '2024-11-07 19:00:06'),
(986, 'https://hotelsankalp.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-11-09 00:10:12', '103.53.42.51', '2024-11-08 18:40:12', '2024-11-08 18:40:12'),
(987, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-11-10 00:02:34', '103.53.42.51', '2024-11-09 18:32:34', '2024-11-09 18:32:34'),
(988, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-11-11 00:10:35', '103.53.42.51', '2024-11-10 18:40:35', '2024-11-10 18:40:35'),
(989, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-11-12 00:01:23', '103.53.42.51', '2024-11-11 18:31:23', '2024-11-11 18:31:23'),
(990, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', '2024-11-13 00:44:07', '103.53.42.51', '2024-11-12 19:14:07', '2024-11-12 19:14:07'),
(991, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.5112.79 Safari/537.36', '2024-11-14 01:06:35', '103.53.42.51', '2024-11-13 19:36:35', '2024-11-13 19:36:35'),
(992, 'http://hotelsankalp.com/plug/oem/plug.xml', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Win64; x64; Trident/5.0)', '2024-11-15 00:46:14', '103.53.42.51', '2024-11-14 19:16:14', '2024-11-14 19:16:14'),
(993, 'http://hotelsankalp.com/wordpress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '2024-11-16 00:25:54', '103.53.42.51', '2024-11-15 18:55:54', '2024-11-15 18:55:54'),
(994, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.6778.69 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-11-17 03:31:15', '103.53.42.51', '2024-11-16 22:01:15', '2024-11-16 22:01:15'),
(995, 'https://sankalpbanaras.com', 'Java/21.0.5', '2024-11-18 00:07:19', '103.53.42.51', '2024-11-17 18:37:19', '2024-11-17 18:37:19'),
(996, 'https://hotelsankalp.com', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.6778.69 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '2024-11-19 00:15:46', '103.53.42.51', '2024-11-18 18:45:46', '2024-11-18 18:45:46'),
(997, 'https://sankalpbanaras.com', 'Mozilla/5.0 \\(Windows NT 10.0\\; Win64\\; x64\\) AppleWebKit/537.36 \\(KHTML, like Gecko\\) Chrome/100.0.4896.60 Safari/537.36', '2024-11-20 01:37:29', '103.53.42.51', '2024-11-19 20:07:29', '2024-11-19 20:07:29'),
(998, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', '2024-11-21 00:02:03', '103.53.42.51', '2024-11-20 18:32:03', '2024-11-20 18:32:03'),
(999, 'http://hotelsankalp.com/wp-json/wp/v2/users', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36 OPR/70.0.3728.95', '2024-11-22 00:04:36', '103.53.42.51', '2024-11-21 18:34:36', '2024-11-21 18:34:36'),
(1000, 'https://www.hotelsankalp.com/our-room', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-11-23 02:20:31', '103.53.42.51', '2024-11-22 20:50:31', '2024-11-22 20:50:31'),
(1001, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-11-24 00:01:14', '103.53.42.51', '2024-11-23 18:31:14', '2024-11-23 18:31:14'),
(1002, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-11-25 01:16:05', '103.53.42.51', '2024-11-24 19:46:05', '2024-11-24 19:46:05'),
(1003, 'http://hotelsankalp.com/about-us', 'Mozilla/5.0/(X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-11-26 00:00:35', '103.53.42.51', '2024-11-25 18:30:35', '2024-11-25 18:30:35'),
(1004, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36', '2024-11-27 00:03:37', '103.53.42.51', '2024-11-26 18:33:37', '2024-11-26 18:33:37'),
(1005, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.114 Safari/537.36 Edg/91.0.864.54', '2024-11-28 00:23:21', '103.53.42.51', '2024-11-27 18:53:21', '2024-11-27 18:53:21'),
(1006, 'https://hotelsankalp.com/contact-us', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/111.0', '2024-11-29 04:30:13', '103.53.42.51', '2024-11-28 23:00:13', '2024-11-28 23:00:13'),
(1007, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-11-30 00:19:20', '103.53.42.51', '2024-11-29 18:49:20', '2024-11-29 18:49:20'),
(1008, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-12-01 00:17:11', '103.53.42.51', '2024-11-30 18:47:11', '2024-11-30 18:47:11'),
(1009, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-12-02 00:39:42', '103.53.42.51', '2024-12-01 19:09:42', '2024-12-01 19:09:42'),
(1010, 'http://hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:131.0) Gecko/20100101 Firefox/131.0', '2024-12-03 00:27:49', '103.53.42.51', '2024-12-02 18:57:49', '2024-12-02 18:57:49'),
(1011, 'http://sankalpbanaras.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.61 Chrome/124.0.6367.61 Not-A.Brand/99  Safari/537.36', '2024-12-04 00:21:31', '103.53.42.51', '2024-12-03 18:51:31', '2024-12-03 18:51:31'),
(1012, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', '2024-12-05 01:17:36', '103.53.42.51', '2024-12-04 19:47:36', '2024-12-04 19:47:36'),
(1013, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-12-06 01:54:17', '103.53.42.51', '2024-12-05 20:24:17', '2024-12-05 20:24:17'),
(1014, 'http://hotelsankalp.com/wordpress', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36', '2024-12-07 02:11:25', '103.53.42.51', '2024-12-06 20:41:25', '2024-12-06 20:41:25'),
(1015, 'https://www.hotelsankalp.com/.well-known/security.txt', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36', '2024-12-08 01:13:16', '103.53.42.51', '2024-12-07 19:43:16', '2024-12-07 19:43:16'),
(1016, 'https://mail.sankalpbanaras.com/.git/config', 'Opera/7.50 (Windows XP; U)', '2024-12-09 02:21:24', '103.53.42.51', '2024-12-08 20:51:24', '2024-12-08 20:51:24'),
(1017, 'https://mail.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36', '2024-12-10 00:05:08', '103.53.42.51', '2024-12-09 18:35:08', '2024-12-09 18:35:08'),
(1018, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-12-11 00:25:37', '103.53.42.51', '2024-12-10 18:55:37', '2024-12-10 18:55:37'),
(1019, 'http://hotelsankalp.com/wp-json/wp/v2/users', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36', '2024-12-12 00:08:36', '103.53.42.51', '2024-12-11 18:38:36', '2024-12-11 18:38:36'),
(1020, 'https://www.sankalpbanaras.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 15_5_7; es) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.7 Safari/605.1.15', '2024-12-13 00:00:38', '103.53.42.51', '2024-12-12 18:30:38', '2024-12-12 18:30:38'),
(1021, 'http://sankalpbanaras.com', 'Embarcadero URI Client/1.0', '2024-12-14 00:04:54', '103.53.42.51', '2024-12-13 18:34:54', '2024-12-13 18:34:54'),
(1022, 'http://mail.hotelsankalp.com', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-12-15 00:15:26', '103.53.42.51', '2024-12-14 18:45:26', '2024-12-14 18:45:26'),
(1023, 'https://hotelsankalp.com', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; GPTBot/1.2; +https://openai.com/gptbot)', '2024-12-16 00:15:36', '103.53.42.51', '2024-12-15 18:45:36', '2024-12-15 18:45:36'),
(1024, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-12-17 00:44:43', '103.53.42.51', '2024-12-16 19:14:43', '2024-12-16 19:14:43'),
(1025, 'http://mail.sankalpbanaras.com', 'Mozilla/5.0 (compatible; CensysInspect/1.1; +https://about.censys.io/)', '2024-12-18 04:05:33', '103.53.42.51', '2024-12-17 22:35:33', '2024-12-17 22:35:33'),
(1026, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-12-19 00:14:37', '103.53.42.51', '2024-12-18 18:44:37', '2024-12-18 18:44:37'),
(1027, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-12-20 01:22:54', '103.53.42.51', '2024-12-19 19:52:54', '2024-12-19 19:52:54'),
(1028, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0', '2024-12-21 00:02:49', '103.53.42.51', '2024-12-20 18:32:49', '2024-12-20 18:32:49'),
(1029, 'https://hotelsankalp.com/our-room', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '2024-12-22 00:34:37', '103.53.42.51', '2024-12-21 19:04:37', '2024-12-21 19:04:37'),
(1030, 'http://hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-12-23 02:00:31', '103.53.42.51', '2024-12-22 20:30:31', '2024-12-22 20:30:31'),
(1031, 'http://hotelsankalp.com', 'Mozilla/5.0 (Windows NT 10.0.0; Win64; x64; ) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.6367.61 Chrome/124.0.6367.61 Not-A.Brand/99  Safari/537.36', '2024-12-24 00:09:02', '103.53.42.51', '2024-12-23 18:39:02', '2024-12-23 18:39:02'),
(1032, 'https://hotelsankalp.com', 'Mozilla/5.0 (compatible; InternetMeasurement/1.0; +https://internet-measurement.com/)', '2024-12-25 01:35:17', '103.53.42.51', '2024-12-24 20:05:17', '2024-12-24 20:05:17'),
(1033, 'http://sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-12-26 00:17:03', '103.53.42.51', '2024-12-25 18:47:03', '2024-12-25 18:47:03'),
(1034, 'http://www.sankalpbanaras.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-12-27 00:12:28', '103.53.42.51', '2024-12-26 18:42:28', '2024-12-26 18:42:28'),
(1035, 'http://www.hotelsankalp.com', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '2024-12-28 01:53:15', '103.53.42.51', '2024-12-27 20:23:15', '2024-12-27 20:23:15'),
(1036, 'http://127.0.0.1:8000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-28 07:01:20', '192.168.29.9', '2024-12-28 01:31:20', '2024-12-28 01:31:20'),
(1037, 'http://127.0.0.1:8000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-30 06:32:00', '192.168.29.9', '2024-12-30 01:02:00', '2024-12-30 01:02:00'),
(1038, 'http://127.0.0.1:8000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '2025-03-06 08:53:13', '192.168.29.9', '2025-03-06 03:23:13', '2025-03-06 03:23:13'),
(1039, 'http://127.0.0.1:8000', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '2025-03-07 05:21:38', '192.168.29.9', '2025-03-06 23:51:38', '2025-03-06 23:51:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hotel_facilities`
--
ALTER TABLE `hotel_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_images_hotel_room_id_foreign` (`hotel_room_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotel_facilities`
--
ALTER TABLE `hotel_facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1040;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_hotel_room_id_foreign` FOREIGN KEY (`hotel_room_id`) REFERENCES `hotel_rooms` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
