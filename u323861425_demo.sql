-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 06, 2024 at 05:16 AM
-- Server version: 10.11.9-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u323861425_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE `account_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_type` varchar(255) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `current_balance` decimal(24,2) NOT NULL,
  `amount` decimal(24,2) NOT NULL,
  `method` varchar(255) NOT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'collected',
  `created_by` varchar(20) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_transactions`
--

INSERT INTO `account_transactions` (`id`, `from_type`, `from_id`, `current_balance`, `amount`, `method`, `ref`, `created_at`, `updated_at`, `type`, `created_by`) VALUES
(1, 'deliveryman', 1, 159.00, 159.00, 'cash_collection', '100003', '2024-10-07 13:33:52', '2024-10-07 13:33:52', 'cash_in', 'deliveryman'),
(2, 'deliveryman', 1, 418.00, 259.00, 'cash_collection', '100004', '2024-10-07 13:37:52', '2024-10-07 13:37:52', 'cash_in', 'deliveryman'),
(3, 'deliveryman', 1, 558.00, 160.00, 'cash_collection', '100005', '2024-10-07 13:43:49', '2024-10-07 13:43:49', 'cash_in', 'deliveryman'),
(4, 'deliveryman', 1, 718.00, 160.00, 'cash_collection', '100007', '2024-10-07 14:56:44', '2024-10-07 14:56:44', 'cash_in', 'deliveryman');

-- --------------------------------------------------------

--
-- Table structure for table `addon_settings`
--

CREATE TABLE `addon_settings` (
  `id` char(36) NOT NULL,
  `key_name` varchar(191) DEFAULT NULL,
  `live_values` longtext DEFAULT NULL,
  `test_values` longtext DEFAULT NULL,
  `settings_type` varchar(255) DEFAULT NULL,
  `mode` varchar(20) NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addon_settings`
--

INSERT INTO `addon_settings` (`id`, `key_name`, `live_values`, `test_values`, `settings_type`, `mode`, `is_active`, `created_at`, `updated_at`, `additional_data`) VALUES
('070c6bbd-d777-11ed-96f4-0c7a158e4469', 'twilio', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":0,\"sid\":\"\",\"messaging_service_sid\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":0,\"sid\":\"\",\"messaging_service_sid\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('070c766c-d777-11ed-96f4-0c7a158e4469', '2factor', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\"}', '{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 03:17:06', NULL),
('0d8a9308-d6a5-11ed-962c-0c7a158e4469', 'mercadopago', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":1,\"access_token\":\"\",\"public_key\":\"\"}', '{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":1,\"access_token\":\"\",\"public_key\":\"\"}', 'payment_config', 'live', 0, NULL, '2023-04-12 03:37:50', '{\"gateway_title\":\"Mercadopago\",\"gateway_image\":null}'),
('0d8a9e49-d6a5-11ed-962c-0c7a158e4469', 'liqpay', '{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":\"1\",\"private_key\":null,\"public_key\":null}', '{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":\"1\",\"private_key\":null,\"public_key\":null}', 'payment_config', 'live', 0, NULL, NULL, '{\"gateway_title\":\"Liqpay\",\"gateway_image\":null}'),
('101befdf-d44b-11ed-8564-0c7a158e4469', 'paypal', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":null,\"client_secret\":null}', '{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":null,\"client_secret\":null}', 'payment_config', 'live', 0, NULL, NULL, '{\"gateway_title\":\"Paypal\",\"gateway_image\":null}'),
('133d9647-cabb-11ed-8fec-0c7a158e4469', 'hyper_pay', '{\"gateway\":\"hyper_pay\",\"mode\":\"live\",\"status\":\"0\",\"entity_id\":\"\",\"access_code\":\"\"}', '{\"gateway\":\"hyper_pay\",\"mode\":\"live\",\"status\":\"0\",\"entity_id\":\"\",\"access_code\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-04-08 22:59:22', NULL),
('1821029f-d776-11ed-96f4-0c7a158e4469', 'msg91', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":0,\"template_id\":\"\",\"auth_key\":\"\"}', '{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":0,\"template_id\":\"\",\"auth_key\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('18210f2b-d776-11ed-96f4-0c7a158e4469', 'nexmo', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('18fbb21f-d6ad-11ed-962c-0c7a158e4469', 'foloosi', '{\"gateway\":\"foloosi\",\"mode\":\"live\",\"status\":\"0\",\"merchant_key\":\"\"}', '{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('2767d142-d6a1-11ed-962c-0c7a158e4469', 'paytm', '{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":\"1\",\"merchant_key\":null,\"merchant_id\":null,\"merchant_website_link\":null}', '{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":\"1\",\"merchant_key\":null,\"merchant_id\":null,\"merchant_website_link\":null}', 'payment_config', 'live', 0, NULL, NULL, '{\"gateway_title\":\"Paytm\",\"gateway_image\":null}'),
('3201d2e6-c937-11ed-a424-0c7a158e4469', 'amazon_pay', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\": \"\",\"access_code\": \"\",\"merchant_identifier\": \"\"}', '{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\": \"\",\"access_code\": \"\",\"merchant_identifier\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('4593b25c-d6a1-11ed-962c-0c7a158e4469', 'paytabs', '{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":\"1\",\"profile_id\":null,\"server_key\":null,\"base_url\":null}', '{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":\"1\",\"profile_id\":null,\"server_key\":null,\"base_url\":null}', 'payment_config', 'live', 0, NULL, '2023-04-09 02:23:25', '{\"gateway_title\":\"Paytabs\",\"gateway_image\":null}'),
('4e9b8dfb-e7d1-11ed-a559-0c7a158e4469', 'bkash', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"1\",\"app_key\":\"5tunt4masn6pv2hnvte1sb5n3j\",\"app_secret\":\"1vggbqd4hqk9g96o9rrrp2jftvek578v7d2bnerim12a87dbrrka\",\"username\":\"sandboxTestUser\",\"password\":\"hWD@8vtzw0\"}', '{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"1\",\"app_key\":\"5tunt4masn6pv2hnvte1sb5n3j\",\"app_secret\":\"1vggbqd4hqk9g96o9rrrp2jftvek578v7d2bnerim12a87dbrrka\",\"username\":\"sandboxTestUser\",\"password\":\"hWD@8vtzw0\"}', 'payment_config', 'live', 0, NULL, '2023-04-08 23:08:40', '{\"gateway_title\":\"Bkash\",\"gateway_image\":null}'),
('544a24a4-c872-11ed-ac7a-0c7a158e4469', 'fatoorah', '{\"gateway\":\"fatoorah\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\"}', '{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('58c1bc8a-d6ac-11ed-962c-0c7a158e4469', 'ccavenue', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"\",\"working_key\":\"\",\"access_code\":\"\"}', '{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"\",\"working_key\":\"\",\"access_code\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-04-12 22:24:16', '{\"gateway_title\":\"\",\"gateway_image\":\"\"}'),
('5e2d2ef9-d6ab-11ed-962c-0c7a158e4469', 'thawani', '{\"gateway\":\"thawani\",\"mode\":\"live\",\"status\":\"0\",\"public_key\":\"\",\"private_key\":\"\"}', '{\"gateway\":\"thawani\",\"mode\":\"live\",\"status\":\"0\",\"public_key\":\"\",\"private_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-04-12 23:14:00', '{\"gateway_title\":\"\",\"gateway_image\":\"\"}'),
('60cc83cc-d5b9-11ed-b56f-0c7a158e4469', 'sixcash', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"\",\"secret_key\":\"\",\"merchant_number\":\"\", \"base_url\":\"\"}', '{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"\",\"secret_key\":\"\",\"merchant_number\":\"\", \"base_url\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-04-12 03:18:06', '{\"gateway_title\":\"\",\"gateway_image\":\"\"}'),
('68579846-d8e8-11ed-8249-0c7a158e4469', 'alphanet_sms', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('6857a2e8-d8e8-11ed-8249-0c7a158e4469', 'sms_to', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('74c30c00-d6a6-11ed-962c-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":\"0\",\"account_number\":\"\",\"api_id\":\"\",\"api_key\":\"\"}', '{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"\",\"api_id\":\"\",\"api_key\":\"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('74e46b0a-d6aa-11ed-962c-0c7a158e4469', 'tap', '{\"gateway\":\"tap\",\"mode\":\"live\",\"status\":\"0\",\"secret_key\":\"\"}', '{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('761ca96c-d1eb-11ed-87ca-0c7a158e4469', 'swish', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\": \"\"}', '{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('7b1c3c5f-d2bd-11ed-b485-0c7a158e4469', 'payfast', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"\",\"secured_key\":\"\"}', '{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"\",\"secured_key\":\"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('8592417b-d1d1-11ed-a984-0c7a158e4469', 'esewa', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\": \"\"}', '{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\": \"EPAYTEST\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('9162a1dc-cdf1-11ed-affe-0c7a158e4469', 'viva_wallet', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\"}\n', '{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('998ccc62-d6a0-11ed-962c-0c7a158e4469', 'stripe', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}', 'payment_config', 'live', 0, NULL, '2023-04-12 22:26:31', '{\"gateway_title\":\"Stripe\",\"gateway_image\":null}'),
('a3313755-c95d-11ed-b1db-0c7a158e4469', 'iyzi_pay', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\": \"\",\"secret_key\": \"\",\"base_url\": \"\"}', '{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\": \"\",\"secret_key\": \"\",\"base_url\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('a76c8993-d299-11ed-b485-0c7a158e4469', 'momo', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_user\":\"\",\"subscription_key\":\"\"}', '{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_user\":\"\",\"subscription_key\":\"\"}', 'payment_config', 'test', 0, NULL, '2023-04-08 22:39:19', NULL),
('a8608119-cc76-11ed-9bca-0c7a158e4469', 'moncash', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"\",\"secret_key\": \"\"}\n', '{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"\",\"secret_key\": \"\"}\n', 'payment_config', 'test', 0, NULL, NULL, NULL),
('ad5af1c1-d6a2-11ed-962c-0c7a158e4469', 'razor_pay', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', '{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}', 'payment_config', 'live', 0, NULL, NULL, '{\"gateway_title\":\"Razor pay\",\"gateway_image\":null}'),
('ad5b02a0-d6a2-11ed-962c-0c7a158e4469', 'senang_pay', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"1\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', '{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"1\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}', 'payment_config', 'live', 0, NULL, NULL, '{\"gateway_title\":\"Senang pay\",\"gateway_image\":null}'),
('b6c333f6-d8e9-11ed-8249-0c7a158e4469', 'akandit_sms', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b6c33c87-d8e9-11ed-8249-0c7a158e4469', 'global_sms', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('b8992bd4-d6a0-11ed-962c-0c7a158e4469', 'paymob_accept', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":null,\"iframe_id\":null,\"integration_id\":null,\"hmac\":null}', '{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":null,\"iframe_id\":null,\"integration_id\":null,\"hmac\":null}', 'payment_config', 'live', 0, NULL, NULL, '{\"gateway_title\":\"Paymob accept\",\"gateway_image\":null}'),
('c41c0dcd-d119-11ed-9f67-0c7a158e4469', 'maxicash', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\": \"\",\"merchantPassword\": \"\"}', '{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\": \"\",\"merchantPassword\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('c9249d17-cd60-11ed-b879-0c7a158e4469', 'pvit', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', '{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('cb0081ce-d775-11ed-96f4-0c7a158e4469', 'releans', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, '2023-04-10 02:14:44', NULL),
('d4f3f5f1-d6a0-11ed-962c-0c7a158e4469', 'flutterwave', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":1,\"secret_key\":\"FLWSECK_TEST-ec27426eb062491500a9eb95723b5436-X\",\"public_key\":\"FLWPUBK_TEST-3f6a0b6c3d621c4ecbb9beeff516c92b-X\",\"hash\":\"FLWSECK_TEST951e36220f66\"}', '{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":1,\"secret_key\":\"FLWSECK_TEST-ec27426eb062491500a9eb95723b5436-X\",\"public_key\":\"FLWPUBK_TEST-3f6a0b6c3d621c4ecbb9beeff516c92b-X\",\"hash\":\"FLWSECK_TEST951e36220f66\"}', 'payment_config', 'live', 0, NULL, NULL, '{\"gateway_title\":\"Flutterwave\",\"gateway_image\":null}'),
('d822f1a5-c864-11ed-ac7a-0c7a158e4469', 'paystack', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', '{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}', 'payment_config', 'live', 0, NULL, NULL, '{\"gateway_title\":\"Paystack\",\"gateway_image\":null}'),
('daec8d59-c893-11ed-ac7a-0c7a158e4469', 'xendit', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"\"}', '{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('dc0f5fc9-d6a5-11ed-962c-0c7a158e4469', 'worldpay', '{\"gateway\":\"worldpay\",\"mode\":\"live\",\"status\":\"0\",\"OrgUnitId\":\"\",\"jwt_issuer\":\"\",\"mac\":\"\",\"merchantCode\":\"\",\"xml_password\":\"\"}', '{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"\",\"jwt_issuer\":\"\",\"mac\":\"\",\"merchantCode\":\"\",\"xml_password\":\"\"}', 'payment_config', 'test', 0, NULL, NULL, NULL),
('e0450278-d8eb-11ed-8249-0c7a158e4469', 'signal_wire', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('e0450b40-d8eb-11ed-8249-0c7a158e4469', 'paradox', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\"}', '{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('ea346efe-cdda-11ed-affe-0c7a158e4469', 'ssl_commerz', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":null,\"store_password\":null}', '{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":\"0\",\"store_id\":null,\"store_password\":null}', 'payment_config', 'live', 0, NULL, '2023-07-31 13:14:48', '{\"gateway_title\":\"Ssl commerz\",\"gateway_image\":null}'),
('eed88336-d8ec-11ed-8249-0c7a158e4469', 'hubtel', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149c546-d8ea-11ed-8249-0c7a158e4469', 'viatech', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL),
('f149cd9c-d8ea-11ed-8249-0c7a158e4469', '019_sms', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', '{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}', 'sms_config', 'live', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `add_ons`
--

CREATE TABLE `add_ons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `price` decimal(24,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_logged_in` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `zone_id`, `is_logged_in`) VALUES
(1, 'redzo', 'app', '9876543210', 'admin@redzo.in', NULL, '$2y$10$EG3Q3I/HXDXPvtBJuh93X.2aqarGQmp5BaQjTPCkK6SIVl9/5loVy', NULL, '2024-09-19 02:16:11', '2024-09-23 17:44:47', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_features`
--

CREATE TABLE `admin_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `sub_title` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_features`
--

INSERT INTO `admin_features` (`id`, `title`, `sub_title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trusted', 'Trusted by customers and store owners', '2024-04-20-6623933f81d5b.png', 1, '2023-08-15 23:51:18', '2024-04-20 05:04:47'),
(2, 'Delivery', 'Flexible delivery system', '2024-04-20-6623936914978.png', 1, '2024-04-20 05:05:29', '2024-04-20 05:05:29'),
(3, 'Shopping', 'Best shopping experience', '2024-04-20-662393a8a1d27.png', 1, '2024-04-20 05:06:32', '2024-04-20 05:06:32'),
(4, 'Location', 'Location tracking system', '2024-04-20-662393d85bae9.png', 1, '2024-04-20 05:07:20', '2024-04-20 05:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `admin_promotional_banners`
--

CREATE TABLE `admin_promotional_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `sub_title` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_promotional_banners`
--

INSERT INTO `admin_promotional_banners` (`id`, `title`, `sub_title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Find', 'Your daily grocery item', '2024-04-20-66239166962bd.png', 1, '2023-08-15 23:49:59', '2024-04-20 04:56:54');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `modules` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `modules`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Master admin', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_special_criterias`
--

CREATE TABLE `admin_special_criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_special_criterias`
--

INSERT INTO `admin_special_criterias` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Easy to Manage Multiple Store', '2024-04-20-6623950467b0a.png', 1, '2024-04-20 05:12:20', '2024-04-20 05:12:20'),
(3, 'Easy to Manage E-Commerce', '2024-04-20-662395134788d.png', 1, '2024-04-20 05:12:35', '2024-04-20 05:12:35'),
(4, 'Easy to Manage Parcel Delivery', '2024-04-20-66239522279f6.png', 1, '2024-04-20 05:12:50', '2024-04-20 05:12:50'),
(5, 'Easy to Manage Location Tracking', '2024-04-20-6623953ab1ccb.png', 1, '2024-04-20 05:13:14', '2024-04-20 05:13:14'),
(6, 'Easy to Manage Grocery Business', '2024-04-20-6623954d187f8.png', 1, '2024-04-20 05:13:33', '2024-04-20 05:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_testimonials`
--

CREATE TABLE `admin_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `reviewer_image` varchar(255) DEFAULT NULL,
  `company_image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_testimonials`
--

INSERT INTO `admin_testimonials` (`id`, `name`, `designation`, `review`, `reviewer_image`, `company_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'CTO', 'Very good service.', '2024-04-20-662399c21315a.png', '2024-04-20-662399c213676.png', 1, '2023-08-15 23:54:26', '2024-04-20 05:32:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallets`
--

CREATE TABLE `admin_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `total_commission_earning` decimal(24,2) NOT NULL DEFAULT 0.00,
  `digital_received` decimal(24,2) NOT NULL DEFAULT 0.00,
  `manual_received` decimal(24,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(24,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_wallets`
--

INSERT INTO `admin_wallets` (`id`, `admin_id`, `total_commission_earning`, `digital_received`, `manual_received`, `created_at`, `updated_at`, `delivery_charge`) VALUES
(1, 1, 172.25, 0.00, 0.00, '2024-10-07 13:33:52', '2024-10-07 14:56:44', 40.000);

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED DEFAULT NULL,
  `module_type` varchar(255) DEFAULT NULL,
  `add_type` enum('video_promotion','store_promotion') NOT NULL DEFAULT 'store_promotion',
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `pause_note` text DEFAULT NULL,
  `cancellation_note` text DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `video_attachment` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `is_rating_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_review_active` tinyint(1) NOT NULL DEFAULT 0,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_updated` tinyint(1) NOT NULL DEFAULT 0,
  `created_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_by_type` varchar(255) NOT NULL,
  `status` enum('pending','running','approved','expired','denied','paused') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allergies`
--

CREATE TABLE `allergies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `allergy` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allergy_item`
--

CREATE TABLE `allergy_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `allergy_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Category', '2024-09-20 07:03:04', '2024-09-20 07:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `automated_messages`
--

CREATE TABLE `automated_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `automated_messages`
--

INSERT INTO `automated_messages` (`id`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'How can I help you ?', 1, '2024-10-02 23:45:58', '2024-10-02 23:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `data` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `default_link` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) NOT NULL DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'cash_on_delivery', '{\"status\":\"1\"}', '2021-07-01 15:51:17', '2021-07-01 15:51:17'),
(2, 'stripe', '{\"status\":\"0\",\"api_key\":null,\"published_key\":null}', '2021-05-11 03:57:02', '2022-03-23 04:22:00'),
(4, 'mail_config', '{\"name\":\"6am Mart\",\"host\":\"mail.6amtech.com\",\"driver\":\"smtp\",\"port\":\"587\",\"username\":\"info@6amtech.com\",\"email_id\":\"info@6amtech.com\",\"encryption\":\"tls\",\"password\":\"password\"}', NULL, '2022-03-23 04:24:52'),
(5, 'fcm_project_id', 'redzouser', NULL, NULL),
(6, 'push_notification_key', NULL, NULL, NULL),
(7, 'order_pending_message', '{\"status\":1,\"message\":\"Your order is successfully placed\"}', NULL, NULL),
(8, 'order_confirmation_msg', '{\"status\":1,\"message\":\"Your order is confirmed\"}', NULL, NULL),
(9, 'order_processing_message', '{\"status\":1,\"message\":\"Your order is started for cooking\"}', NULL, NULL),
(10, 'out_for_delivery_message', '{\"status\":1,\"message\":\"Your food is ready for delivery\"}', NULL, NULL),
(11, 'order_delivered_message', '{\"status\":1,\"message\":\"Your order is delivered\"}', NULL, NULL),
(12, 'delivery_boy_assign_message', '{\"status\":1,\"message\":\"Your order has been assigned to a delivery man\"}', NULL, NULL),
(13, 'delivery_boy_start_message', '{\"status\":1,\"message\":\"Your order is picked up by delivery man\"}', NULL, NULL),
(14, 'delivery_boy_delivered_message', '{\"status\":1,\"message\":\"Order delivered successfully\"}', NULL, NULL),
(15, 'terms_and_conditions', '<p>This is a test Teams &amp; Conditions<br />\r\n<br />\r\nThese terms of use (the &quot;Terms of Use&quot;) govern your use of our website www.evaly.com.bd (the &quot;Website&quot;) and our &quot;StackFood&quot; application for mobile and handheld devices (the &quot;App&quot;). The Website and the App are jointly referred to as the &quot;Platform&quot;. Please read these Terms of Use carefully before you use the services. If you do not agree to these Terms of Use, you may not use the services on the Platform, and we request you to uninstall the App. By installing, downloading and/or even merely using the Platform, you shall be contracting with StackFood and you provide your acceptance to the Terms of Use and other StackFood policies (including but not limited to the Cancellation &amp; Refund Policy, Privacy Policy etc.) as posted on the Platform from time to time, which takes effect on the date on which you download, install or use the Services, and create a legally binding arrangement to abide by the same. The Platforms will be used by (i) natural persons who have reached 18 years of age and (ii) corporate legal entities, e.g companies. Where applicable, these Terms shall be subject to country-specific provisions as set out herein.</p>\r\n\r\n<h3>USE OF PLATFORM AND SERVICES</h3>\r\n\r\n<p>All commercial/contractual terms are offered by and agreed to between Buyers and Merchants alone. The commercial/contractual terms include without limitation to price, taxes, shipping costs, payment methods, payment terms, date, period and mode of delivery, warranties related to products and services and after sales services related to products and services. StackFood does not have any kind of control or does not determine or advise or in any way involve itself in the offering or acceptance of such commercial/contractual terms between the Buyers and Merchants. StackFood may, however, offer support services to Merchants in respect to order fulfilment, payment collection, call centre, and other services, pursuant to independent contracts executed by it with the Merchants. eFood is not responsible for any non-performance or breach of any contract entered into between Buyers and Merchants on the Platform. eFood cannot and does not guarantee that the concerned Buyers and/or Merchants shall perform any transaction concluded on the Platform. eFood is not responsible for unsatisfactory services or non-performance of services or damages or delays as a result of products which are out of stock, unavailable or back ordered.</p>\r\n\r\n<p>StackFood&nbsp;is operating an e-commerce platform and assumes and operates the role of facilitator, and does not at any point of time during any transaction between Buyer and Merchant on the Platform come into or take possession of any of the products or services offered by Merchant. At no time shall StackFood hold any right, title or interest over the products nor shall StackFood have any obligations or liabilities in respect of such contract entered into between Buyer and Merchant. You agree and acknowledge that we shall not be responsible for:</p>\r\n\r\n<ul>\r\n	<li>The goods provided by the shops or restaurants including, but not limited, serving of food orders suiting your requirements and needs;</li>\r\n	<li>The Merchant&quot;s goods not being up to your expectations or leading to any loss, harm or damage to you;</li>\r\n	<li>The availability or unavailability of certain items on the menu;</li>\r\n	<li>The Merchant serving the incorrect orders.</li>\r\n</ul>\r\n\r\n<p>The details of the menu and price list available on the Platform are based on the information provided by the Merchants and we shall not be responsible for any change or cancellation or unavailability. All Menu &amp; Food Images used on our platforms are only representative and shall/might not match with the actual Menu/Food Ordered, StackFood shall not be responsible or Liable for any discrepancies or variations on this aspect.</p>\r\n\r\n<h3>Personal Information that you provide</h3>\r\n\r\n<p>If you want to use our service, you must create an account on our Site. To establish your account, we will ask for personally identifiable information that can be used to contact or identify you, which may include your name, phone number, and e-mail address. We may also collect demographic information about you, such as your zip code, and allow you to submit additional information that will be part of your profile. Other than basic information that we need to establish your account, it will be up to you to decide how much information to share as part of your profile. We encourage you to think carefully about the information that you share and we recommend that you guard your identity and your sensitive information. Of course, you can review and revise your profile at any time.</p>\r\n\r\n<p>You understand that delivery periods quoted to you at the time of confirming the order is an approximate estimate and may vary. We shall not be responsible for any delay in the delivery of your order due to the delay at seller/merchant end for order processing or any other unavoidable circumstances.</p>\r\n\r\n<p>Your order shall be only delivered to the address designated by you at the time of placing the order on the Platform. We reserve the right to cancel the order, in our sole discretion, in the event of any change to the place of delivery and you shall not be entitled to any refund for the same. Delivery in the event of change of the delivery location shall be at our sole discretion and reserve the right to charge with additional delivery fee if required.</p>\r\n\r\n<p>You shall undertake to provide adequate directions, information and authorizations to accept delivery. In the event of any failure to accept delivery, failure to deliver within the estimated time due to your failure to provide appropriate instructions, or authorizations, then such goods shall be deemed to have been delivered to you and all risk and responsibility in relation to such goods shall pass to you and you shall not be entitled to any refund for the same. Our decision in relation to this shall be final and binding. You understand that our liability ends once your order has been delivered to you.</p>\r\n\r\n<p>You might be required to provide your credit or debit card details to the approved payment gateways while making the payment. In this regard, you agree to provide correct and accurate credit/ debit card details to the approved payment gateways for availing the Services. You shall not use the credit/ debit card which is not lawfully owned by you, i.e. in any transaction, you must use your own credit/ debit card. The information provided by you shall not be utilized or shared with any third party unless required in relation to fraud verifications or by law, regulation or court order. You shall be solely responsible for the security and confidentiality of your credit/ debit card details. We expressly disclaim all liabilities that may arise as a consequence of any unauthorized use of your credit/ debit card. You agree that the Services shall be provided by us only during the working hours of the relevant Merchants.</p>\r\n\r\n<h3>ACTIVITIES PROHIBITED ON THE PLATFORM</h3>\r\n\r\n<p>The following is a partial list of the kinds of conduct that are illegal or prohibited on the Websites. StackFood reserves the right to investigate and take appropriate legal action/s against anyone who, in StackFood sole discretion, engages in any of the prohibited activities. Prohibited activities include &mdash; but are not limited to &mdash; the following:</p>\r\n\r\n<ul>\r\n	<li>Using the Websites for any purpose in violation of laws or regulations;</li>\r\n	<li>Posting Content that infringes the intellectual property rights, privacy rights, publicity rights, trade secret rights, or any other rights of any party;</li>\r\n	<li>Posting Content that is unlawful, obscene, defamatory, threatening, harassing, abusive, slanderous, hateful, or embarrassing to any other person or entity as determined by StackFood in its sole discretion or pursuant to local community standards;</li>\r\n	<li>Posting Content that constitutes cyber-bullying, as determined by StackFood in its sole discretion;</li>\r\n	<li>Posting Content that depicts any dangerous, life-threatening, or otherwise risky behavior;</li>\r\n	<li>Posting telephone numbers, street addresses, or last names of any person;</li>\r\n	<li>Posting URLs to external websites or any form of HTML or programming code;</li>\r\n	<li>Posting anything that may be &quot;spam,&quot; as determined by StackFood in its sole discretion;</li>\r\n	<li>Impersonating another person when posting Content;</li>\r\n	<li>Harvesting or otherwise collecting information about others, including email addresses, without their consent;</li>\r\n	<li>Allowing any other person or entity to use your identification for posting or viewing comments;</li>\r\n	<li>Harassing, threatening, stalking, or abusing any person;</li>\r\n	<li>Engaging in any other conduct that restricts or inhibits any other person from using or enjoying the Websites, or which, in the sole discretion of StackFood , exposes eFood or any of its customers, suppliers, or any other parties to any liability or detriment of any type; or</li>\r\n	<li>Encouraging other people to engage in any prohibited activities as described herein.</li>\r\n</ul>\r\n\r\n<p>StackFood&nbsp;reserves the right but is not obligated to do any or all of the following:</p>\r\n\r\n<ul>\r\n	<li>Investigate an allegation that any Content posted on the Websites does not conform to these Terms of Use and determine in its sole discretion to remove or request the removal of the Content;</li>\r\n	<li>Remove Content which is abusive, illegal, or disruptive, or that otherwise fails to conform with these Terms of Use;</li>\r\n	<li>Terminate a user&#39;s access to the Websites upon any breach of these Terms of Use;</li>\r\n	<li>Monitor, edit, or disclose any Content on the Websites; and</li>\r\n	<li>Edit or delete any Content posted on the Websites, regardless of whether such Content violates these standards.</li>\r\n</ul>\r\n\r\n<h3>AMENDMENTS</h3>\r\n\r\n<p>StackFood&nbsp;reserves the right to change or modify these Terms (including our policies which are incorporated into these Terms) at any time by posting changes on the Platform. You are strongly recommended to read these Terms regularly. You will be deemed to have agreed to the amended Terms by your continued use of the Platforms following the date on which the amended Terms are posted.</p>\r\n\r\n<h3>PAYMENT</h3>\r\n\r\n<p>StackFood&nbsp;reserves the right to offer additional payment methods and/or remove existing payment methods at any time in its sole discretion. If you choose to pay using an online payment method, the payment shall be processed by our third party payment service provider(s). With your consent, your credit card / payment information will be stored with our third party payment service provider(s) for future orders. StackFood does not store your credit card or payment information. You must ensure that you have sufficient funds on your credit and debit card to fulfil payment of an Order. Insofar as required, StackFood takes responsibility for payments made on our Platforms including refunds, chargebacks, cancellations and dispute resolution, provided if reasonable and justifiable and in accordance with these Terms.</p>\r\n\r\n<h3>CANCELLATION</h3>\r\n\r\n<p>StackFood&nbsp;can cancel any order anytime due to the foods/products unavailability, out of coverage area and any other unavoidable circumstances.</p>', NULL, '2021-08-22 01:48:01'),
(16, 'business_name', 'Redzo', NULL, NULL),
(17, 'currency', 'INR', NULL, NULL),
(18, 'logo', '2024-10-18-6712a7e966b57.png', NULL, '2024-10-18 23:54:41'),
(19, 'phone', '+911500000000', NULL, NULL),
(20, 'email_address', 'admin@redzo.in', NULL, NULL),
(21, 'address', '10, Post Office St, Ranipet, Sholinghur, Tamil Nadu 631102, இந்தியா', NULL, NULL),
(22, 'footer_text', 'Dreamzcoder @ 2024', NULL, NULL),
(23, 'customer_verification', '0', NULL, NULL),
(24, 'map_api_key', 'AIzaSyDNZMjI6BykptQrTCZJiPX2iEwBmd9UZUU', NULL, NULL),
(25, 'about_us', '<p>Lorem <strong>ipsum </strong>dolor sit amet, <em><strong>consectetur </strong></em>adipiscing elit. <em>Cras </em>dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, <a href=\"http://google.com\">suscipit </a>metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.</p>\r\n\r\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.</p>\r\n\r\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.</p>\r\n\r\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.</p>\r\n\r\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.</p>\r\n\r\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.</p>\r\n\r\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.</p>\r\n\r\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.</p>\r\n\r\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.</p>\r\n\r\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.</p>\r\n\r\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.</p>\r\n\r\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.</p>\r\n\r\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras dictum massa et dolor porta, rhoncus faucibus magna elementum. Sed porta mattis mollis. Donec ut est pretium, pretium nibh porttitor, suscipit metus. Sed viverra felis sed elit vehicula sodales. Nullam ante ante, tristique vel tincidunt ac, egestas eget sem. Sed lorem nunc, pellentesque vel ipsum venenatis, pellentesque interdum orci. Suspendisse mauris dui, accumsan at dapibus sed, volutpat quis erat. Nam fringilla nisl eu nunc lobortis, feugiat posuere libero venenatis. Nunc risus lorem, ornare eget congue in, pretium quis enim. Pellentesque elit elit, pharetra eget nunc at, maximus pellentesque diam.</p>\r\n\r\n<p>Praesent fermentum finibus lacus. Nulla tincidunt lectus sed purus facilisis hendrerit. Maecenas volutpat elementum orci, tincidunt euismod ante facilisis ac. Integer dignissim iaculis varius. Mauris iaculis elit vel posuere pellentesque. Praesent a mi sed neque ullamcorper dignissim sed ut nibh. Sed purus dui, sodales in varius in, accumsan at libero. Vestibulum posuere dui et orci tincidunt, ac consequat felis venenatis.</p>\r\n\r\n<p>Morbi sodales, nisl iaculis fringilla imperdiet, metus tortor semper quam, a fringilla nulla dui nec dolor. Phasellus lacinia aliquam ligula sed porttitor. Cras feugiat eros ut arcu commodo dictum. Integer tincidunt nisl id nisl consequat molestie. Integer elit tortor, ultrices sit amet nunc vitae, feugiat tempus mauris. Morbi volutpat consectetur felis sed porttitor. Praesent in urna erat.</p>\r\n\r\n<p>Aenean mollis luctus dolor, eu interdum velit faucibus eu. Suspendisse vitae efficitur erat. In facilisis nisi id arcu scelerisque bibendum. Nunc a placerat enim. Donec pharetra, velit quis facilisis tempus, lectus est imperdiet nisl, in tempus tortor dolor iaculis dolor. Nunc vitae molestie turpis. Nam vitae lobortis massa. Nam pharetra non felis in porta.</p>\r\n\r\n<p>Vivamus pulvinar diam vel felis dignissim tincidunt. Donec hendrerit non est sed volutpat. In egestas ex tortor, at convallis nunc porttitor at. Fusce sed cursus risus. Nam metus sapien, viverra eget felis id, maximus convallis lacus. Donec nec lacus vitae ex hendrerit ultricies non vel risus. Morbi malesuada ipsum iaculis augue convallis vehicula. Proin eget dolor dignissim, volutpat purus ac, ultricies risus. Pellentesque semper, mauris et pharetra accumsan, ante velit faucibus ex, a mattis metus odio vel ligula. Pellentesque elementum suscipit laoreet. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer a turpis sed massa blandit iaculis. Sed aliquet, justo vestibulum euismod rhoncus, nisi dui fringilla sapien, non tempor nunc lectus vitae dolor. Suspendisse potenti.</p>', NULL, '2021-07-28 07:09:19'),
(26, 'privacy_policy', '<h2>This is a Demo Privacy Policy</h2>\r\n\r\n<p>This policy explains how StackFood&nbsp;website and related applications (the &ldquo;Site&rdquo;, &ldquo;we&rdquo; or &ldquo;us&rdquo;) collects, uses, shares and protects the personal information that we collect through this site or different channels. StackFood has established the site to link up the users who need foods or grocery items to be shipped or delivered by the riders from the affiliated restaurants or shops to the desired location. This policy also applies to any mobile applications that we develop for use with our services on the Site, and references to this &ldquo;Site&rdquo;, &ldquo;we&rdquo; or &ldquo;us&rdquo; is intended to also include these mobile applications. Please read below to learn more about our information policies. By using this Site, you agree to these policies.</p>\r\n\r\n<h2>How the Information is collected</h2>\r\n\r\n<h3>Information provided by web browser</h3>\r\n\r\n<p>You have to provide us with personal information like your name, contact no, mailing address and email id, our app will also fetch your location information in order to give you the best service. Like many other websites, we may record information that your web browser routinely shares, such as your browser type, browser language, software and hardware attributes, the date and time of your visit, the web page from which you came, your Internet Protocol address and the geographic location associated with that address, the pages on this Site that you visit and the time you spent on those pages. This will generally be anonymous data that we collect on an aggregate basis.</p>\r\n\r\n<h3>Personal Information that you provide</h3>\r\n\r\n<p>If you want to use our service, you must create an account on our Site. To establish your account, we will ask for personally identifiable information that can be used to contact or identify you, which may include your name, phone number, and e-mail address. We may also collect demographic information about you, such as your zip code, and allow you to submit additional information that will be part of your profile. Other than basic information that we need to establish your account, it will be up to you to decide how much information to share as part of your profile. We encourage you to think carefully about the information that you share and we recommend that you guard your identity and your sensitive information. Of course, you can review and revise your profile at any time.</p>\r\n\r\n<h3>Payment Information</h3>\r\n\r\n<p>To make the payment online for availing our services, you have to provide the bank account, mobile financial service (MFS), debit card, credit card information to the StackFood platform.</p>\r\n\r\n<h2>How the Information is collected</h2>\r\n\r\n<h3>Session and Persistent Cookies</h3>\r\n\r\n<p>Cookies are small text files that are placed on your computer by websites that you visit. They are widely used in order to make websites work, or work more efficiently, as well as to provide information to the owners of the site. As is commonly done on websites, we may use cookies and similar technology to keep track of our users and the services they have elected. We use both &ldquo;session&rdquo; and &ldquo;persistent&rdquo; cookies. Session cookies are deleted after you leave our website and when you close your browser. We use data collected with session cookies to enable certain features on our Site, to help us understand how users interact with our Site, and to monitor at an aggregate level Site usage and web traffic routing. We may allow business partners who provide services to our Site to place cookies on your computer that assist us in analyzing usage data. We do not allow these business partners to collect your personal information from our website except as may be necessary for the services that they provide.</p>\r\n\r\n<h3>Web Beacons</h3>\r\n\r\n<p>We may also use web beacons or similar technology to help us track the effectiveness of our communications.</p>\r\n\r\n<h3>Advertising Cookies</h3>\r\n\r\n<p>We may use third parties, such as Google, to serve ads about our website over the internet. These third parties may use cookies to identify ads that may be relevant to your interest (for example, based on your recent visit to our website), to limit the number of times that you see an ad, and to measure the effectiveness of the ads.</p>\r\n\r\n<h3>Google Analytics</h3>\r\n\r\n<p>We may also use Google Analytics or a similar service to gather statistical information about the visitors to this Site and how they use the Site. This, also, is done on an anonymous basis. We will not try to associate anonymous data with your personally identifiable data. If you would like to learn more about Google Analytics, please click here.</p>', NULL, '2021-08-22 01:49:58'),
(27, 'minimum_shipping_charge', '10', NULL, NULL),
(28, 'per_km_shipping_charge', '2', NULL, NULL),
(29, 'digital_payment', '{\"status\":\"1\"}', '2021-07-01 14:27:38', '2024-09-21 08:58:56'),
(30, 'ssl_commerz_payment', '{\"status\":\"0\",\"store_id\":null,\"store_password\":null}', '2021-07-04 15:41:24', '2022-03-23 04:21:28'),
(31, 'razor_pay', '{\"status\":\"0\",\"razor_key\":null,\"razor_secret\":null}', '2021-07-04 15:41:28', '2022-03-23 04:21:38'),
(32, 'paypal', '{\"status\":\"0\",\"paypal_client_id\":null,\"paypal_secret\":null}', '2021-07-04 15:41:34', '2022-03-23 04:21:49'),
(33, 'paystack', '{\"status\":\"0\",\"publicKey\":null,\"secretKey\":null,\"paymentUrl\":null,\"merchantEmail\":null}', '2021-07-04 15:41:42', '2022-03-23 04:22:15'),
(34, 'senang_pay', '{\"status\":\"1\",\"secret_key\":null,\"published_key\":null,\"merchant_id\":null}', '2021-07-04 15:41:48', '2022-03-23 04:22:25'),
(35, 'order_handover_message', '{\"status\":1,\"message\":\"Delivery man is on the way\"}', NULL, NULL),
(36, 'order_cancled_message', '{\"status\":1,\"message\":\"Order is canceled by your request\"}', NULL, NULL),
(37, 'timezone', 'Asia/Calcutta', NULL, NULL),
(38, 'order_delivery_verification', NULL, NULL, NULL),
(39, 'currency_symbol_position', 'left', NULL, NULL),
(40, 'schedule_order', '1', NULL, NULL),
(41, 'app_minimum_version', '0', NULL, NULL),
(42, 'tax', NULL, NULL, NULL),
(43, 'admin_commission', '5', NULL, NULL),
(44, 'country', 'IN', NULL, NULL),
(45, 'app_url', 'https://www.google.com', NULL, NULL),
(46, 'default_location', '{\"lat\":\"13.11450585915255\",\"lng\":\"79.41930770874023\"}', NULL, NULL),
(47, 'twilio_sms', '{\"status\":\"0\",\"sid\":null,\"messaging_service_id\":null,\"token\":null,\"from\":null,\"otp_template\":\"Your otp is #OTP#.\"}', '2022-03-23 15:16:08', '2022-03-23 15:16:08'),
(48, 'nexmo_sms', '{\"status\":\"0\",\"api_key\":null,\"api_secret\":null,\"signature_secret\":\"\",\"private_key\":\"\",\"application_id\":\"\",\"from\":null,\"otp_template\":\"Your otp is #OTP#.\"}', '2022-03-23 15:16:18', '2022-03-23 15:16:18'),
(49, '2factor_sms', '{\"status\":\"0\",\"api_key\":null}', '2022-03-23 15:16:26', '2022-03-23 15:16:26'),
(50, 'msg91_sms', '{\"status\":\"0\",\"template_id\":null,\"authkey\":null}', '2022-03-23 15:16:33', '2022-03-23 15:16:33'),
(51, 'free_delivery_over', NULL, NULL, NULL),
(52, 'maintenance_mode', '0', '2021-09-08 15:44:28', '2021-09-08 15:44:28'),
(53, 'app_minimum_version_ios', NULL, '2021-09-21 22:54:10', '2021-09-21 22:54:10'),
(54, 'app_minimum_version_android', NULL, '2021-09-21 22:54:10', '2021-09-21 22:54:10'),
(55, 'app_url_ios', NULL, '2021-09-21 22:54:10', '2021-09-21 22:54:10'),
(56, 'app_url_android', NULL, '2021-09-21 22:54:10', '2021-09-21 22:54:10'),
(57, 'flutterwave', '{\"status\":1,\"public_key\":\"FLWPUBK_TEST-3f6a0b6c3d621c4ecbb9beeff516c92b-X\",\"secret_key\":\"FLWSECK_TEST-ec27426eb062491500a9eb95723b5436-X\",\"hash\":\"FLWSECK_TEST951e36220f66\"}', '2021-09-21 22:54:10', '2021-09-21 22:54:10'),
(58, 'dm_maximum_orders', '50', '2021-09-24 17:46:13', '2021-09-24 17:46:13'),
(59, 'order_confirmation_model', 'store', '2021-10-17 00:05:08', '2021-10-17 00:05:08'),
(60, 'popular_food', '1', '2021-10-17 00:05:08', '2021-10-17 00:05:08'),
(61, 'popular_restaurant', '1', '2021-10-17 00:05:08', '2021-10-17 00:05:08'),
(62, 'new_restaurant', '1', '2021-10-17 00:05:08', '2021-10-17 00:05:08'),
(63, 'mercadopago', '{\"status\":1,\"public_key\":\"\",\"access_token\":\"\"}', '2021-10-17 00:05:08', '2021-10-17 00:05:08'),
(64, 'map_api_key_server', 'AIzaSyDNZMjI6BykptQrTCZJiPX2iEwBmd9UZUU', NULL, NULL),
(66, 'most_reviewed_foods', '1', '2021-11-15 15:55:37', '2021-11-15 15:55:37'),
(67, 'landing_page_text', '{\"header_title_1\":\"Food App\",\"header_title_2\":\"Why stay hungry when you can order from StackFood\",\"header_title_3\":\"Get 10% OFF on your first order\",\"about_title\":\"StackFood is Best Delivery Service Near You\",\"why_choose_us\":\"Why Choose Us?\",\"why_choose_us_title\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\",\"testimonial_title\":\"Trusted by Customer & Restaurant Owner\",\"footer_article\":\"Suspendisse ultrices at diam lectus nullam. Nisl, sagittis viverra enim erat tortor ultricies massa turpis. Arcu pulvinar.\"}', '2021-11-15 15:55:37', '2021-11-15 15:55:37'),
(68, 'landing_page_links', '{\"app_url_android_status\":\"1\",\"app_url_android\":\"https:\\/\\/play.google.com\",\"app_url_ios_status\":\"1\",\"app_url_ios\":\"https:\\/\\/www.apple.com\\/app-store\",\"web_app_url_status\":\"1\",\"web_app_url\":\"https:\\/\\/stackfood.6amtech.com\\/\"}', '2021-11-15 15:55:37', '2021-11-15 15:55:37'),
(69, 'speciality', '[{\"img\":\"clean_&_cheap_icon.png\",\"title\":\"Clean & Cheap Price\"},{\"img\":\"best_dishes_icon.png\",\"title\":\"Best Dishes Near You\"},{\"img\":\"virtual_restaurant_icon.png\",\"title\":\"Your Own Virtual Restaurant\"}]', '2021-11-15 15:55:37', '2021-11-15 15:55:37'),
(70, 'testimonial', '[{\"img\":\"img-1.png\",\"name\":\"Barry Allen\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A\\r\\n                    aliquam amet animi blanditiis consequatur debitis dicta\\r\\n                    distinctio, enim error eum iste libero modi nam natus\\r\\n                    perferendis possimus quasi sint sit tempora voluptatem. Est,\\r\\n                    exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"img-2.png\",\"name\":\"Sophia Martino\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"img-3.png\",\"name\":\"Alan Turing\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"},{\"img\":\"img-4.png\",\"name\":\"Ann Marie\",\"position\":\"Web Designer\",\"detail\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. A aliquam amet animi blanditiis consequatur debitis dicta distinctio, enim error eum iste libero modi nam natus perferendis possimus quasi sint sit tempora voluptatem. Est, exercitationem id ipsa ipsum laboriosam perferendis temporibus!\"}]', '2021-11-15 15:55:37', '2021-11-15 15:55:37'),
(71, 'landing_page_images', '{\"top_content_image\":\"double_screen_image.png\",\"about_us_image\":\"about_us_image.png\"}', '2021-11-15 15:55:37', '2021-11-15 15:55:37'),
(72, 'paymob_accept', '{\"status\":\"0\",\"api_key\":null,\"iframe_id\":null,\"integration_id\":null,\"hmac\":null}', '2021-11-15 15:55:37', '2021-11-15 15:55:37'),
(73, 'admin_order_notification', '1', NULL, NULL),
(74, 'swish_payment', '{\"status\":\"1\"}', NULL, '2021-12-28 12:02:40'),
(76, 'service_charge', '12', NULL, NULL),
(77, 'social_login', '[{\"login_medium\":\"google\",\"client_id\":null,\"client_secret\":null,\"status\":\"0\"},{\"login_medium\":\"facebook\",\"client_id\":null,\"client_secret\":null,\"status\":\"0\"}]', NULL, '2022-01-04 13:09:23'),
(78, 'language', '[\"en\"]', NULL, NULL),
(79, 'timeformat', '12', NULL, NULL),
(80, 'canceled_by_restaurant', '0', NULL, NULL),
(81, 'canceled_by_deliveryman', '1', NULL, NULL),
(82, 'show_dm_earning', '1', NULL, NULL),
(83, 'recaptcha', '{\"status\":null,\"site_key\":null,\"secret_key\":null}', '2022-03-23 15:17:39', '2024-09-27 14:52:31'),
(84, 'toggle_veg_non_veg', '1', NULL, NULL),
(85, 'toggle_dm_registration', '1', NULL, NULL),
(86, 'toggle_restaurant_registration', '1', NULL, NULL),
(87, 'order_refunded_message', '{\"status\":1,\"message\":\"Order is refunded successfully\"}', NULL, NULL),
(88, 'liqpay', '{\"status\":\"1\",\"public_key\":null,\"private_key\":null}', NULL, '2022-02-27 05:15:40'),
(89, 'klarna', '{\"status\":\"1\",\"region\":\"america\",\"username\":\"PN06804_1a368db08f6d\",\"password\":\"6ljrP6BDJNKT6F2y\"}', NULL, '2022-01-26 08:30:51'),
(90, 'fatoorah', '{\"status\":\"1\",\"api_key\":\"rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL\"}', NULL, '2022-02-20 11:05:26'),
(91, 'bkash', '{\"status\":\"1\",\"api_key\":\"5tunt4masn6pv2hnvte1sb5n3j\",\"api_secret\":\"1vggbqd4hqk9g96o9rrrp2jftvek578v7d2bnerim12a87dbrrka\",\"username\":\"sandboxTestUser\",\"password\":\"hWD@8vtzw0\"}', NULL, '2022-02-27 04:37:26'),
(92, 'paytabs', '{\"status\":\"1\",\"profile_id\":null,\"server_key\":null,\"base_url\":null}', NULL, '2022-02-27 06:06:19'),
(93, 'paytm', '{\"status\":\"1\",\"paytm_merchant_key\":null,\"paytm_merchant_mid\":null,\"paytm_merchant_website\":null,\"paytm_refund_url\":null}', NULL, '2022-02-27 06:06:37'),
(94, 'schedule_order_slot_duration', '30', NULL, NULL),
(95, 'digit_after_decimal_point', '0', NULL, NULL),
(96, 'icon', '2024-10-18-6712a7e969316.png', NULL, '2024-10-18 23:54:41'),
(97, 'toggle_store_registration', '1', NULL, NULL),
(98, 'canceled_by_store', '1', NULL, NULL),
(99, 'parcel_per_km_shipping_charge', '0', NULL, NULL),
(100, 'parcel_minimum_shipping_charge', '0', NULL, NULL),
(101, 'parcel_commission_dm', '0', NULL, NULL),
(102, 'landing_page_links', '{\"app_url_android_status\":\"1\",\"app_url_android\":\"https:\\/\\/play.google.com\",\"app_url_ios_status\":\"1\",\"app_url_ios\":\"https:\\/\\/www.apple.com\\/app-store\",\"web_app_url_status\":\"1\",\"web_app_url\":\"https:\\/\\/stackfood.6amtech.com\\/\"}', NULL, NULL),
(103, 'wallet_status', '1', '2022-07-05 03:26:19', '2022-07-05 03:26:19'),
(104, 'loyalty_point_status', '1', '2022-07-05 03:26:19', '2022-07-05 03:26:19'),
(105, 'ref_earning_status', '0', '2022-07-05 03:26:19', '2022-07-05 03:26:19'),
(106, 'wallet_add_refund', '1', '2022-07-05 03:26:19', '2022-07-05 03:26:19'),
(107, 'loyalty_point_exchange_rate', '1', '2022-07-05 03:26:20', '2022-07-05 03:26:20'),
(108, 'ref_earning_exchange_rate', '0', '2022-07-05 03:26:20', '2022-07-05 03:26:20'),
(109, 'loyalty_point_item_purchase_point', '1', '2022-07-05 03:26:20', '2022-07-05 03:26:20'),
(110, 'loyalty_point_minimum_point', '1', '2022-07-05 03:26:20', '2022-07-05 03:26:20'),
(111, 'refund_active_status', '1', '2022-07-05 03:26:20', '2024-09-25 00:43:38'),
(112, 'dm_tips_status', '1', '2022-07-05 03:26:20', '2022-07-05 03:26:20'),
(113, 'system_language', '[{\"id\":1,\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true}]', '2023-08-15 23:29:41', '2023-08-15 23:29:41'),
(114, 'site_direction', NULL, NULL, NULL),
(115, 'cookies_text', 'cookies', NULL, NULL),
(116, 'tax_included', NULL, NULL, NULL),
(117, 'partial_payment_status', '1', NULL, NULL),
(118, 'partial_payment_method', 'both', NULL, NULL),
(119, 'order_notification_type', 'firebase', NULL, NULL),
(120, 'free_delivery_over_status', NULL, NULL, NULL),
(121, 'additional_charge_status', '1', NULL, NULL),
(122, 'additional_charge_name', 'Processing Fee', NULL, NULL),
(123, 'additional_charge', '2', NULL, NULL),
(124, 'prescription_order_status', NULL, NULL, NULL),
(125, 'delivery_charge_comission', '0', NULL, NULL),
(126, 'opening_time', NULL, NULL, NULL),
(127, 'closing_time', NULL, NULL, NULL),
(128, 'landing_page', '1', '2023-08-15 23:56:24', '2023-08-15 23:56:24'),
(129, 'landing_integration_type', 'file_upload', '2023-08-15 23:56:24', '2023-08-15 23:56:24'),
(130, 'mobile_app_section_heading', 'Download the App for Enjoy Best Restaurant Test', '2023-08-17 00:26:56', '2023-08-17 00:26:56'),
(131, 'mobile_app_section_text', 'Default Text Mobile App Section', '2023-08-17 00:26:56', '2023-08-17 00:26:56'),
(132, 'feature_section_description', 'Feature section description', '2023-08-17 00:26:56', '2023-08-17 00:26:56'),
(133, 'Feature section description', '{\"app_url_android_status\":\"0\",\"app_url_android\":\"https:\\/\\/play.google.com\",\"app_url_ios_status\":\"0\",\"app_url_ios\":\"https:\\/\\/www.apple.com\\/app-store\",\"web_app_url_status\":\"0\",\"web_app_url\":\"https:\\/\\/6ammart-web.6amtech.com\\/\"}', '2023-08-17 00:26:56', '2023-08-17 00:26:56'),
(134, 'home_delivery_status', '1', '2023-08-17 00:26:56', '2023-08-17 00:26:56'),
(135, 'takeaway_status', NULL, '2023-08-17 00:26:56', '2023-08-17 00:26:56'),
(136, 'dm_picture_upload_status', NULL, NULL, NULL),
(137, 'offline_payment_status', NULL, NULL, '2023-10-16 20:16:58'),
(138, 'guest_checkout_status', '0', NULL, NULL),
(139, 'check_daily_subscription_validity_check', '2024-11-05', '2024-06-05 20:15:07', '2024-11-05 07:09:23'),
(140, 'commission_business_model', '1', '2024-06-05 20:16:14', '2024-06-05 20:16:14'),
(141, 'subscription_business_model', '0', '2024-06-05 20:16:14', '2024-06-05 20:16:14'),
(142, 'subscription_free_trial_days', '7', '2024-06-05 23:23:50', '2024-06-05 23:23:50'),
(143, 'subscription_free_trial_type', 'day', '2024-06-05 23:23:50', '2024-06-05 23:23:50'),
(144, 'subscription_free_trial_status', '1', '2024-06-05 23:23:55', '2024-06-05 23:23:55'),
(145, 'subscription_deadline_warning_days', '7', '2024-06-05 23:24:02', '2024-06-05 23:24:02'),
(146, 'subscription_deadline_warning_message', 'Your subscription ending soon. Please renew to continue access.', '2024-06-05 23:24:02', '2024-06-05 23:27:22'),
(147, 'subscription_usage_max_time', '80', '2024-06-05 23:24:14', '2024-06-05 23:24:14'),
(148, 'apple_login', '[{\"login_medium\":\"apple\",\"client_id\":\"\",\"client_secret\":\"\",\"team_id\":\"\",\"key_id\":\"\",\"service_file\":\"\",\"redirect_url\":\"\",\"status\":\"\"}]', '2024-06-05 23:39:00', '2024-06-05 23:39:00'),
(149, 'country_picker_status', '0', NULL, NULL),
(150, 'push_notification_service_file_content', '{\r\n  \"type\": \"service_account\",\r\n  \"project_id\": \"redzouser\",\r\n  \"private_key_id\": \"92feb74440f74fbde6cb4df3d234e81b11b3d9f9\",\r\n  \"private_key\": \"-----BEGIN PRIVATE KEY-----\\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDHzlUm2Ct7OwNu\\nVfOixrSA+Y41VDgIMDxXIMjP17AlUey9rS2rKHvPJ+pJT5VJ0HdBTp+M9UG13/j4\\nyljV/DO8Yhojv/vClgrbWB2KMY+lpfA84VvOIk2kE8UeiaVYMF7DZ5TNHJefOSee\\nbWYKicj35ExZUgBURcVQwkw8wH9evuBcS7Q4wsN3u5Yts+k0kZjPhbk9zLNoWkL3\\no0WUUzJdQSObo1itKaQCRfIzo4bQRZ1md6qkrSZ7/JnhPKIJy4bf1F15s81MYN8D\\n1I+u1R78TRUGIoqXgo21aeCV/uZ8ZN8qalA3+cjNf8dwm0f9KjzV+sdpcY79LwDr\\nDAcl+IyfAgMBAAECggEAXlRyzhp7eLvVNFee5QfzuvpWoaXHqFIBgs7nD30QW6Yw\\nYyIp7+b2gMgi64aHgChLzQjN+bHmWnPJqsd5JllhoXwdRCiEtwq4SHLyy0X3v+g2\\nIb/xZEG8rwxoYTDx309CxfUWgrmPeav1oO2cIbiIKUReqUK2BhNEgwqgDISC/ZrB\\nIBsV77MA+AfUl9lE9L0RPTA944tfQng4yedFXQ2HR/TecMWcfp1STARYnDTFgBLg\\nfXvpPT+BAUR1igGO73fYmJcUb7BhIRFdjyectJgxKQSuP1KrrdQH7YitKYrdYHqE\\nMDfkYTCWgUOF8oS70xmvLLS9BlVzVaRD3TndMH3S9QKBgQDuX/D/wBxqYTO055Ls\\nnRVHRmY014B/vaTx6Unl3B9ugRVhacWD2jYFKgZ/ulnsyx5bqA691ntSaGHiEQuG\\n1PC5uuO+StmCCDhiZam5zBuoLZFIz2CEapCoEcoZUzi5k1oIuVXeeImoqygGha8v\\nZX5kxRUkQGcEtKw8V3jpqJZnVQKBgQDWlFhOH9Z3xpocT6psM/ujXfIYwvBZqX8M\\nwOvJlP07ngQMcrm+CSSzx3V1W1hXCAq+iFcnpf9wIRQrMZZ3ez4yGn8rVDpHBJwz\\ndI90wp5HJusp8fxNOEUsEyCJLwpg05Sie8kiUkaliUQr6n2R4r+8hu8QR9hj8Oa8\\n3o4vQ268IwKBgQCPG5hC4mHs17hEJjbFyLSKmtAnby1dA0ywUv8jeViBbguY9Pg4\\nZVvDE+zc59Ku3261Vhqri8Vzvujs4JDL/LEcv/+UMbmNYEQBhskzmz8LY3fyf1WR\\niayYyj1LoPPQLY+C50mPC0yRr1eTOtTmnocYFl3P6r4uTA2PGHClzqmlFQKBgQC4\\nub6HiwsT0+pqAv9A5UN1cXPwcyl81tjkPtT9lgCnKTJtEPrsKWzqRATPQhL74ZV2\\nT2NQY6xSeHenc6oINBXoBj2CLKF67/IUrfyt1LlzoYKDeqnsREvwVIsG7nMtxhfI\\nBW6y2EevTEtezyDIzX6oqzT1PBSCfSn2YFXhRFj5JwKBgBYWbieRVzkvI27TeF85\\n2oFHd+6Qad5zTD5eOJ9tfHGWWav3VkhPEnFrQUXZb6licaTnS6B52wwyW+SqKpa8\\nB0OiMS220mGCisSMdumDV7ouL7C5RVRNbQGguXKvhmV4sG1NlRq3QfOTXEk7rFUJ\\n1vl9uPvP33gYmyd2DT90dBpo\\n-----END PRIVATE KEY-----\\n\",\r\n  \"client_email\": \"firebase-adminsdk-zg87l@redzouser.iam.gserviceaccount.com\",\r\n  \"client_id\": \"109105410740283578431\",\r\n  \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",\r\n  \"token_uri\": \"https://oauth2.googleapis.com/token\",\r\n  \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",\r\n  \"client_x509_cert_url\": \"https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-zg87l%40redzouser.iam.gserviceaccount.com\",\r\n  \"universe_domain\": \"googleapis.com\"\r\n}', NULL, NULL),
(151, 'fcm_credentials', '{\"apiKey\":\"AIzaSyAY3NOwBYXdke2dTSM_LBOajeUSrxMIfy8\",\"authDomain\":null,\"projectId\":\"redzouser\",\"storageBucket\":null,\"messagingSenderId\":\"409907625620\",\"appId\":\"1:409907625620:android:531566cdaa7fb919a7be81\",\"measurementId\":null}', NULL, NULL),
(152, 'schedule_order_slot_duration_time_format', 'min', NULL, NULL),
(153, 'extra_packaging_data', '{\"grocery\":0,\"food\":0,\"pharmacy\":0,\"ecommerce\":0,\"parcel\":0}', NULL, NULL),
(154, 'cash_in_hand_overflow_store', '0', NULL, NULL),
(155, 'cash_in_hand_overflow_store_amount', NULL, NULL, NULL),
(156, 'min_amount_to_pay_store', NULL, NULL, NULL),
(157, 'store_review_reply', '1', NULL, NULL),
(158, 'product_approval', NULL, NULL, NULL),
(159, 'product_approval_datas', '{\"Update_product_price\":0,\"Add_new_product\":0,\"Update_product_variation\":0,\"Update_anything_in_product_details\":0}', NULL, NULL),
(160, 'access_all_products', NULL, NULL, NULL),
(161, 'product_gallery', NULL, NULL, NULL),
(162, 'min_amount_to_pay_dm', '1000', NULL, NULL),
(163, 'cash_in_hand_overflow_delivery_man', '1', NULL, NULL),
(164, 'dm_max_cash_in_hand', '50000', NULL, NULL),
(165, 'add_fund_status', '1', NULL, NULL),
(166, 'new_customer_discount_status', '0', NULL, NULL),
(167, 'new_customer_discount_amount', '0', NULL, NULL),
(168, 'new_customer_discount_amount_type', 'percentage', NULL, NULL),
(169, 'new_customer_discount_amount_validity', '0', NULL, NULL),
(170, 'new_customer_discount_validity_type', 'day', NULL, NULL),
(171, 'category_list_default_status', '1', NULL, NULL),
(172, 'popular_store_default_status', '0', NULL, NULL),
(173, 'recommended_store_default_status', '0', NULL, NULL),
(174, 'special_offer_default_status', '0', NULL, NULL),
(175, 'popular_item_default_status', '1', NULL, NULL),
(176, 'best_reviewed_item_default_status', '1', NULL, NULL),
(177, 'item_campaign_default_status', '1', NULL, NULL),
(178, 'latest_items_default_status', '0', NULL, NULL),
(179, 'all_stores_default_status', '0', NULL, NULL),
(180, 'category_sub_category_item_default_status', '1', NULL, NULL),
(181, 'product_search_default_status', '1', NULL, NULL),
(182, 'basic_medicine_default_status', '1', NULL, NULL),
(183, 'common_condition_default_status', '1', NULL, NULL),
(184, 'brand_default_status', '1', NULL, NULL),
(185, 'brand_item_default_status', '1', NULL, NULL),
(186, 'latest_stores_default_status', '0', NULL, NULL),
(187, '3rd_party_storage', '0', '2024-09-25 00:57:08', '2024-09-25 00:57:08'),
(188, 'local_storage', '1', '2024-09-25 00:57:08', '2024-09-25 00:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_store`
--

CREATE TABLE `campaign_store` (
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `campaign_status` varchar(10) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0,
  `add_on_ids` text DEFAULT NULL,
  `add_on_qtys` text DEFAULT NULL,
  `item_type` varchar(255) NOT NULL,
  `price` double(24,3) NOT NULL,
  `quantity` int(11) NOT NULL,
  `variation` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `module_id`, `item_id`, `is_guest`, `add_on_ids`, `add_on_qtys`, `item_type`, `price`, `quantity`, `variation`, `created_at`, `updated_at`) VALUES
(15, 12, 2, 331, 0, '\"[]\"', '\"[]\"', 'App\\Models\\Item', 235.000, 1, '\"[{\\\"name\\\":\\\"category\\\",\\\"values\\\":{\\\"label\\\":[\\\"Half\\\"]}}]\"', '2024-10-24 11:59:32', '2024-10-24 11:59:32'),
(16, 12, 2, 314, 0, '\"[]\"', '\"[]\"', 'App\\Models\\Item', 94.000, 2, '\"[]\"', '2024-10-24 11:59:55', '2024-10-24 11:59:55'),
(18, 13, 2, 36, 0, '\"[]\"', '\"[]\"', 'App\\Models\\Item', 47.000, 1, '\"[]\"', '2024-10-24 16:16:28', '2024-10-24 16:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `cash_backs`
--

CREATE TABLE `cash_backs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `customer_id` varchar(255) DEFAULT '["all"]',
  `cashback_type` varchar(255) NOT NULL,
  `same_user_limit` int(11) NOT NULL DEFAULT 1,
  `total_used` int(11) NOT NULL DEFAULT 0,
  `cashback_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `min_purchase` double(23,3) NOT NULL DEFAULT 0.000,
  `max_discount` double(23,3) NOT NULL DEFAULT 0.000,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_back_histories`
--

CREATE TABLE `cash_back_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cash_back_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cashback_type` varchar(255) NOT NULL,
  `calculated_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `cashback_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `min_purchase` double(23,3) NOT NULL DEFAULT 0.000,
  `max_discount` double(23,3) NOT NULL DEFAULT 0.000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'def.png',
  `parent_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `parent_id`, `position`, `status`, `created_at`, `updated_at`, `priority`, `module_id`, `slug`, `featured`) VALUES
(1, 'Demo category', '2023-08-16-64dca78f6ba7b.png', 0, 0, 1, '2023-08-15 23:40:15', '2023-08-15 23:40:30', 0, 1, 'demo-category', 1),
(2, 'Demo sub category', 'def.png', 1, 1, 1, '2023-08-15 23:40:51', '2023-08-15 23:40:51', 0, 1, 'demo-sub-category', 0),
(3, 'Starters', '2024-09-20-66ed74526a913.png', 0, 0, 1, '2024-09-20 18:40:42', '2024-09-20 18:40:46', 0, 2, 'starters', 1),
(4, 'Side Dishes', '2024-09-20-66ed74883029f.png', 0, 0, 1, '2024-09-20 18:41:36', '2024-09-20 18:43:10', 0, 2, 'side-dishes', 1),
(5, 'Fast Foods', '2024-09-20-66ed74e378578.png', 0, 0, 1, '2024-09-20 18:43:07', '2024-09-20 18:43:10', 0, 2, 'fast-foods', 1),
(6, 'Biryani', '2024-09-23-66f15d041ecf9.png', 0, 0, 1, '2024-09-23 17:50:20', '2024-09-23 18:08:45', 0, 2, 'biryani', 1),
(7, 'South Indian', '2024-09-23-66f1613da3f00.png', 0, 0, 1, '2024-09-23 18:08:21', '2024-09-23 18:08:48', 0, 2, 'south-indian', 1),
(8, 'Pizza', '2024-09-23-66f1637e60bf1.png', 0, 0, 1, '2024-09-23 18:17:58', '2024-09-23 18:18:02', 0, 2, 'pizza', 1),
(9, 'Burger', '2024-09-23-66f163d82cd82.png', 0, 0, 1, '2024-09-23 18:19:28', '2024-09-23 18:23:52', 0, 2, 'burger', 1),
(10, 'Sandwich', '2024-09-23-66f164bf1be24.png', 0, 0, 1, '2024-09-23 18:23:19', '2024-09-23 18:23:52', 0, 2, 'sandwich', 1),
(11, 'Roti Naan', '2024-09-23-66f16670f1690.png', 0, 0, 1, '2024-09-23 18:30:32', '2024-09-23 18:30:49', 0, 2, 'roti-naan', 1),
(12, 'Gravy', '2024-09-23-66f166ad3ab4d.png', 0, 0, 1, '2024-09-23 18:31:33', '2024-09-23 18:31:36', 0, 2, 'gravy', 1),
(13, 'Falooda', '2024-09-23-66f166e148fb2.png', 0, 0, 1, '2024-09-23 18:32:25', '2024-09-23 18:32:28', 0, 2, 'falooda', 1),
(14, 'Fresh Juice', '2024-09-23-66f1672882170.png', 0, 0, 1, '2024-09-23 18:33:36', '2024-09-23 18:34:04', 0, 2, 'fresh-juice', 1),
(15, 'Mojito', '2024-09-23-66f1673a12070.png', 0, 0, 1, '2024-09-23 18:33:54', '2024-09-23 18:34:04', 0, 2, 'mojito', 1),
(16, 'Milk shake', '2024-09-23-66f167bcf3ece.png', 0, 0, 1, '2024-09-23 18:36:05', '2024-09-23 18:36:09', 0, 2, 'milk-shake', 1),
(17, 'Chat Items', '2024-09-23-66f168048003d.png', 0, 0, 1, '2024-09-23 18:37:16', '2024-09-23 18:40:40', 0, 2, 'chat-items', 1),
(18, 'Soups', '2024-09-23-66f168ba1e1d9.png', 0, 0, 1, '2024-09-23 18:40:18', '2024-09-23 18:40:40', 0, 2, 'soups', 1),
(19, 'Pasta', '2024-09-23-66f168c680fc0.png', 0, 0, 1, '2024-09-23 18:40:30', '2024-09-23 18:40:40', 0, 2, 'pasta', 1),
(20, 'Momos', '2024-09-23-66f169beeb1cd.png', 0, 0, 1, '2024-09-23 18:44:38', '2024-09-23 18:44:47', 0, 2, 'momos', 1),
(21, 'Brownie', '2024-09-23-66f169d886f25.png', 0, 0, 1, '2024-09-23 18:45:04', '2024-09-23 18:47:41', 0, 2, 'brownie', 1),
(22, 'Tea', '2024-09-23-66f169f8d736a.png', 0, 0, 1, '2024-09-23 18:45:36', '2024-09-23 18:47:41', 0, 2, 'tea', 1),
(23, 'Crispy Chicken', '2024-09-23-66f16a09e7665.png', 0, 0, 1, '2024-09-23 18:45:53', '2024-09-23 18:47:40', 0, 2, 'crispy-chicken', 1),
(24, 'Shawarma', '2024-09-23-66f16a3136d27.png', 0, 0, 1, '2024-09-23 18:46:33', '2024-09-23 18:47:40', 0, 2, 'shawarma', 1),
(25, 'Coffee', '2024-10-08-67056c44a87b2.png', 0, 0, 1, '2024-10-08 23:00:44', '2024-10-08 23:00:51', 0, 2, 'coffee', 1),
(26, 'Maggi', '2024-10-18-6712a6af1f19a.png', 0, 0, 1, '2024-10-18 23:49:27', '2024-10-18 23:49:31', 0, 2, 'maggi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `common_conditions`
--

CREATE TABLE `common_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT 0,
  `feedback` varchar(255) NOT NULL DEFAULT '0',
  `reply` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `sender_type` varchar(255) NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_type` varchar(255) NOT NULL,
  `last_message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `last_message_time` timestamp NULL DEFAULT NULL,
  `unread_message_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `sender_type`, `receiver_id`, `receiver_type`, `last_message_id`, `last_message_time`, `unread_message_count`, `created_at`, `updated_at`) VALUES
(1, 2, 'vendor', 1, 'customer', 1, '2024-10-07 11:13:08', 0, '2024-10-07 11:13:08', '2024-10-17 15:30:44'),
(2, 1, 'customer', 3, 'delivery_man', 2, '2024-10-07 13:38:40', 0, '2024-10-07 13:38:40', '2024-10-07 13:38:44');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(24,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) NOT NULL DEFAULT 'percentage',
  `coupon_type` varchar(255) NOT NULL DEFAULT 'default',
  `limit` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  `total_uses` bigint(20) DEFAULT 0,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` varchar(50) DEFAULT 'admin',
  `customer_id` varchar(255) DEFAULT '["all"]',
  `slug` varchar(255) DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(255) DEFAULT NULL,
  `exchange_rate` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency_code`, `currency_symbol`, `exchange_rate`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', 1.00, NULL, NULL),
(2, 'Canadian Dollar', 'CAD', 'CA$', 1.00, NULL, NULL),
(3, 'Euro', 'EUR', '€', 1.00, NULL, NULL),
(4, 'United Arab Emirates Dirham', 'AED', 'د.إ.‏', 1.00, NULL, NULL),
(5, 'Afghan Afghani', 'AFN', '؋', 1.00, NULL, NULL),
(6, 'Albanian Lek', 'ALL', 'L', 1.00, NULL, NULL),
(7, 'Armenian Dram', 'AMD', '֏', 1.00, NULL, NULL),
(8, 'Argentine Peso', 'ARS', '$', 1.00, NULL, NULL),
(9, 'Australian Dollar', 'AUD', '$', 1.00, NULL, NULL),
(10, 'Azerbaijani Manat', 'AZN', '₼', 1.00, NULL, NULL),
(11, 'Bosnia-Herzegovina Convertible Mark', 'BAM', 'KM', 1.00, NULL, NULL),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1.00, NULL, NULL),
(13, 'Bulgarian Lev', 'BGN', 'лв.', 1.00, NULL, NULL),
(14, 'Bahraini Dinar', 'BHD', 'د.ب.‏', 1.00, NULL, NULL),
(15, 'Burundian Franc', 'BIF', 'FBu', 1.00, NULL, NULL),
(16, 'Brunei Dollar', 'BND', 'B$', 1.00, NULL, NULL),
(17, 'Bolivian Boliviano', 'BOB', 'Bs', 1.00, NULL, NULL),
(18, 'Brazilian Real', 'BRL', 'R$', 1.00, NULL, NULL),
(19, 'Botswanan Pula', 'BWP', 'P', 1.00, NULL, NULL),
(20, 'Belarusian Ruble', 'BYN', 'Br', 1.00, NULL, NULL),
(21, 'Belize Dollar', 'BZD', '$', 1.00, NULL, NULL),
(22, 'Congolese Franc', 'CDF', 'FC', 1.00, NULL, NULL),
(23, 'Swiss Franc', 'CHF', 'CHf', 1.00, NULL, NULL),
(24, 'Chilean Peso', 'CLP', '$', 1.00, NULL, NULL),
(25, 'Chinese Yuan', 'CNY', '¥', 1.00, NULL, NULL),
(26, 'Colombian Peso', 'COP', '$', 1.00, NULL, NULL),
(27, 'Costa Rican Colón', 'CRC', '₡', 1.00, NULL, NULL),
(28, 'Cape Verdean Escudo', 'CVE', '$', 1.00, NULL, NULL),
(29, 'Czech Republic Koruna', 'CZK', 'Kč', 1.00, NULL, NULL),
(30, 'Djiboutian Franc', 'DJF', 'Fdj', 1.00, NULL, NULL),
(31, 'Danish Krone', 'DKK', 'Kr.', 1.00, NULL, NULL),
(32, 'Dominican Peso', 'DOP', 'RD$', 1.00, NULL, NULL),
(33, 'Algerian Dinar', 'DZD', 'د.ج.‏', 1.00, NULL, NULL),
(34, 'Estonian Kroon', 'EEK', 'kr', 1.00, NULL, NULL),
(35, 'Egyptian Pound', 'EGP', 'E£‏', 1.00, NULL, NULL),
(36, 'Eritrean Nakfa', 'ERN', 'Nfk', 1.00, NULL, NULL),
(37, 'Ethiopian Birr', 'ETB', 'Br', 1.00, NULL, NULL),
(38, 'British Pound Sterling', 'GBP', '£', 1.00, NULL, NULL),
(39, 'Georgian Lari', 'GEL', 'GEL', 1.00, NULL, NULL),
(40, 'Ghanaian Cedi', 'GHS', 'GH¢', 1.00, NULL, NULL),
(41, 'Guinean Franc', 'GNF', 'FG', 1.00, NULL, NULL),
(42, 'Guatemalan Quetzal', 'GTQ', 'Q', 1.00, NULL, NULL),
(43, 'Hong Kong Dollar', 'HKD', 'HK$', 1.00, NULL, NULL),
(44, 'Honduran Lempira', 'HNL', 'L', 1.00, NULL, NULL),
(45, 'Croatian Kuna', 'HRK', 'kn', 1.00, NULL, NULL),
(46, 'Hungarian Forint', 'HUF', 'Ft', 1.00, NULL, NULL),
(47, 'Indonesian Rupiah', 'IDR', 'Rp', 1.00, NULL, NULL),
(48, 'Israeli New Sheqel', 'ILS', '₪', 1.00, NULL, NULL),
(49, 'Indian Rupee', 'INR', '₹', 1.00, NULL, NULL),
(50, 'Iraqi Dinar', 'IQD', 'ع.د', 1.00, NULL, NULL),
(51, 'Iranian Rial', 'IRR', '﷼', 1.00, NULL, NULL),
(52, 'Icelandic Króna', 'ISK', 'kr', 1.00, NULL, NULL),
(53, 'Jamaican Dollar', 'JMD', '$', 1.00, NULL, NULL),
(54, 'Jordanian Dinar', 'JOD', 'د.ا‏', 1.00, NULL, NULL),
(55, 'Japanese Yen', 'JPY', '¥', 1.00, NULL, NULL),
(56, 'Kenyan Shilling', 'KES', 'Ksh', 1.00, NULL, NULL),
(57, 'Cambodian Riel', 'KHR', '៛', 1.00, NULL, NULL),
(58, 'Comorian Franc', 'KMF', 'FC', 1.00, NULL, NULL),
(59, 'South Korean Won', 'KRW', 'CF', 1.00, NULL, NULL),
(60, 'Kuwaiti Dinar', 'KWD', 'د.ك.‏', 1.00, NULL, NULL),
(61, 'Kazakhstani Tenge', 'KZT', '₸.', 1.00, NULL, NULL),
(62, 'Lebanese Pound', 'LBP', 'ل.ل.‏', 1.00, NULL, NULL),
(63, 'Sri Lankan Rupee', 'LKR', 'Rs', 1.00, NULL, NULL),
(64, 'Lithuanian Litas', 'LTL', 'Lt', 1.00, NULL, NULL),
(65, 'Latvian Lats', 'LVL', 'Ls', 1.00, NULL, NULL),
(66, 'Libyan Dinar', 'LYD', 'د.ل.‏', 1.00, NULL, NULL),
(67, 'Moroccan Dirham', 'MAD', 'د.م.‏', 1.00, NULL, NULL),
(68, 'Moldovan Leu', 'MDL', 'L', 1.00, NULL, NULL),
(69, 'Malagasy Ariary', 'MGA', 'Ar', 1.00, NULL, NULL),
(70, 'Macedonian Denar', 'MKD', 'Ден', 1.00, NULL, NULL),
(71, 'Myanma Kyat', 'MMK', 'K', 1.00, NULL, NULL),
(72, 'Macanese Pataca', 'MOP', 'MOP$', 1.00, NULL, NULL),
(73, 'Mauritian Rupee', 'MUR', 'Rs', 1.00, NULL, NULL),
(74, 'Mexican Peso', 'MXN', '$', 1.00, NULL, NULL),
(75, 'Malaysian Ringgit', 'MYR', 'RM', 1.00, NULL, NULL),
(76, 'Mozambican Metical', 'MZN', 'MT', 1.00, NULL, NULL),
(77, 'Namibian Dollar', 'NAD', 'N$', 1.00, NULL, NULL),
(78, 'Nigerian Naira', 'NGN', '₦', 1.00, NULL, NULL),
(79, 'Nicaraguan Córdoba', 'NIO', 'C$', 1.00, NULL, NULL),
(80, 'Norwegian Krone', 'NOK', 'kr', 1.00, NULL, NULL),
(81, 'Nepalese Rupee', 'NPR', 'Re.', 1.00, NULL, NULL),
(82, 'New Zealand Dollar', 'NZD', '$', 1.00, NULL, NULL),
(83, 'Omani Rial', 'OMR', 'ر.ع.‏', 1.00, NULL, NULL),
(84, 'Panamanian Balboa', 'PAB', 'B/.', 1.00, NULL, NULL),
(85, 'Peruvian Nuevo Sol', 'PEN', 'S/', 1.00, NULL, NULL),
(86, 'Philippine Peso', 'PHP', '₱', 1.00, NULL, NULL),
(87, 'Pakistani Rupee', 'PKR', 'Rs', 1.00, NULL, NULL),
(88, 'Polish Zloty', 'PLN', 'zł', 1.00, NULL, NULL),
(89, 'Paraguayan Guarani', 'PYG', '₲', 1.00, NULL, NULL),
(90, 'Qatari Rial', 'QAR', 'ر.ق.‏', 1.00, NULL, NULL),
(91, 'Romanian Leu', 'RON', 'lei', 1.00, NULL, NULL),
(92, 'Serbian Dinar', 'RSD', 'din.', 1.00, NULL, NULL),
(93, 'Russian Ruble', 'RUB', '₽.', 1.00, NULL, NULL),
(94, 'Rwandan Franc', 'RWF', 'FRw', 1.00, NULL, NULL),
(95, 'Saudi Riyal', 'SAR', 'ر.س.‏', 1.00, NULL, NULL),
(96, 'Sudanese Pound', 'SDG', 'ج.س.', 1.00, NULL, NULL),
(97, 'Swedish Krona', 'SEK', 'kr', 1.00, NULL, NULL),
(98, 'Singapore Dollar', 'SGD', '$', 1.00, NULL, NULL),
(99, 'Somali Shilling', 'SOS', 'Sh.so.', 1.00, NULL, NULL),
(100, 'Syrian Pound', 'SYP', 'LS‏', 1.00, NULL, NULL),
(101, 'Thai Baht', 'THB', '฿', 1.00, NULL, NULL),
(102, 'Tunisian Dinar', 'TND', 'د.ت‏', 1.00, NULL, NULL),
(103, 'Tongan Paʻanga', 'TOP', 'T$', 1.00, NULL, NULL),
(104, 'Turkish Lira', 'TRY', '₺', 1.00, NULL, NULL),
(105, 'Trinidad and Tobago Dollar', 'TTD', '$', 1.00, NULL, NULL),
(106, 'New Taiwan Dollar', 'TWD', 'NT$', 1.00, NULL, NULL),
(107, 'Tanzanian Shilling', 'TZS', 'TSh', 1.00, NULL, NULL),
(108, 'Ukrainian Hryvnia', 'UAH', '₴', 1.00, NULL, NULL),
(109, 'Ugandan Shilling', 'UGX', 'USh', 1.00, NULL, NULL),
(110, 'Uruguayan Peso', 'UYU', '$', 1.00, NULL, NULL),
(111, 'Uzbekistan Som', 'UZS', 'so\'m', 1.00, NULL, NULL),
(112, 'Venezuelan Bolívar', 'VEF', 'Bs.F.', 1.00, NULL, NULL),
(113, 'Vietnamese Dong', 'VND', '₫', 1.00, NULL, NULL),
(114, 'CFA Franc BEAC', 'XAF', 'FCFA', 1.00, NULL, NULL),
(115, 'CFA Franc BCEAO', 'XOF', 'CFA', 1.00, NULL, NULL),
(116, 'Yemeni Rial', 'YER', '﷼‏', 1.00, NULL, NULL),
(117, 'South African Rand', 'ZAR', 'R', 1.00, NULL, NULL),
(118, 'Zambian Kwacha', 'ZMK', 'ZK', 1.00, NULL, NULL),
(119, 'Zimbabwean Dollar', 'ZWL', 'Z$', 1.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_addresses`
--

CREATE TABLE `customer_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address_type` varchar(100) NOT NULL,
  `contact_person_number` varchar(20) NOT NULL,
  `address` text DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `contact_person_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `floor` varchar(255) DEFAULT NULL,
  `road` varchar(255) DEFAULT NULL,
  `house` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_settings`
--

CREATE TABLE `data_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_settings`
--

INSERT INTO `data_settings` (`id`, `key`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'admin_login_url', 'admin', 'login_admin', '2023-06-11 14:34:59', '2023-06-11 14:34:59'),
(2, 'admin_employee_login_url', 'admin-employee', 'login_admin_employee', '2023-06-11 14:34:59', '2023-06-11 14:34:59'),
(3, 'store_login_url', 'store', 'login_store', '2023-06-11 14:34:59', '2023-06-11 14:34:59'),
(4, 'store_employee_login_url', 'store-employee', 'login_store_employee', '2023-06-11 14:34:59', '2023-06-11 14:34:59'),
(5, 'fixed_header_title', 'Manage Your  Daily Life in one platform', 'admin_landing_page', '2023-06-11 15:06:27', '2023-06-11 15:06:27'),
(6, 'fixed_header_sub_title', 'More than just a reliable  eCommerce platform', 'admin_landing_page', '2023-06-11 15:06:27', '2023-06-11 15:06:27'),
(7, 'fixed_module_title', 'Your eCommerce venture starts here !', 'admin_landing_page', '2023-06-11 15:06:27', '2023-06-11 15:06:27'),
(8, 'fixed_module_sub_title', 'Enjoy all services in one platform', 'admin_landing_page', '2023-06-11 15:06:27', '2023-06-11 15:06:27'),
(9, 'fixed_referal_title', 'Earn point by', 'admin_landing_page', '2023-06-11 15:06:27', '2023-06-11 15:06:27'),
(10, 'fixed_referal_sub_title', 'Refer Your Friend', 'admin_landing_page', '2023-06-11 15:06:27', '2023-06-11 15:06:27'),
(11, 'fixed_newsletter_title', 'Sign Up to Our Newsletter', 'admin_landing_page', '2023-06-11 15:06:27', '2023-06-11 15:06:27'),
(12, 'fixed_newsletter_sub_title', 'Receive Latest News, Updates and Many Other News Every Week', 'admin_landing_page', '2023-06-11 15:06:27', '2023-06-11 15:06:27'),
(13, 'fixed_footer_article_title', '6amMart is a complete package!  It\'s time to empower your multivendor online business with  powerful features!', 'admin_landing_page', '2023-06-11 15:06:27', '2023-06-11 15:06:27'),
(14, 'feature_title', 'Remarkable Features that You Can Count!', 'admin_landing_page', '2023-06-11 15:14:25', '2023-06-11 15:14:25'),
(15, 'feature_short_description', 'Jam-packed with outstanding features to elevate your online ordering and delivery easier, and smarter than ever before. It\'s time to empower your multivendor online business with 6amMart\'s powerful features!', 'admin_landing_page', '2023-06-11 15:14:25', '2023-06-11 15:14:25'),
(16, 'earning_title', 'Earn Money', 'admin_landing_page', '2023-06-11 15:26:01', '2023-06-11 15:26:01'),
(17, 'earning_sub_title', 'Earn money  by using different platform', 'admin_landing_page', '2023-06-11 15:26:01', '2023-06-11 15:26:01'),
(18, 'earning_seller_image', '2024-04-20-66239442684d3.png', 'admin_landing_page', '2023-06-11 15:27:29', '2024-04-20 05:09:06'),
(19, 'seller_app_earning_links', '{\"playstore_url_status\":null,\"playstore_url\":null,\"apple_store_url_status\":null,\"apple_store_url\":null}', 'admin_landing_page', NULL, NULL),
(20, 'earning_delivery_image', '2024-04-20-66239451975d2.png', 'admin_landing_page', '2023-06-11 15:28:48', '2024-04-20 05:09:21'),
(21, 'dm_app_earning_links', '{\"playstore_url_status\":null,\"playstore_url\":null,\"apple_store_url_status\":null,\"apple_store_url\":null}', 'admin_landing_page', NULL, NULL),
(22, 'why_choose_title', 'What so Special About 6amMart ?', 'admin_landing_page', '2023-06-11 15:30:30', '2023-06-11 15:32:08'),
(23, 'counter_section', '{\"app_download_count_numbers\":\"300\",\"seller_count_numbers\":\"85\",\"deliveryman_count_numbers\":\"150\",\"customer_count_numbers\":\"10000\",\"status\":\"1\"}', 'admin_landing_page', NULL, NULL),
(24, 'download_user_app_title', 'Let’s  Manage', 'admin_landing_page', '2023-06-11 15:38:17', '2023-06-11 15:38:17'),
(25, 'download_user_app_sub_title', 'Your business  Smartly or Earn.', 'admin_landing_page', '2023-06-11 15:38:17', '2023-06-11 15:38:17'),
(26, 'download_user_app_image', '2023-08-16-64dcaab460ac2.png', 'admin_landing_page', '2023-06-11 15:38:17', '2023-08-15 23:53:40'),
(27, 'download_user_app_links', '{\"playstore_url_status\":\"1\",\"playstore_url\":\"https:\\/\\/play.google.com\\/store\\/apps\\/details?id=com.sixamtech.sixam_mart_store_app\",\"apple_store_url_status\":\"1\",\"apple_store_url\":\"https:\\/\\/www.apple.com\\/app-store\"}', 'admin_landing_page', NULL, NULL),
(28, 'testimonial_title', 'People Who Shared Love with us?', 'admin_landing_page', '2023-06-11 15:42:04', '2023-06-11 15:42:04'),
(29, 'contact_us_title', 'Contact Us', 'admin_landing_page', '2023-06-11 15:53:22', '2023-06-11 15:53:22'),
(30, 'contact_us_sub_title', 'Any question or remarks? Just write us a message!', 'admin_landing_page', '2023-06-11 15:53:22', '2023-06-11 15:53:22'),
(31, 'contact_us_image', '2023-08-16-64dcab0c7b434.png', 'admin_landing_page', '2023-06-11 15:53:23', '2023-08-15 23:55:08'),
(32, 'refund_policy_status', '1', 'admin_landing_page', '2023-06-11 20:10:58', '2023-06-11 20:10:58'),
(33, 'refund_policy', NULL, 'admin_landing_page', '2023-06-11 20:10:59', '2023-06-11 20:10:59'),
(34, 'header_title', '$Your e-Commerce!$', 'react_landing_page', '2023-06-12 16:30:53', '2023-06-12 19:41:19'),
(35, 'header_sub_title', 'Venture Starts Here', 'react_landing_page', '2023-06-12 16:30:53', '2023-06-12 17:55:14'),
(36, 'header_tag_line', 'More than just a reliable $eCommerce$ platform', 'react_landing_page', '2023-06-12 16:30:53', '2023-06-12 17:45:24'),
(37, 'header_icon', '2024-04-20-66239402e2913.png', 'react_landing_page', '2023-06-12 16:30:53', '2024-04-20 05:08:02'),
(38, 'header_banner', '2024-04-20-66239402e5470.png', 'react_landing_page', '2023-06-12 16:30:53', '2024-04-20 05:08:02'),
(39, 'company_title', '$6amMart$', 'react_landing_page', '2023-06-12 16:35:07', '2023-06-12 17:46:19'),
(40, 'company_sub_title', 'is Best Delivery Service Near You', 'react_landing_page', '2023-06-12 16:35:07', '2023-06-12 16:35:07'),
(41, 'company_description', '6amMart is a one-stop shop for all your daily necessities. You can shop for groceries, and pharmacy items, order food, and send important parcels from one place to another from the comfort of your home.', 'react_landing_page', '2023-06-12 16:35:07', '2023-06-12 16:35:07'),
(42, 'company_button_name', 'Order Now', 'react_landing_page', '2023-06-12 16:35:07', '2023-06-12 17:46:52'),
(43, 'company_button_url', 'https://6ammart-react.6amtech.com/', 'react_landing_page', '2023-06-12 16:35:07', '2023-06-12 16:35:07'),
(44, 'download_user_app_title', 'Complete Multipurpose eBusiness Solution', 'react_landing_page', '2023-06-12 16:40:30', '2023-06-12 16:40:30'),
(45, 'download_user_app_sub_title', '6amMart is a Laravel and Flutter Framework-based multi-vendor food, grocery, eCommerce, parcel, and pharmacy delivery system. It has six modules to cover all your business function', 'react_landing_page', '2023-06-12 16:40:30', '2023-06-12 16:40:30'),
(46, 'download_user_app_image', NULL, 'react_landing_page', '2023-06-12 16:40:30', '2023-06-12 16:40:30'),
(47, 'download_user_app_links', '{\"playstore_url_status\":\"1\",\"playstore_url\":\"https:\\/\\/play.google.com\\/store\\/\",\"apple_store_url_status\":\"1\",\"apple_store_url\":\"https:\\/\\/www.apple.com\\/app-store\\/\"}', 'react_landing_page', NULL, NULL),
(48, 'earning_title', 'Let’s Start Earning with $6amMart$', 'react_landing_page', '2023-06-12 16:43:22', '2023-06-12 16:43:22'),
(49, 'earning_sub_title', 'Join our online marketplace revolution and boost your income.', 'react_landing_page', '2023-06-12 16:43:22', '2023-06-12 16:43:22'),
(50, 'earning_seller_title', 'Become a Seller', 'react_landing_page', '2023-06-12 16:45:07', '2023-06-12 16:45:07'),
(51, 'earning_seller_sub_title', 'Register as seller & open shop in 6amMart to start your business', 'react_landing_page', '2023-06-12 16:45:07', '2023-06-12 16:45:07'),
(52, 'earning_seller_button_name', 'Register', 'react_landing_page', '2023-06-12 16:45:07', '2023-06-12 16:45:07'),
(53, 'earning_seller_button_url', 'https://6ammart-admin.6amtech.com/store/apply', 'react_landing_page', '2023-06-12 16:45:07', '2023-06-12 16:45:07'),
(54, 'earning_dm_title', 'Become a $Delivery Man$', 'react_landing_page', '2023-06-12 16:45:55', '2023-06-12 17:53:01'),
(55, 'earning_dm_sub_title', 'Register as delivery man and earn money', 'react_landing_page', '2023-06-12 16:45:55', '2023-06-12 16:45:55'),
(56, 'earning_dm_button_name', 'Register', 'react_landing_page', '2023-06-12 16:45:55', '2023-06-12 16:45:55'),
(57, 'earning_dm_button_url', 'https://6ammart-admin.6amtech.com/deliveryman/apply', 'react_landing_page', '2023-06-12 16:45:55', '2023-06-12 16:45:55'),
(58, 'promotion_banner', '[{\"img\":\"2023-08-16-64dcac89cd0fa.png\"},{\"img\":\"2023-08-16-64dcac93a324a.png\"},{\"img\":\"2023-08-16-64dcad5a24940.png\"},{\"img\":\"2024-04-20-6623944c31c97.png\"}]', 'react_landing_page', NULL, '2023-08-16 00:01:02'),
(59, 'business_title', '$Let’s$', 'react_landing_page', '2023-06-12 16:52:29', '2023-06-12 16:52:29'),
(60, 'business_sub_title', 'Manage your business  Smartly', 'react_landing_page', '2023-06-12 16:52:29', '2023-06-12 17:54:18'),
(61, 'business_image', '2023-08-16-64dcad66585e9.png', 'react_landing_page', '2023-06-12 16:52:29', '2023-08-16 00:05:10'),
(62, 'download_business_app_links', '{\"seller_playstore_url_status\":\"1\",\"seller_playstore_url\":\"https:\\/\\/play.google.com\\/store\",\"seller_appstore_url_status\":\"1\",\"seller_appstore_url\":\"https:\\/\\/www.apple.com\\/app-store\\/\",\"dm_playstore_url_status\":\"1\",\"dm_playstore_url\":\"https:\\/\\/play.google.com\\/store\",\"dm_appstore_url_status\":\"1\",\"dm_appstore_url\":\"https:\\/\\/www.apple.com\\/app-store\\/\"}', 'react_landing_page', NULL, NULL),
(63, 'testimonial_title', 'We $satisfied$ some Customer & Restaurant Owners', 'react_landing_page', '2023-06-12 16:53:04', '2023-06-12 16:53:04'),
(64, 'fixed_promotional_banner', '2024-04-20-662394ec1e6b7.png', 'react_landing_page', '2023-06-12 17:18:24', '2024-04-20 05:11:56'),
(65, 'fixed_footer_description', 'Connect with our social media and other sites to keep up to date', 'react_landing_page', '2023-06-12 17:21:12', '2023-06-12 17:21:12'),
(66, 'fixed_newsletter_title', 'Join Us!', 'react_landing_page', '2023-06-12 17:23:45', '2023-06-12 17:23:45'),
(67, 'fixed_newsletter_sub_title', 'Subscribe to our weekly newsletter and be a part of our journey to self discovery and love.', 'react_landing_page', '2023-06-12 17:23:45', '2023-06-12 17:23:45'),
(68, 'fixed_header_title', '6amMart', 'flutter_landing_page', '2023-06-12 17:31:35', '2023-06-12 17:31:35'),
(69, 'fixed_header_sub_title', 'More than just reliable eCommerce platform', 'flutter_landing_page', '2023-06-12 17:31:35', '2023-06-12 17:32:30'),
(70, 'fixed_header_image', '2024-04-20-6623929a88ded.png', 'flutter_landing_page', '2023-06-12 17:31:35', '2024-04-20 05:02:02'),
(71, 'fixed_location_title', 'Choose your location', 'flutter_landing_page', '2023-06-12 17:35:02', '2023-06-12 17:35:02'),
(72, 'fixed_module_title', 'Your eCommerce venture starts here !', 'flutter_landing_page', '2023-06-12 17:37:29', '2023-06-12 17:37:29'),
(73, 'fixed_module_sub_title', 'Enjoy all services in one platform', 'flutter_landing_page', '2023-06-12 17:37:29', '2023-06-12 17:37:29'),
(74, 'join_seller_title', 'Become a Seller', 'flutter_landing_page', '2023-06-12 18:12:56', '2023-06-12 18:12:56'),
(75, 'join_seller_sub_title', 'Registered as a seller and open shop for start your business', 'flutter_landing_page', '2023-06-12 18:12:56', '2023-06-12 18:12:56'),
(76, 'join_seller_button_name', 'Register', 'flutter_landing_page', '2023-06-12 18:12:56', '2023-06-12 18:12:56'),
(77, 'join_seller_button_url', 'https://6ammart-admin.6amtech.com/store/apply', 'flutter_landing_page', '2023-06-12 18:12:56', '2023-06-12 18:12:56'),
(78, 'join_delivery_man_title', 'Join as  Deliveryman', 'flutter_landing_page', '2023-06-12 18:16:03', '2023-06-12 18:16:03'),
(79, 'join_delivery_man_sub_title', 'Registered as a deliveryman and earn money', 'flutter_landing_page', '2023-06-12 18:16:03', '2023-06-12 18:16:03'),
(80, 'join_delivery_man_button_name', 'Register', 'flutter_landing_page', '2023-06-12 18:16:03', '2023-06-12 18:16:03'),
(81, 'join_delivery_man_button_url', 'https://6ammart-admin.6amtech.com/deliveryman/apply', 'flutter_landing_page', '2023-06-12 18:16:03', '2023-06-12 18:16:03'),
(82, 'download_user_app_title', 'Download app and enjoy more!', 'flutter_landing_page', '2023-06-12 18:17:56', '2023-06-12 18:17:56'),
(83, 'download_user_app_sub_title', 'Download app from', 'flutter_landing_page', '2023-06-12 18:17:56', '2023-06-12 18:17:56'),
(84, 'download_user_app_image', '2024-04-20-6623936184033.png', 'flutter_landing_page', '2023-06-12 18:17:56', '2024-04-20 05:05:21'),
(85, 'download_user_app_links', '{\"playstore_url_status\":\"1\",\"playstore_url\":\"https:\\/\\/play.google.com\\/store\\/\",\"apple_store_url_status\":\"1\",\"apple_store_url\":\"https:\\/\\/www.apple.com\\/app-store\\/\"}', 'flutter_landing_page', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_histories`
--

CREATE TABLE `delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_histories`
--

INSERT INTO `delivery_histories` (`id`, `order_id`, `delivery_man_id`, `time`, `longitude`, `latitude`, `location`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, '2024-10-25 15:18:56', '77.9820475', '10.368665', '32/G1, , IN', '2024-10-25 15:18:56', '2024-10-25 15:18:56');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_wallets`
--

CREATE TABLE `delivery_man_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `collected_cash` decimal(24,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_earning` decimal(24,2) NOT NULL DEFAULT 0.00,
  `total_withdrawn` decimal(24,2) NOT NULL DEFAULT 0.00,
  `pending_withdraw` decimal(24,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_man_wallets`
--

INSERT INTO `delivery_man_wallets` (`id`, `delivery_man_id`, `collected_cash`, `created_at`, `updated_at`, `total_earning`, `total_withdrawn`, `pending_withdraw`) VALUES
(1, 1, 718.00, '2024-10-07 13:33:52', '2024-10-07 14:56:44', 40.00, 20.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `identity_number` varchar(30) DEFAULT NULL,
  `identity_type` varchar(50) DEFAULT NULL,
  `identity_image` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `zone_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `earning` tinyint(1) NOT NULL DEFAULT 1,
  `current_orders` int(11) NOT NULL DEFAULT 0,
  `type` varchar(191) NOT NULL DEFAULT 'zone_wise',
  `store_id` bigint(20) DEFAULT NULL,
  `application_status` enum('approved','denied','pending') NOT NULL DEFAULT 'approved',
  `order_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `assigned_order_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `vehicle_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men`
--

INSERT INTO `delivery_men` (`id`, `f_name`, `l_name`, `phone`, `email`, `identity_number`, `identity_type`, `identity_image`, `image`, `password`, `auth_token`, `fcm_token`, `zone_id`, `created_at`, `updated_at`, `status`, `active`, `earning`, `current_orders`, `type`, `store_id`, `application_status`, `order_count`, `assigned_order_count`, `vehicle_id`) VALUES
(1, 'Raja', 'K', '+919876543210', 'rohitmuthu@gmail.com', 'L-5865866885', 'driving_license', '[{\"img\":\"2024-10-07-67036e50c8bb6.png\",\"storage\":\"public\"}]', '2024-10-07-67036e50bfd0b.png', '$2y$10$uSiZ5bsQ6Ov2aB5PBYCyq.Njog8m7nQD0I7RhuF/nlUwrSYtY9eMi', 'RqAyRX4mD4WvGaHhcYc2aB9are8Ta25bQ1TMFw7uE2H91QAmILaFtfGZ3AjlxcNglUBxEjKNrtYULO5pZvxo1d2UiUUTFGXDAyN7X3OJJGWIfiNIsjdthzxd', 'dc1nz5J4SaOfgDszU05ixn:APA91bFY212JWg3ZBWkOCrs595I3Gm9jlifSVpR-JCEFHvLbNxZapW43wjsf_dSi_UiDcBc6MknuDkvZD4WYvy3Q1XWDjrPgpIOtQ6SnV9kR3008h9Xx-nSFeKujmE8pO9SFqjBimLQx', 2, '2024-10-07 10:44:56', '2024-10-25 15:18:54', 1, 1, 1, 0, 'zone_wise', NULL, 'approved', 4, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `disbursements`
--

CREATE TABLE `disbursements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `total_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_for` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disbursement_details`
--

CREATE TABLE `disbursement_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disbursement_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `disbursement_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `payment_method` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disbursement_withdrawal_methods`
--

CREATE TABLE `disbursement_withdrawal_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_method_id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `method_fields` text NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `min_purchase` decimal(24,2) NOT NULL DEFAULT 0.00,
  `max_discount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) NOT NULL DEFAULT 'percentage',
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d_m_reviews`
--

CREATE TABLE `d_m_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d_m_reviews`
--

INSERT INTO `d_m_reviews` (`id`, `delivery_man_id`, `user_id`, `order_id`, `comment`, `attachment`, `rating`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 1, 100007, 'Good', '[]', 5, '2024-10-07 14:57:27', '2024-10-07 14:57:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `d_m_vehicles`
--

CREATE TABLE `d_m_vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `starting_coverage_area` double(16,2) NOT NULL,
  `maximum_coverage_area` double(16,2) NOT NULL,
  `extra_charges` double(16,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d_m_vehicles`
--

INSERT INTO `d_m_vehicles` (`id`, `type`, `starting_coverage_area`, `maximum_coverage_area`, `extra_charges`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Bike', 0.00, 50.00, 0.00, 1, '2024-09-25 00:31:26', '2024-09-25 00:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `ecommerce_item_details`
--

CREATE TABLE `ecommerce_item_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `background_image` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `button_name` varchar(100) DEFAULT NULL,
  `button_url` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `email_type` varchar(255) DEFAULT NULL,
  `email_template` varchar(255) DEFAULT NULL,
  `privacy` tinyint(1) NOT NULL DEFAULT 0,
  `refund` tinyint(1) NOT NULL DEFAULT 0,
  `cancelation` tinyint(1) NOT NULL DEFAULT 0,
  `contact` tinyint(1) NOT NULL DEFAULT 0,
  `facebook` tinyint(1) NOT NULL DEFAULT 0,
  `instagram` tinyint(1) NOT NULL DEFAULT 0,
  `twitter` tinyint(1) NOT NULL DEFAULT 0,
  `linkedin` tinyint(1) NOT NULL DEFAULT 0,
  `pinterest` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body_2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `title`, `body`, `background_image`, `image`, `logo`, `icon`, `button_name`, `button_url`, `footer_text`, `copyright_text`, `type`, `email_type`, `email_template`, `privacy`, `refund`, `cancelation`, `contact`, `facebook`, `instagram`, `twitter`, `linkedin`, `pinterest`, `status`, `created_at`, `updated_at`, `body_2`) VALUES
(1, 'Change Password Request', '<p>The following user has forgotten his password &amp; requested to change/reset their password.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>User Name: {userName}</strong></p>', NULL, NULL, NULL, '2023-06-12-6486f303174e0.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'admin', 'forget_password', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 16:26:24', '2023-06-12 19:40:28', NULL),
(2, 'New Store Registration Request', '<p>Please find below the details of the new Store registration:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Store Name: {storeName}</strong></p>\r\n\r\n<p>To review the store from the respective Module, go to:&nbsp;</p>\r\n\r\n<p><strong>Module Section</strong><strong>&rarr;Store Management&rarr;New Stores</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Or you can directly review the store here &rarr;</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-12-6486f4420b5c1.png', '2023-06-12-6486f4420d61d.png', NULL, 'Review Request', 'https://www.facebook.com/', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'admin', 'store_registration', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 16:32:34', '2023-06-12 19:59:26', NULL),
(3, 'New Deliveryman Registration Request', '<p>Please find below the details of the new Deliveryman registration:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Deliveryman Name: {deliveryManName}</strong></p>\r\n\r\n<p>To review the store from the respective Module, go to:&nbsp;</p>\r\n\r\n<p><strong>Users</strong><strong>&rarr;Deliveryman Management&rarr;New Deliveryman</strong></p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-12-6486f4fe20b2c.png', '2023-06-12-6486f528877fe.png', NULL, 'Review Request', 'https://www.facebook.com/', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'admin', 'dm_registration', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 16:35:42', '2023-06-12 20:04:49', NULL),
(4, 'New Withdraw Request', '<p>Please find below the details of the new Withdraw Request:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Store Name: {storeName}</strong></p>\r\n\r\n<p>To review the Refund Request, go to:&nbsp;</p>\r\n\r\n<p><strong>Transactions &amp; Reports</strong><strong>&rarr;Withdraw Requests</strong></p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-6486f5b6a24a4.png', 'Review Request', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'admin', 'withdraw_request', '6', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 16:38:46', '2023-06-12 20:04:17', NULL),
(5, '“BUY ONE GET ONE” Campaign Join Request', '<p>Please find below the details of the new Campaign Join Request:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Store Name: {storeName}</strong></p>\r\n\r\n<p>To review the Refund Request, go to:&nbsp;</p>\r\n\r\n<p><strong>Module Section</strong><strong>&rarr;Choose Module&rarr;Promotion Management&rarr;Campaigns&rarr;Basic Campaigns&rarr;Buy One Get One</strong></p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-12-6486f611cfb9b.png', '2023-06-12-6486f611cfdf0.png', NULL, 'Review Request', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'admin', 'campaign_request', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 16:40:17', '2023-06-12 20:06:04', NULL),
(6, 'You Have A Refund Request.', '<p>Please find below the details of the new Refund Request:</p>\r\n\r\n<p><strong>Customer Name: {userName}</strong></p>\r\n\r\n<p><strong>Order ID: {orderId}</strong></p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '2023-06-12-6486fb27a6a00.png', NULL, 'Review Request', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'admin', 'refund_request', '2', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 17:01:59', '2023-06-12 20:14:43', NULL),
(7, 'Mart Morning [ID 1234] Just Signed In', '<p>Mart Morning [ID 1234] just signed in from the Store Panel.&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Login Time:</strong> 12.00pm</p>', NULL, NULL, '2023-06-12-6486fbdeb92d6.png', NULL, 'Check Status', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'admin', 'login', '2', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 17:05:02', '2023-06-12 17:05:02', NULL),
(8, 'Your Registration is Submitted Successfully!', '<p>Dear User,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We&rsquo;ve received your Store Registration Request.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Soon you&rsquo;ll know if your store registration is accepted or declined by the Admin.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Stay Tuned!</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-6487024230762.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'store', 'registration', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 17:32:18', '2023-06-12 17:32:18', NULL),
(9, 'Congratulations! Your Registration is Approved!', '<p>Dear User,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Your registration is approved by the Admin.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>First</strong>, you need to log in to your store panel.&nbsp;</p>\r\n\r\n<p><strong>After that,</strong> please set up your store and start selling!&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Click here</strong><strong> &rarr; </strong><a href=\"https://6ammart-admin.6amtech.com/store-panel/business-settings/store-setup\">https://6ammart-admin.6amtech.com/store-panel/business-settings/store-setup</a></p>', NULL, NULL, NULL, '2023-06-12-648702fb014dd.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'store', 'approve', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 17:35:23', '2023-06-12 20:01:31', NULL),
(10, 'Your Registration is Rejected', '<p>Dear User,&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We&rsquo;re sorry to announce that your store registration was rejected by the Admin.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To find out more please contact us.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-648706ce4d5fb.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'store', 'deny', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 17:47:03', '2023-06-12 17:51:42', NULL),
(11, 'Congratulations! Your Withdrawal is Approved!', '<p>Dear User,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The amount you requested to withdraw is approved by the Admin and transferred to you bank account.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-64870788562d9.png', 'See details', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'store', 'withdraw_approve', '6', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2023-06-12 17:54:48', '2023-06-12 17:54:48', NULL),
(12, 'Your Withdraw Request was Rejected.', '<p>Dear User,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The amount you requested to withdraw is rejected by the Admin.</p>\r\n\r\n<p>Reason: Insufficient Balance.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-648708244930a.png', 'See Details', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'store', 'withdraw_deny', '6', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 17:57:24', '2023-06-12 17:57:24', NULL),
(13, 'Your Request is Completed!', '<p>Dear User,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We&rsquo;ve received your Campaign Request.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Soon you&rsquo;ll know if your request is approved or rejected by the Admin.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Stay Tuned!</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-12-648708d132665.png', '2023-06-12-6487088da18cb.png', NULL, 'See Status', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'store', 'campaign_request', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 17:59:09', '2023-06-12 18:00:17', NULL),
(14, 'Congratulations! Your Campaign Request is Approved!', '<p>Dear User,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Your request to join campaign is approved by the Admin.</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-12-6487091d3ee5a.png', '2023-06-12-6487091d3f0b3.png', NULL, 'View Status', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'store', 'campaign_approve', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:01:33', '2023-06-12 20:04:45', NULL),
(15, 'Your Campaign Join Request Was Rejected.', '<p>Dear User,</p>\r\n\r\n<p>Your request to join the&nbsp;campaign was rejected by the admin.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-12-648709ce3e893.png', '2023-06-12-648709ce3ead2.png', NULL, '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'store', 'campaign_deny', '7', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:04:30', '2023-06-12 20:06:55', NULL),
(16, 'Your Registration is Completed!', '<p>Dear User,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We&rsquo;ve received your Deliveryman Registration Request.</p>\r\n\r\n<p>Soon you&rsquo;ll know if your Deliveryman registration is accepted or declined by the Admin.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Stay Tuned!</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-64870c80bb7bb.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'dm', 'registration', '5', 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, '2023-06-12 18:16:00', '2023-06-12 18:16:00', NULL),
(17, 'Congratulations! Your Registration is Approved!', '<p>Dear User,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Your registration is approved by the Admin.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Here&rsquo;s what to do next:&nbsp;</strong></p>\r\n\r\n<ol>\r\n	<li>Download the Deliveryman app</li>\r\n	<li>Login with below credentials.</li>\r\n</ol>\r\n\r\n<p><strong>After that,</strong> please set up your account and start delivery!&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>Click here</strong><strong> to download the app&rarr; </strong><a href=\"https://play.google.com/store/apps/details?id=com.sixamtech.sixam_mart_delivery_app&amp;pli=1\">https://play.google.com/store/apps/details?id=com.sixamtech.sixam_mart_delivery_app&amp;pli=1</a></p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-64870cebc5fc6.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'dm', 'approve', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:17:47', '2023-06-12 20:09:23', NULL),
(18, 'Your Registration is Rejected', '<p>Dear User,&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We&rsquo;re sorry to announce that your Deliveryman registration was rejected by the Admin.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To find out more please contact us.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-64870da0bf819.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'dm', 'deny', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:20:48', '2023-06-12 18:20:48', NULL),
(19, 'Your Account is Suspended.', '<p>Dear User,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Your Deliveryman account has been suspended by the Admin/Store.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Please contact related person to know more.</p>\r\n\r\n<p>&nbsp;</p>', NULL, '2023-06-12-64870e1ba4908.png', '2023-06-12-64870e1ba4cd1.png', NULL, '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'dm', 'suspend', '7', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:22:51', '2023-06-12 18:22:51', NULL),
(20, 'Cash Collected.', '<p>Dear User,</p>\r\n\r\n<p>The Admin has collected cash from you.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-64870ecf8ef10.png', 'See Details', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'dm', 'cash_collect', '6', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:25:51', '2023-06-12 20:11:22', NULL),
(21, 'Reset Your Password', '<p>Please use this OTP to reset your Password&nbsp;&rarr;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-64870f8dcfcc5.png', '', '', 'Please contact us for any queries; we’re always happy to help.', 'Copyright 2023 6amMart. All right reserved.', 'dm', 'forget_password', '4', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:29:01', '2023-06-12 20:12:27', NULL),
(22, 'Your Registration is Successful!', '<p>Congratulations!</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>You&rsquo;ve successfully registered.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-64871218e4c0e.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'user', 'registration', '5', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:39:52', '2023-06-12 18:39:52', NULL),
(23, 'Please Register with The OTP', '<p>ONE MORE STEP:&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Please copy the following OTP &amp; paste in on your sign-up page to complete your registration.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-648712f6a5196.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'user', 'registration_otp', '4', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:43:34', '2023-06-12 20:13:03', NULL),
(24, 'Confirm Your Login.', '<p>Please copy the following OTP &amp; paste in on your Log in page to confirm your account.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-648713d7b9612.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'user', 'login_otp', '4', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:46:46', '2023-06-12 20:13:41', NULL),
(25, 'Please Verify Your Delivery.', '<p>Please give the following OTP to your Deliveryman to ensure your order.</p>\r\n\r\n<p><strong>7 5 8 9 4 3 </strong></p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-648714cf7f15a.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'user', 'order_verification', '4', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, '2023-06-12 18:51:27', '2023-06-12 18:51:27', NULL),
(26, 'Your Order is Successful', '<p>Hi <strong>{userName}</strong>,</p>\r\n\r\n<p>Your order is successful. Please find your invoice below.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, 'Track Order', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'user', 'new_order', '3', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:52:36', '2023-06-12 20:16:37', NULL),
(27, 'Refund Order', '<p>Hi <strong>{userName}</strong>,</p>\r\n\r\n<p>We&rsquo;ve refunded your requested amount. Please find your refund invoice below.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'user', 'refund_order', '9', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:53:40', '2023-06-12 20:18:12', NULL),
(28, 'Reset Your Password', '<p>Please copy the following OTP &amp; paste in on your Log in page to&nbsp;reset your Password.</p>', NULL, NULL, NULL, '2023-06-12-64872af38ecfb.png', '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved..', 'user', 'forget_password', '4', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:54:59', '2023-06-12 20:25:55', NULL),
(29, 'Your Refund Request was Rejected.', '<p>Dear User,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The amount you request for a refund was rejected by the Admin.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>To know more please contact us.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, '2023-06-12-648716141b3fd.png', NULL, '', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'user', 'refund_request_deny', '8', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:56:52', '2023-06-12 18:56:52', NULL),
(30, 'Fund Added to your Wallet.', '<p>Dear <strong>{userName}</strong>,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>The Admin has sent fund to your Wallet. Please check your wallet.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, '2023-06-12-64871653198e0.png', 'Check Status', '', 'Please contact us for any queries; we’re always happy to help.', '© 2023 6amMart. All rights reserved.', 'user', 'add_fund', '6', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2023-06-12 18:57:55', '2023-06-12 20:23:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_roles`
--

CREATE TABLE `employee_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `modules` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'custom',
  `amount` decimal(23,3) NOT NULL DEFAULT 0.000,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_by` varchar(50) DEFAULT 'admin',
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `external_configurations`
--

CREATE TABLE `external_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `is_publish` tinyint(1) NOT NULL DEFAULT 1,
  `admin_discount_percentage` double(24,3) NOT NULL,
  `vendor_discount_percentage` double(24,3) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_items`
--

CREATE TABLE `flash_sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flash_sale_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `sold` int(11) NOT NULL DEFAULT 0,
  `available_stock` int(11) NOT NULL,
  `discount_type` varchar(255) NOT NULL,
  `discount` double(23,3) NOT NULL DEFAULT 0.000,
  `discount_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `price` double(23,3) NOT NULL DEFAULT 0.000,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flutter_special_criterias`
--

CREATE TABLE `flutter_special_criterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flutter_special_criterias`
--

INSERT INTO `flutter_special_criterias` (`id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Easy Checkout & Payment system', '2024-04-20-662392f3a50ea.png', 1, '2023-08-16 00:09:00', '2024-04-20 05:44:06'),
(2, 'Excellent Shopping Experience', '2024-04-20-66239c9904a21.png', 1, '2024-04-20 05:44:41', '2024-04-20 05:44:41'),
(3, 'Thousands of stores', '2024-04-20-66239cb4406a9.png', 1, '2024-04-20 05:45:08', '2024-04-20 05:45:08');

-- --------------------------------------------------------

--
-- Table structure for table `generic_names`
--

CREATE TABLE `generic_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `generic_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `fcm_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`id`, `ip_address`, `fcm_token`, `created_at`, `updated_at`) VALUES
(1, '66.249.80.99', 'BLACKLISTED', '2024-04-19 23:59:46', '2024-04-19 23:59:46'),
(2, '61.247.177.142', NULL, '2024-04-20 00:16:22', '2024-04-20 00:16:22'),
(3, '74.125.215.160', '@', '2024-04-20 00:30:17', '2024-04-20 00:30:17'),
(4, '61.247.177.142', '@', '2024-04-20 00:35:00', '2024-04-20 00:35:00'),
(5, '66.102.8.36', '@', '2024-04-20 00:38:01', '2024-04-20 00:38:01'),
(6, '61.247.177.142', '@', '2024-04-20 00:39:09', '2024-04-20 00:39:09'),
(7, '61.247.177.142', '@', '2024-04-20 01:26:20', '2024-04-20 01:26:20'),
(8, '61.247.177.142', '@', '2024-04-20 01:26:20', '2024-04-20 01:26:20'),
(9, '61.247.177.142', NULL, '2024-04-20 01:27:30', '2024-04-20 01:27:30'),
(10, '223.185.26.117', 'cz8jI67fQGuoWhwepAaZ5t:APA91bHITcTCBEiRXmTFgyouxbP2laZ81KuatPP-QbKY0LGBc1zbsTBF6WV0POEOSKp_tVLKFD-bS0Zv2mW1JIA7RTOrEd5J03aIvB6FQVVs7J09MgV2gTNfb62c5lKqUCiGwwqQb3sq', '2024-09-19 03:03:49', '2024-09-19 03:03:49'),
(11, '223.185.26.117', 'cz8jI67fQGuoWhwepAaZ5t:APA91bHITcTCBEiRXmTFgyouxbP2laZ81KuatPP-QbKY0LGBc1zbsTBF6WV0POEOSKp_tVLKFD-bS0Zv2mW1JIA7RTOrEd5J03aIvB6FQVVs7J09MgV2gTNfb62c5lKqUCiGwwqQb3sq', '2024-09-19 03:03:52', '2024-09-19 03:03:52'),
(12, '2401:4900:8825:3c17:8460:8255:2c6a:4e12', '@', '2024-09-19 04:48:54', '2024-09-19 04:48:54'),
(13, '223.185.26.117', 'f1JaEwPMTr2Ipu_ldtXzvu:APA91bFhEquwcacqOCfk585RyV-f5rZHshJ1aZREVuyTCtA2NgkgPiGsd6foLtYmNjtl13S3ShY7gxnpt188kQy52jZRVtqadFS6n_UMgZPA2B4kHIYk6FidQ4Hp7KH8dbIXg3NXAa75', '2024-09-19 06:11:36', '2024-09-19 06:11:36'),
(14, '152.58.198.53', 'eBYrssqMQnqf6sfSfK5YzN:APA91bEZy9Q_eOQae0PNCuIpoXINQyYDmnHUMn7Rpqrt6DkqxAk7RMX7cBYN3ExJpbCKh2idaaqArNVjO1oFLXTp5ofhXEQaLwZC-zi93OQUBSQfxgfKs11If-8H8NO8UGmkVU_HeOWK', '2024-09-19 06:21:00', '2024-09-19 06:21:00'),
(15, '42.104.208.95', 'f1JaEwPMTr2Ipu_ldtXzvu:APA91bFhEquwcacqOCfk585RyV-f5rZHshJ1aZREVuyTCtA2NgkgPiGsd6foLtYmNjtl13S3ShY7gxnpt188kQy52jZRVtqadFS6n_UMgZPA2B4kHIYk6FidQ4Hp7KH8dbIXg3NXAa75', '2024-09-19 08:32:31', '2024-09-19 08:32:31'),
(16, '42.104.208.95', 'f1JaEwPMTr2Ipu_ldtXzvu:APA91bFhEquwcacqOCfk585RyV-f5rZHshJ1aZREVuyTCtA2NgkgPiGsd6foLtYmNjtl13S3ShY7gxnpt188kQy52jZRVtqadFS6n_UMgZPA2B4kHIYk6FidQ4Hp7KH8dbIXg3NXAa75', '2024-09-19 08:32:33', '2024-09-19 08:32:33'),
(17, '223.185.26.138', 'ci0URbyhTjKGuLJEgMoqbr:APA91bEPg5sadSnKmBvpkoqvy7guouelFQFLLLlmUSbfj6N-b81ryg5c_PMmSMzNzQMQgYSzbOKShMgomK5mRzp3vMKX-N-eXSZe0c-PqSzI6zo7dvYJ-RlQYV9PTE4hZ04C3_22fDHV', '2024-09-23 13:19:34', '2024-09-23 13:19:34'),
(18, '223.185.26.138', 'eup6EGtvSFi0OPB1LOG9YS:APA91bHm9trfFEPR377WpIqFrQxvT1CdJK7XdMnhsu2u4BScEMV80szufw8XKMoJY1EGQpJzmYcCrbjsshTlsIqQmQz6Nqw_8dWO1tZX1tRHjdI_vK8C-3zivfJ5zbnXB-ZeFuUvzTul', '2024-09-23 13:20:56', '2024-09-23 13:20:56'),
(19, '223.185.26.138', 'eup6EGtvSFi0OPB1LOG9YS:APA91bHm9trfFEPR377WpIqFrQxvT1CdJK7XdMnhsu2u4BScEMV80szufw8XKMoJY1EGQpJzmYcCrbjsshTlsIqQmQz6Nqw_8dWO1tZX1tRHjdI_vK8C-3zivfJ5zbnXB-ZeFuUvzTul', '2024-09-23 13:21:05', '2024-09-23 13:21:05'),
(20, '223.185.26.138', 'eup6EGtvSFi0OPB1LOG9YS:APA91bHm9trfFEPR377WpIqFrQxvT1CdJK7XdMnhsu2u4BScEMV80szufw8XKMoJY1EGQpJzmYcCrbjsshTlsIqQmQz6Nqw_8dWO1tZX1tRHjdI_vK8C-3zivfJ5zbnXB-ZeFuUvzTul', '2024-09-23 13:21:05', '2024-09-23 13:21:05'),
(21, '223.185.26.138', 'e0Lx-xPYQfyorNgSvnMu8O:APA91bGQaP3nEOjIb6s_YNYmb8ctCZcO_ZEhSuxgNfrbv_0ubnxViiniaDVaVeThXdrX-nATqgdvKr_ir_mTZIA-OW6HTKosw1OODzjThAam1WONQoDJeYvjsrTVzcVq6YzajikbeUcc', '2024-09-23 14:31:45', '2024-09-23 14:31:45'),
(22, '223.185.26.138', 'd76zjzVCTtSDTKJFhbNw7w:APA91bHZrsQi_rXLvl3odpg8oFuq2tvSduLoqfL1A0TKAOLhEC2USK6zosaaaJfA3qb-RNTivNoHzdjte6Sf3B1nCKSxij9qY0QsauX0beX0LGw-ehLtGE4ixk8YqQ9bnxEk9xZuMoq9', '2024-09-23 14:55:08', '2024-09-23 14:55:08'),
(23, '223.185.26.138', 'd76zjzVCTtSDTKJFhbNw7w:APA91bHZrsQi_rXLvl3odpg8oFuq2tvSduLoqfL1A0TKAOLhEC2USK6zosaaaJfA3qb-RNTivNoHzdjte6Sf3B1nCKSxij9qY0QsauX0beX0LGw-ehLtGE4ixk8YqQ9bnxEk9xZuMoq9', '2024-09-23 14:55:19', '2024-09-23 14:55:19'),
(24, '223.185.26.138', 'd76zjzVCTtSDTKJFhbNw7w:APA91bHZrsQi_rXLvl3odpg8oFuq2tvSduLoqfL1A0TKAOLhEC2USK6zosaaaJfA3qb-RNTivNoHzdjte6Sf3B1nCKSxij9qY0QsauX0beX0LGw-ehLtGE4ixk8YqQ9bnxEk9xZuMoq9', '2024-09-23 14:55:25', '2024-09-23 14:55:25'),
(25, '152.58.204.241', 'cWshyOLkRMazgd72BRqQDA:APA91bFVIfNv5nzFB2_Zl-oAv12Gi8uieFBDI--hbX5X7f8in4vKUoKwa_KvpCBDMnhh-yiCFZs2rcvyOBCoEpNyo8Q2a35F1yPujrQQEFYP22-XjH9jwLPiDW6JRq-ONKdhpZkohjkR', '2024-09-23 17:37:16', '2024-09-23 17:37:16'),
(26, '115.245.253.83', 'cDZZC7udT1eiVnl5OmvC49:APA91bFL86YsssHNb9rgVfH6VHMz2juqbE3VgtyyjRMLUW1nlsNVDShm5A8Dyqua4rdCkiKuwKdWqDBNetmGGxCtK_2Tgkkfya3SGI7AW6J_v4WBh9uiv0g-xZQVfcHnFNeDaPPjsGhQ', '2024-10-03 15:41:15', '2024-10-03 15:41:15'),
(27, '115.245.253.83', 'cDZZC7udT1eiVnl5OmvC49:APA91bFL86YsssHNb9rgVfH6VHMz2juqbE3VgtyyjRMLUW1nlsNVDShm5A8Dyqua4rdCkiKuwKdWqDBNetmGGxCtK_2Tgkkfya3SGI7AW6J_v4WBh9uiv0g-xZQVfcHnFNeDaPPjsGhQ', '2024-10-03 15:41:18', '2024-10-03 15:41:18'),
(28, '152.58.222.112', 'eU5tb24NRtWroFgmCywute:APA91bHXEt8ITgB2P3lXGiCbjX2Kb_K7JuaRG0CP2UcAqP-wI7_4o-fKpvA2o-90J-3GRUGFMriFHuVClRt6vFqFrHD5pFaICz723viV4lMcQ5FDZdKiV3lP_ROUjTq4KqM-m6Qk8uTl', '2024-10-03 15:44:33', '2024-10-03 15:44:33'),
(29, '152.58.222.112', 'eU5tb24NRtWroFgmCywute:APA91bHXEt8ITgB2P3lXGiCbjX2Kb_K7JuaRG0CP2UcAqP-wI7_4o-fKpvA2o-90J-3GRUGFMriFHuVClRt6vFqFrHD5pFaICz723viV4lMcQ5FDZdKiV3lP_ROUjTq4KqM-m6Qk8uTl', '2024-10-03 15:44:34', '2024-10-03 15:44:34'),
(30, '223.185.21.126', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-03 15:55:20', '2024-10-03 15:55:20'),
(31, '42.104.212.195', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-03 18:25:48', '2024-10-03 18:25:48'),
(32, '42.104.212.195', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-03 18:25:49', '2024-10-03 18:25:49'),
(33, '42.104.212.195', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-03 18:26:46', '2024-10-03 18:26:46'),
(34, '42.104.212.195', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-03 18:26:50', '2024-10-03 18:26:50'),
(35, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 10:40:10', '2024-10-04 10:40:10'),
(36, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 10:43:25', '2024-10-04 10:43:25'),
(37, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 10:50:20', '2024-10-04 10:50:20'),
(38, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 10:50:21', '2024-10-04 10:50:21'),
(39, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 10:56:39', '2024-10-04 10:56:39'),
(40, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 11:02:22', '2024-10-04 11:02:22'),
(41, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 11:04:21', '2024-10-04 11:04:21'),
(42, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 11:05:16', '2024-10-04 11:05:16'),
(43, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 11:23:32', '2024-10-04 11:23:32'),
(44, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 11:46:45', '2024-10-04 11:46:45'),
(45, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 11:46:46', '2024-10-04 11:46:46'),
(46, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 11:52:19', '2024-10-04 11:52:19'),
(47, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 12:11:02', '2024-10-04 12:11:02'),
(48, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 14:31:35', '2024-10-04 14:31:35'),
(49, '223.185.25.68', 'd3OWOAj0Q4OgBD_CWJoIkb:APA91bFeW1-Pa49_GqlQvnD1UE9EM1A78uYGmyWl2Rz18l2DzLfQ7Xy_b7TyXhylcZKgAH6GOh3TI3aThibdmpD5KNJse6I8I5cR-LGCx2XQgFxW8dwY4EaVvIE8RARrhg8c9la7GL6T', '2024-10-04 14:31:35', '2024-10-04 14:31:35'),
(50, '2402:3a80:4580:7ac3:9c11:a9ff:feab:e597', 'dqRnepncSPS097a9rUsgJl:APA91bE0i5YBEhqAWlwYLcdupKCq6ykodyxSHyfKpwRvqpYbxSpvxbjHLWCnLlEikRM54OIXC5O-pKB0YBKqP50b20pnrrsBXwBlgFmzfeaAxw5O2LZdD-l1Nf9YU8I54R2DBoVpQFzU', '2024-10-07 10:41:07', '2024-10-07 10:41:07'),
(51, '42.104.195.207', 'dqRnepncSPS097a9rUsgJl:APA91bE0i5YBEhqAWlwYLcdupKCq6ykodyxSHyfKpwRvqpYbxSpvxbjHLWCnLlEikRM54OIXC5O-pKB0YBKqP50b20pnrrsBXwBlgFmzfeaAxw5O2LZdD-l1Nf9YU8I54R2DBoVpQFzU', '2024-10-07 10:41:07', '2024-10-07 10:41:07'),
(52, '42.104.195.207', 'dqRnepncSPS097a9rUsgJl:APA91bE0i5YBEhqAWlwYLcdupKCq6ykodyxSHyfKpwRvqpYbxSpvxbjHLWCnLlEikRM54OIXC5O-pKB0YBKqP50b20pnrrsBXwBlgFmzfeaAxw5O2LZdD-l1Nf9YU8I54R2DBoVpQFzU', '2024-10-07 10:41:07', '2024-10-07 10:41:07'),
(53, '42.104.195.207', 'dqRnepncSPS097a9rUsgJl:APA91bE0i5YBEhqAWlwYLcdupKCq6ykodyxSHyfKpwRvqpYbxSpvxbjHLWCnLlEikRM54OIXC5O-pKB0YBKqP50b20pnrrsBXwBlgFmzfeaAxw5O2LZdD-l1Nf9YU8I54R2DBoVpQFzU', '2024-10-07 10:41:08', '2024-10-07 10:41:08'),
(54, '42.104.195.207', 'dqRnepncSPS097a9rUsgJl:APA91bE0i5YBEhqAWlwYLcdupKCq6ykodyxSHyfKpwRvqpYbxSpvxbjHLWCnLlEikRM54OIXC5O-pKB0YBKqP50b20pnrrsBXwBlgFmzfeaAxw5O2LZdD-l1Nf9YU8I54R2DBoVpQFzU', '2024-10-07 10:41:21', '2024-10-07 10:41:21'),
(55, '2402:3a80:4580:7ac3:9c11:a9ff:feab:e597', 'dqRnepncSPS097a9rUsgJl:APA91bE0i5YBEhqAWlwYLcdupKCq6ykodyxSHyfKpwRvqpYbxSpvxbjHLWCnLlEikRM54OIXC5O-pKB0YBKqP50b20pnrrsBXwBlgFmzfeaAxw5O2LZdD-l1Nf9YU8I54R2DBoVpQFzU', '2024-10-07 10:41:32', '2024-10-07 10:41:32'),
(56, '152.58.247.128', 'dOuf_2wtTVmfFQFCWcje-G:APA91bFHy8oNwGTZjFrz7_g75NLLqzufhqcmCHnWRvusKKT65P7W0nXYoBlq8Te0I5OLW6zNhu7Dvdkvln0s8v3Pd29cg5T_yWc1-Oa7IFBykaOqPgnBFzOnVd1uJ3doPGhiJWYaDFkP', '2024-10-09 11:10:39', '2024-10-09 11:10:39'),
(57, '152.58.247.128', 'dOuf_2wtTVmfFQFCWcje-G:APA91bFHy8oNwGTZjFrz7_g75NLLqzufhqcmCHnWRvusKKT65P7W0nXYoBlq8Te0I5OLW6zNhu7Dvdkvln0s8v3Pd29cg5T_yWc1-Oa7IFBykaOqPgnBFzOnVd1uJ3doPGhiJWYaDFkP', '2024-10-09 11:10:40', '2024-10-09 11:10:40'),
(58, '223.185.26.60', 'eDQdB46xQOuYWiBoLsKEPX:APA91bFM6hQ64YxgzxzVIpAh_m0vvvXp-tcYcX-ke8zJaaV6swwUDrLvjmw6aye3B7etm90il-IUjATofm2XRmK-rBhjFfl6YabQ8XOPj-8p-OjlfclBW_d_W8qx7qiucIvJ5nIPJkf-', '2024-10-15 14:28:46', '2024-10-15 14:28:46'),
(59, '223.185.26.60', 'eDQdB46xQOuYWiBoLsKEPX:APA91bFM6hQ64YxgzxzVIpAh_m0vvvXp-tcYcX-ke8zJaaV6swwUDrLvjmw6aye3B7etm90il-IUjATofm2XRmK-rBhjFfl6YabQ8XOPj-8p-OjlfclBW_d_W8qx7qiucIvJ5nIPJkf-', '2024-10-15 14:28:46', '2024-10-15 14:28:46'),
(60, '152.58.223.106', 'cpeYdL_QQiGUnuI4R4DLKC:APA91bGgjLn21YHzCexdZ98K93lUUm-IGCh71WUJ8ApRywlSeJOxsC8F40s6Y9EF2lnB9E7xhEkvvxTg32FdiQasur8853sp2gGkgWRkhhUlGhVTdyZDIl0z6s4NTkwDLpBU8rXR1eOq', '2024-10-16 23:27:22', '2024-10-16 23:27:22'),
(61, '49.37.193.172', 'dJg-zQfgSmCDd2hQ4ztyV_:APA91bEbnjjVZmCl8QR1VI08PmbRL6kOR2s62LKGAawi5Vk4ginPBomgripDKL1q5Dys17y4XAkVzb5Db1GCMIs3j1mfXyIQ3RFlvckIEWTEN16Sbj3JC56LEY4mXL8WtiFRtg__0kQI', '2024-10-17 13:57:47', '2024-10-17 13:57:47'),
(62, '223.185.21.147', 'eDQdB46xQOuYWiBoLsKEPX:APA91bFn4TxJQigzwuVJv0JjhLUI5hHQwc2ZYHHozWQNF46tov-j8E3B2UY7PsJLZQQVMLN-L7JsSv6c7EQU85kv5KwlZ8e0svSJVJTvkq3qQLfSA_CfTFCZ9AcJaWAQiBZ4MOV-7MKM', '2024-10-17 15:22:19', '2024-10-17 15:22:19'),
(63, '223.185.21.147', 'eDQdB46xQOuYWiBoLsKEPX:APA91bFn4TxJQigzwuVJv0JjhLUI5hHQwc2ZYHHozWQNF46tov-j8E3B2UY7PsJLZQQVMLN-L7JsSv6c7EQU85kv5KwlZ8e0svSJVJTvkq3qQLfSA_CfTFCZ9AcJaWAQiBZ4MOV-7MKM', '2024-10-17 15:22:19', '2024-10-17 15:22:19'),
(64, '223.185.21.147', 'eDQdB46xQOuYWiBoLsKEPX:APA91bFn4TxJQigzwuVJv0JjhLUI5hHQwc2ZYHHozWQNF46tov-j8E3B2UY7PsJLZQQVMLN-L7JsSv6c7EQU85kv5KwlZ8e0svSJVJTvkq3qQLfSA_CfTFCZ9AcJaWAQiBZ4MOV-7MKM', '2024-10-17 15:36:26', '2024-10-17 15:36:26'),
(65, '223.185.21.147', 'eDQdB46xQOuYWiBoLsKEPX:APA91bFUSJwhPqKhEyvqxLGIr9xVAPs46Jv6t-WVLGy6867qOS7N0I5JsAO5EO01hCuVPNJ-zFcszeww3-f0lusgsQr-4snh7xi6CM_7jZITyIt8icUowiyxuZhUoccGlb96rOP5bZTW', '2024-10-17 15:56:59', '2024-10-17 15:56:59'),
(66, '152.58.199.151', 'fWHZvhlrSuOg0-Jlpf9gSA:APA91bHw-pui_Rj3gWTuylhd7mqcSCI0BGjp6k-VaSy9OvF29wdrlUn2Qj1m4dNf6tUNVQF7kcEZWUvj21o7-ViCLrBTMkzYdzxbP9toerLp63IF_mAvmwcjNn9Ig67iu932j5KKSR1k', '2024-10-18 14:07:34', '2024-10-18 14:07:34'),
(67, '152.58.199.114', 'fWHZvhlrSuOg0-Jlpf9gSA:APA91bHw-pui_Rj3gWTuylhd7mqcSCI0BGjp6k-VaSy9OvF29wdrlUn2Qj1m4dNf6tUNVQF7kcEZWUvj21o7-ViCLrBTMkzYdzxbP9toerLp63IF_mAvmwcjNn9Ig67iu932j5KKSR1k', '2024-10-18 14:46:38', '2024-10-18 14:46:38'),
(68, '152.58.198.32', 'fWHZvhlrSuOg0-Jlpf9gSA:APA91bHw-pui_Rj3gWTuylhd7mqcSCI0BGjp6k-VaSy9OvF29wdrlUn2Qj1m4dNf6tUNVQF7kcEZWUvj21o7-ViCLrBTMkzYdzxbP9toerLp63IF_mAvmwcjNn9Ig67iu932j5KKSR1k', '2024-10-18 16:37:12', '2024-10-18 16:37:12'),
(69, '152.58.198.116', 'diPmx163TAqr7kCUG2XYZF:APA91bEiiMCS4YqVBCuybAC-S6ES3YXhQK3RMSUjsu3d8GACVzEbhQZjziH3vIVyfraLcb3UsrvMUt9SFQFkKwjXPzfoGKo0QU_TzowXoJNLuVkvW0aUyKZY0_v-aEhNiEwJBg6wLxTx', '2024-10-18 16:52:07', '2024-10-18 16:52:07'),
(70, '152.58.198.116', 'fo4OlQxFTY6tkPGbfehaMD:APA91bFGVbHxwPlP2YfwLGD3sbF1An5lKNaLMR54cklbF_KJ_ColXmswSPz73brgGOUyXfjttxqU2qe_aVl8rkZIYOWlBLxzNHrCd505lCQkkBpR_yg_VZwHOV78gt0AYxcG7uimOC6O', '2024-10-18 17:15:44', '2024-10-18 17:15:44'),
(71, '152.58.198.222', 'dk7hIKXdS2emHd3EHuPsNz:APA91bEzapKBslovlGcRwPlSPQDRxLeacOJx4yhi5_OGQoq8ZT4tvAJQSVUqpcLPRV0C8QKDjGDn42qPZ09zlo6U1JX6aVKxP57lSb3hkRMtC8ukBkfcPu377zX7oNXHjLo0OnfLfs8E', '2024-10-19 10:08:26', '2024-10-19 10:08:26'),
(72, '152.58.198.222', 'dk7hIKXdS2emHd3EHuPsNz:APA91bEzapKBslovlGcRwPlSPQDRxLeacOJx4yhi5_OGQoq8ZT4tvAJQSVUqpcLPRV0C8QKDjGDn42qPZ09zlo6U1JX6aVKxP57lSb3hkRMtC8ukBkfcPu377zX7oNXHjLo0OnfLfs8E', '2024-10-19 10:08:27', '2024-10-19 10:08:27'),
(73, '152.58.198.222', 'dk7hIKXdS2emHd3EHuPsNz:APA91bEzapKBslovlGcRwPlSPQDRxLeacOJx4yhi5_OGQoq8ZT4tvAJQSVUqpcLPRV0C8QKDjGDn42qPZ09zlo6U1JX6aVKxP57lSb3hkRMtC8ukBkfcPu377zX7oNXHjLo0OnfLfs8E', '2024-10-19 10:08:30', '2024-10-19 10:08:30'),
(74, '152.58.198.222', 'dfPxJEtNQlCacfkttRoaAh:APA91bFmObFee5zm-J8lNw9vCEkhB9VgC3EF_a2YCQSrsBntO4btz1MBBCq4btZC2OoXzj5VT6-pmCkeDh45ACk236Ri24k0200Hha6D1MG8EuY4tRow3lvphMkc9JBo4D6JNmATh4qa', '2024-10-19 12:07:58', '2024-10-19 12:07:58'),
(75, '152.58.198.222', 'dfPxJEtNQlCacfkttRoaAh:APA91bFmObFee5zm-J8lNw9vCEkhB9VgC3EF_a2YCQSrsBntO4btz1MBBCq4btZC2OoXzj5VT6-pmCkeDh45ACk236Ri24k0200Hha6D1MG8EuY4tRow3lvphMkc9JBo4D6JNmATh4qa', '2024-10-19 12:15:05', '2024-10-19 12:15:05'),
(76, '152.58.198.222', 'dfPxJEtNQlCacfkttRoaAh:APA91bFmObFee5zm-J8lNw9vCEkhB9VgC3EF_a2YCQSrsBntO4btz1MBBCq4btZC2OoXzj5VT6-pmCkeDh45ACk236Ri24k0200Hha6D1MG8EuY4tRow3lvphMkc9JBo4D6JNmATh4qa', '2024-10-19 12:16:19', '2024-10-19 12:16:19'),
(77, '49.37.193.172', 'fNYYwq5mTfKrVw8-sWRlNP:APA91bFfLQuNZU6FToX4WSjghjEUQcYuBGDZuSAqDrfXDgLy_c4-ImqsbEK_WCybNHsrEcEFNFUGD7cXKg5m3lb-rh_-RXGL4mth1cWg2HctSHgAITDc5TKUvgPgXqpfKwvgKtbhbjxJ', '2024-10-19 12:26:40', '2024-10-19 12:26:40'),
(78, '152.58.198.222', 'dKRnkFSFTu6X-kloJnvVtj:APA91bHWD8su6AXKFcqIl_Pi9FvDp0r-J5t0FMKNqsNXM5ixjoFgqIG4rbMxvP-cz5fLnuwdqlQ_2ux_A6JHYshKYhrQ8TRqNFAbP_73Rkp3Q3kP-oifTWQQgH6E2-lq2Yf7FrIlnF3v', '2024-10-19 12:54:56', '2024-10-19 12:54:56'),
(79, '152.58.198.222', 'dKRnkFSFTu6X-kloJnvVtj:APA91bHWD8su6AXKFcqIl_Pi9FvDp0r-J5t0FMKNqsNXM5ixjoFgqIG4rbMxvP-cz5fLnuwdqlQ_2ux_A6JHYshKYhrQ8TRqNFAbP_73Rkp3Q3kP-oifTWQQgH6E2-lq2Yf7FrIlnF3v', '2024-10-19 12:56:08', '2024-10-19 12:56:08'),
(80, '152.58.198.222', 'dpcxZovPThys6F_yXrA5_x:APA91bG1wmnsg3zdFZkUgYdCdfBL92mOnAbNuKcpxUQFKkUGu_5j3WTXH4Q0yNyY3fhDk_TO82LD4taQOqTocfFIOWjHIPLxwJLkQJkTa8d7TlDeHh0fu9xaPnbp9kweB0Qygm6ManNe', '2024-10-19 13:38:16', '2024-10-19 13:38:16'),
(81, '152.58.198.222', 'dpcxZovPThys6F_yXrA5_x:APA91bG1wmnsg3zdFZkUgYdCdfBL92mOnAbNuKcpxUQFKkUGu_5j3WTXH4Q0yNyY3fhDk_TO82LD4taQOqTocfFIOWjHIPLxwJLkQJkTa8d7TlDeHh0fu9xaPnbp9kweB0Qygm6ManNe', '2024-10-19 13:49:13', '2024-10-19 13:49:13'),
(82, '152.58.198.222', 'dpcxZovPThys6F_yXrA5_x:APA91bG1wmnsg3zdFZkUgYdCdfBL92mOnAbNuKcpxUQFKkUGu_5j3WTXH4Q0yNyY3fhDk_TO82LD4taQOqTocfFIOWjHIPLxwJLkQJkTa8d7TlDeHh0fu9xaPnbp9kweB0Qygm6ManNe', '2024-10-19 13:49:15', '2024-10-19 13:49:15'),
(83, '152.58.198.222', 'dpcxZovPThys6F_yXrA5_x:APA91bG1wmnsg3zdFZkUgYdCdfBL92mOnAbNuKcpxUQFKkUGu_5j3WTXH4Q0yNyY3fhDk_TO82LD4taQOqTocfFIOWjHIPLxwJLkQJkTa8d7TlDeHh0fu9xaPnbp9kweB0Qygm6ManNe', '2024-10-19 13:49:18', '2024-10-19 13:49:18'),
(84, '152.58.198.222', 'dpcxZovPThys6F_yXrA5_x:APA91bG1wmnsg3zdFZkUgYdCdfBL92mOnAbNuKcpxUQFKkUGu_5j3WTXH4Q0yNyY3fhDk_TO82LD4taQOqTocfFIOWjHIPLxwJLkQJkTa8d7TlDeHh0fu9xaPnbp9kweB0Qygm6ManNe', '2024-10-19 13:49:19', '2024-10-19 13:49:19'),
(85, '152.58.198.222', 'dpcxZovPThys6F_yXrA5_x:APA91bG1wmnsg3zdFZkUgYdCdfBL92mOnAbNuKcpxUQFKkUGu_5j3WTXH4Q0yNyY3fhDk_TO82LD4taQOqTocfFIOWjHIPLxwJLkQJkTa8d7TlDeHh0fu9xaPnbp9kweB0Qygm6ManNe', '2024-10-19 13:49:19', '2024-10-19 13:49:19'),
(86, '152.58.198.222', 'dpcxZovPThys6F_yXrA5_x:APA91bG1wmnsg3zdFZkUgYdCdfBL92mOnAbNuKcpxUQFKkUGu_5j3WTXH4Q0yNyY3fhDk_TO82LD4taQOqTocfFIOWjHIPLxwJLkQJkTa8d7TlDeHh0fu9xaPnbp9kweB0Qygm6ManNe', '2024-10-19 13:49:19', '2024-10-19 13:49:19'),
(87, '152.58.198.222', 'dpcxZovPThys6F_yXrA5_x:APA91bG1wmnsg3zdFZkUgYdCdfBL92mOnAbNuKcpxUQFKkUGu_5j3WTXH4Q0yNyY3fhDk_TO82LD4taQOqTocfFIOWjHIPLxwJLkQJkTa8d7TlDeHh0fu9xaPnbp9kweB0Qygm6ManNe', '2024-10-19 13:49:21', '2024-10-19 13:49:21'),
(88, '152.58.247.130', 'clBA4b9GSNKRzCV5ZW2CdH:APA91bENGgUUz9DEWXI_qVlLY3ZENAYm-h0Ccm3oC3ZDOMPQBttR3rkkA2pFkAHNQdulw5Ced-8PTO8--RgKK-Ba12cr1V9_li0wPuQhJ3YmWSRPq2sylqYbmuSCeyWmPF16TDyBKlhl', '2024-10-19 14:31:05', '2024-10-19 14:31:05'),
(89, '152.58.247.130', 'eDQdB46xQOuYWiBoLsKEPX:APA91bGi0HGFOm5Jo1LRyH3jfF_rFDwh2GhwGQHvQKdjPvmC8eYwa2dl7yijgpPUp4D8H-txPitGIqil1GR4Fxi8jKc3tG5jCl13KUykwIgVoySXjm3ezn2wnHyhMdsuc5xuIVwqeB0c', '2024-10-19 14:35:37', '2024-10-19 14:35:37'),
(90, '2409:40f4:204b:6614:ce:dcff:fee0:7166', 'eDQdB46xQOuYWiBoLsKEPX:APA91bGi0HGFOm5Jo1LRyH3jfF_rFDwh2GhwGQHvQKdjPvmC8eYwa2dl7yijgpPUp4D8H-txPitGIqil1GR4Fxi8jKc3tG5jCl13KUykwIgVoySXjm3ezn2wnHyhMdsuc5xuIVwqeB0c', '2024-10-19 14:35:38', '2024-10-19 14:35:38'),
(91, '2409:40f4:204b:6614:ce:dcff:fee0:7166', 'eDQdB46xQOuYWiBoLsKEPX:APA91bGi0HGFOm5Jo1LRyH3jfF_rFDwh2GhwGQHvQKdjPvmC8eYwa2dl7yijgpPUp4D8H-txPitGIqil1GR4Fxi8jKc3tG5jCl13KUykwIgVoySXjm3ezn2wnHyhMdsuc5xuIVwqeB0c', '2024-10-19 14:35:38', '2024-10-19 14:35:38'),
(92, '152.58.247.130', 'f3RLRJd0QXma_NIRklE_oI:APA91bEYEw2PZfE6P-96nq8bV9Enx2Fk3H5zgaSIkvrJtn_JZAH-NGBLF9jQFIEXMOk5bvFALsL-clllOXLD1EIR8eEnUvPqEqjzY3zHZQGemFrHRlwLWkjuizp6oeLF4lCPrbV-v5hh', '2024-10-19 15:07:39', '2024-10-19 15:07:39'),
(93, '152.58.247.130', 'f3RLRJd0QXma_NIRklE_oI:APA91bEYEw2PZfE6P-96nq8bV9Enx2Fk3H5zgaSIkvrJtn_JZAH-NGBLF9jQFIEXMOk5bvFALsL-clllOXLD1EIR8eEnUvPqEqjzY3zHZQGemFrHRlwLWkjuizp6oeLF4lCPrbV-v5hh', '2024-10-19 15:09:00', '2024-10-19 15:09:00'),
(94, '152.58.247.130', 'dujzN7q5TL6tVwKM7_Rooj:APA91bGFcaDtttphEklQKjfitZPn9PQkZ7SIjIbetpQ1241oMQ2HiB_leKrjYoM7JjnKeitFCa6nvzVw61YbLNgZttRO2RRtGPs5KOjmBG4TY8uH0rEhAeNo3iWN5yn-H9sYS1oHJkjl', '2024-10-19 16:40:15', '2024-10-19 16:40:15'),
(95, '152.58.247.130', 'dujzN7q5TL6tVwKM7_Rooj:APA91bGFcaDtttphEklQKjfitZPn9PQkZ7SIjIbetpQ1241oMQ2HiB_leKrjYoM7JjnKeitFCa6nvzVw61YbLNgZttRO2RRtGPs5KOjmBG4TY8uH0rEhAeNo3iWN5yn-H9sYS1oHJkjl', '2024-10-19 16:47:05', '2024-10-19 16:47:05'),
(96, '152.58.247.83', 'f6ZZM3OJT-q2c_WV7rE6aX:APA91bFDiVjhZ2U75Z1GyipRhV6zwOPp7NnvP-2lwM0LdiiLQqovhJ1nSchdgBaHPnLuNdbFSieJ_MioDPexWjHprpI10_o6gNl7R38g3SQLXMNFtGAygIMqwxQRQLbhfQnvmfBbizJ4', '2024-10-19 17:36:18', '2024-10-19 17:36:18'),
(97, '223.185.22.55', 'eDQdB46xQOuYWiBoLsKEPX:APA91bHPhJbLLcNPIZxgymWeTwFefj4EKoew63-28PkBrainkohhsV16ZkSWEuoKSgHgUTFxS5aV-M0lpuuGwB5aat2HCeifhYBwX-9Pucpj9qS5ocezWHhffpXD9uB2mZejskRjqDKh', '2024-10-22 16:48:03', '2024-10-22 16:48:03'),
(98, '223.185.22.55', 'eDQdB46xQOuYWiBoLsKEPX:APA91bHPhJbLLcNPIZxgymWeTwFefj4EKoew63-28PkBrainkohhsV16ZkSWEuoKSgHgUTFxS5aV-M0lpuuGwB5aat2HCeifhYBwX-9Pucpj9qS5ocezWHhffpXD9uB2mZejskRjqDKh', '2024-10-22 16:51:18', '2024-10-22 16:51:18'),
(99, '223.185.22.55', 'eDQdB46xQOuYWiBoLsKEPX:APA91bF_nnvs8g0ukxbBLMygslCRVOVBJohiYOP9qTNj-cdD9qqzKvNr_E4mRh8iC8wp2mF6hPgt4IXfM0jonTtxcM9XPBncRh6dZWNT5zoWTJ3zxsQ4k38wHfPrBFWAIz1AOQ2NIpS2', '2024-10-22 17:03:19', '2024-10-22 17:03:19'),
(100, '223.185.22.55', 'eDQdB46xQOuYWiBoLsKEPX:APA91bENUqJ0cWddGf8pISy8yDy4BR79HtEFJ8OoddFoj0cLVMevTSwPSOooCPD5dWFm8nb4bv1UTLRQQNOO01ibKs_xJof6blBHcjBzDPGvzXSjMkFR6c5YPEugcqno75-JvYx4CS7E', '2024-10-22 17:05:34', '2024-10-22 17:05:34'),
(101, '223.185.22.55', 'fteC0GfyS_SodH8iZofg0E:APA91bHmxzLcnOQ8Zao-MYj1jYEb1rQvNoqypLDGnezp9sPK3fvTXTq5Cds2Xz1l2PmZaJXRxZ4G7SxpuK0VXqUGFxyu5r33rHqAe4Osr20BwNCVlzruDPwiOPICNWXAPJcozqcqla4s', '2024-10-22 17:12:50', '2024-10-22 17:12:50'),
(102, '223.185.22.55', 'fteC0GfyS_SodH8iZofg0E:APA91bHmxzLcnOQ8Zao-MYj1jYEb1rQvNoqypLDGnezp9sPK3fvTXTq5Cds2Xz1l2PmZaJXRxZ4G7SxpuK0VXqUGFxyu5r33rHqAe4Osr20BwNCVlzruDPwiOPICNWXAPJcozqcqla4s', '2024-10-22 17:21:26', '2024-10-22 17:21:26'),
(103, '223.185.21.48', 'eDQdB46xQOuYWiBoLsKEPX:APA91bE7Ckdtfq3ZVM2i4Ip0W7yiUtUtdH3RzXb0MxZD3P6orPARnZD5v6R3z8vddmV1enQvxZVgb9IhHYCvFNguNz2GIQk2DVKFlwXyrfgww2MKFI96IgVrhK6WKKApuOHrLg68qf26', '2024-10-23 11:10:14', '2024-10-23 11:10:14'),
(104, '152.58.248.239', 'eFkwTqx1TfueGpwKCYfLuC:APA91bEOFq5FiRRWQvgTbPkiK1_3pznx7hwIhJlU_aL33E7CKAos7BkmfqoEb64MGJPl1io3XZvwzLzmhCJ4XMqX1D5fdD0DUB28Nt2iTEQLwh2HH3j-RNtKn-G9b3wD1LeEM_inKNLg', '2024-10-23 14:45:12', '2024-10-23 14:45:12'),
(105, '152.58.248.239', 'ecc5rfG5Tq6LsR1eiQK359:APA91bEJPg4Pnt3uUtc8Jcb2rvkwofyQodTYQBss3Azh_pIwuLKJWYGsZxpveeCkji7Uy8utiu_wRreq98-ihYMCq-D_w7VsGir7sxK9KXDy2R5wUTe2rw_fyOzouJpiStvoyXpXH_oQ', '2024-10-23 14:48:21', '2024-10-23 14:48:21'),
(106, '152.58.248.239', 'e56pN_nXQmSTYFJbgSWNSA:APA91bFERaKcc_Ai6HYA8KJBsg44mkokO5szhe-NPpQgYAbjqrG6oVILk2j7wPviEejBpf8BvcwDyGQeXEGI3mTZEi_Z-eAWsqnkisBtMbqGmX_naIg9gJDDZVWhLgj5ZRbslzE4PtiV', '2024-10-23 15:15:49', '2024-10-23 15:15:49'),
(107, '152.58.248.239', 'e56pN_nXQmSTYFJbgSWNSA:APA91bFERaKcc_Ai6HYA8KJBsg44mkokO5szhe-NPpQgYAbjqrG6oVILk2j7wPviEejBpf8BvcwDyGQeXEGI3mTZEi_Z-eAWsqnkisBtMbqGmX_naIg9gJDDZVWhLgj5ZRbslzE4PtiV', '2024-10-23 15:15:52', '2024-10-23 15:15:52'),
(108, '152.58.248.239', 'e56pN_nXQmSTYFJbgSWNSA:APA91bFERaKcc_Ai6HYA8KJBsg44mkokO5szhe-NPpQgYAbjqrG6oVILk2j7wPviEejBpf8BvcwDyGQeXEGI3mTZEi_Z-eAWsqnkisBtMbqGmX_naIg9gJDDZVWhLgj5ZRbslzE4PtiV', '2024-10-23 15:15:53', '2024-10-23 15:15:53'),
(109, '152.58.248.239', 'e56pN_nXQmSTYFJbgSWNSA:APA91bFERaKcc_Ai6HYA8KJBsg44mkokO5szhe-NPpQgYAbjqrG6oVILk2j7wPviEejBpf8BvcwDyGQeXEGI3mTZEi_Z-eAWsqnkisBtMbqGmX_naIg9gJDDZVWhLgj5ZRbslzE4PtiV', '2024-10-23 15:22:39', '2024-10-23 15:22:39'),
(110, '152.58.248.239', 'e56pN_nXQmSTYFJbgSWNSA:APA91bFERaKcc_Ai6HYA8KJBsg44mkokO5szhe-NPpQgYAbjqrG6oVILk2j7wPviEejBpf8BvcwDyGQeXEGI3mTZEi_Z-eAWsqnkisBtMbqGmX_naIg9gJDDZVWhLgj5ZRbslzE4PtiV', '2024-10-23 15:25:19', '2024-10-23 15:25:19'),
(111, '152.58.248.239', 'd3Srb3rXRt2JS-PSXZbT38:APA91bFp3Vsk6sy1W6mB0guzt4UZrFh40zL-1pML4Hm5ip_C_eleV-NC2fUNZgllSOD6vbBuxhPGdKf50_hmCGJlU3JRsdQZW-eP_f5IZw9gnEaj1ldBZCnhoiDG_j3swxZ5jhIVQSlZ', '2024-10-23 15:34:48', '2024-10-23 15:34:48'),
(112, '152.58.248.239', 'd3Srb3rXRt2JS-PSXZbT38:APA91bFp3Vsk6sy1W6mB0guzt4UZrFh40zL-1pML4Hm5ip_C_eleV-NC2fUNZgllSOD6vbBuxhPGdKf50_hmCGJlU3JRsdQZW-eP_f5IZw9gnEaj1ldBZCnhoiDG_j3swxZ5jhIVQSlZ', '2024-10-23 15:44:09', '2024-10-23 15:44:09'),
(113, '152.58.248.239', 'eDQdB46xQOuYWiBoLsKEPX:APA91bHI10YOcQAd7ysmfL9u08tKTk52zrIb78VHglHoLjiyqTvYfp40VgEJh4PrXVcygTrP8v1VjOxs2Yyl2m7qW47KmsNH9Ml1fXiCnB69COC3wuTA52UEjl6umdkXQ1KH3NaQjN_j', '2024-10-23 16:26:02', '2024-10-23 16:26:02'),
(114, '152.58.248.239', 'eDQdB46xQOuYWiBoLsKEPX:APA91bHI10YOcQAd7ysmfL9u08tKTk52zrIb78VHglHoLjiyqTvYfp40VgEJh4PrXVcygTrP8v1VjOxs2Yyl2m7qW47KmsNH9Ml1fXiCnB69COC3wuTA52UEjl6umdkXQ1KH3NaQjN_j', '2024-10-23 16:26:55', '2024-10-23 16:26:55'),
(115, '223.185.27.138', 'fzv_DyoqT5m0TJaIM3-7vk:APA91bGegCRpYXSWdKVIop3OHpOIQck6MNgvSkq2iWFR3-1IntusNmsJNzcMESGaH9Hz4xPjzcAO3rdKVWnjCePHBtIO1b0Gs2MFmofmuIj60P76lm6Cp3VdMqEGRulTP9tNg7qanc3W', '2024-10-23 16:32:21', '2024-10-23 16:32:21'),
(116, '152.58.248.239', 'eDQdB46xQOuYWiBoLsKEPX:APA91bHI10YOcQAd7ysmfL9u08tKTk52zrIb78VHglHoLjiyqTvYfp40VgEJh4PrXVcygTrP8v1VjOxs2Yyl2m7qW47KmsNH9Ml1fXiCnB69COC3wuTA52UEjl6umdkXQ1KH3NaQjN_j', '2024-10-23 16:38:29', '2024-10-23 16:38:29'),
(117, '152.58.248.239', 'eDQdB46xQOuYWiBoLsKEPX:APA91bHI10YOcQAd7ysmfL9u08tKTk52zrIb78VHglHoLjiyqTvYfp40VgEJh4PrXVcygTrP8v1VjOxs2Yyl2m7qW47KmsNH9Ml1fXiCnB69COC3wuTA52UEjl6umdkXQ1KH3NaQjN_j', '2024-10-23 16:40:28', '2024-10-23 16:40:28'),
(118, '152.58.248.117', 'eDQdB46xQOuYWiBoLsKEPX:APA91bFKsjsVu103Ur4F0jzEqQO0X2vyaa3Hj9IV_oDs4mUuUwlWQJKllmioxFr0eUyinwdM-7wY-FbFqOmpH9JRnz7DmD88tR1qjEIsGhFGOermds6js8S1K4bOIUEw7Emx7tOryO-8', '2024-10-23 17:15:39', '2024-10-23 17:15:39'),
(119, '152.58.248.166', 'eLv6usPlSaO--GgbzaksgP:APA91bFuwZSFgIwl0NStwrmGeShuy_fl5uj0qd8L1vN9UbIa1L8NLvyeA9WORfiSsz-Z8SOKfnAvtlfc-Sr39pSudd9-ePsdud_8a75fPhiddKK1nFxSA_fE5CUgqnO5u4qQvZ4PxQbL', '2024-10-23 17:47:44', '2024-10-23 17:47:44'),
(120, '152.58.249.224', 'eLamhHtVRRSVuGZZUI-SDw:APA91bErurqMm1jiZRWrz4vr6Qzxa-q4CJrBHjdKl1nH6eLJ26-YYoHmxBrEI6YYXM6RSAfURhXNIwXs-PP_QY9dnUrCQTIi_V6FyoLUQYWnmiWAbleldiaOdmu8UbKLOvqn_gGOhOB9', '2024-10-23 19:36:50', '2024-10-23 19:36:50'),
(121, '152.58.249.34', 'eXQkGJGBT0eR1E1kaftn_e:APA91bHxcGfQjgszrbatCoosQe3xyaJWh5KW7FzQrySiUSzZK64AKM8WozseFoAPc9pZazqcdM0df8THX0JJLE4q2hNk-C6Nkq0Hv_xjtlLmCQHuTan_jDO_Qf3KLU1hb9_ETkkCdPdk', '2024-10-23 20:13:31', '2024-10-23 20:13:31'),
(122, '2409:40f4:2056:74de:8445:7aff:fe7a:a7e1', 'eXQkGJGBT0eR1E1kaftn_e:APA91bHxcGfQjgszrbatCoosQe3xyaJWh5KW7FzQrySiUSzZK64AKM8WozseFoAPc9pZazqcdM0df8THX0JJLE4q2hNk-C6Nkq0Hv_xjtlLmCQHuTan_jDO_Qf3KLU1hb9_ETkkCdPdk', '2024-10-23 20:13:35', '2024-10-23 20:13:35'),
(123, '223.185.21.195', 'c8ybN6YDTTSCkiO8yVLOI8:APA91bHpvLKjeKsSJ3eZzpxdfenXn9BAmWT74xqpIoqk5ODK-4aRsUdbspuIgb1EhUHxx6i5jqV1R4EsukaOjkZJOcG6UJ5rj5l4BPhIXv0v5SqTOYcm5QA', '2024-10-24 10:12:50', '2024-10-24 10:12:50'),
(124, '152.58.246.65', 'eDQdB46xQOuYWiBoLsKEPX:APA91bFRBOYGjEEHla1KpvghTS1cljG-rf0NCLYEbN3jTLPO7DCmp1dOrq0oBhot6NI9ewAqPF8waKwWbahmb7ZV7WlMPx0nzynnl8j0HFpqIZAzEGgAJznYxxn8XUMA-9x4b5Bt78Qd', '2024-10-24 12:32:38', '2024-10-24 12:32:38'),
(125, '223.185.21.195', 'd86-tSL4SzeCcGiG07y-Ps:APA91bEcEdnGFdzbPeNJvdhFXV5Wq4TUU-KHTbT_NG3ph-Lsu5p1m32bbw6k5NSlqNmhKQRAlB4F5NWnYpUDZlPCRXZAjsgOL8r_3zgUbd8i09zUKm5yDfQ', '2024-10-24 16:15:01', '2024-10-24 16:15:01'),
(126, '152.58.246.33', 'eDQdB46xQOuYWiBoLsKEPX:APA91bGO7KqzSVxm-3rI3APHL2X-u1p9hogVJcS2wxjTU9_p1_qqrWpgIpGeyIDrTMhJPYiFUc_m0jC3aro9hmazDgq0Jyr9PiU91cvPdFFo6RHKWulAEgMiPWSZeU5CTi-Krx3siTKO', '2024-10-24 16:37:37', '2024-10-24 16:37:37'),
(127, '223.185.22.241', 'eDQdB46xQOuYWiBoLsKEPX:APA91bGO7KqzSVxm-3rI3APHL2X-u1p9hogVJcS2wxjTU9_p1_qqrWpgIpGeyIDrTMhJPYiFUc_m0jC3aro9hmazDgq0Jyr9PiU91cvPdFFo6RHKWulAEgMiPWSZeU5CTi-Krx3siTKO', '2024-11-05 11:07:58', '2024-11-05 11:07:58'),
(128, '152.58.249.48', 'eDQdB46xQOuYWiBoLsKEPX:APA91bGO7KqzSVxm-3rI3APHL2X-u1p9hogVJcS2wxjTU9_p1_qqrWpgIpGeyIDrTMhJPYiFUc_m0jC3aro9hmazDgq0Jyr9PiU91cvPdFFo6RHKWulAEgMiPWSZeU5CTi-Krx3siTKO', '2024-11-05 21:12:48', '2024-11-05 21:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_ids` varchar(255) DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `add_ons` varchar(255) DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `price` decimal(24,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(24,2) NOT NULL DEFAULT 0.00,
  `tax_type` varchar(20) NOT NULL DEFAULT 'percent',
  `discount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) NOT NULL DEFAULT 'percent',
  `available_time_starts` time DEFAULT NULL,
  `available_time_ends` time DEFAULT NULL,
  `veg` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_count` int(11) NOT NULL DEFAULT 0,
  `avg_rating` double(16,14) NOT NULL DEFAULT 0.00000000000000,
  `rating_count` int(11) NOT NULL DEFAULT 0,
  `rating` varchar(255) DEFAULT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) DEFAULT 0,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `food_variations` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `organic` tinyint(1) NOT NULL DEFAULT 0,
  `maximum_cart_quantity` int(11) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  `is_halal` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `image`, `category_id`, `category_ids`, `variations`, `add_ons`, `attributes`, `choice_options`, `price`, `tax`, `tax_type`, `discount`, `discount_type`, `available_time_starts`, `available_time_ends`, `veg`, `status`, `store_id`, `created_at`, `updated_at`, `order_count`, `avg_rating`, `rating_count`, `rating`, `module_id`, `stock`, `unit_id`, `images`, `food_variations`, `slug`, `recommended`, `organic`, `maximum_cart_quantity`, `is_approved`, `is_halal`) VALUES
(1, 'Demo Product', 'Demo Product Description', '2023-08-16-64dca91404b64.png', 2, '[{\"id\":\"1\",\"position\":1},{\"id\":\"2\",\"position\":2}]', '[]', '[]', '[]', '[]', 10.00, 0.00, 'percent', 0.00, 'percent', '00:00:00', '23:59:59', 0, 1, 1, '2023-08-15 23:46:44', '2023-08-16 00:00:05', 0, 0.00000000000000, 0, NULL, 1, 10, NULL, '[\"2023-08-16-64dca9140233e.png\",\"2023-08-16-64dcac358a7ea.png\"]', '[]', 'demo-product', 0, 1, 2, 1, 0),
(2, 'Chicken biryani', 'Chicken biryani', '2024-09-20-66ed6509c5806.png', 1, '[{\"id\":\"1\",\"position\":1}]', '[{\"type\":\"Quater\",\"price\":120,\"stock\":999},{\"type\":\"Half\",\"price\":190,\"stock\":999}]', '[]', '[\"1\"]', '[{\"name\":\"choice_1\",\"title\":\"Category\",\"options\":[\"Quater \",\"Half\"]}]', 120.00, 0.00, 'percent', 0.00, 'percent', '00:00:00', '23:59:59', 0, 1, 1, '2024-09-20 07:05:29', '2024-09-20 07:05:29', 0, 0.00000000000000, 0, NULL, 1, 1998, NULL, '[{\"img\":\"2024-09-20-66ed6509c4f38.png\",\"storage\":\"public\"}]', '[]', 'chicken-biryani', 0, 1, 10, 1, 1),
(3, 'Pani Poori', 'Pani Poori', '2024-09-24-66f2d31523899.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 41.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 20:26:21', '2024-10-02 23:14:49', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2d328d9267.png\",\"storage\":\"public\"}]', '[]', 'pani-poori', 0, 0, 20, 1, 0),
(4, 'Masala Poori', 'Masala Poori', '2024-09-24-66f2d4b4992c5.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 47.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 20:33:16', '2024-10-02 23:15:19', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2d4b498ad2.png\",\"storage\":\"public\"}]', '[]', 'masala-poori', 0, 0, 20, 1, 0),
(5, 'Dahi Poori', 'Dahi poori', '2024-09-24-66f2d689915c9.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 65.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 20:41:05', '2024-10-02 23:15:40', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2d6dbe3ab3.png\",\"storage\":\"public\"}]', '[]', 'dahi-poori', 0, 0, 20, 1, 0),
(6, 'Sev Puri', 'Sev puri', '2024-09-24-66f2eeb73c1f1.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 65.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:24:15', '2024-10-02 23:16:04', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2eeb73a071.png\",\"storage\":\"public\"}]', '[]', 'sev-puri', 0, 0, 60, 1, 0),
(7, 'Bhel Puri', 'Bhel puri', '2024-09-24-66f2ef26c7566.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:26:06', '2024-10-02 23:16:36', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2ef26c6c7f.png\",\"storage\":\"public\"}]', '[]', 'bhel-puri', 0, 0, 60, 1, 0),
(8, 'Dhai Bhel Puri', 'Dhai bhel puri', '2024-09-24-66f2efa33309f.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:28:11', '2024-10-02 23:16:59', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2efb5288da.png\",\"storage\":\"public\"}]', '[]', 'dhai-bhel-puri', 0, 0, 60, 1, 0),
(9, 'Samosa', 'Samosa', '2024-09-24-66f2f0155029d.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 24.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:30:05', '2024-10-02 23:17:31', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f0154fb51.png\",\"storage\":\"public\"}]', '[]', 'samosa', 0, 0, 60, 1, 0),
(10, 'Samosa Chat', 'Samosa chat', '2024-09-24-66f2f076d88f4.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 65.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:31:42', '2024-10-02 23:18:00', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f076d8193.png\",\"storage\":\"public\"}]', '[]', 'samosa-chat', 0, 0, 60, 1, 0),
(11, 'Dhai Samosa', 'Dhai samosa', '2024-09-24-66f2f0d4547b4.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 76.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:33:16', '2024-10-02 23:18:27', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f0d453fad.png\",\"storage\":\"public\"}]', '[]', 'dhai-samosa', 0, 0, 60, 1, 0),
(12, 'Pav Bhaji', 'Pav bhaji', '2024-09-24-66f2f12ee067b.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 88.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:34:46', '2024-10-02 23:19:04', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f12edffbf.png\",\"storage\":\"public\"}]', '[]', 'pav-bhaji', 0, 0, 60, 1, 0),
(13, 'Mushroom Pav Bhaji', 'Mushroom pav bhaji', '2024-09-24-66f2f21a25408.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 112.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:38:42', '2024-10-02 23:19:20', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f21a24d47.png\",\"storage\":\"public\"}]', '[]', 'mushroom-pav-bhaji', 0, 0, 60, 1, 0),
(14, 'Paneer Pav Bhaji', 'Paneer pav bhaji', '2024-09-24-66f2f2ce9455f.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 100.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:41:42', '2024-10-02 23:19:39', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f2ce93ce9.png\",\"storage\":\"public\"}]', '[]', 'paneer-pav-bhaji', 0, 0, 60, 1, 0),
(15, 'Cheese Pav Bhaji', 'Cheese pav bhaji', '2024-09-24-66f2f31fc64c9.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 100.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:43:03', '2024-10-02 23:20:02', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f31fc5bc9.png\",\"storage\":\"public\"}]', '[]', 'cheese-pav-bhaji', 0, 0, 60, 1, 0),
(16, 'Kachori', 'Kachori', '2024-09-24-66f2f824559dc.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 29.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:45:53', '2024-10-02 23:20:33', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f824551bf.png\",\"storage\":\"public\"}]', '[]', 'kachori', 0, 0, 60, 1, 0),
(17, 'Dhai Kachori', 'Dhai kachori', '2024-09-24-66f2f41e94ea8.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:47:18', '2024-10-02 23:21:06', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f41e9470b.png\",\"storage\":\"public\"}]', '[]', 'dhai-kachori', 0, 0, 60, 1, 0),
(18, 'Masala Kachori', 'Masala kachori', '2024-09-24-66f2f45fcca05.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 65.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:48:23', '2024-10-02 23:21:25', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f45fcc342.png\",\"storage\":\"public\"}]', '[]', 'masala-kachori', 0, 0, 60, 1, 0),
(19, 'Papdi Chat', 'Papdi chat', '2024-09-24-66f2f55b0fa29.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:52:35', '2024-10-02 23:22:03', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f55b0f193.png\",\"storage\":\"public\"}]', '[]', 'papdi-chat', 0, 0, 60, 1, 0),
(20, 'Dhai Papdi', 'Dhai papdi', '2024-09-24-66f2f59ae5a8c.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 65.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:53:38', '2024-10-02 23:22:29', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f59ae51eb.png\",\"storage\":\"public\"}]', '[]', 'dhai-papdi', 0, 0, 60, 1, 0),
(21, 'Samosa Fry', 'Samosa fry', '2024-09-24-66f2f5e52c533.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 76.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:54:53', '2024-10-02 23:22:50', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f5e52be15.png\",\"storage\":\"public\"}]', '[]', 'samosa-fry', 0, 0, 60, 1, 0),
(22, 'Fry Pav Bhaji', 'Fry pav bhaji', '2024-09-24-66f2f623dc982.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 112.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 22:55:55', '2024-10-02 23:23:09', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f623dc330.png\",\"storage\":\"public\"}]', '[]', 'fry-pav-bhaji', 0, 0, 60, 1, 0),
(23, 'Aloo Puri', 'Aloo puri', '2024-09-24-66f2f76d3eeea.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 23:01:25', '2024-10-02 23:23:53', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f76d3e7e8.png\",\"storage\":\"public\"}]', '[]', 'aloo-puri', 0, 0, 60, 1, 0),
(24, 'Kachori Fry', 'Kachori fry', '2024-09-24-66f2f7a7334dc.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 76.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 23:02:23', '2024-10-02 23:24:24', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f7a732d66.png\",\"storage\":\"public\"}]', '[]', 'kachori-fry', 0, 0, 60, 1, 0),
(25, 'Special Bhel Puri', 'Special bhel puri', '2024-09-24-66f2f7ffb3eb4.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 2, '2024-09-24 23:03:51', '2024-10-02 23:24:48', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-24-66f2f7ffb37d8.png\",\"storage\":\"public\"}]', '[]', 'special-bhel-puri', 0, 0, 60, 1, 0),
(26, 'Chicken Clear Soup ( 500ml', 'Chicken clear soup (500ml)', '2024-09-25-66f3c7d7e0c7d.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[]', '[]', '[]', 100.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 2, '2024-09-25 13:50:39', '2024-10-02 23:29:18', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-25-66f3c7d7dff3c.png\",\"storage\":\"public\"}]', '[]', 'chicken-clear-soup-500ml', 0, 0, 60, 1, 1),
(27, 'Hot And Sour Chicken Soup (500 Ml)', 'Hot And Sour Chicken Soup (500 Ml)', '2024-09-25-66f3c8386bb6f.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[]', '[]', '[]', 100.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 2, '2024-09-25 13:52:16', '2024-10-02 23:28:52', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'hot-and-sour-chicken-soup-500-ml', 0, 0, 60, 1, 1),
(28, 'Egg Clear Soup (500ml )', 'Egg Clear Soup (500ml )', '2024-09-25-66f3c88f3033a.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[]', '[]', '[]', 100.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 2, '2024-09-25 13:53:43', '2024-10-02 23:28:24', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-25-66f3c88f2f862.png\",\"storage\":\"public\"}]', '[]', 'egg-clear-soup-500ml', 0, 0, 60, 1, 1),
(29, 'Chicken Pepper Soup (500ml)', 'Chicken pepper soup (500ml )', '2024-09-25-66f3c90c3377c.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[]', '[]', '[]', 100.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 2, '2024-09-25 13:55:48', '2024-10-02 23:26:36', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-25-66f3c90c32af1.png\",\"storage\":\"public\"}]', '[]', 'chicken-pepper-soup-500ml', 0, 0, 60, 1, 1),
(30, 'Chicken Manchow Soup (500 Ml)', 'Chicken Manchow Soup (500 Ml)', '2024-09-25-66f3c95cb3ba8.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[]', '[]', '[]', 100.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 2, '2024-09-25 13:57:08', '2024-10-02 23:26:12', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-25-66f3c95cb315d.png\",\"storage\":\"public\"}]', '[]', 'chicken-manchow-soup-500-ml', 0, 0, 60, 1, 1),
(31, 'Veg Clear Soup (500ml )', 'Veg Clear Soup (500ml )', '2024-09-25-66f3cacab9a9c.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[]', '[]', '[]', 76.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-09-25 14:03:14', '2024-10-02 23:28:06', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-25-66f3cacab90d3.png\",\"storage\":\"public\"}]', '[]', 'veg-clear-soup-500ml', 0, 0, 60, 1, 0),
(32, 'Corn Clear Soup (500l )', 'Corn Clear Soup (500l )', '2024-09-25-66f3cb33b4a65.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[]', '[]', '[]', 76.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-09-25 14:04:59', '2024-10-02 23:27:48', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-25-66f3cb33b3ce9.png\",\"storage\":\"public\"}]', '[]', 'corn-clear-soup-500l', 0, 0, 60, 1, 0),
(33, 'Mushroom Clear Soup (500ml )', 'Mushroom Clear Soup (500ml )', '2024-09-25-66f3cb835d672.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[]', '[]', '[]', 76.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-09-25 14:06:19', '2024-10-02 23:27:20', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-25-66f3cb835cd81.png\",\"storage\":\"public\"}]', '[]', 'mushroom-clear-soup-500ml', 0, 0, 60, 1, 0),
(34, 'Hot And Sour Soup (500ml )', 'Hot And Sour Soup (500ml )', '2024-09-25-66f3cbf16dc09.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[]', '[]', '[]', 76.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-09-25 14:08:09', '2024-10-02 23:26:55', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-25-66f3cbf16cff3.png\",\"storage\":\"public\"}]', '[]', 'hot-and-sour-soup-500ml', 0, 0, 60, 1, 0),
(35, 'Veg Manchow Soup (500 Ml)', 'Veg Manchow Soup (500 Ml)', '2024-09-25-66f3cc52be05e.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[]', '[]', '[]', 76.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-09-25 14:09:46', '2024-10-02 23:25:38', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-09-25-66f3cc52bd665.png\",\"storage\":\"public\"}]', '[]', 'veg-manchow-soup-500-ml', 0, 0, 60, 1, 0),
(36, 'Pav Bajji', 'Pav Bajji', '2024-10-20-671461c458b9a.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 47.00, 0.00, 'percent', 0.00, 'percent', '16:15:00', '20:30:00', 1, 1, 3, '2024-10-02 23:08:30', '2024-10-20 07:19:56', 0, 5.00000000000000, 1, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":1}', 2, 0, NULL, '[{\"img\":\"2024-10-20-671461c459935.png\",\"storage\":\"public\"}]', '[]', 'pav-bajji', 0, 0, 20, 1, 0),
(38, 'Bhel Poori', 'Bhel Poori', '2024-10-20-671461eaf1b50.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 36.00, 0.00, 'percent', 0.00, 'percent', '16:15:00', '20:45:00', 1, 1, 3, '2024-10-08 14:42:13', '2024-10-20 07:20:34', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-10-20-671461eaf2506.png\",\"storage\":\"public\"}]', '[]', 'bhel-poori', 0, 0, 50, 1, 0),
(40, 'Dahi Poori', 'Dahi Poori', '2024-10-20-6714620acd56f.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 36.00, 0.00, 'percent', 0.00, 'percent', '16:15:00', '20:45:00', 1, 1, 3, '2024-10-08 14:49:12', '2024-10-20 07:21:06', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-10-20-6714620ace3f7.png\",\"storage\":\"public\"}]', '[]', 'dahi-poori-2', 0, 0, 50, 1, 0),
(44, 'Rasam Poori', 'Rasam Poori', '2024-10-20-6714622a519be.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 36.00, 0.00, 'percent', 0.00, 'percent', '16:15:00', '20:45:00', 1, 1, 3, '2024-10-08 14:53:13', '2024-10-20 07:21:38', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-10-20-6714622a52513.png\",\"storage\":\"public\"}]', '[]', 'rasam-poori', 1, 0, 50, 1, 0),
(45, 'Chana Masala', 'Chana Masala', '2024-10-20-671462f8ede8a.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 36.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '20:45:00', 1, 1, 3, '2024-10-08 14:58:41', '2024-10-20 07:25:04', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-10-20-671462f8eeb8b.png\",\"storage\":\"public\"}]', '[]', 'chana-masala', 1, 0, 50, 1, 0),
(80, 'Veg Noodles', 'Vegetable Noodles', '2024-10-18-671226dcaa579.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '19:00:00', 1, 1, 5, '2024-10-18 14:44:04', '2024-10-18 14:44:04', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671226dca8dc5.png\",\"storage\":\"public\"}]', '[]', 'veg-noodles', 0, 0, 20, 1, 0),
(81, 'Chapathi 2 Nos', 'Chapathi 2 nos', '2024-10-18-6712273b46535.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 4, '2024-10-18 14:45:39', '2024-10-18 14:45:39', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-6712273b44f6a.png\",\"storage\":\"public\"}]', '[]', 'chapathi-2-nos', 0, 0, 99, 1, 0),
(82, 'Parotta 2 Nos', 'Parotta 2 nos', '2024-10-18-6712277507d60.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '21:00:00', 1, 1, 4, '2024-10-18 14:46:37', '2024-10-18 14:46:37', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671227750678a.png\",\"storage\":\"public\"}]', '[]', 'parotta-2-nos', 0, 0, 99, 1, 0),
(83, 'Egg Noodles', 'Egg Noodles', '2024-10-18-671227ddbfb4c.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '19:00:00', 0, 1, 5, '2024-10-18 14:48:21', '2024-10-18 14:58:43', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'egg-noodles', 0, 0, 20, 1, 1),
(84, 'Chicken Noodles', 'Chicken Noodles', '2024-10-18-67122854541db.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '19:00:00', 0, 1, 5, '2024-10-18 14:50:20', '2024-10-18 14:57:12', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'chicken-noodles', 0, 0, 20, 1, 1),
(85, 'Paneer Dosa', 'Paneer dosa', '2024-10-18-671228e224653.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '21:00:00', 1, 1, 4, '2024-10-18 14:52:42', '2024-10-18 14:52:42', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671228e223307.png\",\"storage\":\"public\"}]', '[]', 'paneer-dosa', 0, 0, 99, 1, 0),
(86, 'Gobi Dosa', 'Gobi dosa', '2024-10-18-671229241fb45.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '21:00:00', 1, 1, 4, '2024-10-18 14:53:48', '2024-10-18 14:53:48', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671229241e17e.png\",\"storage\":\"public\"}]', '[]', 'gobi-dosa', 0, 0, 99, 1, 0),
(87, 'Mushroom Dosa', 'Mushroom dosa', '2024-10-18-67122950cf6f9.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '21:00:00', 1, 1, 4, '2024-10-18 14:54:32', '2024-10-18 14:54:32', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122950cde6e.png\",\"storage\":\"public\"}]', '[]', 'mushroom-dosa', 0, 0, 99, 1, 0),
(88, 'Kal Dosa 2 Nos', 'Kal Dosa 2 Nos', '2024-10-18-67122a5b0d437.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '21:00:00', 1, 1, 4, '2024-10-18 14:58:59', '2024-10-18 14:58:59', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122a5b0bda3.png\",\"storage\":\"public\"}]', '[]', 'kal-dosa-2-nos', 0, 0, 99, 1, 0),
(89, 'S.P Dosa', 'S.p dosa', '2024-10-18-67122a8d9a9d7.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '21:00:00', 1, 1, 4, '2024-10-18 14:59:49', '2024-10-18 14:59:49', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122a8d994d6.png\",\"storage\":\"public\"}]', '[]', 'sp-dosa', 0, 0, 99, 1, 0),
(90, 'Onion Dosa', 'Onion dosa', '2024-10-18-67122ac1c0b00.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:00:41', '2024-10-18 15:00:41', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122ac1bf4a2.png\",\"storage\":\"public\"}]', '[]', 'onion-dosa', 0, 0, 99, 1, 0),
(91, 'Onion Uttapam', 'Onion uttapam', '2024-10-18-67122b0beda69.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:01:55', '2024-10-18 15:01:55', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122b0bec2cb.png\",\"storage\":\"public\"}]', '[]', 'onion-uttapam', 0, 0, 99, 1, 0),
(92, 'Ghee Dosa', 'Ghee dosa', '2024-10-18-67122b53ee43f.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:03:07', '2024-10-18 15:03:07', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122b53ec93a.png\",\"storage\":\"public\"}]', '[]', 'ghee-dosa', 0, 0, 99, 1, 0),
(93, 'Veg Rice', 'Mixed Vegetable with Fried Rice', '2024-10-18-67122b68c9b16.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 82.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '20:45:00', 1, 1, 5, '2024-10-18 15:03:28', '2024-10-18 15:03:28', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122b68c82e9.png\",\"storage\":\"public\"}]', '[]', 'veg-rice', 0, 0, 20, 1, 0),
(94, 'Egg Rice', 'Egg Fried Rice', '2024-10-18-67122baa3c551.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '20:45:00', 0, 1, 5, '2024-10-18 15:04:34', '2024-10-18 15:04:34', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122baa3b098.png\",\"storage\":\"public\"}]', '[]', 'egg-rice', 0, 0, 20, 1, 1),
(95, 'Idly 3 Nos', 'Idly 3 nos', '2024-10-18-67122bdf7bb1d.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[]', '[]', '[]', 35.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '19:30:00', 1, 1, 4, '2024-10-18 15:05:27', '2024-10-18 15:10:38', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-10-18-67122bdf79ad2.png\",\"storage\":\"public\"}]', '[]', 'idly-3-nos', 0, 0, 99, 1, 0),
(96, 'Chicken Rice', 'Chicken Fried Rice', '2024-10-18-67122bf29cba8.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '20:45:00', 0, 1, 5, '2024-10-18 15:05:46', '2024-10-18 15:05:46', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122bf29b551.png\",\"storage\":\"public\"}]', '[]', 'chicken-rice', 0, 0, 20, 1, 1),
(97, 'Paneer Manchurian', 'Paneer Manchurian', '2024-10-18-67122d1118576.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:10:33', '2024-10-18 15:10:33', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122d1116c20.png\",\"storage\":\"public\"}]', '[]', 'paneer-manchurian', 0, 0, 99, 1, 0),
(98, 'Gobi Manchurian', 'Gobi Manchurian', '2024-10-18-67122d61900be.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:11:53', '2024-10-18 15:11:53', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122d618ef40.png\",\"storage\":\"public\"}]', '[]', 'gobi-manchurian', 0, 0, 99, 1, 0),
(99, 'Mushroom Manchurian', 'Mashroom Manchurian', '2024-10-18-67122d9ea1a00.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:12:54', '2024-10-18 15:12:54', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122d9ea06d0.png\",\"storage\":\"public\"}]', '[]', 'mushroom-manchurian', 0, 0, 99, 1, 0),
(100, 'Paneer 65', 'Paneer 65', '2024-10-18-67122e18b655d.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:14:56', '2024-10-18 15:14:56', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122e18b511c.png\",\"storage\":\"public\"}]', '[]', 'paneer-65', 0, 0, 99, 1, 0),
(101, 'Gobi 65', 'Gobi 65', '2024-10-18-67122ea7bf37c.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:17:19', '2024-10-18 15:17:19', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122ea7bdf32.png\",\"storage\":\"public\"}]', '[]', 'gobi-65', 0, 0, 99, 1, 0),
(102, 'Mushroom 65', 'Mushroom 65', '2024-10-18-67122edc03deb.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:18:12', '2024-10-26 11:26:48', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'mushroom-65', 0, 0, 99, 1, 0),
(103, 'Pepper Chicken', 'Pepper Chicken', '2024-10-18-67122f5d0dbd5.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '19:30:00', 0, 1, 5, '2024-10-18 15:20:21', '2024-10-18 15:20:21', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122f5d0c79c.png\",\"storage\":\"public\"}]', '[]', 'pepper-chicken', 0, 0, 20, 1, 1),
(104, 'Chilli Chicken', 'Chilli Chicken', '2024-10-18-67122f90a3ff3.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '19:30:00', 0, 1, 5, '2024-10-18 15:21:12', '2024-10-18 15:21:12', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122f90a2e79.png\",\"storage\":\"public\"}]', '[]', 'chilli-chicken', 0, 0, 20, 1, 1),
(105, 'Veg Noodles', 'Veg noodles', '2024-10-18-67122fee3b05c.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:22:46', '2024-10-18 15:22:46', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67122fee39925.png\",\"storage\":\"public\"}]', '[]', 'veg-noodles-2', 0, 0, 99, 1, 0),
(106, 'Paneer Noodles', 'Paneer noodles', '2024-10-18-671230406bd28.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:24:08', '2024-10-18 15:24:08', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671230406a7af.png\",\"storage\":\"public\"}]', '[]', 'paneer-noodles', 0, 0, 99, 1, 0),
(107, 'Gobi Noodles', 'Gobi noodles', '2024-10-18-6712306e3905f.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:24:54', '2024-10-18 15:24:54', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-6712306e37673.png\",\"storage\":\"public\"}]', '[]', 'gobi-noodles', 0, 0, 99, 1, 0),
(108, 'Mushroom Noodles', 'Mushroom noodles', '2024-10-18-67123095f021b.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:25:33', '2024-10-18 15:25:33', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67123095ef01f.png\",\"storage\":\"public\"}]', '[]', 'mushroom-noodles', 0, 0, 99, 1, 0),
(109, 'Chicken Lollipop', 'Chicken With Lollipop Style', '2024-10-18-6712314c820e8.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:15:00', '19:00:00', 0, 1, 5, '2024-10-18 15:28:36', '2024-10-18 15:28:36', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-6712314c80340.png\",\"storage\":\"public\"}]', '[]', 'chicken-lollipop', 0, 0, 20, 1, 1),
(110, 'Veg Rice', 'Veg rice', '2024-10-18-6712315ec7de4.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:28:54', '2024-10-18 15:28:54', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-6712315ec6672.png\",\"storage\":\"public\"}]', '[]', 'veg-rice-2', 0, 0, 99, 1, 0),
(111, 'Paneer Rice', 'Paneer rice', '2024-10-18-67123191e8d98.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:29:45', '2024-10-18 15:29:45', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67123191e7bcc.png\",\"storage\":\"public\"}]', '[]', 'paneer-rice', 0, 0, 99, 1, 0),
(112, 'Gobi Rice', 'Gobi rice', '2024-10-18-671231c5adb8e.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:30:37', '2024-10-18 15:30:37', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671231c5ac42e.png\",\"storage\":\"public\"}]', '[]', 'gobi-rice', 0, 0, 99, 1, 0),
(113, 'Mushroom Rice', 'Mushroom rice', '2024-10-18-671231f379855.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '21:00:00', 1, 1, 4, '2024-10-18 15:31:23', '2024-10-18 15:31:23', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671231f377a1c.png\",\"storage\":\"public\"}]', '[]', 'mushroom-rice', 0, 0, 99, 1, 0),
(114, 'Chicken Pakoda', 'Chicken Pakoda', '2024-10-18-6712323a157a4.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:10:00', '20:30:00', 0, 1, 5, '2024-10-18 15:32:34', '2024-10-18 15:32:34', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-6712323a14479.png\",\"storage\":\"public\"}]', '[{\"name\":\"Category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"100g\",\"optionPrice\":\"46\"},{\"label\":\"250g\",\"optionPrice\":\"117\"},{\"label\":\"500g\",\"optionPrice\":\"234\"}]}]', 'chicken-pakoda', 0, 0, 20, 1, 1),
(115, 'Veg Meals', 'Meals + Sambar + Rasam + Karakolambu + Butter Milk + Kottu + Poriyal + Appalam', '2024-10-18-671232d1217eb.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:45:00', '14:15:00', 1, 1, 4, '2024-10-18 15:35:05', '2024-10-18 15:37:43', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'veg-meals', 0, 0, 99, 1, 0),
(116, 'Mutton Biryani Half + Egg', 'Mutton Biryani with Egg', '2024-10-18-67123650e2f23.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 224.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '12:00:00', 0, 1, 5, '2024-10-18 15:50:00', '2024-10-18 15:50:00', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67123650e164f.png\",\"storage\":\"public\"}]', '[]', 'mutton-biryani-half-egg', 0, 0, 224, 1, 1),
(117, 'Mutton Biryani Quater + Egg', 'Mutton Biryani Quater With Egg', '2024-10-18-671236eb6f7ad.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '12:00:00', 0, 1, 5, '2024-10-18 15:52:35', '2024-10-18 15:52:35', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671236eb6e356.png\",\"storage\":\"public\"}]', '[]', 'mutton-biryani-quater-egg', 0, 0, 20, 1, 1),
(118, 'Mutton Biryani Half', 'Mutton Biryani Seeraga Samba Rice', '2024-10-18-6712378db82ff.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 212.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '13:00:00', 0, 1, 5, '2024-10-18 15:55:17', '2024-10-18 15:55:17', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-6712378db6ebb.png\",\"storage\":\"public\"}]', '[]', 'mutton-biryani-half', 0, 0, 20, 1, 1),
(119, 'Mutton Biryani Quater', 'Mutton Biryani Seeraga Samba Rice', '2024-10-18-671237e147b29.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '13:00:00', 0, 1, 5, '2024-10-18 15:56:41', '2024-10-18 15:56:41', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671237e14635e.png\",\"storage\":\"public\"}]', '[]', 'mutton-biryani-quater', 0, 0, 20, 1, 1),
(120, 'Chicken Biryani Half + Egg', 'Chicken Biryani Half Plate With Boiled Egg', '2024-10-18-671293c827bfe.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '12:00:00', 0, 1, 5, '2024-10-18 22:28:48', '2024-10-18 22:28:48', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671293c8261f4.png\",\"storage\":\"public\"}]', '[]', 'chicken-biryani-half-egg', 0, 0, 20, 1, 1),
(121, 'Chicken Biryani Quater + Egg', 'Chicken Biryani 1/4 with Boiled Egg', '2024-10-18-6712943139313.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '12:00:00', 0, 1, 5, '2024-10-18 22:30:33', '2024-10-18 22:30:33', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67129431379f7.png\",\"storage\":\"public\"}]', '[]', 'chicken-biryani-quater-egg', 0, 0, 20, 1, 1),
(122, 'Chicken Biryani Half', 'Chicken Biryani Half Plate', '2024-10-18-67129544b818b.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 130.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '13:45:00', 0, 1, 5, '2024-10-18 22:35:08', '2024-10-18 22:35:08', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-67129544b6d19.png\",\"storage\":\"public\"}]', '[]', 'chicken-biryani-half', 0, 0, 20, 1, 1),
(123, 'Chicken Biryani Quater', 'Chicken Biryani 1/4', '2024-10-18-671296f779a1d.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '13:45:00', 0, 1, 5, '2024-10-18 22:42:23', '2024-10-18 22:42:23', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671296f776e70.png\",\"storage\":\"public\"}]', '[]', 'chicken-biryani-quater', 0, 0, 20, 1, 1),
(124, '65 Biryani', 'Kushka with Chicken Pakoda', '2024-10-18-671297d7c355b.png', 6, '[{\"id\":\"6\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '12:30:00', 0, 1, 5, '2024-10-18 22:46:07', '2024-10-18 22:46:07', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-18-671297d7c211a.png\",\"storage\":\"public\"}]', '[]', '65-biryani', 0, 0, 20, 1, 1),
(125, 'Sweet Corn Soup', 'Sweet corn soup', '2024-10-19-6713d7db96ddf.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-19 21:31:31', '2024-10-19 21:31:31', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-19-6713d7db9369a.png\",\"storage\":\"public\"}]', '[]', 'sweet-corn-soup', 0, 0, 99, 1, 0),
(126, 'Veg Clear Soup', 'Veg Clear Soup', '2024-10-19-6713d8104ccd1.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 47.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-19 21:32:24', '2024-10-19 21:32:24', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-19-6713d8104b78a.png\",\"storage\":\"public\"}]', '[]', 'veg-clear-soup', 0, 0, 99, 1, 0),
(127, 'Veg Chettined Soup', 'Veg Chettined Soup', '2024-10-19-6713d8493727e.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 47.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-19 21:33:21', '2024-10-19 21:33:21', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-19-6713d849359dd.png\",\"storage\":\"public\"}]', '[]', 'veg-chettined-soup', 0, 0, 99, 1, 0),
(128, 'Hot & Sour Soup', 'Hot & Sour Soup', '2024-10-19-6713d89176c8f.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 47.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-19 21:34:33', '2024-10-19 21:34:33', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-19-6713d89175b7f.png\",\"storage\":\"public\"}]', '[]', 'hot-sour-soup', 0, 0, 99, 1, 0),
(129, 'Lemon Coriander Soup', 'Lemon Coriander Soup', '2024-10-19-6713d8cac84a8.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 47.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-19 21:35:30', '2024-10-19 21:35:30', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-19-6713d8cac7228.png\",\"storage\":\"public\"}]', '[]', 'lemon-coriander-soup', 0, 0, 99, 1, 0),
(130, 'Veg Manchow Soup', 'Veg Manchow Soup', '2024-10-19-6713d8fc45a26.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 47.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-19 21:36:20', '2024-10-19 21:36:20', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-19-6713d8fc4408e.png\",\"storage\":\"public\"}]', '[]', 'veg-manchow-soup', 0, 0, 99, 1, 0),
(131, 'Sea Food Soup', 'Sea Food Soup', '2024-10-19-6713f01671ef5.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-19 23:14:54', '2024-10-20 10:10:45', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'sea-food-soup', 0, 0, 99, 1, 1),
(132, 'Samosa Masala', 'Samosa Masala', '2024-10-20-671473e091815.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 35.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '20:00:00', 1, 1, 3, '2024-10-20 08:37:12', '2024-10-20 08:37:12', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671473e0900d1.png\",\"storage\":\"public\"}]', '[]', 'samosa-masala', 0, 0, 50, 1, 0),
(133, 'Samosa 2 Nos', 'Samosa ( 2 Nos )', '2024-10-20-671474bb3faeb.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 24.00, 0.00, 'percent', 0.00, 'percent', '12:00:00', '20:00:00', 1, 1, 3, '2024-10-20 08:40:51', '2024-10-20 08:40:51', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671474bb3e4df.png\",\"storage\":\"public\"}]', '[]', 'samosa-2-nos', 0, 0, 50, 1, 0),
(134, 'Paneer Sandwich', 'Paneer Sandwich', '2024-10-20-671477323cf2e.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '20:45:00', 1, 1, 3, '2024-10-20 08:51:22', '2024-10-20 08:51:22', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671477323b61b.png\",\"storage\":\"public\"}]', '[]', 'paneer-sandwich', 0, 0, 50, 1, 0),
(135, 'Mushroom Sandwich', 'Mushroom Sandwich', '2024-10-20-67147797967ec.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '20:45:00', 1, 1, 3, '2024-10-20 08:53:03', '2024-10-20 08:53:03', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714779794d08.png\",\"storage\":\"public\"}]', '[]', 'mushroom-sandwich', 0, 0, 50, 1, 0),
(136, 'Gobi Sandwich', 'Gobi Sandwich', '2024-10-20-671477f097f50.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '20:45:00', 1, 1, 3, '2024-10-20 08:54:32', '2024-10-20 08:54:32', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671477f096a44.png\",\"storage\":\"public\"}]', '[]', 'gobi-sandwich', 0, 0, 50, 1, 0),
(137, 'Veg Sandwich', 'Veg Sandwich', '2024-10-20-671478273849a.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 47.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '20:45:00', 1, 1, 3, '2024-10-20 08:55:27', '2024-10-20 08:55:27', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714782736faf.png\",\"storage\":\"public\"}]', '[]', 'veg-sandwich', 0, 0, 50, 1, 0),
(138, 'Paneer Dosa', 'Paneer Dosa', '2024-10-20-67147a0228002.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '20:45:00', 1, 1, 3, '2024-10-20 09:03:22', '2024-10-20 09:07:46', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'paneer-dosa-2', 0, 0, 20, 1, 0),
(139, 'Mushroom Dosa', 'Mushroom Dosa', '2024-10-20-67147a94bf5cb.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '20:45:00', 1, 1, 3, '2024-10-20 09:05:48', '2024-10-20 09:05:48', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67147a94be17b.png\",\"storage\":\"public\"}]', '[]', 'mushroom-dosa-2', 0, 0, 20, 1, 0),
(140, 'Gobi Dosa', 'Gobi Dosa', '2024-10-20-67147af8f3c58.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '20:45:00', 1, 1, 3, '2024-10-20 09:07:29', '2024-10-20 09:07:29', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67147af8f1b8c.png\",\"storage\":\"public\"}]', '[]', 'gobi-dosa-2', 0, 0, 20, 1, 0),
(141, 'Onion Rava Dosa', 'Onion Rava Dosa', '2024-10-20-67147bbd54b0c.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '17:30:00', '21:00:00', 1, 1, 3, '2024-10-20 09:10:45', '2024-10-20 09:10:45', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67147bbd535ce.png\",\"storage\":\"public\"}]', '[]', 'onion-rava-dosa', 0, 0, 20, 1, 0),
(142, 'Onion Dosa', 'Onion Dosa', '2024-10-20-67147cddd1015.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '17:30:00', '21:00:00', 1, 1, 3, '2024-10-20 09:12:28', '2024-10-20 09:15:33', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-10-20-67147cddd1e02.png\",\"storage\":\"public\"}]', '[]', 'ghee-dosa-2', 0, 0, 20, 1, 0),
(143, 'Podi Dosa', 'Podi Dosa', '2024-10-20-67147c7ee1865.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '17:30:00', '21:00:00', 1, 1, 3, '2024-10-20 09:13:58', '2024-10-20 09:13:58', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67147c7ee05ed.png\",\"storage\":\"public\"}]', '[]', 'podi-dosa', 0, 0, 20, 1, 0),
(144, 'Ghee Dosa', 'Ghee Dosa', '2024-10-20-67147d1bb0924.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '17:30:00', '21:00:00', 1, 1, 3, '2024-10-20 09:16:35', '2024-10-20 09:16:35', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67147d1baef68.png\",\"storage\":\"public\"}]', '[]', 'ghee-dosa-3', 0, 0, 20, 1, 0),
(145, 'Masala Dosa', 'Masala Dosa', '2024-10-20-67147ec03dbb0.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '20:40:00', 1, 1, 3, '2024-10-20 09:23:36', '2024-10-20 09:23:36', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67147ec03c5ce.png\",\"storage\":\"public\"}]', '[]', 'masala-dosa', 0, 0, 20, 1, 0),
(146, 'Paper Roast Dosa', 'Paper Roast Dosa', '2024-10-20-67147f2427a49.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '18:00:00', '21:00:00', 1, 1, 3, '2024-10-20 09:25:16', '2024-10-20 09:25:16', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67147f2425d37.png\",\"storage\":\"public\"}]', '[]', 'paper-roast-dosa', 0, 0, 20, 1, 0),
(147, 'Plain Dosa', 'Plain Dosa', '2024-10-20-67147fa26147a.png', 7, '[{\"id\":\"7\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '17:30:00', '21:00:00', 1, 1, 3, '2024-10-20 09:27:22', '2024-10-20 09:27:22', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67147fa25f347.png\",\"storage\":\"public\"}]', '[]', 'plain-dosa', 0, 0, 20, 1, 0),
(148, 'Crab Soup', 'Crab soup', '2024-10-20-67148a0e6d757.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 10:11:50', '2024-10-20 10:11:50', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67148a0e6c586.png\",\"storage\":\"public\"}]', '[]', 'crab-soup', 0, 0, 99, 1, 1),
(149, 'Mutton Bone Soup', 'Mutton Bone Soup', '2024-10-20-67148a471bf13.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 10:12:47', '2024-10-20 10:12:47', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67148a471aaa1.png\",\"storage\":\"public\"}]', '[]', 'mutton-bone-soup', 0, 0, 99, 1, 1),
(150, 'Chicken Chettinad Soup', 'Chicken Chettinad Soup', '2024-10-20-67148aa118eb4.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 10:14:17', '2024-10-20 10:14:17', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67148aa1176fa.png\",\"storage\":\"public\"}]', '[]', 'chicken-chettinad-soup', 0, 0, 99, 1, 1),
(151, 'Chicken Clear Soup', 'Chicken Clear Soup', '2024-10-20-67148ad480ebb.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 10:15:08', '2024-10-20 10:15:08', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67148ad47fc5e.png\",\"storage\":\"public\"}]', '[]', 'chicken-clear-soup', 0, 0, 99, 1, 1),
(152, 'Chocolate Milk Shake', 'Chocolate Milk Shake', '2024-10-20-67148b638b189.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 10:17:31', '2024-10-20 10:17:31', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67148b6389e48.png\",\"storage\":\"public\"}]', '[]', 'chocolate-milk-shake-2', 0, 0, 99, 1, 0),
(153, 'Strawberry Milk Shake', 'Strawberry Milk Shake', '2024-10-20-67148bc30fb43.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 10:19:07', '2024-10-20 10:19:07', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67148bc30e2e1.png\",\"storage\":\"public\"}]', '[]', 'strawberry-milk-shake', 0, 0, 99, 1, 0),
(154, 'Dry Fruit Milk Shake', 'Dry Fruit Milk Shake', '2024-10-20-67148bf8e6a29.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 116.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 10:20:00', '2024-10-20 10:20:00', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67148bf8e557c.png\",\"storage\":\"public\"}]', '[]', 'dry-fruit-milk-shake', 0, 0, 99, 1, 0),
(155, 'Kadai Gravy', 'Kadai gravy', '2024-10-21-6715d10d7f88a.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[]', '[]', '[]', 153.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 10:27:44', '2024-10-21 09:27:01', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-10-21-6715d10d7cbb5.png\",\"storage\":\"public\"}]', '[]', 'kadai-gravy', 0, 0, 99, 1, 0),
(156, 'Fish Masala Gravy', 'Fish Masala Gravy', '2024-10-21-6715d2144af99.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 10:28:40', '2024-10-21 09:31:24', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-10-21-6715d21448259.png\",\"storage\":\"public\"}]', '[]', 'fish-masala-gravy', 0, 0, 99, 1, 0),
(157, 'Kadai Chicken Gravy', 'Kadai Chicken Gravy', '2024-10-21-6715d2d413b12.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 10:30:20', '2024-10-21 09:34:36', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-10-21-6715d2d412272.png\",\"storage\":\"public\"}]', '[]', 'kadai-chicken-gravy', 0, 0, 99, 1, 0);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `category_id`, `category_ids`, `variations`, `add_ons`, `attributes`, `choice_options`, `price`, `tax`, `tax_type`, `discount`, `discount_type`, `available_time_starts`, `available_time_ends`, `veg`, `status`, `store_id`, `created_at`, `updated_at`, `order_count`, `avg_rating`, `rating_count`, `rating`, `module_id`, `stock`, `unit_id`, `images`, `food_variations`, `slug`, `recommended`, `organic`, `maximum_cart_quantity`, `is_approved`, `is_halal`) VALUES
(158, 'Mutton Chettinad Gravy', 'Mutton Chettinad Gravy', '2024-10-21-6715d53d4266b.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 10:31:44', '2024-10-21 09:44:53', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-10-21-6715d53d40339.png\",\"storage\":\"public\"}]', '[]', 'mutton-chettinad-gravy', 0, 0, 99, 1, 0),
(159, 'Mutton Masala Gravy', 'Mutton Masala Gravy', '2024-10-21-6715d5e5278ca.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 10:33:07', '2024-10-21 09:47:41', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[{\"img\":\"2024-10-21-6715d5e525d74.png\",\"storage\":\"public\"}]', '[]', 'mutton-masala-gravy', 0, 0, 99, 1, 0),
(176, 'Garlic Naan', 'Garlic Naan', '2024-10-20-67149861d9d29.png', 11, '[{\"id\":\"11\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 47.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 11:12:57', '2024-10-20 11:12:57', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67149861d6d63.png\",\"storage\":\"public\"}]', '[]', 'garlic-naan', 0, 0, 99, 1, 0),
(177, 'Pudina Naan', 'Pudina Naan', '2024-10-20-6714989b5f1b7.png', 11, '[{\"id\":\"11\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 35.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 11:13:55', '2024-10-20 11:13:55', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714989b5d79d.png\",\"storage\":\"public\"}]', '[]', 'pudina-naan', 0, 0, 99, 1, 0),
(178, 'Butter Naan', 'Butter Naan', '2024-10-20-671498de3fc4a.png', 11, '[{\"id\":\"11\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 41.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 11:15:02', '2024-10-20 11:15:02', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671498de3e2c5.png\",\"storage\":\"public\"}]', '[]', 'butter-naan', 0, 0, 99, 1, 0),
(179, 'Naan', 'Naan', '2024-10-20-6714990ce3fa6.png', 11, '[{\"id\":\"11\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 35.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 11:15:48', '2024-10-20 11:15:48', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714990ce29a4.png\",\"storage\":\"public\"}]', '[]', 'naan', 0, 0, 99, 1, 0),
(180, 'Butter Kulcha', 'Butter Kulcha', '2024-10-20-6714994cac4c6.png', 11, '[{\"id\":\"11\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 41.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 11:16:52', '2024-10-20 11:16:52', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714994caad03.png\",\"storage\":\"public\"}]', '[]', 'butter-kulcha', 0, 0, 99, 1, 0),
(181, 'Tandoori Wheat Parota', 'Tandoori Wheat Parota', '2024-10-20-6714998c55612.png', 11, '[{\"id\":\"11\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 35.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 11:17:56', '2024-10-20 11:17:56', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714998c54202.png\",\"storage\":\"public\"}]', '[]', 'tandoori-wheat-parota', 0, 0, 99, 1, 0),
(182, 'Masala Kulcha', 'Masala Kulcha', '2024-10-20-671499d569fe6.png', 11, '[{\"id\":\"11\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 47.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 11:19:09', '2024-10-20 11:19:09', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671499d568478.png\",\"storage\":\"public\"}]', '[]', 'masala-kulcha', 0, 0, 99, 1, 0),
(183, 'Phulka 2 Pcs', 'Phulka 2 Pcs', '2024-10-20-67149a1443147.png', 11, '[{\"id\":\"11\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 35.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 11:20:12', '2024-10-20 11:20:12', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67149a1441e7a.png\",\"storage\":\"public\"}]', '[]', 'phulka-2-pcs', 0, 0, 99, 1, 0),
(184, 'Butter Roti', 'Butter Roti', '2024-10-20-67149a4a247c0.png', 11, '[{\"id\":\"11\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 29.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 11:21:06', '2024-10-20 11:21:06', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67149a4a23221.png\",\"storage\":\"public\"}]', '[]', 'butter-roti', 0, 0, 99, 1, 0),
(185, 'Roti', 'Roti', '2024-10-20-67149a7587e9b.png', 11, '[{\"id\":\"11\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 24.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 11:21:49', '2024-10-20 11:21:49', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67149a7586c8b.png\",\"storage\":\"public\"}]', '[]', 'roti', 0, 0, 99, 1, 0),
(186, 'Double Cheesy Chicken Burger', 'Double Cheesy Chicken Burger', '2024-10-20-6714faaef355f.png', 9, '[{\"id\":\"9\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:12:23', '2024-10-20 18:12:23', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714faaef0947.png\",\"storage\":\"public\"}]', '[]', 'double-cheesy-chicken-burger', 0, 0, 99, 1, 1),
(187, 'Spl.Chicken Burger', 'Spl.Chicken Burger', '2024-10-20-6714faecd240c.png', 9, '[{\"id\":\"9\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:13:24', '2024-10-20 18:13:24', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714faecd0afb.png\",\"storage\":\"public\"}]', '[]', 'splchicken-burger', 0, 0, 99, 1, 1),
(188, 'Fried Chicken Burger', 'Fried Chicken Burger', '2024-10-20-6714fb272b45a.png', 9, '[{\"id\":\"9\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:14:23', '2024-10-20 18:14:23', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714fb27299da.png\",\"storage\":\"public\"}]', '[]', 'fried-chicken-burger', 0, 0, 99, 1, 1),
(189, 'Egg Burger', 'Egg Burger', '2024-10-20-6714fb58481fd.png', 9, '[{\"id\":\"9\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:15:12', '2024-10-20 18:15:12', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714fb5846cb3.png\",\"storage\":\"public\"}]', '[]', 'egg-burger', 0, 0, 99, 1, 1),
(190, 'Paneer Cheesy Burger', 'Paneer Cheesy Burger', '2024-10-20-6714fb8a274c2.png', 9, '[{\"id\":\"9\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 18:16:02', '2024-10-20 18:16:02', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714fb8a2600c.png\",\"storage\":\"public\"}]', '[]', 'paneer-cheesy-burger', 0, 0, 99, 1, 0),
(191, 'Spicy Veg Burger', 'Spicy Veg Burger', '2024-10-20-6714fbb4db9f3.png', 9, '[{\"id\":\"9\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 18:16:44', '2024-10-20 18:16:44', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714fbb4da729.png\",\"storage\":\"public\"}]', '[]', 'spicy-veg-burger', 0, 0, 99, 1, 0),
(192, 'Veg Burger', 'Veg burger', '2024-10-20-6714fc11b7059.png', 9, '[{\"id\":\"9\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 18:18:17', '2024-10-20 18:18:17', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714fc11b5759.png\",\"storage\":\"public\"}]', '[]', 'veg-burger', 0, 0, 99, 1, 0),
(193, 'Sweet Butter Sandwich', 'Sweet Butter Sandwich', '2024-10-20-6714ff6e79f21.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 18:32:38', '2024-10-20 18:32:38', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714ff6e76075.png\",\"storage\":\"public\"}]', '[]', 'sweet-butter-sandwich', 0, 0, 99, 1, 0),
(194, 'Spicy Chilly Chicken Sandwich', 'Spicy Chilly Chicken Sandwich', '2024-10-20-6714ffbf86282.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:33:59', '2024-10-20 18:35:07', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'spicy-chilly-chicken-sandwich', 0, 0, 99, 1, 1),
(195, 'Chicken Cheese Sandwich', 'Chicken Cheese Sandwich', '2024-10-20-6714fff92adc4.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:34:57', '2024-10-20 18:34:57', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6714fff9299b1.png\",\"storage\":\"public\"}]', '[]', 'chicken-cheese-sandwich', 0, 0, 99, 1, 1),
(196, 'Chicken Sandwich', 'Chicken Sandwich', '2024-10-20-671500412f5ef.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:36:09', '2024-10-20 18:36:09', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671500412e192.png\",\"storage\":\"public\"}]', '[]', 'chicken-sandwich', 0, 0, 99, 1, 1),
(197, 'Egg Sandwich', 'Egg Sandwich', '2024-10-20-6715007557948.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:37:01', '2024-10-20 18:37:01', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6715007556048.png\",\"storage\":\"public\"}]', '[]', 'egg-sandwich', 0, 0, 99, 1, 1),
(198, 'Mushroom Sandwich', 'Mushroom Sandwich', '2024-10-20-671500a927f91.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 18:37:53', '2024-10-20 18:37:53', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671500a926446.png\",\"storage\":\"public\"}]', '[]', 'mushroom-sandwich-2', 0, 0, 99, 1, 0),
(199, 'Paneer Sandwich', 'Paneer Sandwich', '2024-10-20-671500ec63b6b.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 18:39:00', '2024-10-20 18:39:00', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671500ec61ddc.png\",\"storage\":\"public\"}]', '[]', 'paneer-sandwich-2', 0, 0, 99, 1, 0),
(200, 'Veg Sandwich', 'Veg Sandwich', '2024-10-20-6715011daa44f.png', 10, '[{\"id\":\"10\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 18:39:49', '2024-10-20 18:39:49', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6715011da92eb.png\",\"storage\":\"public\"}]', '[]', 'veg-sandwich-2', 0, 0, 99, 1, 0),
(201, 'Fried Chicken Roll', 'Fried Chicken Roll', '2024-10-20-671502930c4be.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:46:03', '2024-10-20 18:46:03', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671502930ac1b.png\",\"storage\":\"public\"}]', '[]', 'fried-chicken-roll', 0, 0, 99, 1, 1),
(202, 'Chicken Roll', 'Chicken Roll', '2024-10-20-671502c1cbde9.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:46:49', '2024-10-20 18:47:41', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'chicken-roll', 0, 0, 99, 1, 1),
(203, 'Egg Roll', 'Egg Roll', '2024-10-20-671502ec80b5b.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 82.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:47:32', '2024-10-20 18:47:32', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671502ec7f37d.png\",\"storage\":\"public\"}]', '[]', 'egg-roll', 0, 0, 99, 1, 1),
(204, 'Paneer Roll', 'Paneer Roll', '2024-10-20-6715032e62191.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 18:48:38', '2024-10-20 18:48:38', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6715032e60df2.png\",\"storage\":\"public\"}]', '[]', 'paneer-roll', 0, 0, 99, 1, 0),
(205, 'Corn Roll', 'Corn roll', '2024-10-20-6715035aabe26.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 82.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 18:49:22', '2024-10-20 18:49:22', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6715035aaa0ae.png\",\"storage\":\"public\"}]', '[]', 'corn-roll', 0, 0, 99, 1, 0),
(206, 'Mushroom Roll', 'Mushroom Roll', '2024-10-20-671503835345f.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 82.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 18:50:03', '2024-10-20 18:50:03', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671503835180b.png\",\"storage\":\"public\"}]', '[]', 'mushroom-roll', 0, 0, 99, 1, 0),
(207, 'Veg Roll', 'Veg Roll', '2024-10-20-671503ad895b5.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 18:50:45', '2024-10-20 18:50:45', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671503ad881a6.png\",\"storage\":\"public\"}]', '[]', 'veg-roll', 0, 0, 99, 1, 0),
(208, 'Fish Fingers(5 Pcs)', 'Fish Fingers(5 Pcs)', '2024-10-20-671505d09590a.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 200.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 18:59:52', '2024-10-20 18:59:52', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671505d0942c7.png\",\"storage\":\"public\"}]', '[]', 'fish-fingers5-pcs', 0, 0, 99, 1, 1),
(209, 'Chicken Nuggets (5 pcs)', 'Chicken Nuggets (5 pcs)', '2024-10-20-6715060cdf5f4.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 19:00:52', '2024-10-20 19:02:02', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'chicken-nuggets-5-pcs', 0, 0, 99, 1, 1),
(210, 'Chicken Fingers (5 Pcs)', 'Chicken Fingers (5 Pcs)', '2024-10-20-67150648273a6.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 19:01:52', '2024-10-20 19:01:52', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6715064825ce6.png\",\"storage\":\"public\"}]', '[]', 'chicken-fingers-5-pcs', 0, 0, 99, 1, 1),
(211, 'Veg Fingers (5 Pcs )', 'Veg Fingers (5 Pcs )', '2024-10-20-671506d819239.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:04:16', '2024-10-20 19:04:16', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671506d817b63.png\",\"storage\":\"public\"}]', '[]', 'veg-fingers-5-pcs', 0, 0, 99, 1, 0),
(212, 'Veg Nuggets (5 Pcs)', 'Veg Nuggets (5 Pcs)', '2024-10-20-6715071302dfb.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 82.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:05:15', '2024-10-20 19:05:15', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6715071301601.png\",\"storage\":\"public\"}]', '[]', 'veg-nuggets-5-pcs', 0, 0, 99, 1, 0),
(213, 'Smilies (7 Pcs)', 'Smilies (7 Pcs)', '2024-10-20-6715075f2f4ae.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:06:31', '2024-10-20 19:06:31', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6715075f2e1f7.png\",\"storage\":\"public\"}]', '[]', 'smilies-7-pcs', 0, 0, 99, 1, 0),
(214, 'Cheesy Fries', 'Cheesy Fries', '2024-10-20-6715078d7ce26.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:07:17', '2024-10-20 19:07:17', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6715078d7ad62.png\",\"storage\":\"public\"}]', '[]', 'cheesy-fries', 0, 0, 99, 1, 0),
(215, 'Peri Peri Fries', 'Peri Peri Fries', '2024-10-20-671507bd55a1a.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 88.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:08:05', '2024-10-20 19:08:05', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671507bd54153.png\",\"storage\":\"public\"}]', '[]', 'peri-peri-fries', 0, 0, 99, 1, 0),
(216, 'French Fries', 'French Fries', '2024-10-20-671507e78ea43.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 82.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:08:47', '2024-10-20 19:08:47', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-671507e78d89f.png\",\"storage\":\"public\"}]', '[]', 'french-fries', 0, 0, 99, 1, 0),
(217, 'Green Apple Mojito', 'Green Apple mojito', '2024-10-20-67150b7dd5b67.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:24:05', '2024-10-20 19:26:04', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'green-apple', 0, 0, 99, 1, 0),
(218, 'Black Current Mojito', 'Black Current mojito', '2024-10-20-67150bb21b49f.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:24:58', '2024-10-20 19:26:26', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'black-current', 0, 0, 99, 1, 0),
(219, 'Mango Mojito', 'Mango Mojito', '2024-10-20-67150be2a2e25.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:25:46', '2024-10-20 19:25:46', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150be2a193f.png\",\"storage\":\"public\"}]', '[]', 'mango-mojito', 0, 0, 99, 1, 0),
(220, 'Strawberry Mojito', 'Strawberry Mojito', '2024-10-20-67150cd853070.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:29:52', '2024-10-20 19:29:52', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150cd851980.png\",\"storage\":\"public\"}]', '[]', 'strawberry-mojito-2', 0, 0, 99, 1, 0),
(221, 'Pineapple Mojito', 'Pineapple Mojito', '2024-10-20-67150d08a7ed4.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:30:40', '2024-10-20 19:30:40', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150d08a65e4.png\",\"storage\":\"public\"}]', '[]', 'pineapple-mojito-2', 0, 0, 99, 1, 0),
(222, 'Watermelon Mojito', 'Watermelon Mojito', '2024-10-20-67150d3874511.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:31:28', '2024-10-20 19:31:28', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150d38730f1.png\",\"storage\":\"public\"}]', '[]', 'watermelon-mojito', 0, 0, 99, 1, 0),
(223, 'Grape Mojito', 'Grape Mojito', '2024-10-20-67150d6ae3da4.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:32:18', '2024-10-20 19:32:18', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150d6ae2b54.png\",\"storage\":\"public\"}]', '[]', 'grape-mojito', 0, 0, 99, 1, 0),
(224, 'Blue Berry Mojito', 'Blue Berry Mojito', '2024-10-20-67150d9c387a7.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:33:08', '2024-10-20 19:33:08', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150d9c3746e.png\",\"storage\":\"public\"}]', '[]', 'blue-berry-mojito', 0, 0, 99, 1, 0),
(225, 'Lime& Mint Mojito', 'Lime& Mint Mojito', '2024-10-20-67150de1040e1.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:34:17', '2024-10-20 19:34:17', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150de102901.png\",\"storage\":\"public\"}]', '[]', 'lime-mint-mojito', 0, 0, 99, 1, 0),
(226, 'Virgin Mint Mojito', 'Virgin Mint Mojito', '2024-10-20-67150e1a9101f.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:35:14', '2024-10-20 19:35:14', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150e1a8fae4.png\",\"storage\":\"public\"}]', '[]', 'virgin-mint-mojito', 0, 0, 99, 1, 0),
(227, 'Blue Curacao Mojito', 'Blue Curacao Mojito', '2024-10-20-67150e4c34139.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:36:04', '2024-10-20 19:36:04', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150e4c3245b.png\",\"storage\":\"public\"}]', '[]', 'blue-curacao-mojito', 0, 0, 99, 1, 0),
(228, 'Lemon Soda', 'Lemon soda', '2024-10-20-67150e7b38fb2.png', 15, '[{\"id\":\"15\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 47.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-20 19:36:51', '2024-10-20 19:36:51', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150e7b37b79.png\",\"storage\":\"public\"}]', '[]', 'lemon-soda', 0, 0, 99, 1, 0),
(229, 'Chicken roll Shawarma', 'Chicken roll Shawarma', '2024-10-20-67150f8ad327e.png', 24, '[{\"id\":\"24\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 19:41:22', '2024-10-20 19:41:22', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150f8ad130a.png\",\"storage\":\"public\"}]', '[]', 'chicken-roll-shawarma', 0, 0, 99, 1, 1),
(230, 'Peri Peri Shawarma', 'Peri Peri Shawarma', '2024-10-20-67150fc838e9a.png', 24, '[{\"id\":\"24\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 19:42:24', '2024-10-20 19:42:24', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-67150fc837487.png\",\"storage\":\"public\"}]', '[]', 'peri-peri-shawarma', 0, 0, 99, 1, 1),
(231, 'Chicken Plate Shawarma', 'Chicken Plate Shawarma', '2024-10-20-6715100013f95.png', 24, '[{\"id\":\"24\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 165.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-20 19:43:20', '2024-10-20 19:43:20', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-20-6715100012c29.png\",\"storage\":\"public\"}]', '[]', 'chicken-plate-shawarma', 0, 0, 99, 1, 1),
(232, 'Crab Masala Gravy', 'Crab Masala Gravy', '2024-10-21-6716099fc57a6.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 176.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:28:23', '2024-10-21 13:28:23', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716099fc3a3d.png\",\"storage\":\"public\"}]', '[]', 'crab-masala-gravy', 0, 0, 99, 1, 1),
(233, 'Fish Masala Gravy', 'Fish Masala Gravy', '2024-10-21-671609df99f7f.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 212.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:29:27', '2024-10-21 13:29:27', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671609df984a4.png\",\"storage\":\"public\"}]', '[]', 'fish-masala-gravy-2', 0, 0, 99, 1, 1),
(234, 'Mutton Masala Gravy', 'Mutton Masala Gravy', '2024-10-21-67160a2ea1f30.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 212.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:30:46', '2024-10-21 13:30:46', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67160a2ea0b82.png\",\"storage\":\"public\"}]', '[]', 'mutton-masala-gravy-2', 0, 0, 99, 1, 1),
(235, 'Mutton Masala Gravy', 'Mutton Masala Gravy', '2024-10-21-67160a99314df.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 224.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:32:33', '2024-10-21 13:32:33', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67160a9930138.png\",\"storage\":\"public\"}]', '[]', 'mutton-masala-gravy-3', 0, 0, 99, 1, 1),
(236, 'Egg Masala Gravy', 'Egg Masala Gravy', '2024-10-21-67160bec88281.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:38:12', '2024-10-21 13:38:12', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67160bec871e1.png\",\"storage\":\"public\"}]', '[]', 'egg-masala-gravy', 0, 0, 99, 1, 1),
(237, 'Egg Chettinad Gravy', 'Egg Chettinad Gravy', '2024-10-21-67160c31d7d73.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:39:21', '2024-10-21 13:39:21', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67160c31d6baf.png\",\"storage\":\"public\"}]', '[]', 'egg-chettinad-gravy', 0, 0, 99, 1, 1),
(238, 'Egg Kadai Gravy', 'Egg Kadai Gravy', '2024-10-21-67160c7444203.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:40:28', '2024-10-21 13:40:28', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67160c7442f59.png\",\"storage\":\"public\"}]', '[]', 'egg-kadai-gravy', 0, 0, 99, 1, 1),
(239, 'Egg Keema Gravy', 'Egg Keema Gravy', '2024-10-21-67160cd42cde7.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:42:04', '2024-10-21 13:42:04', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67160cd42bc17.png\",\"storage\":\"public\"}]', '[]', 'egg-keema-gravy', 0, 0, 99, 1, 1),
(240, 'Nadukozhi Gravy', 'Nadukozhi Gravy', '2024-10-21-67160e1fa1897.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 200.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:47:35', '2024-10-21 13:47:35', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67160e1fa03f1.png\",\"storage\":\"public\"}]', '[]', 'nadukozhi-gravy', 0, 0, 99, 1, 1),
(241, 'Kadai Gravy', 'Kadai Gravy', '2024-10-21-67160e5a5a7bc.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 188.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:48:34', '2024-10-21 13:48:34', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67160e5a591df.png\",\"storage\":\"public\"}]', '[]', 'kadai-gravy-2', 0, 0, 99, 1, 1),
(242, 'Panjab Chicken Gravy', 'Panjab Chicken Gravy', '2024-10-21-67160ebc1a57d.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 212.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:50:12', '2024-10-21 13:50:12', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67160ebc185e3.png\",\"storage\":\"public\"}]', '[]', 'panjab-chicken-gravy', 0, 0, 99, 1, 1),
(243, 'Malabar Chicken Gravy', 'Malabar Chicken Gravy', '2024-10-21-67160ef96d84c.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 176.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:51:13', '2024-10-21 13:51:13', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67160ef96c2c9.png\",\"storage\":\"public\"}]', '[]', 'malabar-chicken-gravy', 0, 0, 99, 1, 1),
(244, 'Butter Chicken Gravy', 'Butter Chicken Gravy', '2024-10-21-67160f380c937.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 176.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:52:16', '2024-10-21 13:52:16', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67160f380b568.png\",\"storage\":\"public\"}]', '[]', 'butter-chicken-gravy', 0, 0, 99, 1, 1),
(245, 'Chicken Tikka Masala', 'Chicken Tikka Masala', '2024-10-21-67161022e5404.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 176.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:56:10', '2024-10-21 13:56:10', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67161022e3cb6.png\",\"storage\":\"public\"}]', '[]', 'chicken-tikka-masala', 0, 0, 99, 1, 1),
(246, 'Pepper Chicken Gravy', 'Pepper Chicken Gravy', '2024-10-21-671610703af96.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 165.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:57:28', '2024-10-21 13:57:28', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671610703963d.png\",\"storage\":\"public\"}]', '[]', 'pepper-chicken-gravy', 0, 0, 99, 1, 1),
(247, 'Chicken Chettinad Gravy', 'Chicken Chettinad Gravy', '2024-10-21-671610b1742cd.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 165.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:58:33', '2024-10-21 13:58:33', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671610b17271b.png\",\"storage\":\"public\"}]', '[]', 'chicken-chettinad-gravy', 0, 0, 99, 1, 1),
(248, 'Kadai Chicken Gravy', 'Kadai Chicken Gravy', '2024-10-21-671610f6c103c.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 165.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 13:59:42', '2024-10-21 13:59:42', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671610f6bf47d.png\",\"storage\":\"public\"}]', '[]', 'kadai-chicken-gravy-2', 0, 0, 99, 1, 1),
(249, 'Chicken Gravy', 'Chicken Gravy', '2024-10-21-67161150684a3.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 153.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 14:01:12', '2024-10-21 14:01:12', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716115066fbd.png\",\"storage\":\"public\"}]', '[]', 'chicken-gravy', 0, 0, 99, 1, 1),
(250, 'Cashewnut Gravy', 'Cashewnut Gravy', '2024-10-21-6716127501a02.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 212.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:06:05', '2024-10-21 14:06:05', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67161275003f0.png\",\"storage\":\"public\"}]', '[]', 'cashewnut-gravy', 0, 0, 99, 1, 0),
(251, 'Paneer Tikka Masala', 'Paneer Tikka Masala', '2024-10-21-671612a5476e8.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 165.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:06:53', '2024-10-21 14:06:53', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671612a545f3e.png\",\"storage\":\"public\"}]', '[]', 'paneer-tikka-masala', 0, 0, 99, 1, 0),
(252, 'Paneer Butter Gravy', 'Paneer Butter Gravy', '2024-10-21-671613018ee92.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 153.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:08:25', '2024-10-21 14:08:25', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671613018dafc.png\",\"storage\":\"public\"}]', '[]', 'paneer-butter-gravy', 0, 0, 99, 1, 0),
(253, 'Kadai Paneer Gravy', 'Kadai Paneer Gravy', '2024-10-21-67161351d30bb.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:09:45', '2024-10-21 14:09:45', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67161351d1e29.png\",\"storage\":\"public\"}]', '[]', 'kadai-paneer-gravy', 0, 0, 99, 1, 0),
(254, 'Kadai Mushroom Gravy', 'Kadai Mushroom Gravy', '2024-10-21-6716139915dc2.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:10:57', '2024-10-21 14:10:57', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716139914712.png\",\"storage\":\"public\"}]', '[]', 'kadai-mushroom-gravy', 0, 0, 99, 1, 0),
(255, 'Mushroom Chettinad Gravy', 'Mushroom Chettinad Gravy', '2024-10-21-671613e76cca6.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:12:15', '2024-10-21 14:12:15', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671613e76b81f.png\",\"storage\":\"public\"}]', '[]', 'mushroom-chettinad-gravy', 0, 0, 99, 1, 0),
(256, 'Mushroom Pepper Masala', 'Mushroom Pepper Masala', '2024-10-21-6716145b1db4c.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:14:11', '2024-10-21 14:14:11', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716145b1c728.png\",\"storage\":\"public\"}]', '[]', 'mushroom-pepper-masala', 0, 0, 99, 1, 0),
(257, 'Gobi Masala Fry', 'Gobi Masala Fry', '2024-10-21-6716149ed1f1e.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:15:18', '2024-10-21 14:15:18', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716149ed0921.png\",\"storage\":\"public\"}]', '[]', 'gobi-masala-fry', 0, 0, 99, 1, 0),
(258, 'Dal Tadka', 'Dal Tadka', '2024-10-21-671614d85ad40.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:16:16', '2024-10-21 14:16:16', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671614d8597b0.png\",\"storage\":\"public\"}]', '[]', 'dal-tadka', 0, 0, 99, 1, 0),
(259, 'Dal Fry Masala', 'Dal Fry Masala', '2024-10-21-6716151aebf4b.png', 12, '[{\"id\":\"12\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 82.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:17:22', '2024-10-21 14:17:22', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716151aea73e.png\",\"storage\":\"public\"}]', '[]', 'dal-fry-masala', 0, 0, 99, 1, 0),
(260, 'Prawn Noodles', 'Prawn noodles', '2024-10-21-671616c2d0af5.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 14:24:26', '2024-10-21 14:24:26', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671616c2cf438.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"234\"},{\"label\":\"schezwan\",\"optionPrice\":\"248\"}]}]', 'prawn-noodles', 0, 0, 99, 1, 1),
(261, 'Mutton Noodles', 'Mutton Noodles', '2024-10-21-6716182c0da18.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 14:30:28', '2024-10-21 14:30:28', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716182c0c62c.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"223\"},{\"label\":\"Schezwan\",\"optionPrice\":\"237\"}]}]', 'mutton-noodles', 0, 0, 99, 1, 1),
(262, 'Chicken Noodles', 'Chicken Noodles', '2024-10-21-6716188651004.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 14:31:58', '2024-10-21 14:31:58', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671618864f598.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"128\"},{\"label\":\"Schezwan\",\"optionPrice\":\"143\"}]}]', 'chicken-noodles-2', 0, 0, 99, 1, 1),
(263, 'Egg Noodles', 'Egg noodles', '2024-10-21-671619006cdef.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 14:34:00', '2024-10-21 14:34:00', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671619006b589.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"105\"},{\"label\":\"schezwan\",\"optionPrice\":\"119\"}]}]', 'egg-noodles-2', 0, 0, 99, 1, 1),
(264, 'Paneer Noodles', 'Paneer noodles', '2024-10-21-671619568d9a2.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:35:26', '2024-10-21 14:35:26', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671619568c78c.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"117\"},{\"label\":\"schezwan\",\"optionPrice\":\"131\"}]}]', 'paneer-noodles-2', 0, 0, 99, 1, 0),
(265, 'Mushroom Noodles', 'Mushroom Noodles', '2024-10-21-671619a3d180f.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:36:43', '2024-10-21 14:36:43', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671619a3cfe92.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"117\"},{\"label\":\"Schezwan\",\"optionPrice\":\"131\"}]}]', 'mushroom-noodles-2', 0, 0, 99, 1, 0),
(266, 'Gobi Noodles', 'Gobi Noodles', '2024-10-21-671619ed7d5ea.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:37:57', '2024-10-21 14:37:57', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671619ed7bbc5.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"117\"},{\"label\":\"Schezwan\",\"optionPrice\":\"131\"}]}]', 'gobi-noodles-2', 0, 0, 99, 1, 0),
(267, 'Veg Noodles', 'Veg noodles', '2024-10-21-67161a3674d28.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 14:39:10', '2024-10-21 14:39:10', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67161a36737d5.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"105\"},{\"label\":\"Schezwan\",\"optionPrice\":\"119\"}]}]', 'veg-noodles-3', 0, 0, 99, 1, 0),
(268, 'Prawn Fried Rice', 'Prawn fried Rice', '2024-10-21-67161bce0886a.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 14:45:58', '2024-10-21 14:45:58', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67161bce07042.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"223\"},{\"label\":\"schezwan\",\"optionPrice\":\"237\"}]}]', 'prawn-fried-rice', 0, 0, 99, 1, 1),
(269, 'Mutton Fried Rice', 'Mutton Fried Rice', '2024-10-21-67161cf929048.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 14:50:57', '2024-10-21 14:50:57', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67161cf927abb.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"211\"},{\"label\":\"schezwan\",\"optionPrice\":\"225\"}]}]', 'mutton-fried-rice', 0, 0, 99, 1, 1),
(270, 'Mix Non Veg Fried Rice', 'Mix Non Veg Fried Rice', '2024-10-21-67161d6d793b5.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 14:52:53', '2024-10-21 14:52:53', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67161d6d782fa.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"211\"},{\"label\":\"schezwan\",\"optionPrice\":\"225\"}]}]', 'mix-non-veg-fried-rice', 0, 0, 99, 1, 1),
(271, 'Chilli Garlic Chicken Fried Rice', 'Chilli Garlic Chicken fried Rice', '2024-10-21-67161dc3b3076.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 165.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 14:54:19', '2024-10-21 14:54:19', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67161dc3b1bcb.png\",\"storage\":\"public\"}]', '[]', 'chilli-garlic-chicken-fried-rice', 0, 0, 99, 1, 1),
(272, 'Chicken Fried Rice', 'Chicken Fried Rice', '2024-10-21-67161e06b3f3c.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 14:55:26', '2024-10-21 14:55:26', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67161e06b2d68.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"117\"},{\"label\":\"Schezwan\",\"optionPrice\":\"131\"}]}]', 'chicken-fried-rice', 0, 0, 99, 1, 1),
(273, 'Egg Fried Rice', 'Egg Fried Rice', '2024-10-21-67161e4a20a5e.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 14:56:34', '2024-10-21 14:56:34', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67161e4a1f387.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"93\"},{\"label\":\"Schezwan\",\"optionPrice\":\"107\"}]}]', 'egg-fried-rice', 0, 0, 99, 1, 1),
(274, 'Paneer Fried Rice', 'Paneer Fried Rice', '2024-10-21-6716627068c43.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 19:47:20', '2024-10-21 19:47:20', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716627067818.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"117\"},{\"label\":\"schezwan\",\"optionPrice\":\"131\"}]}]', 'paneer-fried-rice', 0, 0, 99, 1, 0),
(275, 'Mushroom Fried Rice', 'Mushroom Fried Rice', '2024-10-21-671662c7ec6b9.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 19:48:47', '2024-10-21 19:48:47', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671662c7eaf9a.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"117\"},{\"label\":\"schezwan\",\"optionPrice\":\"131\"}]}]', 'mushroom-fried-rice', 0, 0, 99, 1, 0),
(276, 'Gobi Fried Rice', 'Gobi Fried Rice', '2024-10-21-6716633a23136.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 19:50:42', '2024-10-21 19:50:42', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716633a21ab4.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"117\"},{\"label\":\"schezwan\",\"optionPrice\":\"131\"}]}]', 'gobi-fried-rice', 0, 0, 99, 1, 0),
(277, 'Ghee Fried Rice', 'Ghee Fried Rice', '2024-10-21-67166469cd746.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 19:55:45', '2024-10-21 19:55:45', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67166469cc4c6.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"93\"},{\"label\":\"schezwan\",\"optionPrice\":\"107\"}]}]', 'ghee-fried-rice', 0, 0, 99, 1, 0),
(278, 'Jeera Fried Rice', 'Jeera Fried Rice', '2024-10-21-671664b586523.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:05:00', 1, 1, 6, '2024-10-21 19:57:01', '2024-10-21 19:57:01', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671664b5849af.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"93\"},{\"label\":\"Schezwan\",\"optionPrice\":\"107\"}]}]', 'jeera-fried-rice', 0, 0, 99, 1, 0),
(279, 'Veg Fried Rice', 'Veg Fried Rice', '2024-10-21-67166500198a3.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 19:58:16', '2024-10-21 19:58:16', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716650017bf1.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"93\"},{\"label\":\"Schezwan\",\"optionPrice\":\"107\"}]}]', 'veg-fried-rice', 0, 0, 99, 1, 0),
(280, 'Mix Veg Fried Rice', 'Mix Veg Fried Rice', '2024-10-21-67166551a66f3.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-21 19:59:37', '2024-10-21 19:59:37', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-67166551a525c.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"normal\",\"optionPrice\":\"140\"},{\"label\":\"schezwan\",\"optionPrice\":\"154\"}]}]', 'mix-veg-fried-rice', 0, 0, 99, 1, 0),
(281, 'Prawn Kadai Rice', 'Prawn Kadai Rice', '2024-10-21-671667e39c299.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 235.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 20:10:35', '2024-10-21 20:10:35', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671667e3986f5.png\",\"storage\":\"public\"}]', '[]', 'prawn-kadai-rice', 0, 0, 99, 1, 1);
INSERT INTO `items` (`id`, `name`, `description`, `image`, `category_id`, `category_ids`, `variations`, `add_ons`, `attributes`, `choice_options`, `price`, `tax`, `tax_type`, `discount`, `discount_type`, `available_time_starts`, `available_time_ends`, `veg`, `status`, `store_id`, `created_at`, `updated_at`, `order_count`, `avg_rating`, `rating_count`, `rating`, `module_id`, `stock`, `unit_id`, `images`, `food_variations`, `slug`, `recommended`, `organic`, `maximum_cart_quantity`, `is_approved`, `is_halal`) VALUES
(282, 'Mutton Kadai Rice', 'Mutton Kadai Rice', '2024-10-21-671668137c26c.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 224.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 20:11:23', '2024-10-21 20:11:23', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716681379f2e.png\",\"storage\":\"public\"}]', '[]', 'mutton-kadai-rice', 0, 0, 99, 1, 1),
(283, 'Naddukozhi Kadai Rice', 'Mutton Kadai Rice', '2024-10-21-6716685ecf271.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 212.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 20:12:38', '2024-10-21 20:12:38', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-6716685ecdf03.png\",\"storage\":\"public\"}]', '[]', 'naddukozhi-kadai-rice', 0, 0, 99, 1, 1),
(284, 'Chicken Kadai Rice', 'Chicken Kadai Rice', '2024-10-21-671668969bc23.png', 5, '[{\"id\":\"5\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 153.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-21 20:13:34', '2024-10-21 20:13:34', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-21-671668969a34a.png\",\"storage\":\"public\"}]', '[]', 'chicken-kadai-rice', 0, 0, 99, 1, 1),
(285, 'Chilli Prawn', 'Chilli Prawn', '2024-10-22-6717b7ffb32f2.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 212.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:04:39', '2024-10-22 20:04:39', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717b7ffaf78f.png\",\"storage\":\"public\"}]', '[]', 'chilli-prawn', 0, 0, 99, 1, 1),
(286, 'Prawn Pepper Fry', 'Prawn Pepper Fry', '2024-10-22-6717b82ef2791.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 224.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:05:26', '2024-10-22 20:05:26', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717b82ef1511.png\",\"storage\":\"public\"}]', '[]', 'prawn-pepper-fry', 0, 0, 99, 1, 1),
(287, 'Prawn Chukka', 'Prawn Chukka', '2024-10-22-6717b85bdd4ea.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 224.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:06:11', '2024-10-22 20:06:11', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717b85bdbaaa.png\",\"storage\":\"public\"}]', '[]', 'prawn-chukka', 0, 0, 99, 1, 1),
(288, 'Prawn 65', 'Prawn 65', '2024-10-22-6717b8a0e980d.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 200.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:07:20', '2024-10-22 20:07:20', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717b8a0e80a3.png\",\"storage\":\"public\"}]', '[]', 'prawn-65', 0, 0, 99, 1, 1),
(289, 'Fish 65', 'Fish 65', '2024-10-22-6717b8d84f394.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 176.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:08:16', '2024-10-22 20:08:16', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717b8d84d7aa.png\",\"storage\":\"public\"}]', '[]', 'fish-65', 0, 0, 99, 1, 1),
(290, 'Fish Royal Seema', 'Fish Royal Seema', '2024-10-22-6717b911e84e1.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 165.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:09:13', '2024-10-22 20:09:13', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717b911e7199.png\",\"storage\":\"public\"}]', '[]', 'fish-royal-seema', 0, 0, 99, 1, 1),
(291, 'Apollo Fish', 'Apollo Fish', '2024-10-22-6717b93c9a29b.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 165.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:09:56', '2024-10-22 20:09:56', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717b93c989bb.png\",\"storage\":\"public\"}]', '[]', 'apollo-fish', 0, 0, 99, 1, 1),
(292, 'Mutton Ghee Roast', 'Mutton Ghee Roast', '2024-10-22-6717b980c6d11.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 259.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:11:04', '2024-10-22 20:11:04', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717b980c50dd.png\",\"storage\":\"public\"}]', '[]', 'mutton-ghee-roast', 0, 0, 99, 1, 1),
(293, 'Mutton Chukka', 'Mutton chukka', '2024-10-22-6717b9fb27327.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 235.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:13:07', '2024-10-22 20:13:07', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717b9fb25b3e.png\",\"storage\":\"public\"}]', '[]', 'mutton-chukka', 0, 0, 99, 1, 1),
(294, 'Mutton Pepper Fry', 'Mutton Pepper Fry', '2024-10-22-6717ba299dc53.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 212.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:13:53', '2024-10-22 20:13:53', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717ba299c535.png\",\"storage\":\"public\"}]', '[]', 'mutton-pepper-fry', 0, 0, 99, 1, 1),
(295, 'Chicken Chukka', 'Chicken Chukka', '2024-10-22-6717bbe9d5122.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 153.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:21:21', '2024-10-22 20:21:21', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bbe9d3779.png\",\"storage\":\"public\"}]', '[]', 'chicken-chukka', 0, 0, 99, 1, 1),
(296, 'Pepper Chicken', 'Pepper Chicken', '2024-10-22-6717bc18df8c4.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 153.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:22:08', '2024-10-22 20:22:08', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bc18de546.png\",\"storage\":\"public\"}]', '[]', 'pepper-chicken', 0, 0, 99, 1, 1),
(297, 'Chicken Royal Seema', 'Chicken Royal Seema', '2024-10-22-6717bc4c28d16.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:23:00', '2024-10-22 20:23:00', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bc4c276a6.png\",\"storage\":\"public\"}]', '[]', 'chicken-royal-seema', 0, 0, 99, 1, 1),
(298, 'Chicken 90', 'Chicken 90', '2024-10-22-6717bc7e2b826.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 165.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:23:50', '2024-10-22 20:23:50', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bc7e2a2ef.png\",\"storage\":\"public\"}]', '[]', 'chicken-90', 0, 0, 99, 1, 1),
(299, 'Chicken 555', 'Chicken 555', '2024-10-22-6717bca939253.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 153.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:24:33', '2024-10-22 20:24:33', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bca937e38.png\",\"storage\":\"public\"}]', '[]', 'chicken-555', 0, 0, 99, 1, 1),
(300, 'Chicken 72', 'Chicken 72', '2024-10-22-6717bcdacff25.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:25:22', '2024-10-22 20:25:22', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bcdacea42.png\",\"storage\":\"public\"}]', '[]', 'chicken-72', 0, 0, 99, 1, 1),
(301, 'Chicken 65', 'Chicken 65', '2024-10-22-6717bd10d1878.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:26:16', '2024-10-22 20:26:16', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bd10cff91.png\",\"storage\":\"public\"}]', '[]', 'chicken-65', 0, 0, 99, 1, 1),
(302, 'Rampuri Chicken', 'Rampuri Chicken', '2024-10-22-6717bd452ac27.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:27:09', '2024-10-22 20:27:09', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bd45294b8.png\",\"storage\":\"public\"}]', '[]', 'rampuri-chicken', 0, 0, 99, 1, 1),
(303, 'Chicken Fry', 'Chicken Fry', '2024-10-22-6717bf467237d.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:35:42', '2024-10-22 20:35:42', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bf466fe86.png\",\"storage\":\"public\"}]', '[]', 'chicken-fry', 0, 0, 99, 1, 1),
(304, 'Ginger Chicken', 'Ginger Chicken', '2024-10-22-6717bf7adc3bd.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:36:34', '2024-10-22 20:36:34', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bf7adab16.png\",\"storage\":\"public\"}]', '[]', 'ginger-chicken', 0, 0, 99, 1, 1),
(305, 'Garlic Chicken', 'Garlic Chicken', '2024-10-22-6717bfaa749bb.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:37:22', '2024-10-22 20:37:22', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bfaa738f8.png\",\"storage\":\"public\"}]', '[]', 'garlic-chicken', 0, 0, 99, 1, 1),
(306, 'Dragon Chicken', 'Dragon Chicken', '2024-10-22-6717bfd27213d.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:38:02', '2024-10-22 20:38:02', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717bfd270813.png\",\"storage\":\"public\"}]', '[]', 'dragon-chicken', 0, 0, 99, 1, 1),
(307, 'Schezwan Chicken', 'Schezwan Chicken', '2024-10-22-6717c00671e5a.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:38:54', '2024-10-22 20:38:54', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c00670514.png\",\"storage\":\"public\"}]', '[]', 'schezwan-chicken', 0, 0, 99, 1, 1),
(308, 'Lemon Chicken', 'Lemon Chicken', '2024-10-22-6717c03792786.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:39:43', '2024-10-22 20:39:43', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c0379101e.png\",\"storage\":\"public\"}]', '[]', 'lemon-chicken', 0, 0, 99, 1, 1),
(309, 'Chicken Manchurian', 'Chicken Manchurian', '2024-10-22-6717c06c47300.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:40:36', '2024-10-22 20:40:36', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c06c45d9a.png\",\"storage\":\"public\"}]', '[]', 'chicken-manchurian', 0, 0, 99, 1, 1),
(310, 'Chilli Chicken', 'Chilli Chicken', '2024-10-22-6717c09cc1151.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:41:24', '2024-10-22 20:41:24', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c09cbfb36.png\",\"storage\":\"public\"}]', '[]', 'chilli-chicken-2', 0, 0, 99, 1, 1),
(311, 'Chicken Lollipop', 'Chicken Lollipop', '2024-10-22-6717c129176cf.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:43:45', '2024-10-22 20:43:45', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c1291630b.png\",\"storage\":\"public\"}]', '[]', 'chicken-lollipop-2', 0, 0, 99, 1, 1),
(312, 'Egg Pepper Fry', 'Egg Pepper Fry', '2024-10-22-6717c19e72ab9.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:45:42', '2024-10-22 20:45:42', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c19e71098.png\",\"storage\":\"public\"}]', '[]', 'egg-pepper-fry', 0, 0, 99, 1, 1),
(313, 'Egg Manchurian', 'Egg Manchurian', '2024-10-22-6717c1d078580.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:46:32', '2024-10-22 20:46:32', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c1d0769cd.png\",\"storage\":\"public\"}]', '[]', 'egg-manchurian', 0, 0, 99, 1, 1),
(314, 'Chilli Egg', 'Chilli Egg', '2024-10-22-6717c208efe50.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:47:28', '2024-10-22 20:47:28', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c208ee80d.png\",\"storage\":\"public\"}]', '[]', 'chilli-egg', 0, 0, 99, 1, 1),
(315, 'Masala Omelette', 'Masala Omelette', '2024-10-22-6717c23fd1773.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:48:23', '2024-10-22 20:48:23', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c23fcfe9b.png\",\"storage\":\"public\"}]', '[]', 'masala-omelette', 0, 0, 99, 1, 1),
(316, 'Egg Podimas', 'Egg Podimas', '2024-10-22-6717c27833bfd.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 59.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:49:20', '2024-10-22 20:49:20', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c27831d0e.png\",\"storage\":\"public\"}]', '[]', 'egg-podimas', 0, 0, 99, 1, 1),
(317, 'Chicken Tikka', 'Chicken Tikka', '2024-10-22-6717c2b4cee63.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 188.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-22 20:50:20', '2024-10-22 20:50:20', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c2b4cd47c.png\",\"storage\":\"public\"}]', '[]', 'chicken-tikka', 0, 0, 99, 1, 1),
(318, 'Paneer Tikka', 'Paneer Tikka', '2024-10-22-6717c4bcc6b6d.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 200.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 20:59:00', '2024-10-22 21:00:07', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'paneer-tikka', 0, 0, 99, 1, 0),
(319, 'Paneer 65', 'Paneer 65', '2024-10-22-6717c4f472768.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 20:59:56', '2024-10-22 20:59:56', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c4f471235.png\",\"storage\":\"public\"}]', '[]', 'paneer-65-2', 0, 0, 99, 1, 0),
(320, 'Paneer Manchurian', 'Paneer Manchurian', '2024-10-22-6717c54253547.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 112.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 21:01:14', '2024-10-22 21:01:14', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c54251f8e.png\",\"storage\":\"public\"}]', '[]', 'paneer-manchurian-2', 0, 0, 99, 1, 0),
(321, 'Chilli Paneer', 'Chilli Paneer', '2024-10-22-6717c570e73e3.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 112.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 21:02:00', '2024-10-22 21:02:00', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c570e5ad6.png\",\"storage\":\"public\"}]', '[]', 'chilli-paneer', 0, 0, 99, 1, 0),
(322, 'Paneer Pepper Fry', 'Paneer Pepper Fry', '2024-10-22-6717c5b98cc2e.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 21:03:13', '2024-10-22 21:03:13', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c5b98b65a.png\",\"storage\":\"public\"}]', '[]', 'paneer-pepper-fry', 0, 0, 99, 1, 0),
(323, 'Chilli Gobi', 'Chilli Gobi', '2024-10-22-6717c5ece8de2.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 100.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 21:04:04', '2024-10-22 21:04:04', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c5ece7a3a.png\",\"storage\":\"public\"}]', '[]', 'chilli-gobi', 0, 0, 99, 1, 0),
(324, 'Gobi 65', 'Gobi 65', '2024-10-22-6717c618d9009.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 88.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 21:04:48', '2024-10-22 21:04:48', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c618d7b07.png\",\"storage\":\"public\"}]', '[]', 'gobi-65-2', 0, 0, 99, 1, 0),
(325, 'Gobi Manchurian', 'Gobi Manchurian', '2024-10-22-6717c64addc0d.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 100.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 21:05:38', '2024-10-22 21:05:38', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c64adc1ad.png\",\"storage\":\"public\"}]', '[]', 'gobi-manchurian-2', 0, 0, 99, 1, 0),
(326, 'Gobi Pepper Fry', 'Gobi Pepper Fry', '2024-10-22-6717c67e62553.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 100.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 21:06:30', '2024-10-22 21:06:30', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c67e60bff.png\",\"storage\":\"public\"}]', '[]', 'gobi-pepper-fry', 0, 0, 99, 1, 0),
(327, 'Gobi Butter Garlic', 'Gobi Butter Garlic', '2024-10-22-6717c6bb3c9a4.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 21:07:31', '2024-10-22 21:07:31', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c6bb3b427.png\",\"storage\":\"public\"}]', '[]', 'gobi-butter-garlic', 0, 0, 99, 1, 0),
(328, 'Mushroom 65', 'Mushroom 65', '2024-10-22-6717c6e58c2dc.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 100.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 21:08:13', '2024-10-22 21:08:13', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c6e58a75e.png\",\"storage\":\"public\"}]', '[]', 'mushroom-65-2', 0, 0, 99, 1, 0),
(329, 'Mushroom Manchurian', 'Mushroom Manchurian', '2024-10-22-6717c70f8c973.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 21:08:55', '2024-10-22 21:08:55', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c70f8b67d.png\",\"storage\":\"public\"}]', '[]', 'mushroom-manchurian-2', 0, 0, 99, 1, 0),
(330, 'Chilli Mushroom', 'Chilli Mushroom', '2024-10-22-6717c73f17932.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-22 21:09:43', '2024-10-22 21:09:43', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-22-6717c73f1683e.png\",\"storage\":\"public\"}]', '[]', 'chilli-mushroom', 0, 0, 99, 1, 0),
(331, 'Grill Chicken', 'Grill Chicken', '2024-10-23-67186e2986f45.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-23 09:01:53', '2024-10-23 09:01:53', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-23-67186e2985a1f.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"Half\",\"optionPrice\":\"234\"},{\"label\":\"full\",\"optionPrice\":\"457\"}]}]', 'grill-chicken', 0, 0, 99, 1, 1),
(335, 'Barbeque Chicken', 'Barbeque Chicken', '2024-10-25-671bb0708058d.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:21:28', '2024-10-25 20:21:28', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb0707d189.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"Quater\",\"optionPrice\":\"117\"},{\"label\":\"half\",\"optionPrice\":\"223\"},{\"label\":\"full\",\"optionPrice\":\"446\"}]}]', 'barbeque-chicken', 0, 0, 99, 1, 1),
(336, 'Tandoori Chicken', 'Tandoori Chicken', '2024-10-25-671bb0de04ca3.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 1.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:23:18', '2024-10-25 20:23:18', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb0de03238.png\",\"storage\":\"public\"}]', '[{\"name\":\"category\",\"type\":\"single\",\"min\":\"\",\"max\":\"\",\"required\":\"on\",\"values\":[{\"label\":\"Quater\",\"optionPrice\":\"117\"},{\"label\":\"half\",\"optionPrice\":\"223\"},{\"label\":\"full\",\"optionPrice\":\"446\"}]}]', 'tandoori-chicken', 0, 0, 99, 1, 1),
(337, 'Kfc Chicken', 'Kfc Chicken', '2024-10-25-671bb11790b06.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:24:15', '2024-10-25 20:24:15', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb1178f39b.png\",\"storage\":\"public\"}]', '[]', 'kfc-chicken', 0, 0, 99, 1, 1),
(338, 'Kfc Mini Bucket', 'Kfc mini bucket+ cocacola', '2024-10-25-671bb15b9e10f.png', 4, '[{\"id\":\"4\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 329.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:25:23', '2024-10-25 20:25:23', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb15b9c99a.png\",\"storage\":\"public\"}]', '[]', 'kfc-mini-bucket', 0, 0, 99, 1, 1),
(339, 'Fish Full Bbq', 'Fish Full Bbq', '2024-10-25-671bb378d4190.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 294.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:34:24', '2024-10-25 20:34:24', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb378d0bc5.png\",\"storage\":\"public\"}]', '[]', 'fish-full-bbq', 0, 0, 99, 1, 1),
(340, 'Chicken Popcorn 16 Pcs', 'Chicken Popcorn 16 Pcs', '2024-10-25-671bb3c1304e6.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 141.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:35:37', '2024-10-25 20:35:37', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb3c12f169.png\",\"storage\":\"public\"}]', '[]', 'chicken-popcorn-16-pcs', 0, 0, 99, 1, 1),
(341, 'Chicken Popcorn 12 Pcs', 'Chicken Popcorn 12 Pcs', '2024-10-25-671bb3eed2259.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:36:22', '2024-10-25 20:36:22', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb3eed0bef.png\",\"storage\":\"public\"}]', '[]', 'chicken-popcorn-12-pcs', 0, 0, 99, 1, 1),
(342, 'Chicken Thigh', 'Chicken Thigh', '2024-10-25-671bb426d7793.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:37:18', '2024-10-25 20:37:18', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb426d5ae5.png\",\"storage\":\"public\"}]', '[]', 'chicken-thigh', 0, 0, 99, 1, 1),
(343, 'Chicken Strips 3 Pcs', 'Chicken Strips 3 Pcs', '2024-10-25-671bb462430b2.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 116.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:38:18', '2024-10-25 20:38:18', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb46241944.png\",\"storage\":\"public\"}]', '[]', 'chicken-strips-3-pcs', 0, 0, 99, 1, 1),
(344, 'Chicken Wings 3 Pcs', 'Chicken Wings 3 Pcs', '2024-10-25-671bb4d798f43.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 116.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:40:15', '2024-10-25 20:40:15', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb4d797c61.png\",\"storage\":\"public\"}]', '[]', 'chicken-wings-3-pcs', 0, 0, 99, 1, 1),
(345, 'Chicken Lollipop Kfc 3 Pcs', 'Chicken Lollipop Kfc 3 Pcs', '2024-10-25-671bb52583cef.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 116.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:41:33', '2024-10-25 20:41:33', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb52581ccb.png\",\"storage\":\"public\"}]', '[]', 'chicken-lollipop-kfc-3-pcs', 0, 0, 99, 1, 1),
(346, 'Mushroom 5 Pcs', 'Mushroom 5 Pcs', '2024-10-25-671bb5da378d8.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 82.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-25 20:44:34', '2024-10-25 20:45:34', 0, 0.00000000000000, 0, NULL, 2, 0, NULL, '[]', '[]', 'chicken-lollipop-kfc-3-pcs-2', 0, 0, 99, 1, 0),
(347, 'Paneer 4 Pcs', 'Paneer 4 Pcs', '2024-10-25-671bb64b6a5d3.png', 3, '[{\"id\":\"3\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 94.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-25 20:46:27', '2024-10-25 20:46:27', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb64b68c38.png\",\"storage\":\"public\"}]', '[]', 'paneer-4-pcs', 0, 0, 99, 1, 0),
(348, 'Mutton Pasta', 'Mutton Pasta', '2024-10-25-671bb7ea112dd.png', 19, '[{\"id\":\"19\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 235.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:53:22', '2024-10-25 20:53:22', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb7ea10156.png\",\"storage\":\"public\"}]', '[]', 'mutton-pasta', 0, 0, 99, 1, 1),
(349, 'Chicken Pasta', 'Chicken Pasta', '2024-10-25-671bb8183b5b2.png', 19, '[{\"id\":\"19\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 212.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 0, 1, 6, '2024-10-25 20:54:08', '2024-10-25 20:54:08', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb8183a406.png\",\"storage\":\"public\"}]', '[]', 'chicken-pasta', 0, 0, 99, 1, 1),
(350, 'Cheese Pasta', 'Cheese Pasta', '2024-10-25-671bb8fe8d26f.png', 19, '[{\"id\":\"19\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 188.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-25 20:57:58', '2024-10-25 20:57:58', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb8fe8bf2d.png\",\"storage\":\"public\"}]', '[]', 'cheese-pasta', 0, 0, 99, 1, 0),
(351, 'Red Sauce Pasta', 'Red Sauce Pasta', '2024-10-25-671bb92c1f76c.png', 19, '[{\"id\":\"19\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 176.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-25 20:58:44', '2024-10-25 20:58:44', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb92c1d645.png\",\"storage\":\"public\"}]', '[]', 'red-sauce-pasta', 0, 0, 99, 1, 0),
(352, 'White Sauce Pasta', 'White Sauce Pasta', '2024-10-25-671bb962c7f3f.png', 19, '[{\"id\":\"19\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 176.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 6, '2024-10-25 20:59:38', '2024-10-25 20:59:38', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-10-25-671bb962c62fb.png\",\"storage\":\"public\"}]', '[]', 'white-sauce-pasta', 0, 0, 99, 1, 0),
(353, 'Onion Samosa', 'Onion Samosa', '2024-11-05-672979d56078e.png', 17, '[{\"id\":\"17\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 20.00, 0.00, 'percent', 0.00, 'percent', '16:00:00', '20:30:00', 1, 1, 2, '2024-11-05 07:20:13', '2024-11-05 07:20:13', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-672979d55ec50.png\",\"storage\":\"public\"}]', '[]', 'onion-samosa', 0, 0, 50, 1, 0),
(354, 'Oreo Coffee', 'Oreo Coffee', '2024-11-05-67297a56794ac.png', 25, '[{\"id\":\"25\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 112.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 07:22:22', '2024-11-05 07:22:22', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67297a56773d8.png\",\"storage\":\"public\"}]', '[]', 'oreo-coffee', 0, 0, 20, 1, 0),
(355, 'KitKat Coffee', 'KitKat Coffee', '2024-11-05-67297bf916891.png', 25, '[{\"id\":\"25\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 112.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 07:29:21', '2024-11-05 07:29:21', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67297bf915036.png\",\"storage\":\"public\"}]', '[]', 'kitkat-coffee', 0, 0, 20, 1, 0),
(356, 'Choco Coffee', 'Choco Coffee', '2024-11-05-67297c501953b.png', 25, '[{\"id\":\"25\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 07:30:48', '2024-11-05 07:30:48', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67297c5017a8c.png\",\"storage\":\"public\"}]', '[]', 'choco-coffee', 0, 0, 20, 1, 0),
(357, 'Cold Coffee', 'Cold Coffee', '2024-11-05-67297d2208143.png', 25, '[{\"id\":\"25\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 82.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 07:34:18', '2024-11-05 08:37:06', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67297d22068fa.png\",\"storage\":\"public\"}]', '[]', 'cold-coffee', 1, 0, 20, 1, 0),
(358, 'Oreo Milk Shake', 'Oreo Milk Shake', '2024-11-05-672989ceb6ae9.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 08:28:22', '2024-11-05 08:28:22', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-672989ceb4e36.png\",\"storage\":\"public\"}]', '[]', 'oreo-milk-shake', 0, 0, 20, 1, 0),
(359, 'Boost Milk Shake', 'Boost Milk Shake', '2024-11-05-67298a39c0831.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 08:30:09', '2024-11-05 08:30:09', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67298a39bea6c.png\",\"storage\":\"public\"}]', '[]', 'boost-milk-shake', 0, 0, 20, 1, 0),
(360, 'Dry Fruit Shake', 'Dry Fruit Shake', '2024-11-05-67298b056089b.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 129.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 08:33:33', '2024-11-05 08:33:33', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67298b055f697.png\",\"storage\":\"public\"}]', '[]', 'dry-fruit-shake', 0, 0, 20, 1, 0),
(361, 'Dates Shake', 'Dates Shake', '2024-11-05-67298b7ca0139.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 08:35:32', '2024-11-05 08:36:42', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67298b7c9e428.png\",\"storage\":\"public\"}]', '[]', 'dates-shake', 1, 0, 20, 1, 0),
(362, 'Strawberry Shake', 'Strawberry Shake', '2024-11-05-67298c4c80b64.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 118.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 08:39:00', '2024-11-05 08:39:00', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67298c4c7f277.png\",\"storage\":\"public\"}]', '[]', 'strawberry-shake', 0, 0, 20, 1, 0),
(363, 'Black Currant MilkShake', 'Black Currant MilkShake', '2024-11-05-67298f11c2aec.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 08:50:49', '2024-11-05 08:50:49', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67298f11c1062.png\",\"storage\":\"public\"}]', '[]', 'black-currant-milkshake', 0, 0, 20, 1, 0),
(364, 'Butterscotch MilkShake', 'Butterscotch MilkShake', '2024-11-05-67298feb8a1f9.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 08:54:27', '2024-11-05 08:54:27', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67298feb8896b.png\",\"storage\":\"public\"}]', '[]', 'butterscotch-milkshake', 0, 0, 20, 1, 0),
(365, 'Vanilla MilkShake', 'Vanilla MilkShake', '2024-11-05-6729912d32e30.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 08:59:49', '2024-11-05 08:59:49', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-6729912d313fd.png\",\"storage\":\"public\"}]', '[]', 'vanilla-milkshake', 0, 0, 20, 1, 0),
(366, 'Chocolate MilkShake', 'Chocolate MilkShake', '2024-11-05-672995814537a.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 106.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 09:18:17', '2024-11-05 09:18:17', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67299581435bc.png\",\"storage\":\"public\"}]', '[]', 'chocolate-milkshake', 0, 0, 20, 1, 0),
(367, 'Rose Milk', 'Rose Milk', '2024-11-05-67299632cf496.png', 16, '[{\"id\":\"16\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 71.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '21:00:00', 1, 1, 2, '2024-11-05 09:21:14', '2024-11-05 09:21:14', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-67299632cdb40.png\",\"storage\":\"public\"}]', '[]', 'rose-milk', 0, 0, 20, 1, 0),
(368, 'Nattu Kozhi Soup', 'Nattu Kozhi Soup', '2024-11-05-6729dd529c9f9.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 80.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '22:00:00', 0, 1, 7, '2024-11-05 14:24:42', '2024-11-05 14:24:42', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-6729dd529ae5e.png\",\"storage\":\"public\"}]', '[]', 'nattu-kozhi-soup', 0, 0, 99, 1, 0),
(369, 'Mutton Soup', 'Mutton Soup', '2024-11-05-6729de5f65701.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 80.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '22:00:00', 0, 1, 7, '2024-11-05 14:29:11', '2024-11-05 14:29:11', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-6729de5f63c07.png\",\"storage\":\"public\"}]', '[]', 'mutton-soup', 0, 0, 99, 1, 0),
(370, 'Chicken Soup', 'Chicken Soup', '2024-11-05-6729de8c397fc.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 60.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '22:00:00', 0, 1, 7, '2024-11-05 14:29:56', '2024-11-05 14:29:56', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-6729de8c37f78.png\",\"storage\":\"public\"}]', '[]', 'chicken-soup', 0, 0, 99, 1, 0),
(371, 'Chicken Clear Soup', 'Chicken Clear Soup', '2024-11-05-6729deb57a0aa.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 50.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '22:00:00', 0, 1, 7, '2024-11-05 14:30:37', '2024-11-05 14:30:37', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-6729deb5788d8.png\",\"storage\":\"public\"}]', '[]', 'chicken-clear-soup-2', 0, 0, 99, 1, 0),
(372, 'Cream Of Mushroom Soup', 'Cream Of Mushroom Soup', '2024-11-05-6729dfacf2b50.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 75.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '22:00:00', 1, 1, 7, '2024-11-05 14:34:44', '2024-11-05 14:34:44', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-6729dfacf111c.png\",\"storage\":\"public\"}]', '[]', 'cream-of-mushroom-soup', 0, 0, 99, 1, 0),
(373, 'Mushroom Soup', 'Mushroom Soup', '2024-11-05-6729dfd6d725c.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 60.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '22:00:00', 1, 1, 7, '2024-11-05 14:35:26', '2024-11-05 14:35:26', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-6729dfd6d5752.png\",\"storage\":\"public\"}]', '[]', 'mushroom-soup', 0, 0, 99, 1, 0),
(374, 'Manchow', 'Manchow', '2024-11-05-6729e003e4aee.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 45.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '22:00:00', 1, 1, 7, '2024-11-05 14:36:11', '2024-11-05 14:36:11', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-6729e003e2c7e.png\",\"storage\":\"public\"}]', '[]', 'manchow', 0, 0, 99, 1, 0),
(375, 'Sweet Corn Soup', 'Sweet Corn Soup', '2024-11-05-6729e0292649c.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 45.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '22:00:00', 1, 1, 7, '2024-11-05 14:36:49', '2024-11-05 14:36:49', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-6729e02924736.png\",\"storage\":\"public\"}]', '[]', 'sweet-corn-soup-2', 0, 0, 99, 1, 0),
(376, 'Veg Clear Soup', 'Veg Clear Soup', '2024-11-05-6729e0527c554.png', 18, '[{\"id\":\"18\",\"position\":1}]', '[]', '[\"\"]', '[]', '[]', 40.00, 0.00, 'percent', 0.00, 'percent', '11:00:00', '22:00:00', 1, 1, 7, '2024-11-05 14:37:30', '2024-11-05 14:37:30', 0, 0.00000000000000, 0, NULL, 2, NULL, NULL, '[{\"img\":\"2024-11-05-6729e0527a96d.png\",\"storage\":\"public\"}]', '[]', 'veg-clear-soup-2', 0, 0, 99, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `item_campaigns`
--

CREATE TABLE `item_campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_ids` varchar(255) DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `add_ons` varchar(255) DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `price` decimal(24,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(24,2) NOT NULL DEFAULT 0.00,
  `tax_type` varchar(20) NOT NULL DEFAULT 'percent',
  `discount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) NOT NULL DEFAULT 'percent',
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `veg` tinyint(1) NOT NULL DEFAULT 0,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `stock` int(11) DEFAULT 0,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `food_variations` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `maximum_cart_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_generic_names`
--

CREATE TABLE `item_generic_names` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `generic_name_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_nutrition`
--

CREATE TABLE `item_nutrition` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `nutrition_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_tag`
--

CREATE TABLE `item_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_tag`
--

INSERT INTO `item_tag` (`id`, `item_id`, `tag_id`) VALUES
(1, 79, 1),
(7, 36, 3),
(8, 38, 3),
(9, 40, 3),
(10, 44, 3),
(11, 45, 3),
(12, 332, 1),
(13, 333, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loyalty_point_transactions`
--

CREATE TABLE `loyalty_point_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `reference` varchar(191) DEFAULT NULL,
  `transaction_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loyalty_point_transactions`
--

INSERT INTO `loyalty_point_transactions` (`id`, `user_id`, `transaction_id`, `credit`, `debit`, `balance`, `reference`, `transaction_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'a8c549bc-9263-4d6b-8cf7-ddf001eb7748', 1.000, 0.000, 1.000, '100003', 'order_place', '2024-10-07 13:33:52', '2024-10-07 13:33:52'),
(2, 1, '51eba7cf-2eb8-479e-982d-a560f3d5d9b8', 2.000, 0.000, 3.000, '100004', 'order_place', '2024-10-07 13:37:52', '2024-10-07 13:37:52'),
(3, 1, '8d6a6ccf-f8ae-47d4-a797-2bfdfb85b197', 1.000, 0.000, 4.000, '100005', 'order_place', '2024-10-07 13:43:49', '2024-10-07 13:43:49'),
(4, 1, 'db06996e-990b-4cef-b12b-e0f57d77b63e', 1.000, 0.000, 5.000, '100007', 'order_place', '2024-10-07 14:56:44', '2024-10-07 14:56:44'),
(5, 1, 'daa95ff5-fd23-42f1-a8a6-22bc54a93df0', 0.000, 5.000, 0.000, '069bc1b8-663f-4850-8e8e-455ac5e2cafa', 'point_to_wallet', '2024-10-17 15:30:34', '2024-10-17 15:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `sender_id`, `message`, `file`, `is_seen`, `created_at`, `updated_at`, `order_id`) VALUES
(1, 1, 2, 'Hi', NULL, 1, '2024-10-07 11:13:08', '2024-10-17 15:30:44', NULL),
(2, 2, 1, 'Hi', NULL, 1, '2024-10-07 13:38:40', '2024-10-07 13:38:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 30),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 30),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 30),
(4, '2016_06_01_000004_create_oauth_clients_table', 30),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 30),
(8, '2021_06_17_054551_create_soft_credentials_table', 31),
(9, '2022_04_10_030533_create_newsletters_table', 32),
(10, '2022_04_12_015827_create_social_media_table', 32),
(11, '2022_04_12_215009_create_jobs_table', 32),
(12, '2022_04_21_145207_add_column_to_modules_table', 32),
(13, '2022_05_12_170027_add_column_to_customer_addresses_table', 33),
(14, '2022_05_14_155444_add_all_zones_column_to_modules_table', 33),
(15, '2022_05_26_120821_change_data_column_to_user_notifiations_table', 33),
(16, '2022_03_31_103418_create_wallet_transactions_table', 34),
(17, '2022_03_31_103827_create_loyalty_point_transactions_table', 34),
(18, '2022_04_09_161150_add_wallet_point_columns_to_users_table', 34),
(19, '2022_05_14_122133_add_dm_tips_column_to_orders_table', 34),
(20, '2022_05_14_122603_add_dm_tips_column_to_order_transactions_table', 34),
(21, '2022_05_17_153333_add_ref_code_to_users_table', 34),
(22, '2022_07_31_103626_add_free_delivery_by_column_to_orders_table', 35),
(23, '2022_09_10_112137_create_user_infos_table', 36),
(24, '2022_09_10_112203_create_conversations_table', 36),
(25, '2022_09_10_112220_create_messages_table', 36),
(26, '2022_10_18_092639_create_refunds_table', 37),
(27, '2022_10_18_093323_add_refund_request_cancel_column_to_orders_table', 37),
(28, '2022_10_18_093529_create_refund_reasons_table', 37),
(29, '2022_10_19_150319_add_delivery_column_to_parcel_categories_table', 37),
(30, '2022_10_19_165501_add_default_link_column_to_banners_table', 37),
(31, '2022_10_20_105050_module_zone', 37),
(32, '2022_10_22_115553_add_is_logged_column_to_admins_table', 37),
(33, '2022_10_22_122336_add_is_logged_column_to_vendor_employees_table', 37),
(34, '2022_10_25_153214_add_payment_method_columns_to_zones_table', 37),
(35, '2022_10_31_165427_add_rename_delivery_charge_column_to_stores_table', 37),
(36, '2022_11_05_094404_add_delivery_fee_comission_to_order_transactions_table', 37),
(37, '2022_11_13_130054_create_contacts_table', 37),
(38, '2022_11_15_111925_create_expenses_table', 37),
(39, '2022_11_15_112413_add_expense_column_to_order_transactions_table', 37),
(40, '2022_12_20_104455_add_food_variations_column_to_items_table', 38),
(41, '2022_12_21_154227_alter_table_order_details_change_variation', 38),
(42, '2022_12_29_103803_add_order_id_column_to_expenses_table', 38),
(43, '2022_12_29_105321_add_maximum_cod_order_amount_column_to_module_zone_table', 38),
(44, '2022_12_29_114005_add_prescription_order_column_to_orders_table', 38),
(45, '2022_12_31_111437_create_notification_messages_table', 38),
(46, '2023_01_02_112948_create_tags_table', 38),
(47, '2023_01_02_113235_item_tag', 38),
(48, '2023_01_03_093510_add_current_language_key_column_to_users_table', 38),
(49, '2023_01_07_115354_add_prescription_order_to_stores_table', 38),
(50, '2023_01_07_180000_add_description_to_expenses_table', 38),
(51, '2023_01_10_124723_add_food_variations_column_to_item_campaigns_table', 38),
(52, '2023_01_10_145928_change_refund_amount_column_type', 38),
(53, '2023_01_10_150108_change_amount_column_type', 38),
(54, '2023_01_23_144828_add_tax_status_column_to_orders_table', 39),
(55, '2023_01_30_114113_change_delivery_charge_column_type_to_admin_wallets_table', 39),
(56, '2023_01_23_103943_add_slug_to_items_table', 40),
(57, '2023_01_23_144001_add_slug_to_categories_table', 40),
(58, '2023_01_23_144119_add_slug_to_item_campaigns_table', 40),
(59, '2023_01_23_144232_add_slug_to_stores_table', 40),
(60, '2023_02_25_133200_create_d_m_vehicles_table', 40),
(61, '2023_02_25_133302_add_vehicle_id_column_to_delivery_men_table', 40),
(62, '2023_02_25_133409_add_vehicle_id_column_to_orders_table', 40),
(63, '2023_02_25_163329_add_maximum_delivery_charge_column_to_module_zone_table', 40),
(64, '2023_02_25_175825_add_otp_hit_count_cols_in_phone_verifications_table', 40),
(65, '2023_02_25_175912_add_hit_count_at_col_in_password_resets_table', 40),
(66, '2023_02_26_144503_add_campaign_status_to_campaign_store_table', 40),
(67, '2023_02_26_162224_add_recommened_to_items_table', 40),
(68, '2023_02_27_102931_add_ref_by_col_to_users_table', 40),
(69, '2023_02_27_111635_create_order_cancel_reasons_table', 40),
(70, '2023_02_27_111937_add_cancellation_reason_col_to_orders_table', 40),
(71, '2023_02_27_161418_add_created_by_columns_to_coupons_table', 40),
(72, '2023_02_27_161533_add_created_by_columns_to_expenses_table', 40),
(73, '2023_02_27_162252_add_store_expense_columns_to_order_transactions_table', 40),
(74, '2023_02_27_162357_add_coupon_created_by_columns_to_orders_table', 40),
(75, '2023_03_01_154319_add_maximum_delivery_charge_column_to_stores_table', 40),
(76, '2023_03_02_103114_add_discount_on_product_by_column_to_orders_table', 40),
(77, '2023_03_02_143919_change_amount_column_to_expenses_table', 40),
(78, '2023_03_02_144258_add_discount_amount_by_store_col_to_order_transactions_table', 40),
(79, '2023_03_11_120645_add_temp_block_time_col_to_phone_verifications_table', 41),
(80, '2023_03_11_121000_add_temp_block_time_col_to_password_resets_table', 41),
(81, '2023_03_13_181502_add_temp_token_column_to_users_table', 41),
(82, '2023_04_05_112916_add_created_by_col_to_password_resets_table', 42),
(83, '2023_05_04_100012_create_data_settings_table', 42),
(84, '2023_05_04_100930_create_admin_promotional_banners_table', 42),
(85, '2023_05_04_101825_create_admin_features_table', 42),
(86, '2023_05_04_102015_create_admin_special_criterias_table', 42),
(87, '2023_05_07_152523_create_admin_testimonials_table', 42),
(88, '2023_05_07_173609_create_flutter_special_criterias_table', 42),
(89, '2023_05_08_125811_create_react_testimonials_table', 42),
(90, '2023_05_09_170006_create_email_templates_table', 42),
(91, '2023_05_16_104129_add_cutlery_processing_time_unavailable_product_note_col_to_orders_table', 42),
(92, '2023_05_18_093438_add_featured_col_to_categories_table', 42),
(93, '2023_05_18_143530_add_delivery_instruction_col_to_orders_table', 42),
(94, '2023_05_18_163841_add_organic_col_to_items_table', 42),
(95, '2023_05_28_153920_add_tax_percentage_col_to_orders_table', 42),
(96, '2023_06_11_172741_add_cutlery_col_to_stores_table', 42),
(97, '2023_07_05_104537_add_maximum_cart_quantity_col_to_items_table', 43),
(98, '2023_07_05_135741_add_service_charge_col_to_orders_table', 43),
(99, '2023_07_05_145800_add_service_charge_col_to_order_transactions_table', 43),
(100, '2023_07_05_155429_add_order_proof_col_to_orders_table', 43),
(101, '2023_07_06_124530_add_partially_paid_amount_col_to_orders_table', 43),
(102, '2023_07_06_144944_create_order_payments_table', 43),
(103, '2023_07_09_120533_add_meta_cols_to_stores_table', 43),
(104, '2023_07_09_143746_create_wallet_payments_table', 43),
(105, '2023_07_10_121938_create_wallet_bonuses_table', 43),
(106, '2023_07_10_153950_add_user_id_col_to_expenses_table', 43),
(107, '2023_07_19_124016_add_maximum_cart_quantity_col_to_item_campaigns_table', 43),
(108, '0000_00_00_000000_create_websockets_statistics_entries_table', 44),
(109, '2023_08_10_131937_create_offline_payment_methods_table', 44),
(110, '2023_08_10_132315_create_offline_payments_table', 44),
(111, '2023_08_14_123526_create_temp_products_table', 44),
(112, '2023_08_14_153229_add_is_approved_col_to_items_table', 44),
(113, '2023_08_20_143852_add_created_by_col_to_banners_table', 44),
(114, '2023_08_21_115610_add_announcement_cols_to_stores_table', 44),
(115, '2023_08_21_173527_create_guests_table', 44),
(116, '2023_08_22_102914_add_is_guest_col_to_orders_table', 44),
(117, '2023_08_24_123045_create_common_conditions_table', 44),
(118, '2023_08_24_151032_create_pharmacy_item_details_table', 44),
(119, '2023_08_26_164947_create_module_wise_banners_table', 44),
(120, '2023_08_27_123438_create_module_wise_why_chooses_table', 44),
(121, '2023_08_28_114316_create_flash_sales_table', 44),
(122, '2023_08_28_134428_create_flash_sale_items_table', 44),
(123, '2023_09_07_131829_create_carts_table', 44),
(124, '2023_09_20_122921_create_store_configs_table', 44),
(125, '2023_09_23_184806_add_flash_sale_cols_to_orders_table', 44),
(126, '2023_10_08_103818_add_increased_delivery_fee_in_zones_table', 44),
(127, '2023_11_21_123038_create_withdrawal_methods_table', 45),
(128, '2023_11_21_123229_create_disbursement_withdrawal_methods_table', 45),
(129, '2023_11_21_123320_create_disbursements_table', 45),
(130, '2023_11_21_123742_add_cols_to_withdraw_requests_table', 45),
(131, '2023_11_21_124049_create_disbursement_details_table', 45),
(132, '2023_11_21_160728_add_created_by_col_to_account_transactions_table', 45),
(133, '2023_11_23_093859_create_parcel_delivery_instructions_table', 45),
(134, '2024_01_17_105010_create_order_references_table', 46),
(135, '2024_04_01_124630_create_cash_backs_table', 47),
(136, '2024_04_01_130213_add_is_halal_col_to_items_table', 47),
(137, '2024_04_01_130644_add_body_2_col_to_email_templates_table', 47),
(138, '2024_04_01_142631_add_is_prescription_required_col_to_pharmacy_item_details_table', 47),
(139, '2024_04_02_112611_create_brands_table', 47),
(140, '2024_04_02_122002_create_ecommerce_item_details_table', 47),
(141, '2024_04_02_133855_create_cash_back_histories_table', 47),
(142, '2024_04_04_085842_add_interested_module_ids_col_to_users_table', 47),
(143, '2024_04_18_171021_add_halal_extra_packaging_cols_to_store_configs_table', 47),
(144, '2024_04_18_171206_add_halal_brand_cols_to_temp_products_table', 47),
(145, '2024_04_18_171851_add_cashback_ref_amount_cols_to_temp_orders_table', 47),
(146, '2024_04_18_172145_add_extrapackaging_ref_amount_cols_to_temp_order_transactions_table', 47),
(147, '2024_05_13_102547_create_subscription_packages_table', 48),
(148, '2024_05_13_102612_create_store_subscriptions_table', 48),
(149, '2024_05_13_104250_create_subscription_transactions_table', 48),
(150, '2024_05_13_170120_add_store_business_model_col_to_stores_table', 48),
(151, '2024_05_14_175408_add_reply_col_to_reviews_table', 48),
(152, '2024_05_16_113516_create_storages_table', 48),
(153, '2024_05_22_115717_create_subscription_billing_and_refund_histories_table', 48),
(154, '2024_05_26_120621_add_subscription_model_to_order_transaction_table', 48),
(155, '2024_05_28_110550_add_change_file_column_to_messages_table', 48),
(156, '2024_05_28_112559_add_change_order_attachment_column_to_orders_table', 48),
(157, '2024_07_07_111841_create_advertisements_table', 49),
(158, '2024_07_07_112117_create_notification_settings_table', 49),
(159, '2024_07_07_112203_create_store_notification_settings_table', 49),
(160, '2024_07_10_165721_create_priority_lists_table', 49),
(161, '2024_07_14_182931_add_package_id_col_stores_table', 49),
(162, '2024_07_15_131402_add_replied_at_col_to_reviews_table', 49),
(163, '2024_07_28_131816_create_external_configurations_table', 50),
(164, '2024_09_11_094735_add_display_name_col_in_zones_table', 51),
(165, '2024_09_11_105938_create_automated_messages_table', 51),
(166, '2024_09_11_134421_add_ordre_id_col_to_messages_table', 51),
(167, '2024_09_12_115801_create_nutritions_table', 51),
(168, '2024_09_12_120019_create_allergies_table', 51),
(169, '2024_09_12_121929_create_allergy_item_table', 51),
(170, '2024_09_12_121941_create_item_nutrition_table', 51),
(171, '2024_09_12_142834_add_nutrition_allergy_id_cols_to_temp_products_table', 51),
(172, '2024_09_15_112118_create_generic_names_table', 51),
(173, '2024_09_15_112537_create_item_generic_names_table', 51);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(191) NOT NULL,
  `module_type` varchar(191) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `stores_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `theme_id` int(11) NOT NULL DEFAULT 1,
  `description` text DEFAULT NULL,
  `all_zone_service` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_name`, `module_type`, `thumbnail`, `status`, `stores_count`, `created_at`, `updated_at`, `icon`, `theme_id`, `description`, `all_zone_service`) VALUES
(1, 'Demo Module', 'grocery', '2024-04-20-662398cb7f5ef.png', 0, 1, '2023-08-15 23:31:17', '2024-10-15 15:10:10', '2024-04-20-662398cb7f2e7.png', 1, '<p><strong>We make grocery shopping more interesting.</strong><br />\r\nFind the greatest deals from the grocery stores near you.<br />\r\n<br />\r\n<strong>Nature &amp; Organic Products</strong><br />\r\nBring Nature into your home.<br />\r\n<br />\r\n<strong>Stay home &amp; get your daily needs from our shop</strong><br />\r\nStart You&#39;r Daily Shopping with 6amMart</p>', 0),
(2, 'Foods', 'food', '2024-09-20-66ed67f340ad6.png', 1, 6, '2024-09-20 17:47:55', '2024-11-05 14:08:43', '2024-09-20-66ed67f3402f7.png', 1, '<p>All in One&nbsp;</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `module_types`
--

CREATE TABLE `module_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module_wise_banners`
--

CREATE TABLE `module_wise_banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module_wise_why_chooses`
--

CREATE TABLE `module_wise_why_chooses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `short_description` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module_zone`
--

CREATE TABLE `module_zone` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `per_km_shipping_charge` double(23,2) DEFAULT NULL,
  `minimum_shipping_charge` double(23,2) DEFAULT NULL,
  `maximum_cod_order_amount` double(23,2) DEFAULT NULL,
  `maximum_shipping_charge` double(23,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_zone`
--

INSERT INTO `module_zone` (`id`, `module_id`, `zone_id`, `per_km_shipping_charge`, `minimum_shipping_charge`, `maximum_cod_order_amount`, `maximum_shipping_charge`) VALUES
(1, 1, 1, 10.00, 10.00, 10.00, 10.00),
(2, 2, 3, 4.00, 10.00, 5000.00, 50.00),
(3, 2, 2, 1.00, 10.00, 500.00, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL COMMENT 'Subscribers email',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tergat` varchar(255) DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`, `tergat`, `zone_id`) VALUES
(1, 'test', 'test', NULL, 1, '2024-09-19 06:32:37', '2024-09-19 06:32:37', 'customer', NULL),
(2, 'What Do You Think 🍿� ...', 'hi', NULL, 1, '2024-10-07 11:25:04', '2024-10-07 11:25:04', 'deliveryman', NULL),
(3, 'Snacks Time 🍟🥪🍕', 'Choose your Favourite', NULL, 1, '2024-11-04 18:27:32', '2024-11-04 18:27:32', 'customer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_messages`
--

CREATE TABLE `notification_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_type` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_messages`
--

INSERT INTO `notification_messages` (`id`, `module_type`, `key`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'grocery', 'order_pending_message', '{userName}, Your  order {orderId} is successfully placed', 1, '2023-01-17 16:53:45', '2023-06-12 18:33:40'),
(2, 'grocery', 'order_confirmation_msg', '{userName}, Your order {orderId} is confirmed', 1, '2023-01-17 16:53:45', '2023-06-12 18:33:40'),
(3, 'grocery', 'order_processing_message', '{userName}, Your order is Processing by {storeName}', 1, '2023-01-17 16:53:45', '2023-06-12 18:33:40'),
(4, 'grocery', 'order_handover_message', 'Delivery man is on the way. For this order {orderId}', 1, '2023-01-17 16:53:45', '2023-06-12 18:33:40'),
(5, 'grocery', 'order_refunded_message', 'Order {orderId} Refunded successfully', 1, '2023-01-17 16:53:45', '2023-06-12 18:33:40'),
(6, 'grocery', 'refund_request_canceled', 'Order {orderId}  Refund request is canceled', 1, '2023-01-17 16:53:45', '2023-06-12 18:33:40'),
(7, 'grocery', 'out_for_delivery_message', '{userName}, Your order {orderId} is ready for delivery', 1, '2023-01-17 16:53:45', '2023-06-12 18:33:41'),
(8, 'grocery', 'order_delivered_message', 'Your order {orderId} is delivered', 1, '2023-01-17 16:53:45', '2023-06-12 18:33:41'),
(9, 'grocery', 'delivery_boy_assign_message', 'Your order {orderId} has been assigned to a delivery man', 1, '2023-01-17 16:53:45', '2023-06-12 18:33:41'),
(10, 'grocery', 'delivery_boy_delivered_message', 'Order {orderId} delivered successfully', 1, '2023-01-17 16:53:45', '2023-06-12 18:33:41'),
(11, 'grocery', 'order_cancled_message', 'Order {orderId} is canceled by your request', 1, '2023-01-17 16:53:45', '2023-06-12 18:33:41'),
(12, 'food', 'order_pending_message', '{userName}, Your  order {orderId} is successfully placed', 1, '2023-01-17 16:56:00', '2023-06-12 19:19:14'),
(13, 'food', 'order_confirmation_msg', '{userName}, Your order {orderId} is confirmed', 1, '2023-01-17 16:56:00', '2023-06-12 19:19:14'),
(14, 'food', 'order_processing_message', '{userName}, Your food is started for cooking by {storeName}', 1, '2023-01-17 16:56:00', '2023-06-12 19:19:14'),
(15, 'food', 'order_handover_message', 'Delivery man is on the way. For this order {orderId}', 1, '2023-01-17 16:56:00', '2023-06-12 19:19:14'),
(16, 'food', 'order_refunded_message', 'Order {orderId} Refunded successfully', 1, '2023-01-17 16:56:00', '2023-06-12 19:19:14'),
(17, 'food', 'refund_request_canceled', 'Order {orderId}  Refund request is canceled', 1, '2023-01-17 16:56:00', '2023-06-12 19:19:14'),
(18, 'food', 'out_for_delivery_message', '{userName}, Your order {orderId}  is ready for delivery', 1, '2023-01-17 16:56:00', '2023-06-12 19:19:14'),
(19, 'food', 'order_delivered_message', 'Your order {orderId} is delivered', 1, '2023-01-17 16:56:00', '2023-06-12 19:19:15'),
(20, 'food', 'delivery_boy_assign_message', 'Your order {orderId} has been assigned to a delivery man', 1, '2023-01-17 16:56:00', '2023-06-12 19:19:15'),
(21, 'food', 'delivery_boy_delivered_message', 'Order {orderId} delivered successfully', 1, '2023-01-17 16:56:00', '2023-06-12 19:19:15'),
(22, 'food', 'order_cancled_message', 'Order {orderId} is canceled by your request', 1, '2023-01-17 16:56:00', '2023-06-12 19:19:15'),
(23, 'pharmacy', 'order_pending_message', '{userName}, Your  order {orderId} is successfully placed', 1, '2023-01-17 16:57:46', '2023-06-12 19:22:20'),
(24, 'pharmacy', 'order_confirmation_msg', '{userName}, Your order {orderId} is confirmed', 1, '2023-01-17 16:57:46', '2023-06-12 19:22:20'),
(25, 'pharmacy', 'order_processing_message', '{userName}, Your order is Processing by {storeName}', 1, '2023-01-17 16:57:46', '2023-06-12 19:22:20'),
(26, 'pharmacy', 'order_handover_message', 'Delivery man is on the way. For this order {orderId}', 1, '2023-01-17 16:57:46', '2023-06-12 19:22:20'),
(27, 'pharmacy', 'order_refunded_message', 'Order {orderId} Refunded successfully', 1, '2023-01-17 16:57:46', '2023-06-12 19:22:20'),
(28, 'pharmacy', 'refund_request_canceled', 'Order {orderId}  Refund request is canceled', 1, '2023-01-17 16:57:46', '2023-06-12 19:22:20'),
(29, 'pharmacy', 'out_for_delivery_message', '{userName}, Your order {orderId} is ready for delivery', 1, '2023-01-17 16:57:46', '2023-06-12 19:22:20'),
(30, 'pharmacy', 'order_delivered_message', 'Your order {orderId} is delivered', 1, '2023-01-17 16:57:46', '2023-06-12 19:22:20'),
(31, 'pharmacy', 'delivery_boy_assign_message', 'Your order {orderId} has been assigned to a delivery man', 1, '2023-01-17 16:57:46', '2023-06-12 19:22:20'),
(32, 'pharmacy', 'delivery_boy_delivered_message', 'Order {orderId} delivered successfully', 1, '2023-01-17 16:57:46', '2023-06-12 19:22:20'),
(33, 'pharmacy', 'order_cancled_message', 'Order {orderId} is canceled by your request', 1, '2023-01-17 16:57:46', '2023-06-12 19:22:20'),
(34, 'ecommerce', 'order_pending_message', '{userName}, Your  order {orderId} is successfully placed', 1, '2023-01-17 16:59:24', '2023-06-12 19:25:02'),
(35, 'ecommerce', 'order_confirmation_msg', '{userName}, Your order {orderId} is confirmed', 1, '2023-01-17 16:59:24', '2023-06-12 19:25:02'),
(36, 'ecommerce', 'order_processing_message', '{userName}, Your order is Processing by {storeName}', 1, '2023-01-17 16:59:24', '2023-06-12 19:25:02'),
(37, 'ecommerce', 'order_handover_message', 'Delivery man is on the way. For this order {orderId}', 1, '2023-01-17 16:59:24', '2023-06-12 19:25:02'),
(38, 'ecommerce', 'order_refunded_message', 'Order {orderId} Refunded successfully', 1, '2023-01-17 16:59:24', '2023-06-12 19:25:02'),
(39, 'ecommerce', 'refund_request_canceled', 'Order {orderId}  Refund request is canceled', 1, '2023-01-17 16:59:24', '2023-06-12 19:25:02'),
(40, 'ecommerce', 'out_for_delivery_message', '{userName}, Your order {orderId} is ready for delivery', 1, '2023-01-17 16:59:24', '2023-06-12 19:25:02'),
(41, 'ecommerce', 'order_delivered_message', 'Your order {orderId} is delivered', 1, '2023-01-17 16:59:24', '2023-06-12 19:25:02'),
(42, 'ecommerce', 'delivery_boy_assign_message', 'Your order {orderId} has been assigned to a delivery man', 1, '2023-01-17 16:59:24', '2023-06-12 19:25:02'),
(43, 'ecommerce', 'delivery_boy_delivered_message', 'Order {orderId} delivered successfully', 1, '2023-01-17 16:59:24', '2023-06-12 19:25:02'),
(44, 'ecommerce', 'order_cancled_message', 'Order {orderId} is canceled by your request', 1, '2023-01-17 16:59:24', '2023-06-12 19:25:02'),
(45, 'parcel', 'order_pending_message', '{userName}, Your parcel order is successfully placed', 1, '2023-01-17 17:01:02', '2023-06-12 19:29:42'),
(46, 'parcel', 'order_confirmation_msg', 'Your order {orderId} is confirmed', 1, '2023-01-17 17:01:02', '2023-06-12 19:29:42'),
(47, 'parcel', 'out_for_delivery_message', 'Your parcel order  {orderId}  is ready for delivery', 1, '2023-01-17 17:01:02', '2023-06-12 19:29:42'),
(48, 'parcel', 'order_delivered_message', 'Your parcel id  {orderId}  is delivered', 1, '2023-01-17 17:01:02', '2023-06-12 19:29:42'),
(49, 'parcel', 'delivery_boy_assign_message', 'Your order {orderId}  has been assigned to a delivery man', 1, '2023-01-17 17:01:02', '2023-06-12 19:29:42'),
(50, 'parcel', 'delivery_boy_delivered_message', 'parcel id  {orderId}  delivered successfully', 1, '2023-01-17 17:01:02', '2023-06-12 19:29:42'),
(51, 'parcel', 'order_cancled_message', 'Order is canceled by your request', 1, '2023-01-17 17:01:02', '2023-01-17 17:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `type` enum('admin','customer','store','deliveryman') NOT NULL DEFAULT 'admin',
  `mail_status` enum('active','inactive','disable') NOT NULL DEFAULT 'disable',
  `sms_status` enum('active','inactive','disable') NOT NULL DEFAULT 'disable',
  `push_notification_status` enum('active','inactive','disable') NOT NULL DEFAULT 'disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `title`, `sub_title`, `key`, `type`, `mail_status`, `sms_status`, `push_notification_status`, `created_at`, `updated_at`) VALUES
(1, 'forget_password', 'Sent_notification_on_forget_password', 'forget_password', 'admin', 'active', 'active', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(2, 'deliveryman_self_registration', 'Sent_notification_on_deliveryman_self_registration', 'deliveryman_self_registration', 'admin', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(3, 'store_self_registration', 'Sent_notification_on_store_self_registration', 'store_self_registration', 'admin', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(4, 'campaign_join_request', 'Sent_notification_on_campaign_join_request', 'campaign_join_request', 'admin', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(5, 'withdraw_request', 'Sent_notification_on_withdraw_request', 'withdraw_request', 'admin', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(6, 'order_refund_request', 'Sent_notification_on_order_refund_request', 'order_refund_request', 'admin', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(7, 'advertisement_add', 'Sent_notification_on_advertisement_add', 'advertisement_add', 'admin', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(8, 'advertisement_update', 'Sent_notification_on_advertisement_update', 'advertisement_update', 'admin', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(9, 'deliveryman_registration', 'Sent_notification_on_deliveryman_registration', 'deliveryman_registration', 'deliveryman', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(10, 'deliveryman_registration_approval', 'Sent_notification_on_deliveryman_registration_approval', 'deliveryman_registration_approval', 'deliveryman', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(11, 'deliveryman_registration_deny', 'Sent_notification_on_deliveryman_registration_deny', 'deliveryman_registration_deny', 'deliveryman', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(12, 'deliveryman_account_block', 'Sent_notification_on_deliveryman_account_block', 'deliveryman_account_block', 'deliveryman', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(13, 'deliveryman_account_unblock', 'Sent_notification_on_deliveryman_account_unblock', 'deliveryman_account_unblock', 'deliveryman', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(14, 'deliveryman_forget_password', 'Sent_notification_on_deliveryman_forget_password', 'deliveryman_forget_password', 'deliveryman', 'active', 'active', 'disable', '2024-08-06 22:40:34', '2024-09-27 14:52:31'),
(15, 'deliveryman_collect_cash', 'Sent_notification_on_deliveryman_collect_cash', 'deliveryman_collect_cash', 'deliveryman', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(16, 'deliveryman_order_notification', 'Sent_notification_order_notification_to_deliveryman', 'deliveryman_order_notification', 'deliveryman', 'disable', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(17, 'deliveryman_order_assign_or_unassign', 'Sent_notification_on_deliveryman_order_assign_or_unassign', 'deliveryman_order_assign_unassign', 'deliveryman', 'disable', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(18, 'store_registration', 'Sent_notification_on_store_registration', 'store_registration', 'store', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(19, 'store_registration_approval', 'Sent_notification_on_store_registration_approval', 'store_registration_approval', 'store', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(20, 'store_registration_deny', 'Sent_notification_on_store_registration_deny', 'store_registration_deny', 'store', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(21, 'store_account_block', 'Sent_notification_on_store_account_block', 'store_account_block', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(22, 'store_account_unblock', 'Sent_notification_on_store_account_unblock', 'store_account_unblock', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(23, 'store_withdraw_approve', 'Sent_notification_on_store_withdraw_approve', 'store_withdraw_approve', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(24, 'store_withdraw_rejaction', 'Sent_notification_on_store_withdraw_rejaction', 'store_withdraw_rejaction', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(25, 'store_campaign_join_request', 'Sent_notification_on_store_campaign_join_request', 'store_campaign_join_request', 'store', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(26, 'store_campaign_join_rejaction', 'Sent_notification_on_store_campaign_join_rejaction', 'store_campaign_join_rejaction', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(27, 'store_campaign_join_approval', 'Sent_notification_on_store_campaign_join_approval', 'store_campaign_join_approval', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(28, 'store_order_notification', 'Sent_notification_on_store_order_notification', 'store_order_notification', 'store', 'disable', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(29, 'store_product_approve', 'Sent_notification_on_store_product_approve', 'store_product_approve', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(30, 'store_product_reject', 'Sent_notification_on_store_product_reject', 'store_product_reject', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(31, 'store_subscription_success', 'Sent_notification_on_store_subscription_success', 'store_subscription_success', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(32, 'store_subscription_renew', 'Sent_notification_on_store_subscription_renew', 'store_subscription_renew', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(33, 'store_subscription_shift', 'Sent_notification_on_store_subscription_shift', 'store_subscription_shift', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(34, 'store_subscription_cancel', 'Sent_notification_on_store_subscription_cancel', 'store_subscription_cancel', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(35, 'store_subscription_plan_update', 'Sent_notification_on_store_subscription_plan_update', 'store_subscription_plan_update', 'store', 'active', 'disable', 'inactive', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(36, 'store_advertisement_create_by_admin', 'Sent_notification_on_store_advertisement_create_by_admin', 'store_advertisement_create_by_admin', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(37, 'store_advertisement_approval', 'Sent_notification_on_store_advertisement_approval', 'store_advertisement_approval', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(38, 'store_advertisement_deny', 'Sent_notification_on_store_advertisement_deny', 'store_advertisement_deny', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(39, 'store_advertisement_resume', 'Sent_notification_on_store_advertisement_resume', 'store_advertisement_resume', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(40, 'store_advertisement_pause', 'Sent_notification_on_store_advertisement_pause', 'store_advertisement_pause', 'store', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(41, 'customer_registration', 'Sent_notification_on_customer_registration', 'customer_registration', 'customer', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(42, 'customer_pos_registration', 'Sent_notification_on_customer_pos_registration', 'customer_pos_registration', 'customer', 'active', 'disable', 'disable', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(43, 'customer_registration_otp', 'Sent_notification_on_customer_registration_otp', 'customer_registration_otp', 'customer', 'active', 'active', 'disable', '2024-08-06 22:40:34', '2024-09-27 14:52:31'),
(44, 'customer_login_otp', 'Sent_notification_on_customer_login_otp', 'customer_login_otp', 'customer', 'active', 'active', 'disable', '2024-08-06 22:40:34', '2024-09-27 14:52:31'),
(45, 'customer_forget_password', 'Sent_notification_on_customer_forget_password', 'customer_forget_password', 'customer', 'active', 'active', 'disable', '2024-08-06 22:40:34', '2024-09-27 14:52:31'),
(46, 'customer_order_notification', 'Sent_notification_on_customer_order_notification', 'customer_order_notification', 'customer', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(47, 'customer_delivery_verification', 'Sent_notification_on_customer_delivery_verification', 'customer_delivery_verification', 'customer', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(48, 'customer_refund_request_approval', 'Sent_notification_on_customer_refund_request_approval', 'customer_refund_request_approval', 'customer', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(49, 'customer_refund_request_rejaction', 'Sent_notification_on_customer_refund_request_rejaction', 'customer_refund_request_rejaction', 'customer', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(50, 'customer_add_fund_to_wallet', 'Sent_notification_on_customer_add_fund_to_wallet', 'customer_add_fund_to_wallet', 'customer', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(51, 'customer_offline_payment_approve', 'Sent_notification_on_customer_offline_payment_approve', 'customer_offline_payment_approve', 'customer', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(52, 'customer_offline_payment_deny', 'Sent_notification_on_customer_offline_payment_deny', 'customer_offline_payment_deny', 'customer', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(53, 'customer_account_block', 'Sent_notification_on_customer_account_block', 'customer_account_block', 'customer', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(54, 'customer_account_unblock', 'Sent_notification_on_customer_account_unblock', 'customer_account_unblock', 'customer', 'active', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(55, 'customer_cashback', 'Sent_notification_on_customer_cashback', 'customer_cashback', 'customer', 'disable', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(56, 'customer_referral_bonus_earning', 'Sent_notification_on_customer_referral_bonus_earning', 'customer_referral_bonus_earning', 'customer', 'disable', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(57, 'customer_new_referral_join', 'Sent_notification_on_customer_new_referral_join', 'customer_new_referral_join', 'customer', 'disable', 'disable', 'active', '2024-08-06 22:40:34', '2024-08-06 22:40:34'),
(58, 'customer_pos_order_wallet_notification', 'Sent_notification_on_wallet_payment_on_POS', 'customer_pos_order_wallet_notification', 'customer', 'disable', 'disable', 'active', '2024-09-27 14:52:31', '2024-09-27 14:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `nutritions`
--

CREATE TABLE `nutritions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nutrition` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02da12b708ce51c5d07ff9e94fb0d5e3ea38a8ecbbc9c7cbbbfd9a390d21947af076d895af4e58c1', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 11:51:52', '2024-10-04 11:51:52', '2025-10-04 11:51:52'),
('0549cc846738b1bae4eb22352b9cadcdaed7746894aed6e942a15d07fad2fa29618f0fc3d37312ef', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 12:16:11', '2024-10-19 12:16:11', '2025-10-19 12:16:11'),
('06455868cf96f9c0330a0acc9cf3bd1588ddaf187239dd738f8193f92ee2601aaa5623d7c38327b1', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-24 13:00:41', '2024-10-24 13:00:41', '2025-10-24 13:00:41'),
('090aa4ce4f1fe6a0367001cd15f4ed41867f69095a39dad56b5f0442a316d57d97a0fbc219a79328', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 17:22:50', '2024-10-22 17:22:50', '2025-10-22 17:22:50'),
('0a41d31364b3e7db590722c37da90090a486b735f726df47b0ceed6eb50490ff66126cfc4ef359a2', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 11:13:38', '2024-10-23 11:13:38', '2025-10-23 11:13:38'),
('0fbf86a70f495cd5963b4439526da35f8a82d5a07d38ff346859cd23832d3f693f994f8c33f15d91', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-11-04 17:02:03', '2024-11-04 17:02:03', '2025-11-04 17:02:03'),
('105c2a54e017754733288aef91c6a762d9660e5fda1ccee1a4b1f11f5d2472be0cd1a017954ed722', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 15:16:03', '2024-10-23 15:16:03', '2025-10-23 15:16:03'),
('10b2f05e436c0b4826a3122848fc6e618f73c472edee42c42e871ec8a3251a8c29adb437f8c617d3', 4, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 12:10:51', '2024-10-04 12:10:51', '2025-10-04 12:10:51'),
('11b59a7c6aefb9ee540d38b6a6692058b60be6c63365f251754b52fbbe1b1b96863a1083a866637a', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-24 16:37:19', '2024-10-24 16:37:19', '2025-10-24 16:37:19'),
('156b51be3bb4642d0f6d502a79527941d7849cf5e1504be1fed51da0769c4074124cbe03ad9dcf8f', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 10:49:56', '2024-10-04 10:49:56', '2025-10-04 10:49:56'),
('1a1cd7131ed3cb13b2c8aaab73d0e9e878ce5749d68bae675528bb923b7ca879bd1cbc145fcd5e33', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 15:11:45', '2024-10-22 15:11:45', '2025-10-22 15:11:45'),
('1a4a26aff81d935426cfcb06572bf5aac0992f24a1fe0323d21517edd91d27b4f8ed23872f9d99c9', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-24 12:39:07', '2024-10-24 12:39:07', '2025-10-24 12:39:07'),
('1b4fcb5fb5749a379470bde27ff6bb09e686fb0a1ba712a10cc6553ea5205fbae6929b5d5eacef73', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 14:33:26', '2024-10-19 14:33:26', '2025-10-19 14:33:26'),
('1fa00011afc3ba4634390ce1359605f1e25761aa39619b93f8e8f6f662035c32d3c8f2c4bd99cf0d', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-09-19 08:34:20', '2024-09-19 08:34:20', '2025-09-19 08:34:20'),
('202ff98f983dbbebd2a5e96cef00754c1a0ca37aedd29142d353180c3a549af71c6c89c8aa735e5e', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:38:39', '2024-10-23 16:38:39', '2025-10-23 16:38:39'),
('2321069ffcbb115fa1153514d92feba008104cd15ad222a37918a1c6a945f74fcf7e91c139c11451', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-18 15:41:34', '2024-10-18 15:41:34', '2025-10-18 15:41:34'),
('2613b047c129802a9bd8b4bfd4cf65387369f7a365322e35a0c70cac15417dd4e26e8210ce156fe5', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-17 15:18:52', '2024-10-17 15:18:52', '2025-10-17 15:18:52'),
('268b1fafdd3883ce86f2348b91d74b7e5ae30df68450f8cfd24617d7ac9f5c73c4fb2accfbcde656', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 14:50:17', '2024-10-23 14:50:17', '2025-10-23 14:50:17'),
('26e6b4c6cfb370ef91de121ae1ba5a51b15540609734ab8c574c3c9ceee685d61c3f811871bcd352', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 14:48:43', '2024-10-23 14:48:43', '2025-10-23 14:48:43'),
('271d9943109c533e32606940d767217e159ebcf6345a5451a6ca3a7431e8c3835d6d16a40b1ace38', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 11:56:18', '2024-10-23 11:56:18', '2025-10-23 11:56:18'),
('2a7f169d551bd99a0822811b0b1ad8e55292ae9734428e440618248f6cbc783beb4275e4ca1eef68', 13, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-24 16:15:47', '2024-10-24 16:15:47', '2025-10-24 16:15:47'),
('2d73417fdfc8fb99b02e82d8ce480401ab948b786c0ce3bd8824afada6ccea105b34e158e82ffd17', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 10:40:38', '2024-10-04 10:40:39', '2025-10-04 10:40:38'),
('2f601f4ee11aee8e62954ac9f3198779a02de100dbff6937098da1e7a588690febf71de1c8070340', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 14:59:34', '2024-10-19 14:59:34', '2025-10-19 14:59:34'),
('2fea5c97a0c27924a880aed2637de662279b16b1eabeb2cc26c5208691a8ef82981deef0546420bd', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 17:05:57', '2024-10-23 17:05:57', '2025-10-23 17:05:57'),
('3071a7d43ae228beae65138d3fb848aee6a9efa0334eeea7f57af738ae71d6bf2562330dc400d227', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 15:34:57', '2024-10-23 15:34:57', '2025-10-23 15:34:57'),
('3129cd78854eabd1b3f113b9bca386e5f9db510bec8f717cfc9f3a0a2c74b8342dad3838f861e5ad', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 11:45:16', '2024-10-04 11:45:16', '2025-10-04 11:45:16'),
('31ed1d74117962b04fb0ddc71e030f9aece6dc69e4752c13b71c372a1a84076d5699814f479fd011', 6, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 17:56:11', '2024-10-19 17:56:11', '2025-10-19 17:56:11'),
('32c0f424a4dd10484bf7a5b0b85a1319c28148098435f065f47aeebd25bb88e0c3bb2908c9440aee', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-09 11:54:26', '2024-10-09 11:54:26', '2025-10-09 11:54:26'),
('37d62978aa52664a3b95ffd2143efd565733818b3c5716ba139515560b3be7b63efbce617c85b113', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 17:17:54', '2024-10-19 17:17:54', '2025-10-19 17:17:54'),
('381c579e596e95c66f94db864fdcf30468aecb2a924d2305c1f146fb8778bfd3826d99b1d9f691e9', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 11:23:06', '2024-10-19 11:23:06', '2025-10-19 11:23:06'),
('384917612929b875c3874c84ecb985c726faea6a8f2884c7a4ba2a79bbca5880cc177626de6b8857', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-18 14:19:35', '2024-10-18 14:19:35', '2025-10-18 14:19:35'),
('3b7387b6635b51fdd2b790560d01431045e62d36fde48434f49b575092fe7c47e97efea526ad389d', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:25:16', '2024-10-23 16:25:16', '2025-10-23 16:25:16'),
('3bcbb6b28afdc793612743f63cb1bfec80d252d1220890711531ca7e7e844dac0087c4a3879f89bd', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 17:36:53', '2024-10-19 17:36:53', '2025-10-19 17:36:53'),
('3c4ba29cab32abab15417b28aeb42d85b4c9c19de5a9edd68798d9466cadd997245e178f0cbab15e', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 15:44:21', '2024-10-23 15:44:21', '2025-10-23 15:44:21'),
('3df0f89540eb57a7e24204bd9737a2dcf58661a282fc96b675aae98a713100636b35a2d8001ff03a', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 17:45:37', '2024-10-23 17:45:37', '2025-10-23 17:45:37'),
('3e05767aca669ef96527ac89c5c2cede47570a66e9a6770ed1bd674b64a7bab69cee4ab5eb5e45a3', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 10:53:57', '2024-10-04 10:53:57', '2025-10-04 10:53:57'),
('3ee39fedc9e44f0402e3fc922d528d9214ccde9f5c731ef241b70f70ccb3dc4cedf90c2b474b7446', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 11:25:18', '2024-10-22 11:25:18', '2025-10-22 11:25:18'),
('3f3d09f996cd3355fd0a3d04f8703c7f743e9dc9cf13bb884246645e0ca68afcf1e5244a7acffba9', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 16:51:38', '2024-10-22 16:51:38', '2025-10-22 16:51:38'),
('3f7165a8e130122bf884c72c1df59fdb9ef303e430f93f4c154cd3bd5c981aea6371015703fa524e', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 12:10:17', '2024-10-23 12:10:18', '2025-10-23 12:10:17'),
('42358e48f022feb00fab9e20961c9204fea8319f64932dc5fce0dc8d0c8aba08a2ce826f84061710', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:09:34', '2024-10-23 16:09:34', '2025-10-23 16:09:34'),
('447aa804f677785b135428dd9404efa4e165a0575a8d57c6d3368c43e3599cc19fa9c6ff4437c4b4', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-24 12:32:10', '2024-10-24 12:32:10', '2025-10-24 12:32:10'),
('457141eb2dbe40fac155f08922416b02243bc80016ff8d12c366c6d0b63256c282531f70cc4d7a7b', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 17:09:10', '2024-10-23 17:09:10', '2025-10-23 17:09:10'),
('4ce80891ab9a4d517a1a911a09f12d2106960e2ef8c64f4b3ebc6566a130c8e6287543fe0e170a2a', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-03 15:45:36', '2024-10-03 15:45:36', '2025-10-03 15:45:36'),
('4d877ba7a280afad6db48ff4a3244aadabb26a2519041c5fb13b510fc37980a89d252c457bbd2d6e', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 13:38:57', '2024-10-23 13:38:57', '2025-10-23 13:38:57'),
('4fe2bae0ac49e4779b2c9471c3d0e4702f2ca86e027bef43832e682cd0d42dda724e23471b679cf6', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 20:11:12', '2024-10-23 20:11:12', '2025-10-23 20:11:12'),
('51ba0e51dafcc5e32ed1121a70ee89a7824fe50b8a795d75416774b1170ca93a8f38644c5b69542e', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:31:39', '2024-10-23 16:31:39', '2025-10-23 16:31:39'),
('53e59169cd12b7df0d05d64a1c65b1678c475577f768316d6a122b16c04351a8041f6084a6884489', 10, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:32:14', '2024-10-23 16:32:14', '2025-10-23 16:32:14'),
('544d6640396149a081d933feec216b210327f32e49b1b238f51079a6812300cc19a56c84939db09f', 3, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 11:59:13', '2024-10-04 11:59:13', '2025-10-04 11:59:13'),
('544e8ff2ca2edeb843ae5d002e7990057a41b9da78108d3d37e83702a39649b092ffa7a6dddc1941', 6, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-24 12:13:38', '2024-10-24 12:13:38', '2025-10-24 12:13:38'),
('56a26d06b18ed2a0a503f0813a8c8ec2055c236b4f46c5d35984fae332635ecc5c3f7a8d993b267d', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 17:05:12', '2024-10-22 17:05:12', '2025-10-22 17:05:12'),
('56c209570f89b9d7f91b4f4ef00eb8ae788d1f9c045d0ac9dd0c9ff5a9f51ba299c9f71000f51c13', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:27:50', '2024-10-23 16:27:50', '2025-10-23 16:27:50'),
('5705f14185b506295c7d957ad50b83e60fb6a717332de003369339ce5c4aa8851fb1c97c815eb432', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:40:42', '2024-10-23 16:40:42', '2025-10-23 16:40:42'),
('57477806593050edd3928cc0473c4f97d33d0b777f85ed38cb0dd0c59a78a9a632d3653b4d8c0c4b', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-03 17:19:44', '2024-10-03 17:19:44', '2025-10-03 17:19:44'),
('5bc0d91190f553717cb4de86ea366b789238e2d93cc2cc24b2a720c669886e21ca5b872efb3f2e90', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 12:57:26', '2024-10-23 12:57:26', '2025-10-23 12:57:26'),
('5c1dc3d89284bb38f6e174e5a6b0ea9471764edcf6dcfdafa7017d1ca6b24329df8b4c44c07bdf80', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-15 11:46:51', '2024-10-15 11:46:51', '2025-10-15 11:46:51'),
('5cdedf1aa97288670a7bc1e8f1dadbd4efb8bc5838a8c8dabce7e32f252a16ac90c43a94b4a81537', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-17 15:19:21', '2024-10-17 15:19:21', '2025-10-17 15:19:21'),
('6136a0618fc4b5749989c1b46f98ea90a9e100e2a2d69ed1f98031662f2c3a900ab091e8408c02da', 6, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-24 18:09:33', '2024-10-24 18:09:33', '2025-10-24 18:09:33'),
('6187fe8def77757101466f9d5e0ba72df1937d65c21505fa0260a9397e7ed1aa62ce8b829ff2e846', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 12:54:34', '2024-10-19 12:54:34', '2025-10-19 12:54:34'),
('620bd1cc6082a116a19cab33b2a052ee86d8b66089c2dbe8d2ab6b0a78e5b7cd79106361c12f74d9', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 13:50:11', '2024-10-19 13:50:11', '2025-10-19 13:50:11'),
('6290ffaf93071812efdf41e40111e214eff016825fd87df06bbcce3d648bca1087f9f4b4311681e2', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 10:33:08', '2024-10-19 10:33:08', '2025-10-19 10:33:08'),
('643782bacd04e573ea52e744d7e6109436bfb2bff0caa9101cab6de6a257ea1e96f38c219b4c18f8', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 10:57:08', '2024-10-04 10:57:08', '2025-10-04 10:57:08'),
('6522e7cf8f414f597331d83b3ab286443c5ba87a6aa44b171d766b02ba97366929b4dfa72bc932bd', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 19:30:52', '2024-10-23 19:30:52', '2025-10-23 19:30:52'),
('689fd3a884f25d330baaffcfdfc1001e356b4d107e0d9e60df8bb4362c60aebf62d37b166034fbd2', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 15:26:26', '2024-10-23 15:26:26', '2025-10-23 15:26:26'),
('698995dffda0a07c5049ff9f146bdcf7a7023a7490cdbf9fb42b5f3ddf16bb72e9fa3762694285c3', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-24 10:11:55', '2024-10-24 10:11:55', '2025-10-24 10:11:55'),
('6a07d804fc17bddc5b30dc6e105b5d8bda926b1ac59c4f3f56c166465a01f051fd20549516e34aa0', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 10:49:47', '2024-10-23 10:49:47', '2025-10-23 10:49:47'),
('6a3ebf09521e81196a15ca9dacfa373baa2357349aedf8e445a1bb8c0c8ca4f54493ab30f391d6ba', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-05 13:34:24', '2024-10-05 13:34:24', '2025-10-05 13:34:24'),
('6c65150b21c23f636fd0ce423a987b83cf49618378256ccd5e784ed2e9f4622d20036392a42ce16d', 6, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 16:13:50', '2024-10-22 16:13:50', '2025-10-22 16:13:50'),
('6fee49658fc20a57afab7e4fd3da0c00e582d31ffc97f46a7e4c1e46db17de14d266395efb500cbe', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 13:38:35', '2024-10-19 13:38:35', '2025-10-19 13:38:35'),
('71cff219c8b6966c1d0a814149071537a516beb5aab7e2e1acde8719f2314a1776d9f254da467a6c', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:28:46', '2024-10-23 16:28:46', '2025-10-23 16:28:46'),
('71f45e1cc8b332e4415edb443d5f1102dbe34f70b274ab9bbfb7f67c4ca98eef0a6dbf69caa58447', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 14:46:51', '2024-10-23 14:46:51', '2025-10-23 14:46:51'),
('72dcce8a0cfc38fa0bc8e2eb8f8cfd757e97878bf67fa0353ddbb0ad85183aae2dd4dd95c59e85a6', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 17:15:49', '2024-10-23 17:15:49', '2025-10-23 17:15:49'),
('73ed4f9b9c230ccd5f821e9aadd799b1af122b97bfb76ca959778691cf515d392cfae8981c1cf9c8', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 11:43:43', '2024-10-04 11:43:43', '2025-10-04 11:43:43'),
('7a0273dc3d7589b342b53345ca10769f78647e8b332a70b6839d53db768ed6c5e42f24009aa3d327', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 17:33:47', '2024-10-23 17:33:48', '2025-10-23 17:33:47'),
('7acbf0a067aec549034b5587e508f1788af281a4ab3501bbfcc3630663d56bc9355f50769702d10f', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 14:49:37', '2024-10-23 14:49:37', '2025-10-23 14:49:37'),
('7ffdf078fd4f8d68feea0697fbe8e215e57e1f8b735f03cb0c11fdfff2fb1a3f54d7d90a880ea706', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:30:26', '2024-10-23 16:30:26', '2025-10-23 16:30:26'),
('82d7a1b5d12773ce4f24ef642a8437ddecb680d2886f56bd1f9fa9323f6f1bd842ca9e9de1ca15ff', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 12:09:46', '2024-10-19 12:09:46', '2025-10-19 12:09:46'),
('8845385f613ffe4f47e7eefba534f639ac5f33faf0abe7b085c68bb5bea7e10903e381bb4deff1d0', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 15:44:39', '2024-10-23 15:44:39', '2025-10-23 15:44:39'),
('8af88cfd3a25eae2c5e1145f0c6bbb86ecd7b43b16fd6676b7dddce6b7ecf1ba88938ebf943ec6d9', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 21:23:09', '2024-10-23 21:23:09', '2025-10-23 21:23:09'),
('8afa26e4e67f75d2dfaeafc1f85329c10f9ed9805daccb536a9870085829d540d7b8386cb41105e2', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 17:10:12', '2024-10-22 17:10:12', '2025-10-22 17:10:12'),
('8b1c991d0a7304ec9f90e1484e200ffa2d20cbd137413538f3a17810873fc5bd2f56ff77d437967a', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 17:06:38', '2024-10-22 17:06:38', '2025-10-22 17:06:38'),
('8b5575255d1573dc9f565d653c1b3f8a806b552b9f8d3b6c8cb2965fdec8799eded33125b0ef7ca0', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 17:43:59', '2024-10-19 17:43:59', '2025-10-19 17:43:59'),
('8c139661d78252a8ba9bc6e95ad5dbacee429aa500036346cf46c6a302887c457a34c36817978518', 6, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 16:10:40', '2024-10-22 16:10:40', '2025-10-22 16:10:40'),
('8dfca57a486527666ce9b9b4d35e07de1aebbdf742567372f1044bdcad3289f729b97650c2a36c12', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 07:29:59', '2024-10-04 07:29:59', '2025-10-04 07:29:59'),
('8e4fdffbabc2bbb354771abdb196fb05dfdbf7c8b6c31737717033423e89a9403e7e2ec89efa5465', 9, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:26:23', '2024-10-23 16:26:23', '2025-10-23 16:26:23'),
('93cdf018164a05eab8b7f75c49e4ca56fab5da34ddc50c700b0e324dc6783ad12b3eeaab0b782c72', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-03 17:20:10', '2024-10-03 17:20:10', '2025-10-03 17:20:10'),
('953f4ace74cf07458838d0d7c870f21315ded4cf7b7cee5be04364631a678191c9ab6e5950e4b8dd', 7, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 13:35:37', '2024-10-23 13:35:37', '2025-10-23 13:35:37'),
('9a7ba07403e2e61960a7db5a7a218bebfc872f889768ba63bf0abe1d8cd5847c729ef3f580676ba6', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 13:52:06', '2024-10-23 13:52:06', '2025-10-23 13:52:06'),
('9d11cccdfca77a4dfed69bd60c8257b8062736db46bdc8b230161d26b6a6c972e5c683386f183de6', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-11-05 11:08:45', '2024-11-05 11:08:45', '2025-11-05 11:08:45'),
('9e28f3a6817cf7816b28be10035304d1a7b49b1f87a099a0eeed07aaaa6a5f13617167214cb0e5da', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 15:08:00', '2024-10-19 15:08:00', '2025-10-19 15:08:00'),
('9e6bad08b7db72f86f6126d7a6e5a740275bd88db809630ceb5302e34dd3c86b84a1eb1ce6084756', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 11:37:52', '2024-10-04 11:37:52', '2025-10-04 11:37:52'),
('9ee91d6b2e6ced636583e558c4c84396520ac7c621fe3cd0a7ee07667a883e1c10f74ff342c3db9f', 2, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 11:23:22', '2024-10-04 11:23:23', '2025-10-04 11:23:22'),
('a22b4ac0420004e9eb78f568024882d85a2d6f419fb76b602bcf88998762795bb6f2437467769032', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 13:08:03', '2024-10-23 13:08:03', '2025-10-23 13:08:03'),
('a38b8788085b1028bf3db73feb6f57d1387f6a6cb9d511cd3093bc70adcc0622407ea1c7e4e1992e', 11, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 17:49:26', '2024-10-23 17:49:26', '2025-10-23 17:49:26'),
('a63f1df6b010958d290c602adeb59fd47423e62256a88b32f442ca24ba1e6bc8ec3474cbcfa0b438', 12, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-24 11:49:20', '2024-10-24 11:49:20', '2025-10-24 11:49:20'),
('a71c79220ad696fbf5a792c17cd083350a1ceb90b6b433b1a47d453ed6667195ec488d937a12d178', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 14:35:00', '2024-10-19 14:35:00', '2025-10-19 14:35:00'),
('aaf5ab0a68d8d4766fb7693676886b477b0addcede1566115265ae91f57f71d07bef51dde37c2ec7', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 14:34:57', '2024-10-23 14:34:57', '2025-10-23 14:34:57'),
('abaf59e80f104617fa5e74714441b7e3bde0e74fc1019c2e6cf80369d9a71f93ec0c74990f1c55f4', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-24 16:14:37', '2024-10-24 16:14:37', '2025-10-24 16:14:37'),
('adc48bedb846cd94a928a23e97909e6c5801e332416961436b8a7b579e604aca594ea0eac3b2ff19', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 15:35:19', '2024-10-23 15:35:19', '2025-10-23 15:35:19'),
('b15f4824be48c03c1db556040a79f1cfc89f4a9d7f029ecdc7907a1b023c7f7ec99364ba01eb1a4b', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 11:04:17', '2024-10-23 11:04:17', '2025-10-23 11:04:17'),
('b3e36e7bf451607304753ac6560e2eca94e04a2dba61cfcbe231a32070c76e5fd5579c4316e009ff', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 15:35:30', '2024-10-23 15:35:30', '2025-10-23 15:35:30'),
('b754ec58a8c15fc49298e8fc1ea00dfa2d33d4e2ec6c667571894661b72540c5d9a53199a1d624ba', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 15:23:47', '2024-10-19 15:23:47', '2025-10-19 15:23:47'),
('b7dbc6e1eef967a933a18acf387190eace920bfc01e5f7c45d85c9dbeacfe215a6e83dc50b6d6fb2', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 12:55:49', '2024-10-19 12:55:49', '2025-10-19 12:55:49'),
('b9440ac9d760a743a41295e58154ee91f6bb0736afc811837fddd15a39869c9e245e46f6681de425', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:42:20', '2024-10-23 16:42:20', '2025-10-23 16:42:20'),
('bb7660b6549cdbb188f2d0ddae25769e37fc3dc4d65c94a3512f28fb22b460c53b859d76cc99457d', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 10:49:39', '2024-10-04 10:49:39', '2025-10-04 10:49:39'),
('bc0cab50edba1a27c32b2c8517f9817fb0568f29c5ee6e965e7ca7db8572b06baf6762750fc3e952', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 16:32:28', '2024-10-23 16:32:28', '2025-10-23 16:32:28'),
('bd8b5bf655a1a3cf4375bd3e3d6094367f25c442d43c687bf3763a0d28c29fe5a9e7734df1c0ac46', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 15:25:26', '2024-10-23 15:25:26', '2025-10-23 15:25:26'),
('bda00f33b47b4830e547f97c16dc4b3149d8f7632fe179167f32e4b34fcaea873e5f1f795bf366f6', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 17:21:01', '2024-10-22 17:21:01', '2025-10-22 17:21:01'),
('bfcba23a7bd32e7648dd4b416b0c0f351654bfcdeb78c97f66a126ec1e5de40273ea057776fa4fda', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 11:03:44', '2024-10-04 11:03:44', '2025-10-04 11:03:44'),
('c43456aaf6b7baa28bbbe12e18c170e26186d74e9aac35f4a428ed0d876308acd083a9aecdefaadc', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 14:14:54', '2024-10-19 14:14:54', '2025-10-19 14:14:54'),
('c599e0f21bdec87ab1c43b08c63f09aba0518a6cf403d0e3803ebff2119dcb1b15dad0c69edd4b8f', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 15:22:46', '2024-10-23 15:22:46', '2025-10-23 15:22:46'),
('c660436b39187462f7e382edfe339107ce804aa967a19c53fc75adb67ff564a59c6ee92673702380', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-03 18:26:14', '2024-10-03 18:26:14', '2025-10-03 18:26:14'),
('c90f2297f08179218ecc5a1cc11e644a97a060d9ec8502b6385f1b96f70df008d538fdb0d44678ff', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 11:04:47', '2024-10-04 11:04:47', '2025-10-04 11:04:47'),
('c911fae08e77827d1938716dd492a86203a555c8e2c2b6e4bbf47692a5cf555f13d44c9a862ba022', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 18:07:23', '2024-10-22 18:07:23', '2025-10-22 18:07:23'),
('d0a6f652612d3555d72a37171b7afb5ccb7296a8c6ae73697aec118fbff6066d666faa4add1c65aa', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 19:37:16', '2024-10-23 19:37:16', '2025-10-23 19:37:16'),
('d1fa7cec8c6b03bd3152089baea75afb2033be0ba9f8620afab94e3292419e9dd357578cad67555d', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 14:45:29', '2024-10-23 14:45:29', '2025-10-23 14:45:29'),
('d3af51693d7611695dbb83c0347d70d9bead1aecf22d755bfc1a5d21d7688555f05982b36956c6a9', 5, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 16:52:38', '2024-10-19 16:52:38', '2025-10-19 16:52:38'),
('d6a0d96367c06403109fa6e1b685341ed0b11d1245ea0cf8c527ea96d679016b012a30522b2fd2e9', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-17 15:55:10', '2024-10-17 15:55:10', '2025-10-17 15:55:10'),
('d72a3cac5058c5008156c035d938d86dadcd1d5b8a1a61b827bb0f173ea4e27237cbb4d7232b7df1', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-09-19 06:12:37', '2024-09-19 06:12:37', '2025-09-19 06:12:37'),
('d7d9fe9763d6efc35c612d0361d781f2424f58a94f4907021702aa74ccb76c10ea4188b30a2fd9c7', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 16:48:34', '2024-10-22 16:48:34', '2025-10-22 16:48:34'),
('d7f7cfddabb4ae8cde8138548c69d6afe182e50343440e62ffc9cf2db38d50ff26e0177a6885af45', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 21:24:00', '2024-10-23 21:24:00', '2025-10-23 21:24:00'),
('dacb128d75c9a93a23bb10e74d1c219eec730c6bb13af47d7b901b75b15637c6dd3531ad7eeb5ceb', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 14:33:10', '2024-10-23 14:33:10', '2025-10-23 14:33:10'),
('ddad152447ea830ca07a5e627bae34e19e8b2784681f453bfe282f6ecee000419449a338fd86ee11', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-09-23 13:46:01', '2024-09-23 13:46:01', '2025-09-23 13:46:01'),
('ddd0c6f7592ef404e48026adb64fae76f9a36790f132f6300e0516b9dcf9f8ed29017523aeb02e0e', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 17:47:59', '2024-10-23 17:47:59', '2025-10-23 17:47:59'),
('dfb173c20cb058246d782151c352ecb1421b787e18ee1d30f131d7e1a44b87958319e1b078eeb2d8', 4, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 12:11:27', '2024-10-04 12:11:27', '2025-10-04 12:11:27'),
('e02b85dcd771e7df508b53ce41348c3aad8fc5ec3fa52122babb61456bd04805afb556076d90af81', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-09-23 19:03:22', '2024-09-23 19:03:22', '2025-09-23 19:03:22'),
('e56a37826796b47e92798e3860f00d00c7cd07a37877b8b212aaeaebe147f48b90cedbba915079a0', 8, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 14:48:31', '2024-10-23 14:48:31', '2025-10-23 14:48:31'),
('e72aeb0030121daa094caadb2b137e1c2b526d2d6d476dad420c62831a33c31813323d15589adb2f', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 16:40:38', '2024-10-19 16:40:38', '2025-10-19 16:40:38'),
('ee52b8d150c1d3c67df3ed329f1f575ee695f4e00e467ed3b33d5502f06e86c6048046ea1dc29b30', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 19:24:54', '2024-10-23 19:24:54', '2025-10-23 19:24:54'),
('eee716f10dddfc37821beec40b40200c3e886bc271228b75002bd4977d7553ca80966a54d60b73d6', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 13:01:08', '2024-10-19 13:01:08', '2025-10-19 13:01:08'),
('ef95446fc9076a7dacbb1f9df024a68f8c4b6aa5030c883c90b97f772bddfc2385d4c47db995b9c7', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-07 11:06:04', '2024-10-07 11:06:04', '2025-10-07 11:06:04'),
('f0476d59bfef4bdc29b9da002288654ddff8adde246918e2e3b628f0cfa1f46e4cd9c9bfe644da7f', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 15:21:56', '2024-10-19 15:21:56', '2025-10-19 15:21:56'),
('f395749fc3bba25c0d19f1b2f6f44849c026e4e6b1e24f0f3f94971e1f4efd5bef7d55dd033b1b3f', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-17 15:22:55', '2024-10-17 15:22:55', '2025-10-17 15:22:55'),
('f84039ec5dfe52e9547e7c99210057b22653534cdae40143d41902f2e70c37d24456ce348fa065c4', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-09-19 05:56:38', '2024-09-19 05:56:38', '2025-09-19 05:56:38'),
('fb5a6acd2627e43ef18ac6984feb81761cb0c430a088dc375b8ebd1184464ef7f5ee79abcc01c2e6', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-04 11:44:06', '2024-10-04 11:44:06', '2025-10-04 11:44:06'),
('fbaa4538d4e1e3228a683c34d425feb698115c0ff9e631aaeae81e4177650982467def6a66428540', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-19 15:09:42', '2024-10-19 15:09:42', '2025-10-19 15:09:42'),
('fd4ba63cd4335b85b25fae5b522f4fb3f3d968bc518dcc92e0791bd21b95f951679db74464d88a31', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-22 17:02:54', '2024-10-22 17:02:54', '2025-10-22 17:02:54'),
('fe11d56d1e8b01bd422008d5168f2dd1f010b3920efbc499836109529ddc0cb82a2e5f352bf940df', 1, 3, 'RestaurantCustomerAuth', '[]', 0, '2024-10-23 14:33:43', '2024-10-23 14:33:43', '2025-10-23 14:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'qBN0j6SW6nIf47748tgxaKxnqKqCacTxa6gii8yc', NULL, 'http://localhost', 1, 0, 0, '2021-08-19 20:44:50', '2021-08-19 20:44:50'),
(2, NULL, 'Laravel Password Grant Client', 'oqQ90HOU0egjgQ01LRzHo9rADUavq16jzWm1TrjT', 'users', 'http://localhost', 0, 1, 0, '2021-08-19 20:44:50', '2021-08-19 20:44:50'),
(3, NULL, 'stackfood Personal Access Client', 'iRxXixYp4CDo7TWbWNCMelAUwgtScaEMGudnbHQk', NULL, 'http://localhost', 1, 0, 0, '2022-01-05 10:22:36', '2022-01-05 10:22:36'),
(4, NULL, 'stackfood Password Grant Client', 'FzGJ1vSlbfGP2mWqF6V575QgVCEfbBHVNA41ApeC', 'users', 'http://localhost', 0, 1, 0, '2022-01-05 10:22:36', '2022-01-05 10:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-08-19 20:44:50', '2021-08-19 20:44:50'),
(2, 3, '2022-01-05 10:22:36', '2022-01-05 10:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payments`
--

CREATE TABLE `offline_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending',
  `note` text DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `method_fields` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offline_payment_methods`
--

CREATE TABLE `offline_payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `method_fields` text NOT NULL,
  `method_informations` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `coupon_discount_title` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `total_tax_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `payment_method` varchar(30) DEFAULT NULL,
  `transaction_reference` varchar(30) DEFAULT NULL,
  `delivery_address_id` bigint(20) DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `order_note` text DEFAULT NULL,
  `order_type` varchar(255) NOT NULL DEFAULT 'delivery',
  `checked` tinyint(1) NOT NULL DEFAULT 0,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(24,2) NOT NULL DEFAULT 0.00,
  `schedule_at` timestamp NULL DEFAULT NULL,
  `callback` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `pending` timestamp NULL DEFAULT NULL,
  `accepted` timestamp NULL DEFAULT NULL,
  `confirmed` timestamp NULL DEFAULT NULL,
  `processing` timestamp NULL DEFAULT NULL,
  `handover` timestamp NULL DEFAULT NULL,
  `picked_up` timestamp NULL DEFAULT NULL,
  `delivered` timestamp NULL DEFAULT NULL,
  `canceled` timestamp NULL DEFAULT NULL,
  `refund_requested` timestamp NULL DEFAULT NULL,
  `refunded` timestamp NULL DEFAULT NULL,
  `delivery_address` text DEFAULT NULL,
  `scheduled` tinyint(1) NOT NULL DEFAULT 0,
  `store_discount_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `original_delivery_charge` decimal(24,2) NOT NULL DEFAULT 0.00,
  `failed` timestamp NULL DEFAULT NULL,
  `adjusment` decimal(24,2) NOT NULL DEFAULT 0.00,
  `edited` tinyint(1) NOT NULL DEFAULT 0,
  `delivery_time` varchar(255) DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `order_attachment` text DEFAULT NULL,
  `parcel_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receiver_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `charge_payer` enum('sender','receiver') DEFAULT NULL,
  `distance` double(16,3) NOT NULL DEFAULT 0.000,
  `dm_tips` double(24,2) NOT NULL DEFAULT 0.00,
  `free_delivery_by` varchar(255) DEFAULT NULL,
  `refund_request_canceled` timestamp NULL DEFAULT NULL,
  `prescription_order` tinyint(1) NOT NULL DEFAULT 0,
  `tax_status` varchar(50) DEFAULT NULL,
  `dm_vehicle_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cancellation_reason` varchar(255) DEFAULT NULL,
  `canceled_by` varchar(50) DEFAULT NULL,
  `coupon_created_by` varchar(50) DEFAULT NULL,
  `discount_on_product_by` varchar(50) NOT NULL DEFAULT 'vendor',
  `processing_time` varchar(10) DEFAULT NULL,
  `unavailable_item_note` varchar(255) DEFAULT NULL,
  `cutlery` tinyint(1) NOT NULL DEFAULT 0,
  `delivery_instruction` text DEFAULT NULL,
  `tax_percentage` double(24,3) DEFAULT NULL,
  `additional_charge` double(23,3) NOT NULL DEFAULT 0.000,
  `order_proof` text DEFAULT NULL,
  `partially_paid_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `is_guest` tinyint(1) NOT NULL DEFAULT 0,
  `flash_admin_discount_amount` double(24,3) NOT NULL DEFAULT 0.000,
  `flash_store_discount_amount` double(24,3) NOT NULL DEFAULT 0.000,
  `cash_back_id` bigint(20) UNSIGNED DEFAULT NULL,
  `extra_packaging_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `ref_bonus_amount` double(23,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_amount`, `coupon_discount_amount`, `coupon_discount_title`, `payment_status`, `order_status`, `total_tax_amount`, `payment_method`, `transaction_reference`, `delivery_address_id`, `delivery_man_id`, `coupon_code`, `order_note`, `order_type`, `checked`, `store_id`, `created_at`, `updated_at`, `delivery_charge`, `schedule_at`, `callback`, `otp`, `pending`, `accepted`, `confirmed`, `processing`, `handover`, `picked_up`, `delivered`, `canceled`, `refund_requested`, `refunded`, `delivery_address`, `scheduled`, `store_discount_amount`, `original_delivery_charge`, `failed`, `adjusment`, `edited`, `delivery_time`, `zone_id`, `module_id`, `order_attachment`, `parcel_category_id`, `receiver_details`, `charge_payer`, `distance`, `dm_tips`, `free_delivery_by`, `refund_request_canceled`, `prescription_order`, `tax_status`, `dm_vehicle_id`, `cancellation_reason`, `canceled_by`, `coupon_created_by`, `discount_on_product_by`, `processing_time`, `unavailable_item_note`, `cutlery`, `delivery_instruction`, `tax_percentage`, `additional_charge`, `order_proof`, `partially_paid_amount`, `is_guest`, `flash_admin_discount_amount`, `flash_store_discount_amount`, `cash_back_id`, `extra_packaging_amount`, `ref_bonus_amount`) VALUES
(100001, 1, 159.00, 0.00, '', 'unpaid', 'canceled', 7.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 3, '2024-10-07 11:07:21', '2024-10-07 11:47:34', 10.00, '2024-10-07 11:07:21', NULL, '8144', '2024-10-07 11:07:21', NULL, '2024-10-07 11:09:19', '2024-10-07 11:12:16', '2024-10-07 11:12:44', NULL, NULL, '2024-10-07 11:47:34', NULL, NULL, '{\"contact_person_name\":\"Muthu K\",\"contact_person_number\":\"+919787698254\",\"contact_person_email\":\"rohitmu@gmail.com\",\"address_type\":\"others\",\"address\":\"Sholinghur, Tamil Nadu, India\",\"floor\":\"\",\"road\":\"\",\"house\":\"\",\"longitude\":\"79.43100515753031\",\"latitude\":\"13.111584689748957\"}', 0, 0.00, 10.00, NULL, 0.00, 0, NULL, 3, 2, NULL, NULL, NULL, NULL, 1.964, 0.00, NULL, NULL, 0, 'excluded', 1, 'Item Not Available', 'admin', NULL, 'vendor', '10', NULL, 0, NULL, 5.000, 2.000, NULL, 0.000, 0, 0.000, 0.000, NULL, 0.000, 0.000),
(100002, 1, 159.00, 0.00, '', 'unpaid', 'canceled', 7.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 3, '2024-10-07 11:48:00', '2024-10-07 13:18:58', 10.00, '2024-10-07 11:48:00', NULL, '9729', '2024-10-07 11:48:00', NULL, '2024-10-07 11:48:43', NULL, NULL, NULL, NULL, '2024-10-07 13:18:58', NULL, NULL, '{\"contact_person_name\":\"Muthu K\",\"contact_person_number\":\"+919787698254\",\"contact_person_email\":\"rohitmu@gmail.com\",\"address_type\":\"others\",\"address\":\"32\\/G1, Anna Nagar, Tamil Nadu 624001, India\",\"floor\":\"\",\"road\":\"\",\"house\":\"\",\"longitude\":\"77.9820504\",\"latitude\":\"10.368652\"}', 0, 0.00, 10.00, NULL, 0.00, 0, NULL, 2, 2, NULL, NULL, NULL, NULL, 0.022, 0.00, NULL, NULL, 0, 'excluded', 1, 'Item Not Available', 'admin', NULL, 'vendor', NULL, NULL, 0, NULL, 5.000, 2.000, NULL, 0.000, 0, 0.000, 0.000, NULL, 0.000, 0.000),
(100003, 1, 159.00, 0.00, '', 'paid', 'delivered', 7.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 3, '2024-10-07 13:19:32', '2024-10-07 13:33:52', 10.00, '2024-10-07 13:19:32', NULL, '1345', '2024-10-07 13:19:32', '2024-10-07 13:23:23', '2024-10-07 13:28:12', '2024-10-07 13:31:16', '2024-10-07 13:31:30', '2024-10-07 13:33:31', '2024-10-07 13:33:52', NULL, NULL, NULL, '{\"contact_person_name\":\"Muthu K\",\"contact_person_number\":\"+919787698254\",\"contact_person_email\":\"rohitmu@gmail.com\",\"address_type\":\"others\",\"address\":\"32\\/G1, Anna Nagar, Tamil Nadu 624001, India\",\"floor\":\"\",\"road\":\"\",\"house\":\"\",\"longitude\":\"77.9820504\",\"latitude\":\"10.368652\"}', 0, 0.00, 10.00, NULL, 0.00, 0, NULL, 2, 2, NULL, NULL, NULL, NULL, 0.022, 0.00, NULL, NULL, 0, 'excluded', 1, NULL, NULL, NULL, 'vendor', '1', NULL, 0, NULL, 5.000, 2.000, NULL, 0.000, 0, 0.000, 0.000, NULL, 0.000, 0.000),
(100004, 1, 259.00, 0.00, '', 'paid', 'delivered', 12.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 3, '2024-10-07 13:36:02', '2024-10-07 13:37:52', 10.00, '2024-10-07 13:36:01', NULL, '6371', '2024-10-07 13:36:02', '2024-10-07 13:36:57', '2024-10-07 13:36:41', '2024-10-07 13:37:16', '2024-10-07 13:37:23', '2024-10-07 13:37:35', '2024-10-07 13:37:52', NULL, NULL, NULL, '{\"contact_person_name\":\"Muthu K\",\"contact_person_number\":\"+919787698254\",\"contact_person_email\":\"rohitmu@gmail.com\",\"address_type\":\"others\",\"address\":\"32\\/G1, Anna Nagar, Tamil Nadu 624001, India\",\"floor\":\"\",\"road\":\"\",\"house\":\"\",\"longitude\":\"77.9820504\",\"latitude\":\"10.368652\"}', 0, 0.00, 10.00, NULL, 0.00, 0, NULL, 2, 2, NULL, NULL, NULL, NULL, 0.022, 0.00, NULL, NULL, 0, 'excluded', 1, NULL, NULL, NULL, 'vendor', '1', NULL, 0, NULL, 5.000, 2.000, NULL, 0.000, 0, 0.000, 0.000, NULL, 0.000, 0.000),
(100005, 1, 160.00, 0.00, '', 'paid', 'delivered', 7.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 3, '2024-10-07 13:41:29', '2024-10-07 13:43:50', 10.00, '2024-10-07 13:41:29', NULL, '6609', '2024-10-07 13:41:29', '2024-10-07 13:41:50', '2024-10-07 13:42:38', '2024-10-07 13:42:57', '2024-10-07 13:43:15', '2024-10-07 13:43:34', '2024-10-07 13:43:50', NULL, NULL, NULL, '{\"contact_person_name\":\"Muthu K\",\"contact_person_number\":\"+919787698254\",\"contact_person_email\":\"rohitmu@gmail.com\",\"address_type\":\"others\",\"address\":\"32\\/G1, Anna Nagar, Tamil Nadu 624001, India\",\"floor\":\"\",\"road\":\"\",\"house\":\"\",\"longitude\":\"77.9820504\",\"latitude\":\"10.368652\"}', 0, 0.00, 10.00, NULL, 0.00, 0, NULL, 2, 2, NULL, NULL, NULL, NULL, 0.022, 0.00, NULL, NULL, 0, 'excluded', 1, NULL, NULL, NULL, 'vendor', '1', NULL, 0, NULL, 5.000, 2.000, NULL, 0.000, 0, 0.000, 0.000, NULL, 0.000, 0.000),
(100006, 1, 172.00, 0.00, '', 'unpaid', 'canceled', 8.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 2, '2024-10-07 14:40:57', '2024-10-07 14:43:58', 10.00, '2024-10-07 14:40:56', NULL, '4830', '2024-10-07 14:40:57', NULL, '2024-10-07 14:42:09', NULL, NULL, NULL, NULL, '2024-10-07 14:43:58', NULL, NULL, '{\"contact_person_name\":\"Muthu K\",\"contact_person_number\":\"+919787698254\",\"contact_person_email\":\"rohitmu@gmail.com\",\"address_type\":\"others\",\"address\":\"Sholinghur, Tamil Nadu, India\",\"floor\":\"\",\"road\":\"\",\"house\":\"\",\"longitude\":\"79.43100515753031\",\"latitude\":\"13.111584689748957\"}', 0, 0.00, 10.00, NULL, 0.00, 0, NULL, 3, 2, NULL, NULL, NULL, NULL, 2.227, 0.00, NULL, NULL, 0, 'excluded', 1, 'Customer Say cancel Order', 'admin', NULL, 'vendor', NULL, NULL, 0, NULL, 5.000, 2.000, NULL, 0.000, 0, 0.000, 0.000, NULL, 0.000, 0.000),
(100007, 1, 160.00, 0.00, '', 'paid', 'delivered', 7.00, 'cash_on_delivery', NULL, NULL, 1, NULL, NULL, 'delivery', 1, 3, '2024-10-07 14:44:51', '2024-10-07 14:56:44', 10.00, '2024-10-07 14:44:51', NULL, '2436', '2024-10-07 14:44:51', '2024-10-07 14:45:18', '2024-10-07 14:46:08', '2024-10-07 14:46:27', '2024-10-07 14:46:38', '2024-10-07 14:46:59', '2024-10-07 14:56:44', NULL, NULL, NULL, '{\"contact_person_name\":\"Muthu K\",\"contact_person_number\":\"+919787698254\",\"contact_person_email\":\"rohitmu@gmail.com\",\"address_type\":\"others\",\"address\":\"32\\/G1, Anna Nagar, Tamil Nadu 624001, India\",\"floor\":\"\",\"road\":\"\",\"house\":\"\",\"longitude\":\"77.9820486\",\"latitude\":\"10.3686533\"}', 0, 0.00, 10.00, NULL, 0.00, 0, NULL, 2, 2, NULL, NULL, NULL, NULL, 0.022, 0.00, NULL, NULL, 0, 'excluded', 1, NULL, NULL, NULL, 'vendor', '1', NULL, 0, NULL, 5.000, 2.000, NULL, 0.000, 0, 0.000, 0.000, NULL, 0.000, 0.000),
(100008, 1, 155.00, 0.00, '', 'unpaid', 'canceled', 7.00, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, 'delivery', 1, 3, '2024-10-17 15:25:54', '2024-10-17 15:31:56', 10.00, '2024-10-17 15:25:54', NULL, '6720', '2024-10-17 15:25:54', NULL, '2024-10-17 15:27:33', '2024-10-17 15:29:43', '2024-10-17 15:29:52', NULL, NULL, '2024-10-17 15:31:56', NULL, NULL, '{\"contact_person_name\":\"Muthu K\",\"contact_person_number\":\"+919787698254\",\"contact_person_email\":\"rohitmu@gmail.com\",\"address_type\":\"others\",\"address\":\"Sholinghur, Tamil Nadu, India\",\"floor\":\"\",\"road\":\"\",\"house\":\"\",\"longitude\":\"79.43100515753031\",\"latitude\":\"13.111584689748957\"}', 0, 0.00, 10.00, NULL, 0.00, 0, NULL, 3, 2, NULL, NULL, NULL, NULL, 1.974, 0.00, NULL, NULL, 0, 'excluded', 1, 'Item Not Available', 'admin', NULL, 'vendor', '1', NULL, 0, NULL, 5.000, 2.000, NULL, 0.000, 0, 0.000, 0.000, NULL, 0.000, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `order_cancel_reasons`
--

CREATE TABLE `order_cancel_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_cancel_reasons`
--

INSERT INTO `order_cancel_reasons` (`id`, `reason`, `user_type`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Item Not Available', 'admin', 1, '2024-09-25 00:39:03', '2024-09-25 00:39:03'),
(2, 'Customer Say cancel Order', 'admin', 1, '2024-09-25 00:39:35', '2024-09-25 00:39:35'),
(3, 'Customer Number Not Reached', 'admin', 1, '2024-09-25 00:40:03', '2024-09-25 00:40:03'),
(4, 'Other Reason', 'admin', 1, '2024-09-25 00:40:24', '2024-09-25 00:40:24'),
(5, 'Item Not Available', 'store', 1, '2024-09-25 00:40:59', '2024-09-25 00:40:59'),
(6, 'Other Reason', 'deliveryman', 1, '2024-09-25 00:41:31', '2024-09-25 00:41:31'),
(7, 'Wrong item Selected', 'customer', 1, '2024-09-25 00:41:53', '2024-09-25 00:41:53'),
(8, 'Sorry By Mistake', 'customer', 1, '2024-09-25 00:42:43', '2024-09-25 00:42:43'),
(9, 'Other Reason', 'customer', 1, '2024-09-25 00:43:01', '2024-09-25 00:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_delivery_histories`
--

CREATE TABLE `order_delivery_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_location` varchar(255) DEFAULT NULL,
  `end_location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` decimal(24,2) NOT NULL DEFAULT 0.00,
  `item_details` text DEFAULT NULL,
  `variation` text DEFAULT NULL,
  `add_ons` text DEFAULT NULL,
  `discount_on_item` decimal(24,2) DEFAULT NULL,
  `discount_type` varchar(20) NOT NULL DEFAULT 'amount',
  `quantity` int(11) NOT NULL DEFAULT 1,
  `tax_amount` decimal(24,2) NOT NULL DEFAULT 1.00,
  `variant` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_campaign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_add_on_price` decimal(24,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `item_id`, `order_id`, `price`, `item_details`, `variation`, `add_ons`, `discount_on_item`, `discount_type`, `quantity`, `tax_amount`, `variant`, `created_at`, `updated_at`, `item_campaign_id`, `total_add_on_price`) VALUES
(1, 37, 100001, 70.00, '{\"id\":37,\"name\":\"Pizza\",\"description\":\"Pizza\",\"image\":\"2024-10-07-67037239f0bdd.png\",\"category_id\":8,\"category_ids\":[{\"id\":\"8\",\"position\":1,\"name\":\"Pizza\"}],\"variations\":[],\"add_ons\":[],\"attributes\":[],\"choice_options\":[],\"price\":70,\"tax\":5,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"09:00:00\",\"available_time_ends\":\"18:00:00\",\"veg\":0,\"status\":1,\"store_id\":3,\"created_at\":\"2024-10-07T05:31:38.000000Z\",\"updated_at\":\"2024-10-07T05:31:38.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"module_id\":2,\"stock\":null,\"unit_id\":null,\"images\":[{\"img\":\"2024-10-07-67037239d7949.png\",\"storage\":\"public\"},{\"img\":\"2024-10-07-67037239e386d.png\",\"storage\":\"public\"}],\"food_variations\":[],\"slug\":\"pizza\",\"recommended\":0,\"organic\":0,\"maximum_cart_quantity\":70,\"is_approved\":1,\"is_halal\":0,\"store_name\":\"Vishnu Cafe & Sri Kanna Hotel\",\"is_campaign\":0,\"module_type\":\"food\",\"zone_id\":3,\"flash_sale\":0,\"store_discount\":0,\"schedule_order\":true,\"min_delivery_time\":40,\"max_delivery_time\":60,\"common_condition_id\":0,\"brand_id\":0,\"is_basic\":0,\"is_prescription_required\":0,\"halal_tag_status\":0,\"nutritions_name\":[],\"allergies_name\":[],\"generic_name\":[],\"unit_type\":null,\"image_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-07-67037239f0bdd.png\",\"images_full_url\":[\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-07-67037239d7949.png\",\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-07-67037239e386d.png\"],\"module\":{\"id\":2,\"module_name\":\"Foods\",\"module_type\":\"food\",\"thumbnail\":\"2024-09-20-66ed67f340ad6.png\",\"status\":\"1\",\"stores_count\":2,\"created_at\":\"2024-09-20T12:17:55.000000Z\",\"updated_at\":\"2024-10-02T16:46:02.000000Z\",\"icon\":\"2024-09-20-66ed67f3402f7.png\",\"theme_id\":1,\"description\":\"<p>All in One&nbsp;<\\/p>\",\"all_zone_service\":0,\"icon_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f3402f7.png\",\"thumbnail_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f340ad6.png\",\"storage\":[{\"id\":14,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"icon\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"},{\"id\":15,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"thumbnail\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"}],\"translations\":[{\"id\":47,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"module_name\",\"value\":\"Foods\",\"created_at\":null,\"updated_at\":null},{\"id\":48,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"description\",\"value\":\"<p>All in One&nbsp;<\\/p>\",\"created_at\":null,\"updated_at\":null}]},\"storage\":[{\"id\":112,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"37\",\"key\":\"image\",\"value\":\"public\",\"created_at\":\"2024-10-07 11:01:38\",\"updated_at\":\"2024-10-07 11:01:38\"},{\"id\":113,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"37\",\"key\":\"images\",\"value\":\"public\",\"created_at\":\"2024-10-07 11:01:38\",\"updated_at\":\"2024-10-07 11:01:38\"}],\"translations\":[{\"id\":158,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":37,\"locale\":\"en\",\"key\":\"name\",\"value\":\"Pizza\",\"created_at\":null,\"updated_at\":null},{\"id\":159,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":37,\"locale\":\"en\",\"key\":\"description\",\"value\":\"Pizza\",\"created_at\":null,\"updated_at\":null}],\"ecommerce_item_details\":null,\"unit\":null}', '[]', '[]', 0.00, 'product_discount', 2, 4.00, 'null', '2024-10-07 11:07:21', '2024-10-07 11:07:21', NULL, 0.00),
(2, 37, 100002, 70.00, '{\"id\":37,\"name\":\"Pizza\",\"description\":\"Pizza\",\"image\":\"2024-10-07-67037239f0bdd.png\",\"category_id\":8,\"category_ids\":[{\"id\":\"8\",\"position\":1,\"name\":\"Pizza\"}],\"variations\":[],\"add_ons\":[],\"attributes\":[],\"choice_options\":[],\"price\":70,\"tax\":5,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"09:00:00\",\"available_time_ends\":\"18:00:00\",\"veg\":0,\"status\":1,\"store_id\":3,\"created_at\":\"2024-10-07T05:31:38.000000Z\",\"updated_at\":\"2024-10-07T05:31:38.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"module_id\":2,\"stock\":null,\"unit_id\":null,\"images\":[{\"img\":\"2024-10-07-67037239d7949.png\",\"storage\":\"public\"},{\"img\":\"2024-10-07-67037239e386d.png\",\"storage\":\"public\"}],\"food_variations\":[],\"slug\":\"pizza\",\"recommended\":0,\"organic\":0,\"maximum_cart_quantity\":70,\"is_approved\":1,\"is_halal\":0,\"store_name\":\"Vishnu Cafe & Sri Kanna Hotel\",\"is_campaign\":0,\"module_type\":\"food\",\"zone_id\":2,\"flash_sale\":0,\"store_discount\":0,\"schedule_order\":true,\"min_delivery_time\":40,\"max_delivery_time\":60,\"common_condition_id\":0,\"brand_id\":0,\"is_basic\":0,\"is_prescription_required\":0,\"halal_tag_status\":0,\"nutritions_name\":[],\"allergies_name\":[],\"generic_name\":[],\"unit_type\":null,\"image_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-07-67037239f0bdd.png\",\"images_full_url\":[\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-07-67037239d7949.png\",\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-07-67037239e386d.png\"],\"module\":{\"id\":2,\"module_name\":\"Foods\",\"module_type\":\"food\",\"thumbnail\":\"2024-09-20-66ed67f340ad6.png\",\"status\":\"1\",\"stores_count\":2,\"created_at\":\"2024-09-20T12:17:55.000000Z\",\"updated_at\":\"2024-10-02T16:46:02.000000Z\",\"icon\":\"2024-09-20-66ed67f3402f7.png\",\"theme_id\":1,\"description\":\"<p>All in One&nbsp;<\\/p>\",\"all_zone_service\":0,\"icon_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f3402f7.png\",\"thumbnail_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f340ad6.png\",\"storage\":[{\"id\":14,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"icon\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"},{\"id\":15,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"thumbnail\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"}],\"translations\":[{\"id\":47,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"module_name\",\"value\":\"Foods\",\"created_at\":null,\"updated_at\":null},{\"id\":48,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"description\",\"value\":\"<p>All in One&nbsp;<\\/p>\",\"created_at\":null,\"updated_at\":null}]},\"storage\":[{\"id\":112,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"37\",\"key\":\"image\",\"value\":\"public\",\"created_at\":\"2024-10-07 11:01:38\",\"updated_at\":\"2024-10-07 11:01:38\"},{\"id\":113,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"37\",\"key\":\"images\",\"value\":\"public\",\"created_at\":\"2024-10-07 11:01:38\",\"updated_at\":\"2024-10-07 11:01:38\"}],\"translations\":[{\"id\":158,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":37,\"locale\":\"en\",\"key\":\"name\",\"value\":\"Pizza\",\"created_at\":null,\"updated_at\":null},{\"id\":159,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":37,\"locale\":\"en\",\"key\":\"description\",\"value\":\"Pizza\",\"created_at\":null,\"updated_at\":null}],\"ecommerce_item_details\":null,\"unit\":null}', '[]', '[]', 0.00, 'product_discount', 2, 4.00, 'null', '2024-10-07 11:48:00', '2024-10-07 11:48:00', NULL, 0.00),
(3, 37, 100003, 70.00, '{\"id\":37,\"name\":\"Pizza\",\"description\":\"Pizza\",\"image\":\"2024-10-07-67037239f0bdd.png\",\"category_id\":8,\"category_ids\":[{\"id\":\"8\",\"position\":1,\"name\":\"Pizza\"}],\"variations\":[],\"add_ons\":[],\"attributes\":[],\"choice_options\":[],\"price\":70,\"tax\":5,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"09:00:00\",\"available_time_ends\":\"18:00:00\",\"veg\":0,\"status\":1,\"store_id\":3,\"created_at\":\"2024-10-07T05:31:38.000000Z\",\"updated_at\":\"2024-10-07T05:31:38.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"module_id\":2,\"stock\":null,\"unit_id\":null,\"images\":[{\"img\":\"2024-10-07-67037239d7949.png\",\"storage\":\"public\"},{\"img\":\"2024-10-07-67037239e386d.png\",\"storage\":\"public\"}],\"food_variations\":[],\"slug\":\"pizza\",\"recommended\":0,\"organic\":0,\"maximum_cart_quantity\":70,\"is_approved\":1,\"is_halal\":0,\"store_name\":\"Vishnu Cafe & Sri Kanna Hotel\",\"is_campaign\":0,\"module_type\":\"food\",\"zone_id\":2,\"flash_sale\":0,\"store_discount\":0,\"schedule_order\":true,\"min_delivery_time\":40,\"max_delivery_time\":60,\"common_condition_id\":0,\"brand_id\":0,\"is_basic\":0,\"is_prescription_required\":0,\"halal_tag_status\":0,\"nutritions_name\":[],\"allergies_name\":[],\"generic_name\":[],\"unit_type\":null,\"image_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-07-67037239f0bdd.png\",\"images_full_url\":[\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-07-67037239d7949.png\",\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-07-67037239e386d.png\"],\"module\":{\"id\":2,\"module_name\":\"Foods\",\"module_type\":\"food\",\"thumbnail\":\"2024-09-20-66ed67f340ad6.png\",\"status\":\"1\",\"stores_count\":2,\"created_at\":\"2024-09-20T12:17:55.000000Z\",\"updated_at\":\"2024-10-02T16:46:02.000000Z\",\"icon\":\"2024-09-20-66ed67f3402f7.png\",\"theme_id\":1,\"description\":\"<p>All in One&nbsp;<\\/p>\",\"all_zone_service\":0,\"icon_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f3402f7.png\",\"thumbnail_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f340ad6.png\",\"storage\":[{\"id\":14,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"icon\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"},{\"id\":15,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"thumbnail\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"}],\"translations\":[{\"id\":47,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"module_name\",\"value\":\"Foods\",\"created_at\":null,\"updated_at\":null},{\"id\":48,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"description\",\"value\":\"<p>All in One&nbsp;<\\/p>\",\"created_at\":null,\"updated_at\":null}]},\"storage\":[{\"id\":112,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"37\",\"key\":\"image\",\"value\":\"public\",\"created_at\":\"2024-10-07 11:01:38\",\"updated_at\":\"2024-10-07 11:01:38\"},{\"id\":113,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"37\",\"key\":\"images\",\"value\":\"public\",\"created_at\":\"2024-10-07 11:01:38\",\"updated_at\":\"2024-10-07 11:01:38\"}],\"translations\":[{\"id\":158,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":37,\"locale\":\"en\",\"key\":\"name\",\"value\":\"Pizza\",\"created_at\":null,\"updated_at\":null},{\"id\":159,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":37,\"locale\":\"en\",\"key\":\"description\",\"value\":\"Pizza\",\"created_at\":null,\"updated_at\":null}],\"ecommerce_item_details\":null,\"unit\":null}', '[]', '[]', 0.00, 'product_discount', 2, 4.00, 'null', '2024-10-07 13:19:33', '2024-10-07 13:19:33', NULL, 0.00),
(4, 36, 100004, 47.00, '{\"id\":36,\"name\":\"Pav Bajji\",\"description\":\"Pav Bajji\",\"image\":\"2024-10-02-66fd8516c65db.png\",\"category_id\":17,\"category_ids\":[{\"id\":\"17\",\"position\":1,\"name\":\"Chat Items\"}],\"variations\":[],\"add_ons\":[],\"attributes\":[],\"choice_options\":[],\"price\":47,\"tax\":5,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"09:00:00\",\"available_time_ends\":\"20:30:00\",\"veg\":1,\"status\":1,\"store_id\":3,\"created_at\":\"2024-10-02T17:38:30.000000Z\",\"updated_at\":\"2024-10-07T05:48:27.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"module_id\":2,\"stock\":0,\"unit_id\":null,\"images\":[{\"img\":\"2024-10-02-66fd8516c4869.png\",\"storage\":\"public\"}],\"food_variations\":[],\"slug\":\"pav-bajji\",\"recommended\":0,\"organic\":0,\"maximum_cart_quantity\":20,\"is_approved\":1,\"is_halal\":0,\"store_name\":\"Vishnu Cafe & Sri Kanna Hotel\",\"is_campaign\":0,\"module_type\":\"food\",\"zone_id\":2,\"flash_sale\":0,\"store_discount\":0,\"schedule_order\":true,\"min_delivery_time\":40,\"max_delivery_time\":60,\"common_condition_id\":0,\"brand_id\":0,\"is_basic\":0,\"is_prescription_required\":0,\"halal_tag_status\":0,\"nutritions_name\":[],\"allergies_name\":[],\"generic_name\":[],\"unit_type\":null,\"image_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-02-66fd8516c65db.png\",\"images_full_url\":[\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-02-66fd8516c4869.png\"],\"module\":{\"id\":2,\"module_name\":\"Foods\",\"module_type\":\"food\",\"thumbnail\":\"2024-09-20-66ed67f340ad6.png\",\"status\":\"1\",\"stores_count\":2,\"created_at\":\"2024-09-20T12:17:55.000000Z\",\"updated_at\":\"2024-10-02T16:46:02.000000Z\",\"icon\":\"2024-09-20-66ed67f3402f7.png\",\"theme_id\":1,\"description\":\"<p>All in One&nbsp;<\\/p>\",\"all_zone_service\":0,\"icon_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f3402f7.png\",\"thumbnail_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f340ad6.png\",\"storage\":[{\"id\":14,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"icon\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"},{\"id\":15,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"thumbnail\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"}],\"translations\":[{\"id\":47,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"module_name\",\"value\":\"Foods\",\"created_at\":null,\"updated_at\":null},{\"id\":48,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"description\",\"value\":\"<p>All in One&nbsp;<\\/p>\",\"created_at\":null,\"updated_at\":null}]},\"storage\":[{\"id\":109,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"36\",\"key\":\"image\",\"value\":\"public\",\"created_at\":\"2024-10-02 23:08:30\",\"updated_at\":\"2024-10-02 23:08:30\"},{\"id\":110,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"36\",\"key\":\"images\",\"value\":\"public\",\"created_at\":\"2024-10-02 23:08:30\",\"updated_at\":\"2024-10-02 23:08:30\"}],\"translations\":[{\"id\":155,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":36,\"locale\":\"en\",\"key\":\"name\",\"value\":\"Pav Bajji\",\"created_at\":null,\"updated_at\":null},{\"id\":156,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":36,\"locale\":\"en\",\"key\":\"description\",\"value\":\"Pav Bajji\",\"created_at\":null,\"updated_at\":null}],\"ecommerce_item_details\":null,\"unit\":null}', '[]', '[]', 0.00, 'product_discount', 5, 2.00, 'null', '2024-10-07 13:36:02', '2024-10-07 13:36:02', NULL, 0.00),
(5, 36, 100005, 47.00, '{\"id\":36,\"name\":\"Pav Bajji\",\"description\":\"Pav Bajji\",\"image\":\"2024-10-02-66fd8516c65db.png\",\"category_id\":17,\"category_ids\":[{\"id\":\"17\",\"position\":1,\"name\":\"Chat Items\"}],\"variations\":[],\"add_ons\":[],\"attributes\":[],\"choice_options\":[],\"price\":47,\"tax\":5,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"09:00:00\",\"available_time_ends\":\"20:30:00\",\"veg\":1,\"status\":1,\"store_id\":3,\"created_at\":\"2024-10-02T17:38:30.000000Z\",\"updated_at\":\"2024-10-07T05:48:27.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"module_id\":2,\"stock\":0,\"unit_id\":null,\"images\":[{\"img\":\"2024-10-02-66fd8516c4869.png\",\"storage\":\"public\"}],\"food_variations\":[],\"slug\":\"pav-bajji\",\"recommended\":0,\"organic\":0,\"maximum_cart_quantity\":20,\"is_approved\":1,\"is_halal\":0,\"store_name\":\"Vishnu Cafe & Sri Kanna Hotel\",\"is_campaign\":0,\"module_type\":\"food\",\"zone_id\":2,\"flash_sale\":0,\"store_discount\":0,\"schedule_order\":true,\"min_delivery_time\":40,\"max_delivery_time\":60,\"common_condition_id\":0,\"brand_id\":0,\"is_basic\":0,\"is_prescription_required\":0,\"halal_tag_status\":0,\"nutritions_name\":[],\"allergies_name\":[],\"generic_name\":[],\"unit_type\":null,\"image_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-02-66fd8516c65db.png\",\"images_full_url\":[\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-02-66fd8516c4869.png\"],\"module\":{\"id\":2,\"module_name\":\"Foods\",\"module_type\":\"food\",\"thumbnail\":\"2024-09-20-66ed67f340ad6.png\",\"status\":\"1\",\"stores_count\":2,\"created_at\":\"2024-09-20T12:17:55.000000Z\",\"updated_at\":\"2024-10-02T16:46:02.000000Z\",\"icon\":\"2024-09-20-66ed67f3402f7.png\",\"theme_id\":1,\"description\":\"<p>All in One&nbsp;<\\/p>\",\"all_zone_service\":0,\"icon_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f3402f7.png\",\"thumbnail_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f340ad6.png\",\"storage\":[{\"id\":14,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"icon\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"},{\"id\":15,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"thumbnail\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"}],\"translations\":[{\"id\":47,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"module_name\",\"value\":\"Foods\",\"created_at\":null,\"updated_at\":null},{\"id\":48,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"description\",\"value\":\"<p>All in One&nbsp;<\\/p>\",\"created_at\":null,\"updated_at\":null}]},\"storage\":[{\"id\":109,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"36\",\"key\":\"image\",\"value\":\"public\",\"created_at\":\"2024-10-02 23:08:30\",\"updated_at\":\"2024-10-02 23:08:30\"},{\"id\":110,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"36\",\"key\":\"images\",\"value\":\"public\",\"created_at\":\"2024-10-02 23:08:30\",\"updated_at\":\"2024-10-02 23:08:30\"}],\"translations\":[{\"id\":155,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":36,\"locale\":\"en\",\"key\":\"name\",\"value\":\"Pav Bajji\",\"created_at\":null,\"updated_at\":null},{\"id\":156,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":36,\"locale\":\"en\",\"key\":\"description\",\"value\":\"Pav Bajji\",\"created_at\":null,\"updated_at\":null}],\"ecommerce_item_details\":null,\"unit\":null}', '[]', '[]', 0.00, 'product_discount', 3, 2.00, 'null', '2024-10-07 13:41:29', '2024-10-07 13:41:29', NULL, 0.00),
(6, 35, 100006, 76.00, '{\"id\":35,\"name\":\"Veg Manchow Soup (500 Ml)\",\"description\":\"Veg Manchow Soup (500 Ml)\",\"image\":\"2024-09-25-66f3cc52be05e.png\",\"category_id\":18,\"category_ids\":[{\"id\":\"18\",\"position\":1,\"name\":\"Soups\"}],\"variations\":[],\"add_ons\":[],\"attributes\":[],\"choice_options\":[],\"price\":76,\"tax\":5,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"11:00:00\",\"available_time_ends\":\"21:00:00\",\"veg\":1,\"status\":1,\"store_id\":2,\"created_at\":\"2024-09-25T08:39:46.000000Z\",\"updated_at\":\"2024-10-02T17:55:38.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"module_id\":2,\"stock\":0,\"unit_id\":null,\"images\":[{\"img\":\"2024-09-25-66f3cc52bd665.png\",\"storage\":\"public\"}],\"food_variations\":[],\"slug\":\"veg-manchow-soup-500-ml\",\"recommended\":0,\"organic\":0,\"maximum_cart_quantity\":60,\"is_approved\":1,\"is_halal\":0,\"store_name\":\"Juice Bros\",\"is_campaign\":0,\"module_type\":\"food\",\"zone_id\":3,\"flash_sale\":0,\"store_discount\":0,\"schedule_order\":true,\"min_delivery_time\":30,\"max_delivery_time\":60,\"common_condition_id\":0,\"brand_id\":0,\"is_basic\":0,\"is_prescription_required\":0,\"halal_tag_status\":1,\"nutritions_name\":[],\"allergies_name\":[],\"generic_name\":[],\"unit_type\":null,\"image_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-09-25-66f3cc52be05e.png\",\"images_full_url\":[\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-09-25-66f3cc52bd665.png\"],\"module\":{\"id\":2,\"module_name\":\"Foods\",\"module_type\":\"food\",\"thumbnail\":\"2024-09-20-66ed67f340ad6.png\",\"status\":\"1\",\"stores_count\":2,\"created_at\":\"2024-09-20T12:17:55.000000Z\",\"updated_at\":\"2024-10-02T16:46:02.000000Z\",\"icon\":\"2024-09-20-66ed67f3402f7.png\",\"theme_id\":1,\"description\":\"<p>All in One&nbsp;<\\/p>\",\"all_zone_service\":0,\"icon_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f3402f7.png\",\"thumbnail_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f340ad6.png\",\"storage\":[{\"id\":14,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"icon\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"},{\"id\":15,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"thumbnail\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"}],\"translations\":[{\"id\":47,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"module_name\",\"value\":\"Foods\",\"created_at\":null,\"updated_at\":null},{\"id\":48,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"description\",\"value\":\"<p>All in One&nbsp;<\\/p>\",\"created_at\":null,\"updated_at\":null}]},\"storage\":[{\"id\":104,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"35\",\"key\":\"image\",\"value\":\"public\",\"created_at\":\"2024-09-25 14:09:46\",\"updated_at\":\"2024-09-25 14:09:46\"},{\"id\":105,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"35\",\"key\":\"images\",\"value\":\"public\",\"created_at\":\"2024-09-25 14:09:46\",\"updated_at\":\"2024-09-25 14:09:46\"}],\"translations\":[{\"id\":151,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":35,\"locale\":\"en\",\"key\":\"name\",\"value\":\"Veg Manchow Soup (500 Ml)\",\"created_at\":null,\"updated_at\":null},{\"id\":152,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":35,\"locale\":\"en\",\"key\":\"description\",\"value\":\"Veg Manchow Soup (500 Ml)\",\"created_at\":null,\"updated_at\":null}],\"ecommerce_item_details\":null,\"unit\":null}', '[]', '[]', 0.00, 'product_discount', 2, 4.00, 'null', '2024-10-07 14:40:57', '2024-10-07 14:40:57', NULL, 0.00),
(7, 36, 100007, 47.00, '{\"id\":36,\"name\":\"Pav Bajji\",\"description\":\"Pav Bajji\",\"image\":\"2024-10-02-66fd8516c65db.png\",\"category_id\":17,\"category_ids\":[{\"id\":\"17\",\"position\":1,\"name\":\"Chat Items\"}],\"variations\":[],\"add_ons\":[],\"attributes\":[],\"choice_options\":[],\"price\":47,\"tax\":5,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"09:00:00\",\"available_time_ends\":\"20:30:00\",\"veg\":1,\"status\":1,\"store_id\":3,\"created_at\":\"2024-10-02T17:38:30.000000Z\",\"updated_at\":\"2024-10-07T05:48:27.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"module_id\":2,\"stock\":0,\"unit_id\":null,\"images\":[{\"img\":\"2024-10-02-66fd8516c4869.png\",\"storage\":\"public\"}],\"food_variations\":[],\"slug\":\"pav-bajji\",\"recommended\":0,\"organic\":0,\"maximum_cart_quantity\":20,\"is_approved\":1,\"is_halal\":0,\"store_name\":\"Vishnu Cafe & Sri Kanna Hotel\",\"is_campaign\":0,\"module_type\":\"food\",\"zone_id\":2,\"flash_sale\":0,\"store_discount\":0,\"schedule_order\":true,\"min_delivery_time\":40,\"max_delivery_time\":60,\"common_condition_id\":0,\"brand_id\":0,\"is_basic\":0,\"is_prescription_required\":0,\"halal_tag_status\":0,\"nutritions_name\":[],\"allergies_name\":[],\"generic_name\":[],\"unit_type\":null,\"image_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-02-66fd8516c65db.png\",\"images_full_url\":[\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-02-66fd8516c4869.png\"],\"module\":{\"id\":2,\"module_name\":\"Foods\",\"module_type\":\"food\",\"thumbnail\":\"2024-09-20-66ed67f340ad6.png\",\"status\":\"1\",\"stores_count\":2,\"created_at\":\"2024-09-20T12:17:55.000000Z\",\"updated_at\":\"2024-10-02T16:46:02.000000Z\",\"icon\":\"2024-09-20-66ed67f3402f7.png\",\"theme_id\":1,\"description\":\"<p>All in One&nbsp;<\\/p>\",\"all_zone_service\":0,\"icon_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f3402f7.png\",\"thumbnail_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f340ad6.png\",\"storage\":[{\"id\":14,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"icon\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"},{\"id\":15,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"thumbnail\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"}],\"translations\":[{\"id\":47,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"module_name\",\"value\":\"Foods\",\"created_at\":null,\"updated_at\":null},{\"id\":48,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"description\",\"value\":\"<p>All in One&nbsp;<\\/p>\",\"created_at\":null,\"updated_at\":null}]},\"storage\":[{\"id\":109,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"36\",\"key\":\"image\",\"value\":\"public\",\"created_at\":\"2024-10-02 23:08:30\",\"updated_at\":\"2024-10-02 23:08:30\"},{\"id\":110,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"36\",\"key\":\"images\",\"value\":\"public\",\"created_at\":\"2024-10-02 23:08:30\",\"updated_at\":\"2024-10-02 23:08:30\"}],\"translations\":[{\"id\":155,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":36,\"locale\":\"en\",\"key\":\"name\",\"value\":\"Pav Bajji\",\"created_at\":null,\"updated_at\":null},{\"id\":156,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":36,\"locale\":\"en\",\"key\":\"description\",\"value\":\"Pav Bajji\",\"created_at\":null,\"updated_at\":null}],\"ecommerce_item_details\":null,\"unit\":null}', '[]', '[]', 0.00, 'product_discount', 3, 2.00, 'null', '2024-10-07 14:44:52', '2024-10-07 14:44:52', NULL, 0.00),
(8, 45, 100008, 36.00, '{\"id\":45,\"name\":\"Chana Masala\",\"description\":\"Chana Masala\",\"image\":\"2024-10-16-670f53002d151.png\",\"category_id\":17,\"category_ids\":[{\"id\":\"17\",\"position\":1,\"name\":\"Chat Items\"}],\"variations\":[],\"add_ons\":[],\"attributes\":[],\"choice_options\":[],\"price\":36,\"tax\":5,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"percent\",\"available_time_starts\":\"10:29:00\",\"available_time_ends\":\"20:45:00\",\"veg\":1,\"status\":1,\"store_id\":3,\"created_at\":\"2024-10-08T09:28:41.000000Z\",\"updated_at\":\"2024-10-17T08:57:25.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"module_id\":2,\"stock\":0,\"unit_id\":0,\"images\":[{\"img\":\"2024-10-16-670f53002e2a6.png\",\"storage\":\"public\"}],\"food_variations\":[],\"slug\":\"chana-masala\",\"recommended\":1,\"organic\":0,\"maximum_cart_quantity\":50,\"is_approved\":1,\"is_halal\":0,\"store_name\":\"Vishnu Cafe & Sri Kanna Hotel\",\"is_campaign\":0,\"module_type\":\"food\",\"zone_id\":3,\"flash_sale\":0,\"store_discount\":0,\"schedule_order\":true,\"min_delivery_time\":40,\"max_delivery_time\":60,\"common_condition_id\":0,\"brand_id\":0,\"is_basic\":0,\"is_prescription_required\":0,\"halal_tag_status\":0,\"nutritions_name\":[],\"allergies_name\":[],\"generic_name\":[],\"unit_type\":null,\"image_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-16-670f53002d151.png\",\"images_full_url\":[\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-16-670f53002e2a6.png\"],\"module\":{\"id\":2,\"module_name\":\"Foods\",\"module_type\":\"food\",\"thumbnail\":\"2024-09-20-66ed67f340ad6.png\",\"status\":\"1\",\"stores_count\":2,\"created_at\":\"2024-09-20T12:17:55.000000Z\",\"updated_at\":\"2024-10-02T16:46:02.000000Z\",\"icon\":\"2024-09-20-66ed67f3402f7.png\",\"theme_id\":1,\"description\":\"<p>All in One&nbsp;<\\/p>\",\"all_zone_service\":0,\"icon_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f3402f7.png\",\"thumbnail_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f340ad6.png\",\"storage\":[{\"id\":14,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"icon\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"},{\"id\":15,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"thumbnail\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"}],\"translations\":[{\"id\":47,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"module_name\",\"value\":\"Foods\",\"created_at\":null,\"updated_at\":null},{\"id\":48,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"description\",\"value\":\"<p>All in One&nbsp;<\\/p>\",\"created_at\":null,\"updated_at\":null}]},\"storage\":[{\"id\":131,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"45\",\"key\":\"image\",\"value\":\"public\",\"created_at\":\"2024-10-16 11:15:36\",\"updated_at\":\"2024-10-16 11:15:36\"},{\"id\":132,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"45\",\"key\":\"images\",\"value\":\"public\",\"created_at\":\"2024-10-16 16:18:33\",\"updated_at\":\"2024-10-16 16:18:33\"}],\"translations\":[{\"id\":174,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":45,\"locale\":\"en\",\"key\":\"name\",\"value\":\"Chana Masala\",\"created_at\":null,\"updated_at\":null},{\"id\":175,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":45,\"locale\":\"en\",\"key\":\"description\",\"value\":\"Chana Masala\",\"created_at\":null,\"updated_at\":null}],\"ecommerce_item_details\":null,\"unit\":null}', '[]', '[]', 0.00, 'product_discount', 1, 2.00, 'null', '2024-10-17 15:25:54', '2024-10-17 15:25:54', NULL, 0.00),
(9, 79, 100008, 100.00, '{\"id\":79,\"name\":\"Pizza\",\"description\":\"Test\",\"image\":\"2024-10-16-670f66c695646.png\",\"category_id\":8,\"category_ids\":[{\"id\":\"8\",\"position\":1,\"name\":\"Pizza\"}],\"variations\":[],\"add_ons\":[],\"attributes\":[],\"choice_options\":[],\"price\":100,\"tax\":5,\"tax_type\":\"percent\",\"discount\":0,\"discount_type\":\"amount\",\"available_time_starts\":\"10:30:00\",\"available_time_ends\":\"18:30:00\",\"veg\":0,\"status\":1,\"store_id\":3,\"created_at\":\"2024-10-16T07:09:58.000000Z\",\"updated_at\":\"2024-10-16T09:46:22.000000Z\",\"order_count\":0,\"avg_rating\":0,\"rating_count\":0,\"module_id\":2,\"stock\":null,\"unit_id\":null,\"images\":[{\"img\":\"2024-10-16-670f66c693e59.png\",\"storage\":\"public\"}],\"food_variations\":[],\"slug\":\"pizza\",\"recommended\":1,\"organic\":0,\"maximum_cart_quantity\":1,\"is_approved\":1,\"is_halal\":0,\"store_name\":\"Vishnu Cafe & Sri Kanna Hotel\",\"is_campaign\":0,\"module_type\":\"food\",\"zone_id\":3,\"flash_sale\":0,\"store_discount\":0,\"schedule_order\":true,\"min_delivery_time\":40,\"max_delivery_time\":60,\"common_condition_id\":0,\"brand_id\":0,\"is_basic\":0,\"is_prescription_required\":0,\"halal_tag_status\":0,\"nutritions_name\":[],\"allergies_name\":[],\"generic_name\":[],\"unit_type\":null,\"image_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-16-670f66c695646.png\",\"images_full_url\":[\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/product\\/2024-10-16-670f66c693e59.png\"],\"module\":{\"id\":2,\"module_name\":\"Foods\",\"module_type\":\"food\",\"thumbnail\":\"2024-09-20-66ed67f340ad6.png\",\"status\":\"1\",\"stores_count\":2,\"created_at\":\"2024-09-20T12:17:55.000000Z\",\"updated_at\":\"2024-10-02T16:46:02.000000Z\",\"icon\":\"2024-09-20-66ed67f3402f7.png\",\"theme_id\":1,\"description\":\"<p>All in One&nbsp;<\\/p>\",\"all_zone_service\":0,\"icon_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f3402f7.png\",\"thumbnail_full_url\":\"https:\\/\\/redzo.online\\/storage\\/app\\/public\\/module\\/2024-09-20-66ed67f340ad6.png\",\"storage\":[{\"id\":14,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"icon\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"},{\"id\":15,\"data_type\":\"App\\\\Models\\\\Module\",\"data_id\":\"2\",\"key\":\"thumbnail\",\"value\":\"public\",\"created_at\":\"2024-09-20 17:47:55\",\"updated_at\":\"2024-09-20 17:47:55\"}],\"translations\":[{\"id\":47,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"module_name\",\"value\":\"Foods\",\"created_at\":null,\"updated_at\":null},{\"id\":48,\"translationable_type\":\"App\\\\Models\\\\Module\",\"translationable_id\":2,\"locale\":\"en\",\"key\":\"description\",\"value\":\"<p>All in One&nbsp;<\\/p>\",\"created_at\":null,\"updated_at\":null}]},\"storage\":[{\"id\":200,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"79\",\"key\":\"image\",\"value\":\"public\",\"created_at\":\"2024-10-16 12:39:58\",\"updated_at\":\"2024-10-16 12:39:58\"},{\"id\":201,\"data_type\":\"App\\\\Models\\\\Item\",\"data_id\":\"79\",\"key\":\"images\",\"value\":\"public\",\"created_at\":\"2024-10-16 12:39:58\",\"updated_at\":\"2024-10-16 12:39:58\"}],\"translations\":[{\"id\":243,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":79,\"locale\":\"en\",\"key\":\"name\",\"value\":\"Pizza\",\"created_at\":null,\"updated_at\":null},{\"id\":244,\"translationable_type\":\"App\\\\Models\\\\Item\",\"translationable_id\":79,\"locale\":\"en\",\"key\":\"description\",\"value\":\"Test\",\"created_at\":null,\"updated_at\":null}],\"ecommerce_item_details\":null,\"unit\":null}', '[]', '[]', 0.00, 'product_discount', 1, 5.00, 'null', '2024-10-17 15:25:54', '2024-10-17 15:25:54', NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_ref` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_status` varchar(50) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_references`
--

CREATE TABLE `order_references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `is_reviewed` tinyint(1) NOT NULL DEFAULT 0,
  `is_review_canceled` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_references`
--

INSERT INTO `order_references` (`id`, `order_id`, `is_reviewed`, `is_review_canceled`, `created_at`, `updated_at`) VALUES
(1, 100001, 0, 0, '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(2, 100002, 0, 0, '2024-10-07 11:48:00', '2024-10-07 11:48:00'),
(3, 100003, 0, 0, '2024-10-07 13:19:33', '2024-10-07 13:19:33'),
(4, 100004, 0, 0, '2024-10-07 13:36:02', '2024-10-07 13:36:02'),
(5, 100005, 0, 0, '2024-10-07 13:41:29', '2024-10-07 13:41:29'),
(6, 100006, 0, 0, '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(7, 100007, 1, 0, '2024-10-07 14:44:52', '2024-10-07 14:57:12'),
(8, 100008, 0, 0, '2024-10-17 15:25:54', '2024-10-17 15:25:54');

-- --------------------------------------------------------

--
-- Table structure for table `order_transactions`
--

CREATE TABLE `order_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_amount` decimal(24,2) NOT NULL,
  `store_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `admin_commission` decimal(24,2) NOT NULL,
  `received_by` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_charge` decimal(24,2) NOT NULL DEFAULT 0.00,
  `original_delivery_charge` decimal(24,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(24,2) NOT NULL DEFAULT 0.00,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `parcel_catgory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dm_tips` double(24,2) NOT NULL DEFAULT 0.00,
  `delivery_fee_comission` double(24,2) NOT NULL DEFAULT 0.00,
  `admin_expense` decimal(23,3) DEFAULT 0.000,
  `store_expense` double(23,3) DEFAULT 0.000,
  `discount_amount_by_store` double(23,3) DEFAULT 0.000,
  `additional_charge` double(23,3) NOT NULL DEFAULT 0.000,
  `extra_packaging_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `ref_bonus_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `commission_percentage` double(16,3) DEFAULT 0.000,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_transactions`
--

INSERT INTO `order_transactions` (`id`, `vendor_id`, `delivery_man_id`, `order_id`, `order_amount`, `store_amount`, `admin_commission`, `received_by`, `status`, `created_at`, `updated_at`, `delivery_charge`, `original_delivery_charge`, `tax`, `zone_id`, `module_id`, `parcel_catgory_id`, `dm_tips`, `delivery_fee_comission`, `admin_expense`, `store_expense`, `discount_amount_by_store`, `additional_charge`, `extra_packaging_amount`, `ref_bonus_amount`, `commission_percentage`, `is_subscribed`) VALUES
(1, 3, 1, 100003, 159.00, 112.00, 37.00, 'deliveryman', NULL, '2024-10-07 13:33:52', '2024-10-07 13:33:52', 10.00, 10.00, 7.00, 2, 2, NULL, 0.00, 0.00, 0.000, 0.000, 0.000, 2.000, 0.000, 0.000, 25.000, 0),
(2, 3, 1, 100004, 259.00, 188.25, 60.75, 'deliveryman', NULL, '2024-10-07 13:37:52', '2024-10-07 13:37:52', 10.00, 10.00, 12.00, 2, 2, NULL, 0.00, 0.00, 0.000, 0.000, 0.000, 2.000, 0.000, 0.000, 25.000, 0),
(3, 3, 1, 100005, 160.00, 112.75, 37.25, 'deliveryman', NULL, '2024-10-07 13:43:49', '2024-10-07 13:43:49', 10.00, 10.00, 7.00, 2, 2, NULL, 0.00, 0.00, 0.000, 0.000, 0.000, 2.000, 0.000, 0.000, 25.000, 0),
(4, 3, 1, 100007, 160.00, 112.75, 37.25, 'deliveryman', NULL, '2024-10-07 14:56:44', '2024-10-07 14:56:44', 10.00, 10.00, 7.00, 2, 2, NULL, 0.00, 0.00, 0.000, 0.000, 0.000, 2.000, 0.000, 0.000, 25.000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `parcel_categories`
--

CREATE TABLE `parcel_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `orders_count` int(11) NOT NULL DEFAULT 0,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parcel_per_km_shipping_charge` double(23,2) DEFAULT NULL,
  `parcel_minimum_shipping_charge` double(23,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parcel_delivery_instructions`
--

CREATE TABLE `parcel_delivery_instructions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instruction` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`, `otp_hit_count`, `is_blocked`, `is_temp_blocked`, `temp_block_time`, `created_by`) VALUES
('rohitmu@gmail.com', '112235', '2024-10-27 16:59:39', 0, 0, 0, NULL, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` char(36) NOT NULL,
  `payer_id` varchar(64) DEFAULT NULL,
  `receiver_id` varchar(64) DEFAULT NULL,
  `payment_amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `gateway_callback_url` varchar(191) DEFAULT NULL,
  `success_hook` varchar(100) DEFAULT NULL,
  `failure_hook` varchar(100) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `currency_code` varchar(20) NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `external_redirect_link` varchar(255) DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `attribute_id` varchar(64) DEFAULT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `payment_platform` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_item_details`
--

CREATE TABLE `pharmacy_item_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `common_condition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_basic` tinyint(1) NOT NULL DEFAULT 0,
  `temp_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_prescription_required` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

CREATE TABLE `phone_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `otp_hit_count` tinyint(4) NOT NULL DEFAULT 0,
  `is_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT 0,
  `temp_block_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `priority_lists`
--

CREATE TABLE `priority_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `priority_lists`
--

INSERT INTO `priority_lists` (`id`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'popular_store_sort_by_general', 'rating', 'general', NULL, NULL),
(2, 'popular_store_sort_by_unavailable', 'none', 'unavailable', NULL, NULL),
(3, 'popular_store_sort_by_temp_closed', 'none', 'temp_closed', NULL, NULL),
(4, 'popular_store_sort_by_rating', 'none', 'rating', NULL, NULL),
(5, 'recommended_store_sort_by_general', 'rating', 'general', NULL, NULL),
(6, 'recommended_store_sort_by_unavailable', 'last', 'unavailable', NULL, NULL),
(7, 'recommended_store_sort_by_temp_closed', 'last', 'temp_closed', NULL, NULL),
(8, 'recommended_store_sort_by_rating', 'two_plus', 'rating', NULL, NULL),
(9, 'special_offer_sort_by_general', 'rating', 'general', NULL, NULL),
(10, 'all_stores_sort_by_general', 'rating', 'general', NULL, NULL),
(11, 'all_stores_sort_by_unavailable', 'last', 'unavailable', NULL, NULL),
(12, 'all_stores_sort_by_temp_closed', 'last', 'temp_closed', NULL, NULL),
(13, 'brand_item_sort_by_general', 'rating', 'general', NULL, NULL),
(14, 'brand_item_sort_by_unavailable', 'last', 'unavailable', NULL, NULL),
(15, 'brand_item_sort_by_temp_closed', 'last', 'temp_closed', NULL, NULL),
(16, 'latest_stores_sort_by_general', 'latest_created', 'general', NULL, NULL),
(17, 'latest_stores_sort_by_unavailable', 'none', 'unavailable', NULL, NULL),
(18, 'latest_stores_sort_by_temp_closed', 'none', 'temp_closed', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `provide_d_m_earnings`
--

CREATE TABLE `provide_d_m_earnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(24,2) NOT NULL DEFAULT 0.00,
  `method` varchar(255) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provide_d_m_earnings`
--

INSERT INTO `provide_d_m_earnings` (`id`, `delivery_man_id`, `amount`, `method`, `ref`, `created_at`, `updated_at`) VALUES
(1, 1, 20.00, 'adjustment', 'delivery_man_wallet_adjustment_partial', '2024-10-07 13:38:07', '2024-10-07 13:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `react_testimonials`
--

CREATE TABLE `react_testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `reviewer_image` varchar(255) DEFAULT NULL,
  `company_image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `react_testimonials`
--

INSERT INTO `react_testimonials` (`id`, `name`, `designation`, `review`, `reviewer_image`, `company_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'CTO', 'Very good Service.', '2024-04-20-6623949d88131.png', 'def.png', 1, '2023-08-16 00:05:42', '2024-04-20 05:10:37');

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

CREATE TABLE `refunds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `customer_reason` varchar(255) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `refund_amount` decimal(23,3) NOT NULL DEFAULT 0.000,
  `refund_status` varchar(50) NOT NULL,
  `refund_method` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refund_reasons`
--

CREATE TABLE `refund_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `refund_reasons`
--

INSERT INTO `refund_reasons` (`id`, `reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 'I ordered the wrong food', 0, '2023-08-16 23:39:23', '2024-09-25 00:44:53'),
(2, 'Some Item Missing', 1, '2024-09-25 00:44:02', '2024-09-25 00:44:02'),
(3, 'Product Damage', 1, '2024-09-25 00:44:20', '2024-09-25 00:44:20'),
(4, 'Wrong Item Delivered', 1, '2024-09-25 00:44:41', '2024-09-25 00:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` mediumtext DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `rating` int(11) NOT NULL DEFAULT 0,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_campaign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reply` text DEFAULT NULL,
  `review_id` varchar(100) DEFAULT NULL,
  `replied_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `item_id`, `user_id`, `comment`, `attachment`, `rating`, `order_id`, `created_at`, `updated_at`, `item_campaign_id`, `status`, `module_id`, `store_id`, `reply`, `review_id`, `replied_at`) VALUES
(1, 36, 1, NULL, '[]', 5, 100007, '2024-10-07 14:57:12', '2024-10-07 14:57:12', NULL, 1, 2, NULL, NULL, '100007', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `soft_credentials`
--

CREATE TABLE `soft_credentials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `storages`
--

CREATE TABLE `storages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data_type` varchar(255) NOT NULL,
  `data_id` varchar(100) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storages`
--

INSERT INTO `storages` (`id`, `data_type`, `data_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\BusinessSetting', '18', NULL, 'public', '2024-10-18 23:54:41', '2024-10-18 23:54:41'),
(2, 'App\\Models\\BusinessSetting', '96', NULL, 'public', '2024-10-18 23:54:41', '2024-10-18 23:54:41'),
(3, 'App\\Models\\BusinessSetting', '142', NULL, 'public', '2024-06-05 23:23:50', '2024-06-05 23:23:50'),
(4, 'App\\Models\\BusinessSetting', '143', NULL, 'public', '2024-06-05 23:23:50', '2024-06-05 23:23:50'),
(5, 'App\\Models\\BusinessSetting', '144', NULL, 'public', '2024-06-05 23:23:55', '2024-06-05 23:23:55'),
(6, 'App\\Models\\BusinessSetting', '145', NULL, 'public', '2024-06-05 23:27:22', '2024-06-05 23:27:22'),
(7, 'App\\Models\\BusinessSetting', '146', NULL, 'public', '2024-06-05 23:27:22', '2024-06-05 23:27:22'),
(8, 'App\\Models\\BusinessSetting', '147', NULL, 'public', '2024-06-05 23:24:14', '2024-06-05 23:24:14'),
(9, 'App\\Models\\BusinessSetting', '139', NULL, 'public', '2024-11-05 07:09:23', '2024-11-05 07:09:23'),
(10, 'App\\Models\\UserInfo', '1', 'image', 'public', '2024-09-19 06:00:41', '2024-09-19 06:00:41'),
(11, 'App\\Models\\Notification', '1', 'image', 'public', '2024-09-19 06:32:37', '2024-09-19 06:32:37'),
(12, 'App\\Models\\Item', '2', 'image', 'public', '2024-09-20 07:05:29', '2024-09-20 07:05:29'),
(13, 'App\\Models\\Item', '2', 'images', 'public', '2024-09-20 07:05:29', '2024-09-20 07:05:29'),
(14, 'App\\Models\\Module', '2', 'icon', 'public', '2024-09-20 17:47:55', '2024-09-20 17:47:55'),
(15, 'App\\Models\\Module', '2', 'thumbnail', 'public', '2024-09-20 17:47:55', '2024-09-20 17:47:55'),
(16, 'App\\Models\\Store', '2', 'logo', 'public', '2024-09-20 18:33:20', '2024-09-20 18:33:20'),
(17, 'App\\Models\\Store', '2', 'cover_photo', 'public', '2024-09-20 18:33:20', '2024-09-20 18:33:20'),
(18, 'App\\Models\\Category', '3', 'image', 'public', '2024-09-20 18:40:42', '2024-09-20 18:40:42'),
(19, 'App\\Models\\Category', '4', 'image', 'public', '2024-09-20 18:41:36', '2024-09-20 18:41:36'),
(20, 'App\\Models\\Category', '5', 'image', 'public', '2024-09-20 18:43:07', '2024-09-20 18:43:07'),
(21, 'App\\Models\\Category', '6', 'image', 'public', '2024-09-23 17:50:20', '2024-09-23 17:50:20'),
(22, 'App\\Models\\Category', '7', 'image', 'public', '2024-09-23 18:08:21', '2024-09-23 18:08:21'),
(23, 'App\\Models\\Category', '8', 'image', 'public', '2024-09-23 18:17:58', '2024-09-23 18:17:58'),
(24, 'App\\Models\\Category', '9', 'image', 'public', '2024-09-23 18:19:28', '2024-09-23 18:19:28'),
(25, 'App\\Models\\Category', '10', 'image', 'public', '2024-09-23 18:23:19', '2024-09-23 18:23:19'),
(26, 'App\\Models\\Category', '11', 'image', 'public', '2024-09-23 18:30:32', '2024-09-23 18:30:32'),
(27, 'App\\Models\\Category', '12', 'image', 'public', '2024-09-23 18:31:33', '2024-09-23 18:31:33'),
(28, 'App\\Models\\Category', '13', 'image', 'public', '2024-09-23 18:32:25', '2024-09-23 18:32:25'),
(29, 'App\\Models\\Category', '14', 'image', 'public', '2024-09-23 18:33:36', '2024-09-23 18:33:36'),
(30, 'App\\Models\\Category', '15', 'image', 'public', '2024-09-23 18:33:54', '2024-09-23 18:33:54'),
(31, 'App\\Models\\Category', '16', 'image', 'public', '2024-09-23 18:36:05', '2024-09-23 18:36:05'),
(32, 'App\\Models\\Category', '17', 'image', 'public', '2024-09-23 18:37:16', '2024-09-23 18:37:16'),
(33, 'App\\Models\\Category', '18', 'image', 'public', '2024-09-23 18:40:18', '2024-09-23 18:40:18'),
(34, 'App\\Models\\Category', '19', 'image', 'public', '2024-09-23 18:40:30', '2024-09-23 18:40:30'),
(35, 'App\\Models\\Category', '20', 'image', 'public', '2024-09-23 18:44:38', '2024-09-23 18:44:38'),
(36, 'App\\Models\\Category', '21', 'image', 'public', '2024-09-23 18:45:04', '2024-09-23 18:45:04'),
(37, 'App\\Models\\Category', '22', 'image', 'public', '2024-09-23 18:45:36', '2024-09-23 18:45:36'),
(38, 'App\\Models\\Category', '23', 'image', 'public', '2024-09-23 18:45:53', '2024-09-23 18:45:53'),
(39, 'App\\Models\\Category', '24', 'image', 'public', '2024-09-23 18:46:33', '2024-09-23 18:46:33'),
(40, 'App\\Models\\Item', '3', 'image', 'public', '2024-09-24 20:26:21', '2024-09-24 20:26:21'),
(41, 'App\\Models\\Item', '3', 'images', 'public', '2024-09-24 20:26:40', '2024-09-24 20:26:40'),
(42, 'App\\Models\\Item', '4', 'image', 'public', '2024-09-24 20:33:16', '2024-09-24 20:33:16'),
(43, 'App\\Models\\Item', '4', 'images', 'public', '2024-09-24 20:33:16', '2024-09-24 20:33:16'),
(44, 'App\\Models\\Item', '5', 'image', 'public', '2024-09-24 20:41:05', '2024-09-24 20:41:05'),
(45, 'App\\Models\\Item', '5', 'images', 'public', '2024-09-24 20:42:27', '2024-09-24 20:42:27'),
(46, 'App\\Models\\Item', '6', 'image', 'public', '2024-09-24 22:24:15', '2024-09-24 22:24:15'),
(47, 'App\\Models\\Item', '6', 'images', 'public', '2024-09-24 22:24:15', '2024-09-24 22:24:15'),
(48, 'App\\Models\\Item', '7', 'image', 'public', '2024-09-24 22:26:06', '2024-09-24 22:26:06'),
(49, 'App\\Models\\Item', '7', 'images', 'public', '2024-09-24 22:26:06', '2024-09-24 22:26:06'),
(50, 'App\\Models\\Item', '8', 'image', 'public', '2024-09-24 22:28:11', '2024-09-24 22:28:11'),
(51, 'App\\Models\\Item', '8', 'images', 'public', '2024-09-24 22:28:29', '2024-09-24 22:28:29'),
(52, 'App\\Models\\Item', '9', 'image', 'public', '2024-09-24 22:30:05', '2024-09-24 22:30:05'),
(53, 'App\\Models\\Item', '9', 'images', 'public', '2024-09-24 22:30:05', '2024-09-24 22:30:05'),
(54, 'App\\Models\\Item', '10', 'image', 'public', '2024-09-24 22:31:42', '2024-09-24 22:31:42'),
(55, 'App\\Models\\Item', '10', 'images', 'public', '2024-09-24 22:31:42', '2024-09-24 22:31:42'),
(56, 'App\\Models\\Item', '11', 'image', 'public', '2024-09-24 22:33:16', '2024-09-24 22:33:16'),
(57, 'App\\Models\\Item', '11', 'images', 'public', '2024-09-24 22:33:16', '2024-09-24 22:33:16'),
(58, 'App\\Models\\Item', '12', 'image', 'public', '2024-09-24 22:34:46', '2024-09-24 22:34:46'),
(59, 'App\\Models\\Item', '12', 'images', 'public', '2024-09-24 22:34:46', '2024-09-24 22:34:46'),
(60, 'App\\Models\\Item', '13', 'image', 'public', '2024-09-24 22:38:42', '2024-09-24 22:38:42'),
(61, 'App\\Models\\Item', '13', 'images', 'public', '2024-09-24 22:38:42', '2024-09-24 22:38:42'),
(62, 'App\\Models\\Item', '14', 'image', 'public', '2024-09-24 22:41:42', '2024-09-24 22:41:42'),
(63, 'App\\Models\\Item', '14', 'images', 'public', '2024-09-24 22:41:42', '2024-09-24 22:41:42'),
(64, 'App\\Models\\Item', '15', 'image', 'public', '2024-09-24 22:43:03', '2024-09-24 22:43:03'),
(65, 'App\\Models\\Item', '15', 'images', 'public', '2024-09-24 22:43:03', '2024-09-24 22:43:03'),
(66, 'App\\Models\\Item', '16', 'image', 'public', '2024-09-24 23:04:28', '2024-09-24 23:04:28'),
(67, 'App\\Models\\Item', '16', 'images', 'public', '2024-09-24 23:04:28', '2024-09-24 23:04:28'),
(68, 'App\\Models\\Item', '17', 'image', 'public', '2024-09-24 22:47:18', '2024-09-24 22:47:18'),
(69, 'App\\Models\\Item', '17', 'images', 'public', '2024-09-24 22:47:18', '2024-09-24 22:47:18'),
(70, 'App\\Models\\Item', '18', 'image', 'public', '2024-09-24 22:48:23', '2024-09-24 22:48:23'),
(71, 'App\\Models\\Item', '18', 'images', 'public', '2024-09-24 22:48:23', '2024-09-24 22:48:23'),
(72, 'App\\Models\\Item', '19', 'image', 'public', '2024-09-24 22:52:35', '2024-09-24 22:52:35'),
(73, 'App\\Models\\Item', '19', 'images', 'public', '2024-09-24 22:52:35', '2024-09-24 22:52:35'),
(74, 'App\\Models\\Item', '20', 'image', 'public', '2024-09-24 22:53:38', '2024-09-24 22:53:38'),
(75, 'App\\Models\\Item', '20', 'images', 'public', '2024-09-24 22:53:38', '2024-09-24 22:53:38'),
(76, 'App\\Models\\Item', '21', 'image', 'public', '2024-09-24 22:54:53', '2024-09-24 22:54:53'),
(77, 'App\\Models\\Item', '21', 'images', 'public', '2024-09-24 22:54:53', '2024-09-24 22:54:53'),
(78, 'App\\Models\\Item', '22', 'image', 'public', '2024-09-24 22:55:55', '2024-09-24 22:55:55'),
(79, 'App\\Models\\Item', '22', 'images', 'public', '2024-09-24 22:55:55', '2024-09-24 22:55:55'),
(80, 'App\\Models\\Item', '23', 'image', 'public', '2024-09-24 23:01:25', '2024-09-24 23:01:25'),
(81, 'App\\Models\\Item', '23', 'images', 'public', '2024-09-24 23:01:25', '2024-09-24 23:01:25'),
(82, 'App\\Models\\Item', '24', 'image', 'public', '2024-09-24 23:02:23', '2024-09-24 23:02:23'),
(83, 'App\\Models\\Item', '24', 'images', 'public', '2024-09-24 23:02:23', '2024-09-24 23:02:23'),
(84, 'App\\Models\\Item', '25', 'image', 'public', '2024-09-24 23:03:51', '2024-09-24 23:03:51'),
(85, 'App\\Models\\Item', '25', 'images', 'public', '2024-09-24 23:03:51', '2024-09-24 23:03:51'),
(86, 'App\\Models\\Item', '26', 'image', 'public', '2024-09-25 13:50:39', '2024-09-25 13:50:39'),
(87, 'App\\Models\\Item', '26', 'images', 'public', '2024-09-25 13:50:39', '2024-09-25 13:50:39'),
(88, 'App\\Models\\Item', '27', 'image', 'public', '2024-09-25 13:52:16', '2024-09-25 13:52:16'),
(89, 'App\\Models\\Item', '27', 'images', 'public', '2024-09-25 13:53:59', '2024-09-25 13:53:59'),
(90, 'App\\Models\\Item', '28', 'image', 'public', '2024-09-25 13:53:43', '2024-09-25 13:53:43'),
(91, 'App\\Models\\Item', '28', 'images', 'public', '2024-09-25 13:53:43', '2024-09-25 13:53:43'),
(92, 'App\\Models\\Item', '29', 'image', 'public', '2024-09-25 13:55:48', '2024-09-25 13:55:48'),
(93, 'App\\Models\\Item', '29', 'images', 'public', '2024-09-25 13:55:48', '2024-09-25 13:55:48'),
(94, 'App\\Models\\Item', '30', 'image', 'public', '2024-09-25 13:57:08', '2024-09-25 13:57:08'),
(95, 'App\\Models\\Item', '30', 'images', 'public', '2024-09-25 13:57:08', '2024-09-25 13:57:08'),
(96, 'App\\Models\\Item', '31', 'image', 'public', '2024-09-25 14:03:14', '2024-09-25 14:03:14'),
(97, 'App\\Models\\Item', '31', 'images', 'public', '2024-09-25 14:03:14', '2024-09-25 14:03:14'),
(98, 'App\\Models\\Item', '32', 'image', 'public', '2024-09-25 14:04:59', '2024-09-25 14:04:59'),
(99, 'App\\Models\\Item', '32', 'images', 'public', '2024-09-25 14:04:59', '2024-09-25 14:04:59'),
(100, 'App\\Models\\Item', '33', 'image', 'public', '2024-09-25 14:06:19', '2024-09-25 14:06:19'),
(101, 'App\\Models\\Item', '33', 'images', 'public', '2024-09-25 14:06:19', '2024-09-25 14:06:19'),
(102, 'App\\Models\\Item', '34', 'image', 'public', '2024-09-25 14:08:09', '2024-09-25 14:08:09'),
(103, 'App\\Models\\Item', '34', 'images', 'public', '2024-09-25 14:08:09', '2024-09-25 14:08:09'),
(104, 'App\\Models\\Item', '35', 'image', 'public', '2024-09-25 14:09:46', '2024-09-25 14:09:46'),
(105, 'App\\Models\\Item', '35', 'images', 'public', '2024-09-25 14:09:46', '2024-09-25 14:09:46'),
(106, 'App\\Models\\BusinessSetting', '83', NULL, 'public', '2024-09-27 14:52:31', '2024-09-27 14:52:31'),
(107, 'App\\Models\\Store', '3', 'logo', 'public', '2024-10-16 12:34:25', '2024-10-16 12:34:25'),
(108, 'App\\Models\\Store', '3', 'cover_photo', 'public', '2024-10-16 12:34:25', '2024-10-16 12:34:25'),
(109, 'App\\Models\\Item', '36', 'image', 'public', '2024-10-20 07:19:56', '2024-10-20 07:19:56'),
(110, 'App\\Models\\Item', '36', 'images', 'public', '2024-10-20 07:19:56', '2024-10-20 07:19:56'),
(111, 'App\\Models\\DeliveryMan', '1', 'image', 'public', '2024-10-07 10:44:56', '2024-10-07 10:44:56'),
(112, 'App\\Models\\Item', '37', 'image', 'public', '2024-10-07 11:01:38', '2024-10-07 11:01:38'),
(113, 'App\\Models\\Item', '37', 'images', 'public', '2024-10-07 11:01:38', '2024-10-07 11:01:38'),
(114, 'App\\Models\\UserInfo', '2', 'image', 'public', '2024-10-16 12:34:25', '2024-10-16 12:34:25'),
(115, 'App\\Models\\UserInfo', '3', 'image', 'public', '2024-10-07 11:16:57', '2024-10-07 11:16:57'),
(116, 'App\\Models\\Notification', '2', 'image', 'public', '2024-10-07 11:25:04', '2024-10-07 11:25:04'),
(117, 'App\\Models\\Item', '38', 'image', 'public', '2024-10-20 07:20:34', '2024-10-20 07:20:34'),
(118, 'App\\Models\\Item', '38', 'images', 'public', '2024-10-20 07:20:35', '2024-10-20 07:20:35'),
(119, 'App\\Models\\Item', '39', 'image', 'public', '2024-10-08 14:49:02', '2024-10-08 14:49:02'),
(120, 'App\\Models\\Item', '39', 'images', 'public', '2024-10-08 14:49:02', '2024-10-08 14:49:02'),
(121, 'App\\Models\\Item', '40', 'image', 'public', '2024-10-20 07:21:06', '2024-10-20 07:21:06'),
(122, 'App\\Models\\Item', '40', 'images', 'public', '2024-10-20 07:21:06', '2024-10-20 07:21:06'),
(123, 'App\\Models\\Item', '41', 'image', 'public', '2024-10-08 14:50:04', '2024-10-08 14:50:04'),
(124, 'App\\Models\\Item', '41', 'images', 'public', '2024-10-08 14:50:04', '2024-10-08 14:50:04'),
(125, 'App\\Models\\Item', '42', 'image', 'public', '2024-10-08 14:50:58', '2024-10-08 14:50:58'),
(126, 'App\\Models\\Item', '42', 'images', 'public', '2024-10-08 14:50:58', '2024-10-08 14:50:58'),
(127, 'App\\Models\\Item', '43', 'image', 'public', '2024-10-08 14:51:58', '2024-10-08 14:51:58'),
(128, 'App\\Models\\Item', '43', 'images', 'public', '2024-10-08 14:51:58', '2024-10-08 14:51:58'),
(129, 'App\\Models\\Item', '44', 'image', 'public', '2024-10-20 07:21:38', '2024-10-20 07:21:38'),
(130, 'App\\Models\\Item', '44', 'images', 'public', '2024-10-20 07:21:38', '2024-10-20 07:21:38'),
(131, 'App\\Models\\Item', '45', 'image', 'public', '2024-10-20 07:25:04', '2024-10-20 07:25:04'),
(132, 'App\\Models\\Item', '45', 'images', 'public', '2024-10-20 07:25:04', '2024-10-20 07:25:04'),
(133, 'App\\Models\\Item', '46', 'image', 'public', '2024-10-08 15:00:02', '2024-10-08 15:00:02'),
(134, 'App\\Models\\Item', '46', 'images', 'public', '2024-10-08 15:00:02', '2024-10-08 15:00:02'),
(135, 'App\\Models\\Item', '47', 'image', 'public', '2024-10-08 15:01:31', '2024-10-08 15:01:31'),
(136, 'App\\Models\\Item', '47', 'images', 'public', '2024-10-08 15:01:31', '2024-10-08 15:01:31'),
(137, 'App\\Models\\Item', '48', 'image', 'public', '2024-10-08 15:04:22', '2024-10-08 15:04:22'),
(138, 'App\\Models\\Item', '48', 'images', 'public', '2024-10-08 15:04:22', '2024-10-08 15:04:22'),
(139, 'App\\Models\\Item', '49', 'image', 'public', '2024-10-08 15:05:52', '2024-10-08 15:05:52'),
(140, 'App\\Models\\Item', '49', 'images', 'public', '2024-10-08 15:05:52', '2024-10-08 15:05:52'),
(141, 'App\\Models\\Item', '50', 'image', 'public', '2024-10-08 15:06:44', '2024-10-08 15:06:44'),
(142, 'App\\Models\\Item', '50', 'images', 'public', '2024-10-08 15:06:44', '2024-10-08 15:06:44'),
(143, 'App\\Models\\Item', '51', 'image', 'public', '2024-10-08 15:07:42', '2024-10-08 15:07:42'),
(144, 'App\\Models\\Item', '51', 'images', 'public', '2024-10-08 15:07:42', '2024-10-08 15:07:42'),
(145, 'App\\Models\\Item', '52', 'image', 'public', '2024-10-08 15:08:37', '2024-10-08 15:08:37'),
(146, 'App\\Models\\Item', '52', 'images', 'public', '2024-10-08 15:08:37', '2024-10-08 15:08:37'),
(147, 'App\\Models\\Item', '53', 'image', 'public', '2024-10-08 15:09:29', '2024-10-08 15:09:29'),
(148, 'App\\Models\\Item', '53', 'images', 'public', '2024-10-08 15:09:29', '2024-10-08 15:09:29'),
(149, 'App\\Models\\Item', '54', 'image', 'public', '2024-10-08 15:15:22', '2024-10-08 15:15:22'),
(150, 'App\\Models\\Item', '54', 'images', 'public', '2024-10-08 15:15:22', '2024-10-08 15:15:22'),
(151, 'App\\Models\\Item', '55', 'image', 'public', '2024-10-08 15:16:25', '2024-10-08 15:16:25'),
(152, 'App\\Models\\Item', '55', 'images', 'public', '2024-10-08 15:16:25', '2024-10-08 15:16:25'),
(153, 'App\\Models\\Item', '56', 'image', 'public', '2024-10-08 15:17:38', '2024-10-08 15:17:38'),
(154, 'App\\Models\\Item', '56', 'images', 'public', '2024-10-08 15:19:24', '2024-10-08 15:19:24'),
(155, 'App\\Models\\Item', '57', 'image', 'public', '2024-10-08 15:18:58', '2024-10-08 15:18:58'),
(156, 'App\\Models\\Item', '57', 'images', 'public', '2024-10-08 15:18:58', '2024-10-08 15:18:58'),
(157, 'App\\Models\\Item', '58', 'image', 'public', '2024-10-08 15:20:35', '2024-10-08 15:20:35'),
(158, 'App\\Models\\Item', '58', 'images', 'public', '2024-10-08 15:20:35', '2024-10-08 15:20:35'),
(159, 'App\\Models\\Item', '59', 'image', 'public', '2024-10-08 15:22:02', '2024-10-08 15:22:02'),
(160, 'App\\Models\\Item', '59', 'images', 'public', '2024-10-08 15:22:02', '2024-10-08 15:22:02'),
(161, 'App\\Models\\Item', '60', 'image', 'public', '2024-10-08 15:29:49', '2024-10-08 15:29:49'),
(162, 'App\\Models\\Item', '60', 'images', 'public', '2024-10-08 15:30:23', '2024-10-08 15:30:23'),
(163, 'App\\Models\\Item', '61', 'image', 'public', '2024-10-08 15:32:08', '2024-10-08 15:32:08'),
(164, 'App\\Models\\Item', '61', 'images', 'public', '2024-10-08 15:32:08', '2024-10-08 15:32:08'),
(165, 'App\\Models\\Item', '62', 'image', 'public', '2024-10-08 15:33:11', '2024-10-08 15:33:11'),
(166, 'App\\Models\\Item', '62', 'images', 'public', '2024-10-08 15:33:11', '2024-10-08 15:33:11'),
(167, 'App\\Models\\Item', '63', 'image', 'public', '2024-10-08 15:34:22', '2024-10-08 15:34:22'),
(168, 'App\\Models\\Item', '63', 'images', 'public', '2024-10-08 15:34:22', '2024-10-08 15:34:22'),
(169, 'App\\Models\\Item', '64', 'image', 'public', '2024-10-08 15:35:14', '2024-10-08 15:35:14'),
(170, 'App\\Models\\Item', '64', 'images', 'public', '2024-10-08 15:35:14', '2024-10-08 15:35:14'),
(171, 'App\\Models\\Item', '65', 'image', 'public', '2024-10-08 15:36:17', '2024-10-08 15:36:17'),
(172, 'App\\Models\\Item', '65', 'images', 'public', '2024-10-08 15:36:17', '2024-10-08 15:36:17'),
(173, 'App\\Models\\Item', '66', 'image', 'public', '2024-10-08 15:37:25', '2024-10-08 15:37:25'),
(174, 'App\\Models\\Item', '66', 'images', 'public', '2024-10-08 15:37:25', '2024-10-08 15:37:25'),
(175, 'App\\Models\\Item', '67', 'image', 'public', '2024-10-08 15:38:33', '2024-10-08 15:38:33'),
(176, 'App\\Models\\Item', '67', 'images', 'public', '2024-10-08 15:38:33', '2024-10-08 15:38:33'),
(177, 'App\\Models\\Item', '68', 'image', 'public', '2024-10-08 22:33:22', '2024-10-08 22:33:22'),
(178, 'App\\Models\\Item', '68', 'images', 'public', '2024-10-08 22:33:22', '2024-10-08 22:33:22'),
(179, 'App\\Models\\Item', '69', 'image', 'public', '2024-10-08 22:34:25', '2024-10-08 22:34:25'),
(180, 'App\\Models\\Item', '69', 'images', 'public', '2024-10-08 22:34:25', '2024-10-08 22:34:25'),
(181, 'App\\Models\\Item', '70', 'image', 'public', '2024-10-08 22:35:18', '2024-10-08 22:35:18'),
(182, 'App\\Models\\Item', '70', 'images', 'public', '2024-10-08 22:35:18', '2024-10-08 22:35:18'),
(183, 'App\\Models\\Item', '71', 'image', 'public', '2024-10-08 22:49:56', '2024-10-08 22:49:56'),
(184, 'App\\Models\\Item', '71', 'images', 'public', '2024-10-08 22:49:57', '2024-10-08 22:49:57'),
(185, 'App\\Models\\Item', '72', 'image', 'public', '2024-10-08 22:50:48', '2024-10-08 22:50:48'),
(186, 'App\\Models\\Item', '72', 'images', 'public', '2024-10-08 22:50:48', '2024-10-08 22:50:48'),
(187, 'App\\Models\\Item', '73', 'image', 'public', '2024-10-08 22:51:45', '2024-10-08 22:51:45'),
(188, 'App\\Models\\Item', '73', 'images', 'public', '2024-10-08 22:51:45', '2024-10-08 22:51:45'),
(189, 'App\\Models\\Item', '74', 'image', 'public', '2024-10-08 22:52:38', '2024-10-08 22:52:38'),
(190, 'App\\Models\\Item', '74', 'images', 'public', '2024-10-08 22:52:38', '2024-10-08 22:52:38'),
(191, 'App\\Models\\Category', '25', 'image', 'public', '2024-10-08 23:00:44', '2024-10-08 23:00:44'),
(192, 'App\\Models\\Item', '75', 'image', 'public', '2024-10-08 23:03:20', '2024-10-08 23:03:20'),
(193, 'App\\Models\\Item', '75', 'images', 'public', '2024-10-08 23:03:51', '2024-10-08 23:03:51'),
(194, 'App\\Models\\Item', '76', 'image', 'public', '2024-10-08 23:04:57', '2024-10-08 23:04:57'),
(195, 'App\\Models\\Item', '76', 'images', 'public', '2024-10-08 23:04:57', '2024-10-08 23:04:57'),
(196, 'App\\Models\\Item', '77', 'image', 'public', '2024-10-08 23:06:21', '2024-10-08 23:06:21'),
(197, 'App\\Models\\Item', '77', 'images', 'public', '2024-10-08 23:06:21', '2024-10-08 23:06:21'),
(198, 'App\\Models\\Item', '78', 'image', 'public', '2024-10-08 23:07:18', '2024-10-08 23:07:18'),
(199, 'App\\Models\\Item', '78', 'images', 'public', '2024-10-08 23:07:18', '2024-10-08 23:07:18'),
(200, 'App\\Models\\Item', '79', 'image', 'public', '2024-10-16 12:39:58', '2024-10-16 12:39:58'),
(201, 'App\\Models\\Item', '79', 'images', 'public', '2024-10-16 12:39:58', '2024-10-16 12:39:58'),
(202, 'App\\Models\\Store', '4', 'logo', 'public', '2024-10-18 14:12:29', '2024-10-18 14:12:29'),
(203, 'App\\Models\\Store', '4', 'cover_photo', 'public', '2024-10-18 14:12:29', '2024-10-18 14:12:29'),
(204, 'App\\Models\\Store', '5', 'logo', 'public', '2024-10-18 14:37:48', '2024-10-18 14:37:48'),
(205, 'App\\Models\\Store', '5', 'cover_photo', 'public', '2024-10-18 14:37:48', '2024-10-18 14:37:48'),
(206, 'App\\Models\\Item', '80', 'image', 'public', '2024-10-18 14:44:04', '2024-10-18 14:44:04'),
(207, 'App\\Models\\Item', '80', 'images', 'public', '2024-10-18 14:44:04', '2024-10-18 14:44:04'),
(208, 'App\\Models\\Item', '81', 'image', 'public', '2024-10-18 14:45:39', '2024-10-18 14:45:39'),
(209, 'App\\Models\\Item', '81', 'images', 'public', '2024-10-18 14:45:39', '2024-10-18 14:45:39'),
(210, 'App\\Models\\Item', '82', 'image', 'public', '2024-10-18 14:46:37', '2024-10-18 14:46:37'),
(211, 'App\\Models\\Item', '82', 'images', 'public', '2024-10-18 14:46:37', '2024-10-18 14:46:37'),
(212, 'App\\Models\\Item', '83', 'image', 'public', '2024-10-18 14:48:21', '2024-10-18 14:48:21'),
(213, 'App\\Models\\Item', '83', 'images', 'public', '2024-10-18 14:58:43', '2024-10-18 14:58:43'),
(214, 'App\\Models\\Item', '84', 'image', 'public', '2024-10-18 14:50:20', '2024-10-18 14:50:20'),
(215, 'App\\Models\\Item', '84', 'images', 'public', '2024-10-18 14:57:12', '2024-10-18 14:57:12'),
(216, 'App\\Models\\Item', '85', 'image', 'public', '2024-10-18 14:52:42', '2024-10-18 14:52:42'),
(217, 'App\\Models\\Item', '85', 'images', 'public', '2024-10-18 14:52:42', '2024-10-18 14:52:42'),
(218, 'App\\Models\\Item', '86', 'image', 'public', '2024-10-18 14:53:48', '2024-10-18 14:53:48'),
(219, 'App\\Models\\Item', '86', 'images', 'public', '2024-10-18 14:53:48', '2024-10-18 14:53:48'),
(220, 'App\\Models\\Item', '87', 'image', 'public', '2024-10-18 14:54:32', '2024-10-18 14:54:32'),
(221, 'App\\Models\\Item', '87', 'images', 'public', '2024-10-18 14:54:32', '2024-10-18 14:54:32'),
(222, 'App\\Models\\Item', '88', 'image', 'public', '2024-10-18 14:58:59', '2024-10-18 14:58:59'),
(223, 'App\\Models\\Item', '88', 'images', 'public', '2024-10-18 14:58:59', '2024-10-18 14:58:59'),
(224, 'App\\Models\\Item', '89', 'image', 'public', '2024-10-18 14:59:49', '2024-10-18 14:59:49'),
(225, 'App\\Models\\Item', '89', 'images', 'public', '2024-10-18 14:59:49', '2024-10-18 14:59:49'),
(226, 'App\\Models\\Item', '90', 'image', 'public', '2024-10-18 15:00:41', '2024-10-18 15:00:41'),
(227, 'App\\Models\\Item', '90', 'images', 'public', '2024-10-18 15:00:41', '2024-10-18 15:00:41'),
(228, 'App\\Models\\Item', '91', 'image', 'public', '2024-10-18 15:01:55', '2024-10-18 15:01:55'),
(229, 'App\\Models\\Item', '91', 'images', 'public', '2024-10-18 15:01:55', '2024-10-18 15:01:55'),
(230, 'App\\Models\\Item', '92', 'image', 'public', '2024-10-18 15:03:07', '2024-10-18 15:03:07'),
(231, 'App\\Models\\Item', '92', 'images', 'public', '2024-10-18 15:03:07', '2024-10-18 15:03:07'),
(232, 'App\\Models\\Item', '93', 'image', 'public', '2024-10-18 15:03:28', '2024-10-18 15:03:28'),
(233, 'App\\Models\\Item', '93', 'images', 'public', '2024-10-18 15:03:28', '2024-10-18 15:03:28'),
(234, 'App\\Models\\Item', '94', 'image', 'public', '2024-10-18 15:04:34', '2024-10-18 15:04:34'),
(235, 'App\\Models\\Item', '94', 'images', 'public', '2024-10-18 15:04:34', '2024-10-18 15:04:34'),
(236, 'App\\Models\\Item', '95', 'image', 'public', '2024-10-18 15:05:27', '2024-10-18 15:05:27'),
(237, 'App\\Models\\Item', '95', 'images', 'public', '2024-10-18 15:05:27', '2024-10-18 15:05:27'),
(238, 'App\\Models\\Item', '96', 'image', 'public', '2024-10-18 15:05:46', '2024-10-18 15:05:46'),
(239, 'App\\Models\\Item', '96', 'images', 'public', '2024-10-18 15:05:46', '2024-10-18 15:05:46'),
(240, 'App\\Models\\Item', '97', 'image', 'public', '2024-10-18 15:10:33', '2024-10-18 15:10:33'),
(241, 'App\\Models\\Item', '97', 'images', 'public', '2024-10-18 15:10:33', '2024-10-18 15:10:33'),
(242, 'App\\Models\\Item', '98', 'image', 'public', '2024-10-18 15:11:53', '2024-10-18 15:11:53'),
(243, 'App\\Models\\Item', '98', 'images', 'public', '2024-10-18 15:11:53', '2024-10-18 15:11:53'),
(244, 'App\\Models\\Item', '99', 'image', 'public', '2024-10-18 15:12:54', '2024-10-18 15:12:54'),
(245, 'App\\Models\\Item', '99', 'images', 'public', '2024-10-18 15:12:54', '2024-10-18 15:12:54'),
(246, 'App\\Models\\Item', '100', 'image', 'public', '2024-10-18 15:14:56', '2024-10-18 15:14:56'),
(247, 'App\\Models\\Item', '100', 'images', 'public', '2024-10-18 15:14:56', '2024-10-18 15:14:56'),
(248, 'App\\Models\\Item', '101', 'image', 'public', '2024-10-18 15:17:19', '2024-10-18 15:17:19'),
(249, 'App\\Models\\Item', '101', 'images', 'public', '2024-10-18 15:17:19', '2024-10-18 15:17:19'),
(250, 'App\\Models\\Item', '102', 'image', 'public', '2024-10-18 15:18:12', '2024-10-18 15:18:12'),
(251, 'App\\Models\\Item', '102', 'images', 'public', '2024-10-26 11:26:48', '2024-10-26 11:26:48'),
(252, 'App\\Models\\Item', '103', 'image', 'public', '2024-10-18 15:20:21', '2024-10-18 15:20:21'),
(253, 'App\\Models\\Item', '103', 'images', 'public', '2024-10-18 15:20:21', '2024-10-18 15:20:21'),
(254, 'App\\Models\\Item', '104', 'image', 'public', '2024-10-18 15:21:12', '2024-10-18 15:21:12'),
(255, 'App\\Models\\Item', '104', 'images', 'public', '2024-10-18 15:21:12', '2024-10-18 15:21:12'),
(256, 'App\\Models\\Item', '105', 'image', 'public', '2024-10-18 15:22:46', '2024-10-18 15:22:46'),
(257, 'App\\Models\\Item', '105', 'images', 'public', '2024-10-18 15:22:46', '2024-10-18 15:22:46'),
(258, 'App\\Models\\Item', '106', 'image', 'public', '2024-10-18 15:24:08', '2024-10-18 15:24:08'),
(259, 'App\\Models\\Item', '106', 'images', 'public', '2024-10-18 15:24:08', '2024-10-18 15:24:08'),
(260, 'App\\Models\\Item', '107', 'image', 'public', '2024-10-18 15:24:54', '2024-10-18 15:24:54'),
(261, 'App\\Models\\Item', '107', 'images', 'public', '2024-10-18 15:24:54', '2024-10-18 15:24:54'),
(262, 'App\\Models\\Item', '108', 'image', 'public', '2024-10-18 15:25:33', '2024-10-18 15:25:33'),
(263, 'App\\Models\\Item', '108', 'images', 'public', '2024-10-18 15:25:33', '2024-10-18 15:25:33'),
(264, 'App\\Models\\Item', '109', 'image', 'public', '2024-10-18 15:28:36', '2024-10-18 15:28:36'),
(265, 'App\\Models\\Item', '109', 'images', 'public', '2024-10-18 15:28:36', '2024-10-18 15:28:36'),
(266, 'App\\Models\\Item', '110', 'image', 'public', '2024-10-18 15:28:54', '2024-10-18 15:28:54'),
(267, 'App\\Models\\Item', '110', 'images', 'public', '2024-10-18 15:28:54', '2024-10-18 15:28:54'),
(268, 'App\\Models\\Item', '111', 'image', 'public', '2024-10-18 15:29:45', '2024-10-18 15:29:45'),
(269, 'App\\Models\\Item', '111', 'images', 'public', '2024-10-18 15:29:45', '2024-10-18 15:29:45'),
(270, 'App\\Models\\Item', '112', 'image', 'public', '2024-10-18 15:30:37', '2024-10-18 15:30:37'),
(271, 'App\\Models\\Item', '112', 'images', 'public', '2024-10-18 15:30:37', '2024-10-18 15:30:37'),
(272, 'App\\Models\\Item', '113', 'image', 'public', '2024-10-18 15:31:23', '2024-10-18 15:31:23'),
(273, 'App\\Models\\Item', '113', 'images', 'public', '2024-10-18 15:31:23', '2024-10-18 15:31:23'),
(274, 'App\\Models\\Item', '114', 'image', 'public', '2024-10-18 15:32:34', '2024-10-18 15:32:34'),
(275, 'App\\Models\\Item', '114', 'images', 'public', '2024-10-18 15:32:34', '2024-10-18 15:32:34'),
(276, 'App\\Models\\Item', '115', 'image', 'public', '2024-10-18 15:35:05', '2024-10-18 15:35:05'),
(277, 'App\\Models\\Item', '115', 'images', 'public', '2024-10-18 15:37:43', '2024-10-18 15:37:43'),
(278, 'App\\Models\\Item', '116', 'image', 'public', '2024-10-18 15:50:00', '2024-10-18 15:50:00'),
(279, 'App\\Models\\Item', '116', 'images', 'public', '2024-10-18 15:50:00', '2024-10-18 15:50:00'),
(280, 'App\\Models\\Item', '117', 'image', 'public', '2024-10-18 15:52:35', '2024-10-18 15:52:35'),
(281, 'App\\Models\\Item', '117', 'images', 'public', '2024-10-18 15:52:35', '2024-10-18 15:52:35'),
(282, 'App\\Models\\Item', '118', 'image', 'public', '2024-10-18 15:55:17', '2024-10-18 15:55:17'),
(283, 'App\\Models\\Item', '118', 'images', 'public', '2024-10-18 15:55:17', '2024-10-18 15:55:17'),
(284, 'App\\Models\\Item', '119', 'image', 'public', '2024-10-18 15:56:41', '2024-10-18 15:56:41'),
(285, 'App\\Models\\Item', '119', 'images', 'public', '2024-10-18 15:56:41', '2024-10-18 15:56:41'),
(286, 'App\\Models\\Item', '120', 'image', 'public', '2024-10-18 22:28:48', '2024-10-18 22:28:48'),
(287, 'App\\Models\\Item', '120', 'images', 'public', '2024-10-18 22:28:48', '2024-10-18 22:28:48'),
(288, 'App\\Models\\Item', '121', 'image', 'public', '2024-10-18 22:30:33', '2024-10-18 22:30:33'),
(289, 'App\\Models\\Item', '121', 'images', 'public', '2024-10-18 22:30:33', '2024-10-18 22:30:33'),
(290, 'App\\Models\\Item', '122', 'image', 'public', '2024-10-18 22:35:08', '2024-10-18 22:35:08'),
(291, 'App\\Models\\Item', '122', 'images', 'public', '2024-10-18 22:35:08', '2024-10-18 22:35:08'),
(292, 'App\\Models\\Item', '123', 'image', 'public', '2024-10-18 22:42:23', '2024-10-18 22:42:23'),
(293, 'App\\Models\\Item', '123', 'images', 'public', '2024-10-18 22:42:23', '2024-10-18 22:42:23'),
(294, 'App\\Models\\Item', '124', 'image', 'public', '2024-10-18 22:46:07', '2024-10-18 22:46:07'),
(295, 'App\\Models\\Item', '124', 'images', 'public', '2024-10-18 22:46:07', '2024-10-18 22:46:07'),
(296, 'App\\Models\\Store', '6', 'logo', 'public', '2024-10-18 23:44:55', '2024-10-18 23:44:55'),
(297, 'App\\Models\\Store', '6', 'cover_photo', 'public', '2024-10-18 23:44:55', '2024-10-18 23:44:55'),
(298, 'App\\Models\\Category', '26', 'image', 'public', '2024-10-18 23:49:27', '2024-10-18 23:49:27'),
(299, 'App\\Models\\Item', '125', 'image', 'public', '2024-10-19 21:31:31', '2024-10-19 21:31:31'),
(300, 'App\\Models\\Item', '125', 'images', 'public', '2024-10-19 21:31:31', '2024-10-19 21:31:31'),
(301, 'App\\Models\\Item', '126', 'image', 'public', '2024-10-19 21:32:24', '2024-10-19 21:32:24'),
(302, 'App\\Models\\Item', '126', 'images', 'public', '2024-10-19 21:32:24', '2024-10-19 21:32:24'),
(303, 'App\\Models\\Item', '127', 'image', 'public', '2024-10-19 21:33:21', '2024-10-19 21:33:21'),
(304, 'App\\Models\\Item', '127', 'images', 'public', '2024-10-19 21:33:21', '2024-10-19 21:33:21'),
(305, 'App\\Models\\Item', '128', 'image', 'public', '2024-10-19 21:34:33', '2024-10-19 21:34:33'),
(306, 'App\\Models\\Item', '128', 'images', 'public', '2024-10-19 21:34:33', '2024-10-19 21:34:33'),
(307, 'App\\Models\\Item', '129', 'image', 'public', '2024-10-19 21:35:30', '2024-10-19 21:35:30'),
(308, 'App\\Models\\Item', '129', 'images', 'public', '2024-10-19 21:35:30', '2024-10-19 21:35:30'),
(309, 'App\\Models\\Item', '130', 'image', 'public', '2024-10-19 21:36:20', '2024-10-19 21:36:20'),
(310, 'App\\Models\\Item', '130', 'images', 'public', '2024-10-19 21:36:20', '2024-10-19 21:36:20'),
(311, 'App\\Models\\Item', '131', 'image', 'public', '2024-10-19 23:14:54', '2024-10-19 23:14:54'),
(312, 'App\\Models\\Item', '131', 'images', 'public', '2024-10-20 10:10:45', '2024-10-20 10:10:45'),
(313, 'App\\Models\\Item', '132', 'image', 'public', '2024-10-20 08:37:12', '2024-10-20 08:37:12'),
(314, 'App\\Models\\Item', '132', 'images', 'public', '2024-10-20 08:37:12', '2024-10-20 08:37:12'),
(315, 'App\\Models\\Item', '133', 'image', 'public', '2024-10-20 08:40:51', '2024-10-20 08:40:51'),
(316, 'App\\Models\\Item', '133', 'images', 'public', '2024-10-20 08:40:51', '2024-10-20 08:40:51'),
(317, 'App\\Models\\Item', '134', 'image', 'public', '2024-10-20 08:51:22', '2024-10-20 08:51:22'),
(318, 'App\\Models\\Item', '134', 'images', 'public', '2024-10-20 08:51:22', '2024-10-20 08:51:22'),
(319, 'App\\Models\\Item', '135', 'image', 'public', '2024-10-20 08:53:03', '2024-10-20 08:53:03'),
(320, 'App\\Models\\Item', '135', 'images', 'public', '2024-10-20 08:53:03', '2024-10-20 08:53:03'),
(321, 'App\\Models\\Item', '136', 'image', 'public', '2024-10-20 08:54:32', '2024-10-20 08:54:32'),
(322, 'App\\Models\\Item', '136', 'images', 'public', '2024-10-20 08:54:32', '2024-10-20 08:54:32'),
(323, 'App\\Models\\Item', '137', 'image', 'public', '2024-10-20 08:55:27', '2024-10-20 08:55:27'),
(324, 'App\\Models\\Item', '137', 'images', 'public', '2024-10-20 08:55:27', '2024-10-20 08:55:27'),
(325, 'App\\Models\\Item', '138', 'image', 'public', '2024-10-20 09:03:22', '2024-10-20 09:03:22'),
(326, 'App\\Models\\Item', '138', 'images', 'public', '2024-10-20 09:07:46', '2024-10-20 09:07:46'),
(327, 'App\\Models\\Item', '139', 'image', 'public', '2024-10-20 09:05:48', '2024-10-20 09:05:48'),
(328, 'App\\Models\\Item', '139', 'images', 'public', '2024-10-20 09:05:48', '2024-10-20 09:05:48'),
(329, 'App\\Models\\Item', '140', 'image', 'public', '2024-10-20 09:07:29', '2024-10-20 09:07:29'),
(330, 'App\\Models\\Item', '140', 'images', 'public', '2024-10-20 09:07:29', '2024-10-20 09:07:29'),
(331, 'App\\Models\\Item', '141', 'image', 'public', '2024-10-20 09:10:45', '2024-10-20 09:10:45'),
(332, 'App\\Models\\Item', '141', 'images', 'public', '2024-10-20 09:10:45', '2024-10-20 09:10:45'),
(333, 'App\\Models\\Item', '142', 'image', 'public', '2024-10-20 09:15:33', '2024-10-20 09:15:33'),
(334, 'App\\Models\\Item', '142', 'images', 'public', '2024-10-20 09:15:33', '2024-10-20 09:15:33'),
(335, 'App\\Models\\Item', '143', 'image', 'public', '2024-10-20 09:13:58', '2024-10-20 09:13:58'),
(336, 'App\\Models\\Item', '143', 'images', 'public', '2024-10-20 09:13:58', '2024-10-20 09:13:58'),
(337, 'App\\Models\\Item', '144', 'image', 'public', '2024-10-20 09:16:35', '2024-10-20 09:16:35'),
(338, 'App\\Models\\Item', '144', 'images', 'public', '2024-10-20 09:16:35', '2024-10-20 09:16:35'),
(339, 'App\\Models\\Item', '145', 'image', 'public', '2024-10-20 09:23:36', '2024-10-20 09:23:36'),
(340, 'App\\Models\\Item', '145', 'images', 'public', '2024-10-20 09:23:36', '2024-10-20 09:23:36'),
(341, 'App\\Models\\Item', '146', 'image', 'public', '2024-10-20 09:25:16', '2024-10-20 09:25:16'),
(342, 'App\\Models\\Item', '146', 'images', 'public', '2024-10-20 09:25:16', '2024-10-20 09:25:16'),
(343, 'App\\Models\\Item', '147', 'image', 'public', '2024-10-20 09:27:22', '2024-10-20 09:27:22'),
(344, 'App\\Models\\Item', '147', 'images', 'public', '2024-10-20 09:27:22', '2024-10-20 09:27:22'),
(345, 'App\\Models\\Item', '148', 'image', 'public', '2024-10-20 10:11:50', '2024-10-20 10:11:50'),
(346, 'App\\Models\\Item', '148', 'images', 'public', '2024-10-20 10:11:50', '2024-10-20 10:11:50'),
(347, 'App\\Models\\Item', '149', 'image', 'public', '2024-10-20 10:12:47', '2024-10-20 10:12:47'),
(348, 'App\\Models\\Item', '149', 'images', 'public', '2024-10-20 10:12:47', '2024-10-20 10:12:47'),
(349, 'App\\Models\\Item', '150', 'image', 'public', '2024-10-20 10:14:17', '2024-10-20 10:14:17'),
(350, 'App\\Models\\Item', '150', 'images', 'public', '2024-10-20 10:14:17', '2024-10-20 10:14:17'),
(351, 'App\\Models\\Item', '151', 'image', 'public', '2024-10-20 10:15:08', '2024-10-20 10:15:08'),
(352, 'App\\Models\\Item', '151', 'images', 'public', '2024-10-20 10:15:08', '2024-10-20 10:15:08'),
(353, 'App\\Models\\Item', '152', 'image', 'public', '2024-10-20 10:17:31', '2024-10-20 10:17:31'),
(354, 'App\\Models\\Item', '152', 'images', 'public', '2024-10-20 10:17:31', '2024-10-20 10:17:31'),
(355, 'App\\Models\\Item', '153', 'image', 'public', '2024-10-20 10:19:07', '2024-10-20 10:19:07'),
(356, 'App\\Models\\Item', '153', 'images', 'public', '2024-10-20 10:19:07', '2024-10-20 10:19:07'),
(357, 'App\\Models\\Item', '154', 'image', 'public', '2024-10-20 10:20:00', '2024-10-20 10:20:00'),
(358, 'App\\Models\\Item', '154', 'images', 'public', '2024-10-20 10:20:00', '2024-10-20 10:20:00'),
(359, 'App\\Models\\Item', '155', 'image', 'public', '2024-10-21 09:27:01', '2024-10-21 09:27:01'),
(360, 'App\\Models\\Item', '155', 'images', 'public', '2024-10-21 09:27:01', '2024-10-21 09:27:01'),
(361, 'App\\Models\\Item', '156', 'image', 'public', '2024-10-21 09:31:24', '2024-10-21 09:31:24'),
(362, 'App\\Models\\Item', '156', 'images', 'public', '2024-10-21 09:31:24', '2024-10-21 09:31:24'),
(363, 'App\\Models\\Item', '157', 'image', 'public', '2024-10-21 09:34:36', '2024-10-21 09:34:36'),
(364, 'App\\Models\\Item', '157', 'images', 'public', '2024-10-21 09:34:36', '2024-10-21 09:34:36'),
(365, 'App\\Models\\Item', '158', 'image', 'public', '2024-10-21 09:44:53', '2024-10-21 09:44:53'),
(366, 'App\\Models\\Item', '158', 'images', 'public', '2024-10-21 09:44:53', '2024-10-21 09:44:53'),
(367, 'App\\Models\\Item', '159', 'image', 'public', '2024-10-21 09:47:41', '2024-10-21 09:47:41'),
(368, 'App\\Models\\Item', '159', 'images', 'public', '2024-10-21 09:47:41', '2024-10-21 09:47:41'),
(369, 'App\\Models\\Item', '160', 'image', 'public', '2024-10-20 10:34:07', '2024-10-20 10:34:07'),
(370, 'App\\Models\\Item', '160', 'images', 'public', '2024-10-20 10:34:07', '2024-10-20 10:34:07'),
(371, 'App\\Models\\Item', '161', 'image', 'public', '2024-10-20 10:35:11', '2024-10-20 10:35:11'),
(372, 'App\\Models\\Item', '161', 'images', 'public', '2024-10-20 10:35:11', '2024-10-20 10:35:11'),
(373, 'App\\Models\\Item', '162', 'image', 'public', '2024-10-20 10:35:55', '2024-10-20 10:35:55'),
(374, 'App\\Models\\Item', '162', 'images', 'public', '2024-10-20 10:35:55', '2024-10-20 10:35:55'),
(375, 'App\\Models\\Item', '163', 'image', 'public', '2024-10-20 10:47:34', '2024-10-20 10:47:34'),
(376, 'App\\Models\\Item', '163', 'images', 'public', '2024-10-20 10:47:34', '2024-10-20 10:47:34'),
(377, 'App\\Models\\Item', '164', 'image', 'public', '2024-10-20 10:48:27', '2024-10-20 10:48:27'),
(378, 'App\\Models\\Item', '164', 'images', 'public', '2024-10-20 10:48:27', '2024-10-20 10:48:27'),
(379, 'App\\Models\\Item', '165', 'image', 'public', '2024-10-20 10:49:40', '2024-10-20 10:49:40'),
(380, 'App\\Models\\Item', '165', 'images', 'public', '2024-10-20 10:49:40', '2024-10-20 10:49:40'),
(381, 'App\\Models\\Item', '166', 'image', 'public', '2024-10-20 10:50:56', '2024-10-20 10:50:56'),
(382, 'App\\Models\\Item', '166', 'images', 'public', '2024-10-20 10:50:56', '2024-10-20 10:50:56'),
(383, 'App\\Models\\Item', '167', 'image', 'public', '2024-10-20 10:51:55', '2024-10-20 10:51:55'),
(384, 'App\\Models\\Item', '167', 'images', 'public', '2024-10-20 10:51:55', '2024-10-20 10:51:55'),
(385, 'App\\Models\\Item', '168', 'image', 'public', '2024-10-20 10:53:06', '2024-10-20 10:53:06'),
(386, 'App\\Models\\Item', '168', 'images', 'public', '2024-10-20 10:53:06', '2024-10-20 10:53:06'),
(387, 'App\\Models\\Item', '169', 'image', 'public', '2024-10-20 10:54:02', '2024-10-20 10:54:02'),
(388, 'App\\Models\\Item', '169', 'images', 'public', '2024-10-20 10:54:02', '2024-10-20 10:54:02'),
(389, 'App\\Models\\Item', '170', 'image', 'public', '2024-10-20 10:55:20', '2024-10-20 10:55:20'),
(390, 'App\\Models\\Item', '170', 'images', 'public', '2024-10-20 10:55:20', '2024-10-20 10:55:20'),
(391, 'App\\Models\\Item', '171', 'image', 'public', '2024-10-20 10:56:19', '2024-10-20 10:56:19'),
(392, 'App\\Models\\Item', '171', 'images', 'public', '2024-10-20 10:56:19', '2024-10-20 10:56:19'),
(393, 'App\\Models\\Item', '172', 'image', 'public', '2024-10-20 10:57:18', '2024-10-20 10:57:18'),
(394, 'App\\Models\\Item', '172', 'images', 'public', '2024-10-20 10:57:18', '2024-10-20 10:57:18'),
(395, 'App\\Models\\Item', '173', 'image', 'public', '2024-10-20 10:58:14', '2024-10-20 10:58:14'),
(396, 'App\\Models\\Item', '173', 'images', 'public', '2024-10-20 10:58:14', '2024-10-20 10:58:14'),
(397, 'App\\Models\\Item', '174', 'image', 'public', '2024-10-20 10:59:06', '2024-10-20 10:59:06'),
(398, 'App\\Models\\Item', '174', 'images', 'public', '2024-10-20 10:59:06', '2024-10-20 10:59:06'),
(399, 'App\\Models\\Item', '175', 'image', 'public', '2024-10-20 10:59:51', '2024-10-20 10:59:51'),
(400, 'App\\Models\\Item', '175', 'images', 'public', '2024-10-20 11:00:09', '2024-10-20 11:00:09'),
(401, 'App\\Models\\Item', '176', 'image', 'public', '2024-10-20 11:12:57', '2024-10-20 11:12:57'),
(402, 'App\\Models\\Item', '176', 'images', 'public', '2024-10-20 11:12:57', '2024-10-20 11:12:57'),
(403, 'App\\Models\\Item', '177', 'image', 'public', '2024-10-20 11:13:55', '2024-10-20 11:13:55'),
(404, 'App\\Models\\Item', '177', 'images', 'public', '2024-10-20 11:13:55', '2024-10-20 11:13:55'),
(405, 'App\\Models\\Item', '178', 'image', 'public', '2024-10-20 11:15:02', '2024-10-20 11:15:02'),
(406, 'App\\Models\\Item', '178', 'images', 'public', '2024-10-20 11:15:02', '2024-10-20 11:15:02'),
(407, 'App\\Models\\Item', '179', 'image', 'public', '2024-10-20 11:15:48', '2024-10-20 11:15:48'),
(408, 'App\\Models\\Item', '179', 'images', 'public', '2024-10-20 11:15:48', '2024-10-20 11:15:48'),
(409, 'App\\Models\\Item', '180', 'image', 'public', '2024-10-20 11:16:52', '2024-10-20 11:16:52'),
(410, 'App\\Models\\Item', '180', 'images', 'public', '2024-10-20 11:16:52', '2024-10-20 11:16:52'),
(411, 'App\\Models\\Item', '181', 'image', 'public', '2024-10-20 11:17:56', '2024-10-20 11:17:56'),
(412, 'App\\Models\\Item', '181', 'images', 'public', '2024-10-20 11:17:56', '2024-10-20 11:17:56'),
(413, 'App\\Models\\Item', '182', 'image', 'public', '2024-10-20 11:19:09', '2024-10-20 11:19:09'),
(414, 'App\\Models\\Item', '182', 'images', 'public', '2024-10-20 11:19:09', '2024-10-20 11:19:09'),
(415, 'App\\Models\\Item', '183', 'image', 'public', '2024-10-20 11:20:12', '2024-10-20 11:20:12'),
(416, 'App\\Models\\Item', '183', 'images', 'public', '2024-10-20 11:20:12', '2024-10-20 11:20:12'),
(417, 'App\\Models\\Item', '184', 'image', 'public', '2024-10-20 11:21:06', '2024-10-20 11:21:06'),
(418, 'App\\Models\\Item', '184', 'images', 'public', '2024-10-20 11:21:06', '2024-10-20 11:21:06'),
(419, 'App\\Models\\Item', '185', 'image', 'public', '2024-10-20 11:21:49', '2024-10-20 11:21:49'),
(420, 'App\\Models\\Item', '185', 'images', 'public', '2024-10-20 11:21:49', '2024-10-20 11:21:49'),
(421, 'App\\Models\\Item', '186', 'image', 'public', '2024-10-20 18:12:23', '2024-10-20 18:12:23'),
(422, 'App\\Models\\Item', '186', 'images', 'public', '2024-10-20 18:12:23', '2024-10-20 18:12:23'),
(423, 'App\\Models\\Item', '187', 'image', 'public', '2024-10-20 18:13:24', '2024-10-20 18:13:24'),
(424, 'App\\Models\\Item', '187', 'images', 'public', '2024-10-20 18:13:24', '2024-10-20 18:13:24'),
(425, 'App\\Models\\Item', '188', 'image', 'public', '2024-10-20 18:14:23', '2024-10-20 18:14:23'),
(426, 'App\\Models\\Item', '188', 'images', 'public', '2024-10-20 18:14:23', '2024-10-20 18:14:23'),
(427, 'App\\Models\\Item', '189', 'image', 'public', '2024-10-20 18:15:12', '2024-10-20 18:15:12'),
(428, 'App\\Models\\Item', '189', 'images', 'public', '2024-10-20 18:15:12', '2024-10-20 18:15:12'),
(429, 'App\\Models\\Item', '190', 'image', 'public', '2024-10-20 18:16:02', '2024-10-20 18:16:02'),
(430, 'App\\Models\\Item', '190', 'images', 'public', '2024-10-20 18:16:02', '2024-10-20 18:16:02'),
(431, 'App\\Models\\Item', '191', 'image', 'public', '2024-10-20 18:16:44', '2024-10-20 18:16:44'),
(432, 'App\\Models\\Item', '191', 'images', 'public', '2024-10-20 18:16:44', '2024-10-20 18:16:44'),
(433, 'App\\Models\\Item', '192', 'image', 'public', '2024-10-20 18:18:17', '2024-10-20 18:18:17'),
(434, 'App\\Models\\Item', '192', 'images', 'public', '2024-10-20 18:18:17', '2024-10-20 18:18:17'),
(435, 'App\\Models\\Item', '193', 'image', 'public', '2024-10-20 18:32:38', '2024-10-20 18:32:38'),
(436, 'App\\Models\\Item', '193', 'images', 'public', '2024-10-20 18:32:38', '2024-10-20 18:32:38'),
(437, 'App\\Models\\Item', '194', 'image', 'public', '2024-10-20 18:33:59', '2024-10-20 18:33:59'),
(438, 'App\\Models\\Item', '194', 'images', 'public', '2024-10-20 18:35:07', '2024-10-20 18:35:07'),
(439, 'App\\Models\\Item', '195', 'image', 'public', '2024-10-20 18:34:57', '2024-10-20 18:34:57'),
(440, 'App\\Models\\Item', '195', 'images', 'public', '2024-10-20 18:34:57', '2024-10-20 18:34:57'),
(441, 'App\\Models\\Item', '196', 'image', 'public', '2024-10-20 18:36:09', '2024-10-20 18:36:09'),
(442, 'App\\Models\\Item', '196', 'images', 'public', '2024-10-20 18:36:09', '2024-10-20 18:36:09'),
(443, 'App\\Models\\Item', '197', 'image', 'public', '2024-10-20 18:37:01', '2024-10-20 18:37:01'),
(444, 'App\\Models\\Item', '197', 'images', 'public', '2024-10-20 18:37:01', '2024-10-20 18:37:01'),
(445, 'App\\Models\\Item', '198', 'image', 'public', '2024-10-20 18:37:53', '2024-10-20 18:37:53'),
(446, 'App\\Models\\Item', '198', 'images', 'public', '2024-10-20 18:37:53', '2024-10-20 18:37:53'),
(447, 'App\\Models\\Item', '199', 'image', 'public', '2024-10-20 18:39:00', '2024-10-20 18:39:00'),
(448, 'App\\Models\\Item', '199', 'images', 'public', '2024-10-20 18:39:00', '2024-10-20 18:39:00'),
(449, 'App\\Models\\Item', '200', 'image', 'public', '2024-10-20 18:39:49', '2024-10-20 18:39:49'),
(450, 'App\\Models\\Item', '200', 'images', 'public', '2024-10-20 18:39:49', '2024-10-20 18:39:49'),
(451, 'App\\Models\\Item', '201', 'image', 'public', '2024-10-20 18:46:03', '2024-10-20 18:46:03'),
(452, 'App\\Models\\Item', '201', 'images', 'public', '2024-10-20 18:46:03', '2024-10-20 18:46:03'),
(453, 'App\\Models\\Item', '202', 'image', 'public', '2024-10-20 18:46:49', '2024-10-20 18:46:49'),
(454, 'App\\Models\\Item', '202', 'images', 'public', '2024-10-20 18:47:41', '2024-10-20 18:47:41'),
(455, 'App\\Models\\Item', '203', 'image', 'public', '2024-10-20 18:47:32', '2024-10-20 18:47:32'),
(456, 'App\\Models\\Item', '203', 'images', 'public', '2024-10-20 18:47:32', '2024-10-20 18:47:32'),
(457, 'App\\Models\\Item', '204', 'image', 'public', '2024-10-20 18:48:38', '2024-10-20 18:48:38'),
(458, 'App\\Models\\Item', '204', 'images', 'public', '2024-10-20 18:48:38', '2024-10-20 18:48:38'),
(459, 'App\\Models\\Item', '205', 'image', 'public', '2024-10-20 18:49:22', '2024-10-20 18:49:22'),
(460, 'App\\Models\\Item', '205', 'images', 'public', '2024-10-20 18:49:22', '2024-10-20 18:49:22'),
(461, 'App\\Models\\Item', '206', 'image', 'public', '2024-10-20 18:50:03', '2024-10-20 18:50:03'),
(462, 'App\\Models\\Item', '206', 'images', 'public', '2024-10-20 18:50:03', '2024-10-20 18:50:03'),
(463, 'App\\Models\\Item', '207', 'image', 'public', '2024-10-20 18:50:45', '2024-10-20 18:50:45'),
(464, 'App\\Models\\Item', '207', 'images', 'public', '2024-10-20 18:50:45', '2024-10-20 18:50:45'),
(465, 'App\\Models\\Item', '208', 'image', 'public', '2024-10-20 18:59:52', '2024-10-20 18:59:52'),
(466, 'App\\Models\\Item', '208', 'images', 'public', '2024-10-20 18:59:52', '2024-10-20 18:59:52'),
(467, 'App\\Models\\Item', '209', 'image', 'public', '2024-10-20 19:00:52', '2024-10-20 19:00:52'),
(468, 'App\\Models\\Item', '209', 'images', 'public', '2024-10-20 19:02:02', '2024-10-20 19:02:02'),
(469, 'App\\Models\\Item', '210', 'image', 'public', '2024-10-20 19:01:52', '2024-10-20 19:01:52'),
(470, 'App\\Models\\Item', '210', 'images', 'public', '2024-10-20 19:01:52', '2024-10-20 19:01:52'),
(471, 'App\\Models\\Item', '211', 'image', 'public', '2024-10-20 19:04:16', '2024-10-20 19:04:16'),
(472, 'App\\Models\\Item', '211', 'images', 'public', '2024-10-20 19:04:16', '2024-10-20 19:04:16'),
(473, 'App\\Models\\Item', '212', 'image', 'public', '2024-10-20 19:05:15', '2024-10-20 19:05:15'),
(474, 'App\\Models\\Item', '212', 'images', 'public', '2024-10-20 19:05:15', '2024-10-20 19:05:15'),
(475, 'App\\Models\\Item', '213', 'image', 'public', '2024-10-20 19:06:31', '2024-10-20 19:06:31'),
(476, 'App\\Models\\Item', '213', 'images', 'public', '2024-10-20 19:06:31', '2024-10-20 19:06:31'),
(477, 'App\\Models\\Item', '214', 'image', 'public', '2024-10-20 19:07:17', '2024-10-20 19:07:17'),
(478, 'App\\Models\\Item', '214', 'images', 'public', '2024-10-20 19:07:17', '2024-10-20 19:07:17'),
(479, 'App\\Models\\Item', '215', 'image', 'public', '2024-10-20 19:08:05', '2024-10-20 19:08:05'),
(480, 'App\\Models\\Item', '215', 'images', 'public', '2024-10-20 19:08:05', '2024-10-20 19:08:05'),
(481, 'App\\Models\\Item', '216', 'image', 'public', '2024-10-20 19:08:47', '2024-10-20 19:08:47'),
(482, 'App\\Models\\Item', '216', 'images', 'public', '2024-10-20 19:08:47', '2024-10-20 19:08:47'),
(483, 'App\\Models\\Item', '217', 'image', 'public', '2024-10-20 19:24:05', '2024-10-20 19:24:05'),
(484, 'App\\Models\\Item', '217', 'images', 'public', '2024-10-20 19:26:04', '2024-10-20 19:26:04'),
(485, 'App\\Models\\Item', '218', 'image', 'public', '2024-10-20 19:24:58', '2024-10-20 19:24:58'),
(486, 'App\\Models\\Item', '218', 'images', 'public', '2024-10-20 19:26:26', '2024-10-20 19:26:26'),
(487, 'App\\Models\\Item', '219', 'image', 'public', '2024-10-20 19:25:46', '2024-10-20 19:25:46'),
(488, 'App\\Models\\Item', '219', 'images', 'public', '2024-10-20 19:25:46', '2024-10-20 19:25:46'),
(489, 'App\\Models\\Item', '220', 'image', 'public', '2024-10-20 19:29:52', '2024-10-20 19:29:52'),
(490, 'App\\Models\\Item', '220', 'images', 'public', '2024-10-20 19:29:52', '2024-10-20 19:29:52'),
(491, 'App\\Models\\Item', '221', 'image', 'public', '2024-10-20 19:30:40', '2024-10-20 19:30:40'),
(492, 'App\\Models\\Item', '221', 'images', 'public', '2024-10-20 19:30:40', '2024-10-20 19:30:40'),
(493, 'App\\Models\\Item', '222', 'image', 'public', '2024-10-20 19:31:28', '2024-10-20 19:31:28'),
(494, 'App\\Models\\Item', '222', 'images', 'public', '2024-10-20 19:31:28', '2024-10-20 19:31:28'),
(495, 'App\\Models\\Item', '223', 'image', 'public', '2024-10-20 19:32:18', '2024-10-20 19:32:18'),
(496, 'App\\Models\\Item', '223', 'images', 'public', '2024-10-20 19:32:18', '2024-10-20 19:32:18'),
(497, 'App\\Models\\Item', '224', 'image', 'public', '2024-10-20 19:33:08', '2024-10-20 19:33:08'),
(498, 'App\\Models\\Item', '224', 'images', 'public', '2024-10-20 19:33:08', '2024-10-20 19:33:08'),
(499, 'App\\Models\\Item', '225', 'image', 'public', '2024-10-20 19:34:17', '2024-10-20 19:34:17'),
(500, 'App\\Models\\Item', '225', 'images', 'public', '2024-10-20 19:34:17', '2024-10-20 19:34:17'),
(501, 'App\\Models\\Item', '226', 'image', 'public', '2024-10-20 19:35:14', '2024-10-20 19:35:14'),
(502, 'App\\Models\\Item', '226', 'images', 'public', '2024-10-20 19:35:14', '2024-10-20 19:35:14'),
(503, 'App\\Models\\Item', '227', 'image', 'public', '2024-10-20 19:36:04', '2024-10-20 19:36:04'),
(504, 'App\\Models\\Item', '227', 'images', 'public', '2024-10-20 19:36:04', '2024-10-20 19:36:04'),
(505, 'App\\Models\\Item', '228', 'image', 'public', '2024-10-20 19:36:51', '2024-10-20 19:36:51'),
(506, 'App\\Models\\Item', '228', 'images', 'public', '2024-10-20 19:36:51', '2024-10-20 19:36:51'),
(507, 'App\\Models\\Item', '229', 'image', 'public', '2024-10-20 19:41:22', '2024-10-20 19:41:22'),
(508, 'App\\Models\\Item', '229', 'images', 'public', '2024-10-20 19:41:22', '2024-10-20 19:41:22');
INSERT INTO `storages` (`id`, `data_type`, `data_id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(509, 'App\\Models\\Item', '230', 'image', 'public', '2024-10-20 19:42:24', '2024-10-20 19:42:24'),
(510, 'App\\Models\\Item', '230', 'images', 'public', '2024-10-20 19:42:24', '2024-10-20 19:42:24'),
(511, 'App\\Models\\Item', '231', 'image', 'public', '2024-10-20 19:43:20', '2024-10-20 19:43:20'),
(512, 'App\\Models\\Item', '231', 'images', 'public', '2024-10-20 19:43:20', '2024-10-20 19:43:20'),
(513, 'App\\Models\\Item', '232', 'image', 'public', '2024-10-21 13:28:23', '2024-10-21 13:28:23'),
(514, 'App\\Models\\Item', '232', 'images', 'public', '2024-10-21 13:28:23', '2024-10-21 13:28:23'),
(515, 'App\\Models\\Item', '233', 'image', 'public', '2024-10-21 13:29:27', '2024-10-21 13:29:27'),
(516, 'App\\Models\\Item', '233', 'images', 'public', '2024-10-21 13:29:27', '2024-10-21 13:29:27'),
(517, 'App\\Models\\Item', '234', 'image', 'public', '2024-10-21 13:30:46', '2024-10-21 13:30:46'),
(518, 'App\\Models\\Item', '234', 'images', 'public', '2024-10-21 13:30:46', '2024-10-21 13:30:46'),
(519, 'App\\Models\\Item', '235', 'image', 'public', '2024-10-21 13:32:33', '2024-10-21 13:32:33'),
(520, 'App\\Models\\Item', '235', 'images', 'public', '2024-10-21 13:32:33', '2024-10-21 13:32:33'),
(521, 'App\\Models\\Item', '236', 'image', 'public', '2024-10-21 13:38:12', '2024-10-21 13:38:12'),
(522, 'App\\Models\\Item', '236', 'images', 'public', '2024-10-21 13:38:12', '2024-10-21 13:38:12'),
(523, 'App\\Models\\Item', '237', 'image', 'public', '2024-10-21 13:39:21', '2024-10-21 13:39:21'),
(524, 'App\\Models\\Item', '237', 'images', 'public', '2024-10-21 13:39:21', '2024-10-21 13:39:21'),
(525, 'App\\Models\\Item', '238', 'image', 'public', '2024-10-21 13:40:28', '2024-10-21 13:40:28'),
(526, 'App\\Models\\Item', '238', 'images', 'public', '2024-10-21 13:40:28', '2024-10-21 13:40:28'),
(527, 'App\\Models\\Item', '239', 'image', 'public', '2024-10-21 13:42:04', '2024-10-21 13:42:04'),
(528, 'App\\Models\\Item', '239', 'images', 'public', '2024-10-21 13:42:04', '2024-10-21 13:42:04'),
(529, 'App\\Models\\Item', '240', 'image', 'public', '2024-10-21 13:47:35', '2024-10-21 13:47:35'),
(530, 'App\\Models\\Item', '240', 'images', 'public', '2024-10-21 13:47:35', '2024-10-21 13:47:35'),
(531, 'App\\Models\\Item', '241', 'image', 'public', '2024-10-21 13:48:34', '2024-10-21 13:48:34'),
(532, 'App\\Models\\Item', '241', 'images', 'public', '2024-10-21 13:48:34', '2024-10-21 13:48:34'),
(533, 'App\\Models\\Item', '242', 'image', 'public', '2024-10-21 13:50:12', '2024-10-21 13:50:12'),
(534, 'App\\Models\\Item', '242', 'images', 'public', '2024-10-21 13:50:12', '2024-10-21 13:50:12'),
(535, 'App\\Models\\Item', '243', 'image', 'public', '2024-10-21 13:51:13', '2024-10-21 13:51:13'),
(536, 'App\\Models\\Item', '243', 'images', 'public', '2024-10-21 13:51:13', '2024-10-21 13:51:13'),
(537, 'App\\Models\\Item', '244', 'image', 'public', '2024-10-21 13:52:16', '2024-10-21 13:52:16'),
(538, 'App\\Models\\Item', '244', 'images', 'public', '2024-10-21 13:52:16', '2024-10-21 13:52:16'),
(539, 'App\\Models\\Item', '245', 'image', 'public', '2024-10-21 13:56:10', '2024-10-21 13:56:10'),
(540, 'App\\Models\\Item', '245', 'images', 'public', '2024-10-21 13:56:10', '2024-10-21 13:56:10'),
(541, 'App\\Models\\Item', '246', 'image', 'public', '2024-10-21 13:57:28', '2024-10-21 13:57:28'),
(542, 'App\\Models\\Item', '246', 'images', 'public', '2024-10-21 13:57:28', '2024-10-21 13:57:28'),
(543, 'App\\Models\\Item', '247', 'image', 'public', '2024-10-21 13:58:33', '2024-10-21 13:58:33'),
(544, 'App\\Models\\Item', '247', 'images', 'public', '2024-10-21 13:58:33', '2024-10-21 13:58:33'),
(545, 'App\\Models\\Item', '248', 'image', 'public', '2024-10-21 13:59:42', '2024-10-21 13:59:42'),
(546, 'App\\Models\\Item', '248', 'images', 'public', '2024-10-21 13:59:42', '2024-10-21 13:59:42'),
(547, 'App\\Models\\Item', '249', 'image', 'public', '2024-10-21 14:01:12', '2024-10-21 14:01:12'),
(548, 'App\\Models\\Item', '249', 'images', 'public', '2024-10-21 14:01:12', '2024-10-21 14:01:12'),
(549, 'App\\Models\\Item', '250', 'image', 'public', '2024-10-21 14:06:05', '2024-10-21 14:06:05'),
(550, 'App\\Models\\Item', '250', 'images', 'public', '2024-10-21 14:06:05', '2024-10-21 14:06:05'),
(551, 'App\\Models\\Item', '251', 'image', 'public', '2024-10-21 14:06:53', '2024-10-21 14:06:53'),
(552, 'App\\Models\\Item', '251', 'images', 'public', '2024-10-21 14:06:53', '2024-10-21 14:06:53'),
(553, 'App\\Models\\Item', '252', 'image', 'public', '2024-10-21 14:08:25', '2024-10-21 14:08:25'),
(554, 'App\\Models\\Item', '252', 'images', 'public', '2024-10-21 14:08:25', '2024-10-21 14:08:25'),
(555, 'App\\Models\\Item', '253', 'image', 'public', '2024-10-21 14:09:45', '2024-10-21 14:09:45'),
(556, 'App\\Models\\Item', '253', 'images', 'public', '2024-10-21 14:09:45', '2024-10-21 14:09:45'),
(557, 'App\\Models\\Item', '254', 'image', 'public', '2024-10-21 14:10:57', '2024-10-21 14:10:57'),
(558, 'App\\Models\\Item', '254', 'images', 'public', '2024-10-21 14:10:57', '2024-10-21 14:10:57'),
(559, 'App\\Models\\Item', '255', 'image', 'public', '2024-10-21 14:12:15', '2024-10-21 14:12:15'),
(560, 'App\\Models\\Item', '255', 'images', 'public', '2024-10-21 14:12:15', '2024-10-21 14:12:15'),
(561, 'App\\Models\\Item', '256', 'image', 'public', '2024-10-21 14:14:11', '2024-10-21 14:14:11'),
(562, 'App\\Models\\Item', '256', 'images', 'public', '2024-10-21 14:14:11', '2024-10-21 14:14:11'),
(563, 'App\\Models\\Item', '257', 'image', 'public', '2024-10-21 14:15:18', '2024-10-21 14:15:18'),
(564, 'App\\Models\\Item', '257', 'images', 'public', '2024-10-21 14:15:18', '2024-10-21 14:15:18'),
(565, 'App\\Models\\Item', '258', 'image', 'public', '2024-10-21 14:16:16', '2024-10-21 14:16:16'),
(566, 'App\\Models\\Item', '258', 'images', 'public', '2024-10-21 14:16:16', '2024-10-21 14:16:16'),
(567, 'App\\Models\\Item', '259', 'image', 'public', '2024-10-21 14:17:22', '2024-10-21 14:17:22'),
(568, 'App\\Models\\Item', '259', 'images', 'public', '2024-10-21 14:17:22', '2024-10-21 14:17:22'),
(569, 'App\\Models\\Item', '260', 'image', 'public', '2024-10-21 14:24:26', '2024-10-21 14:24:26'),
(570, 'App\\Models\\Item', '260', 'images', 'public', '2024-10-21 14:24:26', '2024-10-21 14:24:26'),
(571, 'App\\Models\\Item', '261', 'image', 'public', '2024-10-21 14:30:28', '2024-10-21 14:30:28'),
(572, 'App\\Models\\Item', '261', 'images', 'public', '2024-10-21 14:30:28', '2024-10-21 14:30:28'),
(573, 'App\\Models\\Item', '262', 'image', 'public', '2024-10-21 14:31:58', '2024-10-21 14:31:58'),
(574, 'App\\Models\\Item', '262', 'images', 'public', '2024-10-21 14:31:58', '2024-10-21 14:31:58'),
(575, 'App\\Models\\Item', '263', 'image', 'public', '2024-10-21 14:34:00', '2024-10-21 14:34:00'),
(576, 'App\\Models\\Item', '263', 'images', 'public', '2024-10-21 14:34:00', '2024-10-21 14:34:00'),
(577, 'App\\Models\\Item', '264', 'image', 'public', '2024-10-21 14:35:26', '2024-10-21 14:35:26'),
(578, 'App\\Models\\Item', '264', 'images', 'public', '2024-10-21 14:35:26', '2024-10-21 14:35:26'),
(579, 'App\\Models\\Item', '265', 'image', 'public', '2024-10-21 14:36:43', '2024-10-21 14:36:43'),
(580, 'App\\Models\\Item', '265', 'images', 'public', '2024-10-21 14:36:43', '2024-10-21 14:36:43'),
(581, 'App\\Models\\Item', '266', 'image', 'public', '2024-10-21 14:37:57', '2024-10-21 14:37:57'),
(582, 'App\\Models\\Item', '266', 'images', 'public', '2024-10-21 14:37:57', '2024-10-21 14:37:57'),
(583, 'App\\Models\\Item', '267', 'image', 'public', '2024-10-21 14:39:10', '2024-10-21 14:39:10'),
(584, 'App\\Models\\Item', '267', 'images', 'public', '2024-10-21 14:39:10', '2024-10-21 14:39:10'),
(585, 'App\\Models\\Item', '268', 'image', 'public', '2024-10-21 14:45:58', '2024-10-21 14:45:58'),
(586, 'App\\Models\\Item', '268', 'images', 'public', '2024-10-21 14:45:58', '2024-10-21 14:45:58'),
(587, 'App\\Models\\Item', '269', 'image', 'public', '2024-10-21 14:50:57', '2024-10-21 14:50:57'),
(588, 'App\\Models\\Item', '269', 'images', 'public', '2024-10-21 14:50:57', '2024-10-21 14:50:57'),
(589, 'App\\Models\\Item', '270', 'image', 'public', '2024-10-21 14:52:53', '2024-10-21 14:52:53'),
(590, 'App\\Models\\Item', '270', 'images', 'public', '2024-10-21 14:52:53', '2024-10-21 14:52:53'),
(591, 'App\\Models\\Item', '271', 'image', 'public', '2024-10-21 14:54:19', '2024-10-21 14:54:19'),
(592, 'App\\Models\\Item', '271', 'images', 'public', '2024-10-21 14:54:19', '2024-10-21 14:54:19'),
(593, 'App\\Models\\Item', '272', 'image', 'public', '2024-10-21 14:55:26', '2024-10-21 14:55:26'),
(594, 'App\\Models\\Item', '272', 'images', 'public', '2024-10-21 14:55:26', '2024-10-21 14:55:26'),
(595, 'App\\Models\\Item', '273', 'image', 'public', '2024-10-21 14:56:34', '2024-10-21 14:56:34'),
(596, 'App\\Models\\Item', '273', 'images', 'public', '2024-10-21 14:56:34', '2024-10-21 14:56:34'),
(597, 'App\\Models\\Item', '274', 'image', 'public', '2024-10-21 19:47:20', '2024-10-21 19:47:20'),
(598, 'App\\Models\\Item', '274', 'images', 'public', '2024-10-21 19:47:20', '2024-10-21 19:47:20'),
(599, 'App\\Models\\Item', '275', 'image', 'public', '2024-10-21 19:48:47', '2024-10-21 19:48:47'),
(600, 'App\\Models\\Item', '275', 'images', 'public', '2024-10-21 19:48:47', '2024-10-21 19:48:47'),
(601, 'App\\Models\\Item', '276', 'image', 'public', '2024-10-21 19:50:42', '2024-10-21 19:50:42'),
(602, 'App\\Models\\Item', '276', 'images', 'public', '2024-10-21 19:50:42', '2024-10-21 19:50:42'),
(603, 'App\\Models\\Item', '277', 'image', 'public', '2024-10-21 19:55:45', '2024-10-21 19:55:45'),
(604, 'App\\Models\\Item', '277', 'images', 'public', '2024-10-21 19:55:45', '2024-10-21 19:55:45'),
(605, 'App\\Models\\Item', '278', 'image', 'public', '2024-10-21 19:57:01', '2024-10-21 19:57:01'),
(606, 'App\\Models\\Item', '278', 'images', 'public', '2024-10-21 19:57:01', '2024-10-21 19:57:01'),
(607, 'App\\Models\\Item', '279', 'image', 'public', '2024-10-21 19:58:16', '2024-10-21 19:58:16'),
(608, 'App\\Models\\Item', '279', 'images', 'public', '2024-10-21 19:58:16', '2024-10-21 19:58:16'),
(609, 'App\\Models\\Item', '280', 'image', 'public', '2024-10-21 19:59:37', '2024-10-21 19:59:37'),
(610, 'App\\Models\\Item', '280', 'images', 'public', '2024-10-21 19:59:37', '2024-10-21 19:59:37'),
(611, 'App\\Models\\Item', '281', 'image', 'public', '2024-10-21 20:10:35', '2024-10-21 20:10:35'),
(612, 'App\\Models\\Item', '281', 'images', 'public', '2024-10-21 20:10:35', '2024-10-21 20:10:35'),
(613, 'App\\Models\\Item', '282', 'image', 'public', '2024-10-21 20:11:23', '2024-10-21 20:11:23'),
(614, 'App\\Models\\Item', '282', 'images', 'public', '2024-10-21 20:11:23', '2024-10-21 20:11:23'),
(615, 'App\\Models\\Item', '283', 'image', 'public', '2024-10-21 20:12:38', '2024-10-21 20:12:38'),
(616, 'App\\Models\\Item', '283', 'images', 'public', '2024-10-21 20:12:38', '2024-10-21 20:12:38'),
(617, 'App\\Models\\Item', '284', 'image', 'public', '2024-10-21 20:13:34', '2024-10-21 20:13:34'),
(618, 'App\\Models\\Item', '284', 'images', 'public', '2024-10-21 20:13:34', '2024-10-21 20:13:34'),
(619, 'App\\Models\\Item', '285', 'image', 'public', '2024-10-22 20:04:39', '2024-10-22 20:04:39'),
(620, 'App\\Models\\Item', '285', 'images', 'public', '2024-10-22 20:04:39', '2024-10-22 20:04:39'),
(621, 'App\\Models\\Item', '286', 'image', 'public', '2024-10-22 20:05:27', '2024-10-22 20:05:27'),
(622, 'App\\Models\\Item', '286', 'images', 'public', '2024-10-22 20:05:27', '2024-10-22 20:05:27'),
(623, 'App\\Models\\Item', '287', 'image', 'public', '2024-10-22 20:06:11', '2024-10-22 20:06:11'),
(624, 'App\\Models\\Item', '287', 'images', 'public', '2024-10-22 20:06:11', '2024-10-22 20:06:11'),
(625, 'App\\Models\\Item', '288', 'image', 'public', '2024-10-22 20:07:20', '2024-10-22 20:07:20'),
(626, 'App\\Models\\Item', '288', 'images', 'public', '2024-10-22 20:07:20', '2024-10-22 20:07:20'),
(627, 'App\\Models\\Item', '289', 'image', 'public', '2024-10-22 20:08:16', '2024-10-22 20:08:16'),
(628, 'App\\Models\\Item', '289', 'images', 'public', '2024-10-22 20:08:16', '2024-10-22 20:08:16'),
(629, 'App\\Models\\Item', '290', 'image', 'public', '2024-10-22 20:09:13', '2024-10-22 20:09:13'),
(630, 'App\\Models\\Item', '290', 'images', 'public', '2024-10-22 20:09:13', '2024-10-22 20:09:13'),
(631, 'App\\Models\\Item', '291', 'image', 'public', '2024-10-22 20:09:56', '2024-10-22 20:09:56'),
(632, 'App\\Models\\Item', '291', 'images', 'public', '2024-10-22 20:09:56', '2024-10-22 20:09:56'),
(633, 'App\\Models\\Item', '292', 'image', 'public', '2024-10-22 20:11:04', '2024-10-22 20:11:04'),
(634, 'App\\Models\\Item', '292', 'images', 'public', '2024-10-22 20:11:04', '2024-10-22 20:11:04'),
(635, 'App\\Models\\Item', '293', 'image', 'public', '2024-10-22 20:13:07', '2024-10-22 20:13:07'),
(636, 'App\\Models\\Item', '293', 'images', 'public', '2024-10-22 20:13:07', '2024-10-22 20:13:07'),
(637, 'App\\Models\\Item', '294', 'image', 'public', '2024-10-22 20:13:53', '2024-10-22 20:13:53'),
(638, 'App\\Models\\Item', '294', 'images', 'public', '2024-10-22 20:13:53', '2024-10-22 20:13:53'),
(639, 'App\\Models\\Item', '295', 'image', 'public', '2024-10-22 20:21:21', '2024-10-22 20:21:21'),
(640, 'App\\Models\\Item', '295', 'images', 'public', '2024-10-22 20:21:21', '2024-10-22 20:21:21'),
(641, 'App\\Models\\Item', '296', 'image', 'public', '2024-10-22 20:22:08', '2024-10-22 20:22:08'),
(642, 'App\\Models\\Item', '296', 'images', 'public', '2024-10-22 20:22:08', '2024-10-22 20:22:08'),
(643, 'App\\Models\\Item', '297', 'image', 'public', '2024-10-22 20:23:00', '2024-10-22 20:23:00'),
(644, 'App\\Models\\Item', '297', 'images', 'public', '2024-10-22 20:23:00', '2024-10-22 20:23:00'),
(645, 'App\\Models\\Item', '298', 'image', 'public', '2024-10-22 20:23:50', '2024-10-22 20:23:50'),
(646, 'App\\Models\\Item', '298', 'images', 'public', '2024-10-22 20:23:50', '2024-10-22 20:23:50'),
(647, 'App\\Models\\Item', '299', 'image', 'public', '2024-10-22 20:24:33', '2024-10-22 20:24:33'),
(648, 'App\\Models\\Item', '299', 'images', 'public', '2024-10-22 20:24:33', '2024-10-22 20:24:33'),
(649, 'App\\Models\\Item', '300', 'image', 'public', '2024-10-22 20:25:22', '2024-10-22 20:25:22'),
(650, 'App\\Models\\Item', '300', 'images', 'public', '2024-10-22 20:25:22', '2024-10-22 20:25:22'),
(651, 'App\\Models\\Item', '301', 'image', 'public', '2024-10-22 20:26:16', '2024-10-22 20:26:16'),
(652, 'App\\Models\\Item', '301', 'images', 'public', '2024-10-22 20:26:16', '2024-10-22 20:26:16'),
(653, 'App\\Models\\Item', '302', 'image', 'public', '2024-10-22 20:27:09', '2024-10-22 20:27:09'),
(654, 'App\\Models\\Item', '302', 'images', 'public', '2024-10-22 20:27:09', '2024-10-22 20:27:09'),
(655, 'App\\Models\\Item', '303', 'image', 'public', '2024-10-22 20:35:42', '2024-10-22 20:35:42'),
(656, 'App\\Models\\Item', '303', 'images', 'public', '2024-10-22 20:35:42', '2024-10-22 20:35:42'),
(657, 'App\\Models\\Item', '304', 'image', 'public', '2024-10-22 20:36:34', '2024-10-22 20:36:34'),
(658, 'App\\Models\\Item', '304', 'images', 'public', '2024-10-22 20:36:34', '2024-10-22 20:36:34'),
(659, 'App\\Models\\Item', '305', 'image', 'public', '2024-10-22 20:37:22', '2024-10-22 20:37:22'),
(660, 'App\\Models\\Item', '305', 'images', 'public', '2024-10-22 20:37:22', '2024-10-22 20:37:22'),
(661, 'App\\Models\\Item', '306', 'image', 'public', '2024-10-22 20:38:02', '2024-10-22 20:38:02'),
(662, 'App\\Models\\Item', '306', 'images', 'public', '2024-10-22 20:38:02', '2024-10-22 20:38:02'),
(663, 'App\\Models\\Item', '307', 'image', 'public', '2024-10-22 20:38:54', '2024-10-22 20:38:54'),
(664, 'App\\Models\\Item', '307', 'images', 'public', '2024-10-22 20:38:54', '2024-10-22 20:38:54'),
(665, 'App\\Models\\Item', '308', 'image', 'public', '2024-10-22 20:39:43', '2024-10-22 20:39:43'),
(666, 'App\\Models\\Item', '308', 'images', 'public', '2024-10-22 20:39:43', '2024-10-22 20:39:43'),
(667, 'App\\Models\\Item', '309', 'image', 'public', '2024-10-22 20:40:36', '2024-10-22 20:40:36'),
(668, 'App\\Models\\Item', '309', 'images', 'public', '2024-10-22 20:40:36', '2024-10-22 20:40:36'),
(669, 'App\\Models\\Item', '310', 'image', 'public', '2024-10-22 20:41:24', '2024-10-22 20:41:24'),
(670, 'App\\Models\\Item', '310', 'images', 'public', '2024-10-22 20:41:24', '2024-10-22 20:41:24'),
(671, 'App\\Models\\Item', '311', 'image', 'public', '2024-10-22 20:43:45', '2024-10-22 20:43:45'),
(672, 'App\\Models\\Item', '311', 'images', 'public', '2024-10-22 20:43:45', '2024-10-22 20:43:45'),
(673, 'App\\Models\\Item', '312', 'image', 'public', '2024-10-22 20:45:42', '2024-10-22 20:45:42'),
(674, 'App\\Models\\Item', '312', 'images', 'public', '2024-10-22 20:45:42', '2024-10-22 20:45:42'),
(675, 'App\\Models\\Item', '313', 'image', 'public', '2024-10-22 20:46:32', '2024-10-22 20:46:32'),
(676, 'App\\Models\\Item', '313', 'images', 'public', '2024-10-22 20:46:32', '2024-10-22 20:46:32'),
(677, 'App\\Models\\Item', '314', 'image', 'public', '2024-10-22 20:47:28', '2024-10-22 20:47:28'),
(678, 'App\\Models\\Item', '314', 'images', 'public', '2024-10-22 20:47:28', '2024-10-22 20:47:28'),
(679, 'App\\Models\\Item', '315', 'image', 'public', '2024-10-22 20:48:23', '2024-10-22 20:48:23'),
(680, 'App\\Models\\Item', '315', 'images', 'public', '2024-10-22 20:48:23', '2024-10-22 20:48:23'),
(681, 'App\\Models\\Item', '316', 'image', 'public', '2024-10-22 20:49:20', '2024-10-22 20:49:20'),
(682, 'App\\Models\\Item', '316', 'images', 'public', '2024-10-22 20:49:20', '2024-10-22 20:49:20'),
(683, 'App\\Models\\Item', '317', 'image', 'public', '2024-10-22 20:50:20', '2024-10-22 20:50:20'),
(684, 'App\\Models\\Item', '317', 'images', 'public', '2024-10-22 20:50:20', '2024-10-22 20:50:20'),
(685, 'App\\Models\\Item', '318', 'image', 'public', '2024-10-22 20:59:00', '2024-10-22 20:59:00'),
(686, 'App\\Models\\Item', '318', 'images', 'public', '2024-10-22 21:00:07', '2024-10-22 21:00:07'),
(687, 'App\\Models\\Item', '319', 'image', 'public', '2024-10-22 20:59:56', '2024-10-22 20:59:56'),
(688, 'App\\Models\\Item', '319', 'images', 'public', '2024-10-22 20:59:56', '2024-10-22 20:59:56'),
(689, 'App\\Models\\Item', '320', 'image', 'public', '2024-10-22 21:01:14', '2024-10-22 21:01:14'),
(690, 'App\\Models\\Item', '320', 'images', 'public', '2024-10-22 21:01:14', '2024-10-22 21:01:14'),
(691, 'App\\Models\\Item', '321', 'image', 'public', '2024-10-22 21:02:00', '2024-10-22 21:02:00'),
(692, 'App\\Models\\Item', '321', 'images', 'public', '2024-10-22 21:02:00', '2024-10-22 21:02:00'),
(693, 'App\\Models\\Item', '322', 'image', 'public', '2024-10-22 21:03:13', '2024-10-22 21:03:13'),
(694, 'App\\Models\\Item', '322', 'images', 'public', '2024-10-22 21:03:13', '2024-10-22 21:03:13'),
(695, 'App\\Models\\Item', '323', 'image', 'public', '2024-10-22 21:04:04', '2024-10-22 21:04:04'),
(696, 'App\\Models\\Item', '323', 'images', 'public', '2024-10-22 21:04:04', '2024-10-22 21:04:04'),
(697, 'App\\Models\\Item', '324', 'image', 'public', '2024-10-22 21:04:48', '2024-10-22 21:04:48'),
(698, 'App\\Models\\Item', '324', 'images', 'public', '2024-10-22 21:04:48', '2024-10-22 21:04:48'),
(699, 'App\\Models\\Item', '325', 'image', 'public', '2024-10-22 21:05:38', '2024-10-22 21:05:38'),
(700, 'App\\Models\\Item', '325', 'images', 'public', '2024-10-22 21:05:38', '2024-10-22 21:05:38'),
(701, 'App\\Models\\Item', '326', 'image', 'public', '2024-10-22 21:06:30', '2024-10-22 21:06:30'),
(702, 'App\\Models\\Item', '326', 'images', 'public', '2024-10-22 21:06:30', '2024-10-22 21:06:30'),
(703, 'App\\Models\\Item', '327', 'image', 'public', '2024-10-22 21:07:31', '2024-10-22 21:07:31'),
(704, 'App\\Models\\Item', '327', 'images', 'public', '2024-10-22 21:07:31', '2024-10-22 21:07:31'),
(705, 'App\\Models\\Item', '328', 'image', 'public', '2024-10-22 21:08:13', '2024-10-22 21:08:13'),
(706, 'App\\Models\\Item', '328', 'images', 'public', '2024-10-22 21:08:13', '2024-10-22 21:08:13'),
(707, 'App\\Models\\Item', '329', 'image', 'public', '2024-10-22 21:08:55', '2024-10-22 21:08:55'),
(708, 'App\\Models\\Item', '329', 'images', 'public', '2024-10-22 21:08:55', '2024-10-22 21:08:55'),
(709, 'App\\Models\\Item', '330', 'image', 'public', '2024-10-22 21:09:43', '2024-10-22 21:09:43'),
(710, 'App\\Models\\Item', '330', 'images', 'public', '2024-10-22 21:09:43', '2024-10-22 21:09:43'),
(711, 'App\\Models\\Item', '331', 'image', 'public', '2024-10-23 09:01:53', '2024-10-23 09:01:53'),
(712, 'App\\Models\\Item', '331', 'images', 'public', '2024-10-23 09:01:53', '2024-10-23 09:01:53'),
(713, 'App\\Models\\Item', '332', 'image', 'public', '2024-10-25 15:41:06', '2024-10-25 15:41:06'),
(714, 'App\\Models\\Item', '332', 'images', 'public', '2024-10-25 15:41:06', '2024-10-25 15:41:06'),
(715, 'App\\Models\\Item', '333', 'image', 'public', '2024-10-25 16:22:28', '2024-10-25 16:22:28'),
(716, 'App\\Models\\Item', '333', 'images', 'public', '2024-10-25 16:22:28', '2024-10-25 16:22:28'),
(717, 'App\\Models\\Item', '334', 'image', 'public', '2024-10-25 16:38:15', '2024-10-25 16:38:15'),
(718, 'App\\Models\\Item', '334', 'images', 'public', '2024-10-25 16:38:15', '2024-10-25 16:38:15'),
(719, 'App\\Models\\Item', '335', 'image', 'public', '2024-10-25 20:21:28', '2024-10-25 20:21:28'),
(720, 'App\\Models\\Item', '335', 'images', 'public', '2024-10-25 20:21:28', '2024-10-25 20:21:28'),
(721, 'App\\Models\\Item', '336', 'image', 'public', '2024-10-25 20:23:18', '2024-10-25 20:23:18'),
(722, 'App\\Models\\Item', '336', 'images', 'public', '2024-10-25 20:23:18', '2024-10-25 20:23:18'),
(723, 'App\\Models\\Item', '337', 'image', 'public', '2024-10-25 20:24:15', '2024-10-25 20:24:15'),
(724, 'App\\Models\\Item', '337', 'images', 'public', '2024-10-25 20:24:15', '2024-10-25 20:24:15'),
(725, 'App\\Models\\Item', '338', 'image', 'public', '2024-10-25 20:25:23', '2024-10-25 20:25:23'),
(726, 'App\\Models\\Item', '338', 'images', 'public', '2024-10-25 20:25:23', '2024-10-25 20:25:23'),
(727, 'App\\Models\\Item', '339', 'image', 'public', '2024-10-25 20:34:24', '2024-10-25 20:34:24'),
(728, 'App\\Models\\Item', '339', 'images', 'public', '2024-10-25 20:34:24', '2024-10-25 20:34:24'),
(729, 'App\\Models\\Item', '340', 'image', 'public', '2024-10-25 20:35:37', '2024-10-25 20:35:37'),
(730, 'App\\Models\\Item', '340', 'images', 'public', '2024-10-25 20:35:37', '2024-10-25 20:35:37'),
(731, 'App\\Models\\Item', '341', 'image', 'public', '2024-10-25 20:36:22', '2024-10-25 20:36:22'),
(732, 'App\\Models\\Item', '341', 'images', 'public', '2024-10-25 20:36:22', '2024-10-25 20:36:22'),
(733, 'App\\Models\\Item', '342', 'image', 'public', '2024-10-25 20:37:18', '2024-10-25 20:37:18'),
(734, 'App\\Models\\Item', '342', 'images', 'public', '2024-10-25 20:37:18', '2024-10-25 20:37:18'),
(735, 'App\\Models\\Item', '343', 'image', 'public', '2024-10-25 20:38:18', '2024-10-25 20:38:18'),
(736, 'App\\Models\\Item', '343', 'images', 'public', '2024-10-25 20:38:18', '2024-10-25 20:38:18'),
(737, 'App\\Models\\Item', '344', 'image', 'public', '2024-10-25 20:40:15', '2024-10-25 20:40:15'),
(738, 'App\\Models\\Item', '344', 'images', 'public', '2024-10-25 20:40:15', '2024-10-25 20:40:15'),
(739, 'App\\Models\\Item', '345', 'image', 'public', '2024-10-25 20:41:33', '2024-10-25 20:41:33'),
(740, 'App\\Models\\Item', '345', 'images', 'public', '2024-10-25 20:41:33', '2024-10-25 20:41:33'),
(741, 'App\\Models\\Item', '346', 'image', 'public', '2024-10-25 20:44:34', '2024-10-25 20:44:34'),
(742, 'App\\Models\\Item', '346', 'images', 'public', '2024-10-25 20:45:34', '2024-10-25 20:45:34'),
(743, 'App\\Models\\Item', '347', 'image', 'public', '2024-10-25 20:46:27', '2024-10-25 20:46:27'),
(744, 'App\\Models\\Item', '347', 'images', 'public', '2024-10-25 20:46:27', '2024-10-25 20:46:27'),
(745, 'App\\Models\\Item', '348', 'image', 'public', '2024-10-25 20:53:22', '2024-10-25 20:53:22'),
(746, 'App\\Models\\Item', '348', 'images', 'public', '2024-10-25 20:53:22', '2024-10-25 20:53:22'),
(747, 'App\\Models\\Item', '349', 'image', 'public', '2024-10-25 20:54:08', '2024-10-25 20:54:08'),
(748, 'App\\Models\\Item', '349', 'images', 'public', '2024-10-25 20:54:08', '2024-10-25 20:54:08'),
(749, 'App\\Models\\Item', '350', 'image', 'public', '2024-10-25 20:57:58', '2024-10-25 20:57:58'),
(750, 'App\\Models\\Item', '350', 'images', 'public', '2024-10-25 20:57:58', '2024-10-25 20:57:58'),
(751, 'App\\Models\\Item', '351', 'image', 'public', '2024-10-25 20:58:44', '2024-10-25 20:58:44'),
(752, 'App\\Models\\Item', '351', 'images', 'public', '2024-10-25 20:58:44', '2024-10-25 20:58:44'),
(753, 'App\\Models\\Item', '352', 'image', 'public', '2024-10-25 20:59:38', '2024-10-25 20:59:38'),
(754, 'App\\Models\\Item', '352', 'images', 'public', '2024-10-25 20:59:38', '2024-10-25 20:59:38'),
(755, 'App\\Models\\Notification', '3', 'image', 'public', '2024-11-04 18:27:32', '2024-11-04 18:27:32'),
(756, 'App\\Models\\Item', '353', 'image', 'public', '2024-11-05 07:20:13', '2024-11-05 07:20:13'),
(757, 'App\\Models\\Item', '353', 'images', 'public', '2024-11-05 07:20:13', '2024-11-05 07:20:13'),
(758, 'App\\Models\\Item', '354', 'image', 'public', '2024-11-05 07:22:22', '2024-11-05 07:22:22'),
(759, 'App\\Models\\Item', '354', 'images', 'public', '2024-11-05 07:22:22', '2024-11-05 07:22:22'),
(760, 'App\\Models\\Item', '355', 'image', 'public', '2024-11-05 07:29:21', '2024-11-05 07:29:21'),
(761, 'App\\Models\\Item', '355', 'images', 'public', '2024-11-05 07:29:21', '2024-11-05 07:29:21'),
(762, 'App\\Models\\Item', '356', 'image', 'public', '2024-11-05 07:30:48', '2024-11-05 07:30:48'),
(763, 'App\\Models\\Item', '356', 'images', 'public', '2024-11-05 07:30:48', '2024-11-05 07:30:48'),
(764, 'App\\Models\\Item', '357', 'image', 'public', '2024-11-05 07:34:18', '2024-11-05 07:34:18'),
(765, 'App\\Models\\Item', '357', 'images', 'public', '2024-11-05 07:34:18', '2024-11-05 07:34:18'),
(766, 'App\\Models\\Item', '358', 'image', 'public', '2024-11-05 08:28:22', '2024-11-05 08:28:22'),
(767, 'App\\Models\\Item', '358', 'images', 'public', '2024-11-05 08:28:22', '2024-11-05 08:28:22'),
(768, 'App\\Models\\Item', '359', 'image', 'public', '2024-11-05 08:30:09', '2024-11-05 08:30:09'),
(769, 'App\\Models\\Item', '359', 'images', 'public', '2024-11-05 08:30:09', '2024-11-05 08:30:09'),
(770, 'App\\Models\\Item', '360', 'image', 'public', '2024-11-05 08:33:33', '2024-11-05 08:33:33'),
(771, 'App\\Models\\Item', '360', 'images', 'public', '2024-11-05 08:33:33', '2024-11-05 08:33:33'),
(772, 'App\\Models\\Item', '361', 'image', 'public', '2024-11-05 08:35:32', '2024-11-05 08:35:32'),
(773, 'App\\Models\\Item', '361', 'images', 'public', '2024-11-05 08:35:32', '2024-11-05 08:35:32'),
(774, 'App\\Models\\Item', '362', 'image', 'public', '2024-11-05 08:39:00', '2024-11-05 08:39:00'),
(775, 'App\\Models\\Item', '362', 'images', 'public', '2024-11-05 08:39:00', '2024-11-05 08:39:00'),
(776, 'App\\Models\\Item', '363', 'image', 'public', '2024-11-05 08:50:49', '2024-11-05 08:50:49'),
(777, 'App\\Models\\Item', '363', 'images', 'public', '2024-11-05 08:50:49', '2024-11-05 08:50:49'),
(778, 'App\\Models\\Item', '364', 'image', 'public', '2024-11-05 08:54:27', '2024-11-05 08:54:27'),
(779, 'App\\Models\\Item', '364', 'images', 'public', '2024-11-05 08:54:27', '2024-11-05 08:54:27'),
(780, 'App\\Models\\Item', '365', 'image', 'public', '2024-11-05 08:59:49', '2024-11-05 08:59:49'),
(781, 'App\\Models\\Item', '365', 'images', 'public', '2024-11-05 08:59:49', '2024-11-05 08:59:49'),
(782, 'App\\Models\\Item', '366', 'image', 'public', '2024-11-05 09:18:17', '2024-11-05 09:18:17'),
(783, 'App\\Models\\Item', '366', 'images', 'public', '2024-11-05 09:18:17', '2024-11-05 09:18:17'),
(784, 'App\\Models\\Item', '367', 'image', 'public', '2024-11-05 09:21:14', '2024-11-05 09:21:14'),
(785, 'App\\Models\\Item', '367', 'images', 'public', '2024-11-05 09:21:14', '2024-11-05 09:21:14'),
(786, 'App\\Models\\Store', '7', 'logo', 'public', '2024-11-05 14:08:43', '2024-11-05 14:08:43'),
(787, 'App\\Models\\Store', '7', 'cover_photo', 'public', '2024-11-05 14:08:43', '2024-11-05 14:08:43'),
(788, 'App\\Models\\Item', '368', 'image', 'public', '2024-11-05 14:24:42', '2024-11-05 14:24:42'),
(789, 'App\\Models\\Item', '368', 'images', 'public', '2024-11-05 14:24:42', '2024-11-05 14:24:42'),
(790, 'App\\Models\\Item', '369', 'image', 'public', '2024-11-05 14:29:11', '2024-11-05 14:29:11'),
(791, 'App\\Models\\Item', '369', 'images', 'public', '2024-11-05 14:29:11', '2024-11-05 14:29:11'),
(792, 'App\\Models\\Item', '370', 'image', 'public', '2024-11-05 14:29:56', '2024-11-05 14:29:56'),
(793, 'App\\Models\\Item', '370', 'images', 'public', '2024-11-05 14:29:56', '2024-11-05 14:29:56'),
(794, 'App\\Models\\Item', '371', 'image', 'public', '2024-11-05 14:30:37', '2024-11-05 14:30:37'),
(795, 'App\\Models\\Item', '371', 'images', 'public', '2024-11-05 14:30:37', '2024-11-05 14:30:37'),
(796, 'App\\Models\\Item', '372', 'image', 'public', '2024-11-05 14:34:45', '2024-11-05 14:34:45'),
(797, 'App\\Models\\Item', '372', 'images', 'public', '2024-11-05 14:34:45', '2024-11-05 14:34:45'),
(798, 'App\\Models\\Item', '373', 'image', 'public', '2024-11-05 14:35:26', '2024-11-05 14:35:26'),
(799, 'App\\Models\\Item', '373', 'images', 'public', '2024-11-05 14:35:26', '2024-11-05 14:35:26'),
(800, 'App\\Models\\Item', '374', 'image', 'public', '2024-11-05 14:36:11', '2024-11-05 14:36:11'),
(801, 'App\\Models\\Item', '374', 'images', 'public', '2024-11-05 14:36:11', '2024-11-05 14:36:11'),
(802, 'App\\Models\\Item', '375', 'image', 'public', '2024-11-05 14:36:49', '2024-11-05 14:36:49'),
(803, 'App\\Models\\Item', '375', 'images', 'public', '2024-11-05 14:36:49', '2024-11-05 14:36:49'),
(804, 'App\\Models\\Item', '376', 'image', 'public', '2024-11-05 14:37:30', '2024-11-05 14:37:30'),
(805, 'App\\Models\\Item', '376', 'images', 'public', '2024-11-05 14:37:30', '2024-11-05 14:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `footer_text` text DEFAULT NULL,
  `minimum_order` decimal(24,2) NOT NULL DEFAULT 0.00,
  `comission` decimal(24,2) DEFAULT NULL,
  `schedule_order` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `free_delivery` tinyint(1) NOT NULL DEFAULT 0,
  `rating` varchar(255) DEFAULT NULL,
  `cover_photo` varchar(255) DEFAULT NULL,
  `delivery` tinyint(1) NOT NULL DEFAULT 1,
  `take_away` tinyint(1) NOT NULL DEFAULT 1,
  `item_section` tinyint(1) NOT NULL DEFAULT 1,
  `tax` decimal(24,2) NOT NULL DEFAULT 0.00,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reviews_section` tinyint(1) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `off_day` varchar(191) NOT NULL DEFAULT ' ',
  `gst` varchar(191) DEFAULT NULL,
  `self_delivery_system` tinyint(1) NOT NULL DEFAULT 0,
  `pos_system` tinyint(1) NOT NULL DEFAULT 0,
  `minimum_shipping_charge` decimal(24,2) NOT NULL DEFAULT 0.00,
  `delivery_time` varchar(100) DEFAULT '30-40',
  `veg` tinyint(1) NOT NULL DEFAULT 1,
  `non_veg` tinyint(1) NOT NULL DEFAULT 1,
  `order_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `total_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `order_place_to_schedule_interval` int(11) DEFAULT 0,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `per_km_shipping_charge` double(16,3) UNSIGNED NOT NULL DEFAULT 0.000,
  `prescription_order` tinyint(1) NOT NULL DEFAULT 0,
  `slug` varchar(255) DEFAULT NULL,
  `maximum_shipping_charge` double(23,3) DEFAULT NULL,
  `cutlery` tinyint(1) NOT NULL DEFAULT 0,
  `meta_title` varchar(100) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` varchar(100) DEFAULT NULL,
  `announcement` tinyint(1) NOT NULL DEFAULT 0,
  `announcement_message` varchar(255) DEFAULT NULL,
  `store_business_model` enum('none','commission','subscription','unsubscribed') NOT NULL DEFAULT 'commission',
  `package_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `phone`, `email`, `logo`, `latitude`, `longitude`, `address`, `footer_text`, `minimum_order`, `comission`, `schedule_order`, `status`, `vendor_id`, `created_at`, `updated_at`, `free_delivery`, `rating`, `cover_photo`, `delivery`, `take_away`, `item_section`, `tax`, `zone_id`, `reviews_section`, `active`, `off_day`, `gst`, `self_delivery_system`, `pos_system`, `minimum_shipping_charge`, `delivery_time`, `veg`, `non_veg`, `order_count`, `total_order`, `module_id`, `order_place_to_schedule_interval`, `featured`, `per_km_shipping_charge`, `prescription_order`, `slug`, `maximum_shipping_charge`, `cutlery`, `meta_title`, `meta_description`, `meta_image`, `announcement`, `announcement_message`, `store_business_model`, `package_id`) VALUES
(1, 'Demo Store', '+101511111111', 'demo.store@gmail.com', '2023-08-16-64dca8ad238c4.png', '23.81695886557418', '90.36934144046135', 'House, road', NULL, 0.00, NULL, 0, 1, 1, '2023-08-15 23:45:01', '2024-10-18 23:54:41', 0, NULL, '2023-08-16-64dca8ad263f6.png', 1, 1, 1, 5.00, 1, 1, 1, ' ', NULL, 0, 0, 0.00, '30-40 min', 1, 1, 0, 0, 1, 0, 1, 0.000, 0, 'demo-store', NULL, 0, NULL, NULL, NULL, 0, NULL, 'commission', NULL),
(2, 'Juice Bros', '+919710577733', 'Juicebros5@gmail.com', '2024-09-20-66ed7297f3e3d.png', '13.108584248027972', '79.4210585855064', 'Sholinghur', NULL, 90.00, 0.00, 1, 1, 2, '2024-09-20 18:33:20', '2024-10-18 23:54:41', 0, NULL, '2024-09-20-66ed729800406.png', 1, 0, 1, 5.00, 3, 1, 1, ' ', NULL, 0, 0, 0.00, '30-60 min', 1, 1, 0, 1, 2, NULL, 1, 0.000, 0, 'juice-bros', NULL, 0, NULL, NULL, NULL, 0, NULL, 'commission', NULL),
(3, 'Vishnu Cafe & Sri Kanna Hotel', '9500628584', 'Vishnucafe5@gmail.com', '2024-10-16-670f657954cd9.png', '13.11082721201805', '79.42064428697697', 'Bus Stand Sholinghur', NULL, 90.00, 25.00, 1, 1, 3, '2024-10-02 22:16:02', '2024-10-18 23:54:41', 0, '{\"1\":0,\"2\":0,\"3\":0,\"4\":0,\"5\":1}', '2024-10-16-670f657955d05.png', 1, 0, 1, 5.00, 3, 1, 1, ' ', NULL, 0, 0, 0.00, '40-60 min', 1, 0, 4, 7, 2, NULL, 1, 0.000, 0, 'vishnu-cafe-sri-kanna-hotel', NULL, 0, NULL, NULL, NULL, 1, 'Pure Veg Only', 'commission', NULL),
(4, 'New Sri Lakshmi Narasima Hotel', '9600521132', 'vinosrk2@gmail.com', '2024-10-18-67121f75ca0f0.png', '13.110722632197788', '79.41991431792592', 'Bus stand', NULL, 90.00, NULL, 1, 1, 4, '2024-10-18 14:12:29', '2024-10-18 23:54:41', 0, NULL, '2024-10-18-67121f75cb4aa.png', 1, 0, 1, 5.00, 3, 1, 1, ' ', NULL, 0, 0, 0.00, '30-60 min', 1, 0, 0, 0, 2, NULL, 1, 0.000, 0, 'new-sri-lakshmi-narasima-hotel', NULL, 0, NULL, NULL, NULL, 0, NULL, 'commission', NULL),
(5, 'Muni\'s Biryani', '7826008111', 'Munisbiryani5@gmail.com', '2024-10-18-6712256412544.png', '13.110532270698195', '79.42056271620554', 'New Bus Stand Sholinghur', NULL, 90.00, NULL, 1, 1, 5, '2024-10-18 14:37:48', '2024-10-18 23:54:41', 0, NULL, '2024-10-18-6712256413c55.png', 1, 0, 1, 5.00, 3, 1, 1, ' ', NULL, 0, 0, 0.00, '30-60 min', 1, 1, 0, 0, 2, NULL, 1, 0.000, 0, 'munis-biryani', NULL, 0, NULL, NULL, NULL, 0, NULL, 'commission', NULL),
(6, 'Nandhini Family Restaurant', '9994433234', 'Nandhini5@gmail.com', '2024-10-18-6712a59fe345d.png', '13.101356746551097', '79.41202982924789', 'Walaja Road', NULL, 90.00, NULL, 0, 1, 6, '2024-10-18 23:44:55', '2024-10-19 23:12:02', 0, NULL, '2024-10-18-6712a59fe48c6.png', 1, 0, 1, 5.00, 3, 1, 1, ' ', NULL, 0, 0, 0.00, '40-60 min', 1, 1, 0, 0, 2, NULL, 1, 0.000, 0, 'nandhini-family-restaurant', NULL, 0, NULL, NULL, NULL, 0, NULL, 'commission', NULL),
(7, 'Ravanas Restaurant', '+917708153131', 'Ravanas5@gmail.com', '2024-11-05-6729d993ed09d.png', '13.10364446386401', '79.43227981988389', 'Sholinghur', NULL, 0.00, NULL, 0, 1, 7, '2024-11-05 14:08:43', '2024-11-05 14:08:43', 0, NULL, '2024-11-05-6729d993ee514.png', 1, 1, 1, 5.00, 3, 1, 1, ' ', NULL, 0, 0, 0.00, '30-60 min', 1, 1, 0, 0, 2, 0, 0, 0.000, 0, 'ravanas-restaurant', NULL, 0, NULL, NULL, NULL, 0, NULL, 'commission', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_configs`
--

CREATE TABLE `store_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `is_recommended` tinyint(1) NOT NULL DEFAULT 0,
  `is_recommended_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `halal_tag_status` tinyint(1) NOT NULL DEFAULT 0,
  `extra_packaging_status` tinyint(1) NOT NULL DEFAULT 0,
  `extra_packaging_amount` double(23,3) NOT NULL DEFAULT 0.000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_configs`
--

INSERT INTO `store_configs` (`id`, `store_id`, `is_recommended`, `is_recommended_deleted`, `created_at`, `updated_at`, `halal_tag_status`, `extra_packaging_status`, `extra_packaging_amount`) VALUES
(1, 2, 0, 0, '2024-09-20 18:35:01', '2024-09-20 18:35:01', 1, 0, 0.000),
(2, 5, 0, 0, '2024-10-18 14:52:02', '2024-10-18 14:52:02', 1, 0, 0.000),
(3, 6, 0, 0, '2024-10-19 23:11:48', '2024-10-19 23:11:48', 1, 0, 0.000);

-- --------------------------------------------------------

--
-- Table structure for table `store_notification_settings`
--

CREATE TABLE `store_notification_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `sub_title` text DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `mail_status` enum('active','inactive','disable') NOT NULL DEFAULT 'disable',
  `sms_status` enum('active','inactive','disable') NOT NULL DEFAULT 'disable',
  `push_notification_status` enum('active','inactive','disable') NOT NULL DEFAULT 'disable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_notification_settings`
--

INSERT INTO `store_notification_settings` (`id`, `title`, `sub_title`, `key`, `store_id`, `mail_status`, `sms_status`, `push_notification_status`, `created_at`, `updated_at`) VALUES
(1, 'account_block', 'Get_notification_on_account_block', 'store_account_block', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(2, 'account_unblock', 'Get_notification_on_account_unblock', 'store_account_unblock', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(3, 'withdraw_approve', 'Get_notification_on_withdraw_approve', 'store_withdraw_approve', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(4, 'withdraw_rejaction', 'Get_notification_on_withdraw_rejaction', 'store_withdraw_rejaction', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(5, 'campaign_join_request', 'Get_notification_on_campaign_join_request', 'store_campaign_join_request', 3, 'active', 'disable', 'disable', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(6, 'campaign_join_rejaction', 'Get_notification_on_campaign_join_rejaction', 'store_campaign_join_rejaction', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(7, 'campaign_join_approval', 'Get_notification_on_campaign_join_approval', 'store_campaign_join_approval', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(8, 'order_notification', 'Get_notification_on_order_notification', 'store_order_notification', 3, 'disable', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(9, 'advertisement_create_by_admin', 'Get_notification_on_advertisement_create_by_admin', 'store_advertisement_create_by_admin', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(10, 'advertisement_approval', 'Get_notification_on_advertisement_approval', 'store_advertisement_approval', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(11, 'advertisement_deny', 'Get_notification_on_advertisement_deny', 'store_advertisement_deny', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(12, 'advertisement_resume', 'Get_notification_on_advertisement_resume', 'store_advertisement_resume', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(13, 'advertisement_pause', 'Get_notification_on_advertisement_pause', 'store_advertisement_pause', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(14, 'product_approve', 'Get_notification_on_product_approve', 'store_product_approve', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(15, 'product_reject', 'Get_notification_on_product_reject', 'store_product_reject', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(16, 'subscription_success', 'Get_notification_on_subscription_success', 'store_subscription_success', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(17, 'subscription_renew', 'Get_notification_on_subscription_renew', 'store_subscription_renew', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(18, 'subscription_shift', 'Get_notification_on_subscription_shift', 'store_subscription_shift', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(19, 'subscription_cancel', 'Get_notification_on_subscription_cancel', 'store_subscription_cancel', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(20, 'subscription_plan_update', 'Get_notification_on_subscription_plan_update', 'store_subscription_plan_update', 3, 'active', 'disable', 'active', '2024-10-07 11:07:21', '2024-10-07 11:07:21'),
(21, 'account_block', 'Get_notification_on_account_block', 'store_account_block', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(22, 'account_unblock', 'Get_notification_on_account_unblock', 'store_account_unblock', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(23, 'withdraw_approve', 'Get_notification_on_withdraw_approve', 'store_withdraw_approve', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(24, 'withdraw_rejaction', 'Get_notification_on_withdraw_rejaction', 'store_withdraw_rejaction', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(25, 'campaign_join_request', 'Get_notification_on_campaign_join_request', 'store_campaign_join_request', 2, 'active', 'disable', 'disable', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(26, 'campaign_join_rejaction', 'Get_notification_on_campaign_join_rejaction', 'store_campaign_join_rejaction', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(27, 'campaign_join_approval', 'Get_notification_on_campaign_join_approval', 'store_campaign_join_approval', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(28, 'order_notification', 'Get_notification_on_order_notification', 'store_order_notification', 2, 'disable', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(29, 'advertisement_create_by_admin', 'Get_notification_on_advertisement_create_by_admin', 'store_advertisement_create_by_admin', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(30, 'advertisement_approval', 'Get_notification_on_advertisement_approval', 'store_advertisement_approval', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(31, 'advertisement_deny', 'Get_notification_on_advertisement_deny', 'store_advertisement_deny', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(32, 'advertisement_resume', 'Get_notification_on_advertisement_resume', 'store_advertisement_resume', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(33, 'advertisement_pause', 'Get_notification_on_advertisement_pause', 'store_advertisement_pause', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(34, 'product_approve', 'Get_notification_on_product_approve', 'store_product_approve', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(35, 'product_reject', 'Get_notification_on_product_reject', 'store_product_reject', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(36, 'subscription_success', 'Get_notification_on_subscription_success', 'store_subscription_success', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(37, 'subscription_renew', 'Get_notification_on_subscription_renew', 'store_subscription_renew', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(38, 'subscription_shift', 'Get_notification_on_subscription_shift', 'store_subscription_shift', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(39, 'subscription_cancel', 'Get_notification_on_subscription_cancel', 'store_subscription_cancel', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57'),
(40, 'subscription_plan_update', 'Get_notification_on_subscription_plan_update', 'store_subscription_plan_update', 2, 'active', 'disable', 'active', '2024-10-07 14:40:57', '2024-10-07 14:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `store_schedule`
--

CREATE TABLE `store_schedule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `day` int(11) NOT NULL,
  `opening_time` time DEFAULT NULL,
  `closing_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_schedule`
--

INSERT INTO `store_schedule` (`id`, `store_id`, `day`, `opening_time`, `closing_time`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '11:00:00', '21:00:59', '2024-09-20 18:37:16', '2024-09-20 18:37:16'),
(2, 2, 2, '11:00:00', '21:00:59', '2024-09-20 18:37:18', '2024-09-20 18:37:18'),
(3, 2, 3, '11:00:00', '21:00:59', '2024-09-20 18:37:21', '2024-09-20 18:37:21'),
(4, 2, 4, '11:00:00', '21:00:59', '2024-09-20 18:37:23', '2024-09-20 18:37:23'),
(5, 2, 5, '11:00:00', '21:00:59', '2024-09-20 18:37:25', '2024-09-20 18:37:25'),
(6, 2, 6, '11:00:00', '21:00:59', '2024-09-20 18:37:28', '2024-09-20 18:37:28'),
(7, 2, 0, '11:00:00', '21:00:59', '2024-09-20 18:37:30', '2024-09-20 18:37:30'),
(9, 3, 2, '11:00:00', '21:00:59', '2024-10-03 15:55:07', '2024-10-03 15:55:07'),
(10, 3, 3, '11:00:00', '21:00:59', '2024-10-03 15:55:09', '2024-10-03 15:55:09'),
(11, 3, 4, '11:00:00', '21:00:59', '2024-10-03 15:55:11', '2024-10-03 15:55:11'),
(12, 3, 5, '11:00:00', '21:00:59', '2024-10-03 15:55:14', '2024-10-03 15:55:14'),
(13, 3, 6, '11:00:00', '21:00:59', '2024-10-03 15:55:16', '2024-10-03 15:55:16'),
(15, 3, 1, '10:45:00', '18:00:00', NULL, NULL),
(16, 3, 0, '11:00:00', '21:00:59', '2024-10-07 15:15:26', '2024-10-07 15:15:26'),
(17, 5, 1, '11:00:00', '13:45:59', '2024-10-18 14:52:32', '2024-10-18 14:52:32'),
(18, 5, 2, '11:00:00', '13:45:59', '2024-10-18 14:52:34', '2024-10-18 14:52:34'),
(19, 5, 3, '11:00:00', '13:45:59', '2024-10-18 14:52:36', '2024-10-18 14:52:36'),
(20, 5, 4, '11:00:00', '13:45:59', '2024-10-18 14:52:38', '2024-10-18 14:52:38'),
(21, 5, 5, '11:00:00', '13:45:59', '2024-10-18 14:52:42', '2024-10-18 14:52:42'),
(22, 5, 6, '11:00:00', '13:45:59', '2024-10-18 14:52:44', '2024-10-18 14:52:44'),
(23, 5, 0, '11:00:00', '13:45:59', '2024-10-18 14:52:46', '2024-10-18 14:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `store_subscriptions`
--

CREATE TABLE `store_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `expiry_date` date NOT NULL,
  `validity` int(11) NOT NULL DEFAULT 0,
  `max_order` varchar(255) NOT NULL,
  `max_product` varchar(255) NOT NULL,
  `pos` tinyint(1) NOT NULL DEFAULT 0,
  `mobile_app` tinyint(1) NOT NULL DEFAULT 0,
  `chat` tinyint(1) NOT NULL DEFAULT 0,
  `review` tinyint(1) NOT NULL DEFAULT 0,
  `self_delivery` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_trial` tinyint(1) NOT NULL DEFAULT 0,
  `total_package_renewed` tinyint(4) NOT NULL DEFAULT 0,
  `renewed_at` datetime DEFAULT NULL,
  `is_canceled` tinyint(1) NOT NULL DEFAULT 0,
  `canceled_by` enum('none','admin','store') NOT NULL DEFAULT 'none',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_wallets`
--

CREATE TABLE `store_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `total_earning` decimal(24,2) NOT NULL DEFAULT 0.00,
  `total_withdrawn` decimal(24,2) NOT NULL DEFAULT 0.00,
  `pending_withdraw` decimal(24,2) NOT NULL DEFAULT 0.00,
  `collected_cash` decimal(24,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_wallets`
--

INSERT INTO `store_wallets` (`id`, `vendor_id`, `total_earning`, `total_withdrawn`, `pending_withdraw`, `collected_cash`, `created_at`, `updated_at`) VALUES
(1, 1, 0.00, 0.00, 0.00, 0.00, '2024-06-05 20:16:11', '2024-06-05 20:16:11'),
(2, 2, 0.00, 0.00, 0.00, 0.00, '2024-09-20 18:34:48', '2024-09-20 18:34:48'),
(3, 3, 525.75, 0.00, 0.00, 0.00, '2024-10-02 22:16:14', '2024-10-07 14:56:44'),
(4, 4, 0.00, 0.00, 0.00, 0.00, '2024-10-18 14:13:38', '2024-10-18 14:13:38'),
(5, 5, 0.00, 0.00, 0.00, 0.00, '2024-10-18 14:50:34', '2024-10-18 14:50:34'),
(6, 6, 0.00, 0.00, 0.00, 0.00, '2024-10-19 23:11:40', '2024-10-19 23:11:40'),
(7, 7, 0.00, 0.00, 0.00, 0.00, '2024-11-05 14:16:19', '2024-11-05 14:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_billing_and_refund_histories`
--

CREATE TABLE `subscription_billing_and_refund_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` enum('pending_bill','refund') NOT NULL DEFAULT 'pending_bill',
  `amount` double(24,3) NOT NULL,
  `is_success` tinyint(1) NOT NULL DEFAULT 0,
  `reference` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_packages`
--

CREATE TABLE `subscription_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_name` varchar(191) NOT NULL,
  `price` double(24,3) NOT NULL,
  `validity` int(11) NOT NULL,
  `max_order` varchar(255) NOT NULL DEFAULT 'unlimited',
  `max_product` varchar(255) NOT NULL DEFAULT 'unlimited',
  `pos` tinyint(1) NOT NULL DEFAULT 0,
  `mobile_app` tinyint(1) NOT NULL DEFAULT 0,
  `chat` tinyint(1) NOT NULL DEFAULT 0,
  `review` tinyint(1) NOT NULL DEFAULT 0,
  `self_delivery` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `colour` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_transactions`
--

CREATE TABLE `subscription_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `store_subscription_id` bigint(20) UNSIGNED DEFAULT NULL,
  `price` double(24,3) NOT NULL DEFAULT 0.000,
  `previous_due` double(24,3) NOT NULL DEFAULT 0.000,
  `validity` int(11) NOT NULL DEFAULT 0,
  `payment_method` varchar(191) NOT NULL,
  `payment_status` varchar(191) NOT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `paid_amount` double(24,2) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `package_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `is_trial` tinyint(1) NOT NULL DEFAULT 0,
  `transaction_status` tinyint(1) NOT NULL DEFAULT 1,
  `plan_type` enum('renew','new_plan','first_purchased','free_trial') NOT NULL DEFAULT 'first_purchased',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'pizza', '2024-10-16 12:39:58', '2024-10-16 12:39:58'),
(2, 'Chat items', '2024-10-16 16:18:33', '2024-10-16 16:18:33'),
(3, 'Chatitems', '2024-10-20 07:19:56', '2024-10-20 07:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `temp_products`
--

CREATE TABLE `temp_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(30) DEFAULT NULL,
  `images` longtext DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_ids` varchar(255) DEFAULT NULL,
  `tag_ids` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `variations` text DEFAULT NULL,
  `food_variations` text DEFAULT NULL,
  `add_ons` varchar(255) DEFAULT NULL,
  `attributes` varchar(255) DEFAULT NULL,
  `choice_options` text DEFAULT NULL,
  `price` decimal(24,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(24,2) NOT NULL DEFAULT 0.00,
  `tax_type` varchar(20) NOT NULL DEFAULT 'percent',
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) NOT NULL DEFAULT 'percent',
  `veg` tinyint(1) NOT NULL DEFAULT 0,
  `recommended` tinyint(1) NOT NULL DEFAULT 0,
  `organic` tinyint(1) NOT NULL DEFAULT 0,
  `common_condition_id` bigint(20) UNSIGNED DEFAULT NULL,
  `basic` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `stock` int(11) DEFAULT 0,
  `maximum_cart_quantity` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_rejected` tinyint(1) NOT NULL DEFAULT 0,
  `available_time_ends` time DEFAULT NULL,
  `available_time_starts` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_halal` tinyint(1) NOT NULL DEFAULT 0,
  `brand_id` tinyint(1) NOT NULL DEFAULT 0,
  `is_prescription_required` tinyint(1) NOT NULL DEFAULT 0,
  `nutrition_ids` varchar(255) DEFAULT NULL,
  `allergy_ids` varchar(255) DEFAULT NULL,
  `generic_ids` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `track_deliverymen`
--

CREATE TABLE `track_deliverymen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `translationable_type` varchar(255) NOT NULL,
  `translationable_id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `translationable_type`, `translationable_id`, `locale`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Module', 1, 'en', 'module_name', 'Demo Module', NULL, NULL),
(2, 'App\\Models\\Module', 1, 'en', 'description', '<p><strong>We make grocery shopping more interesting.</strong><br />\r\nFind the greatest deals from the grocery stores near you.<br />\r\n<br />\r\n<strong>Nature &amp; Organic Products</strong><br />\r\nBring Nature into your home.<br />\r\n<br />\r\n<strong>Stay home &amp; get your daily needs from our shop</strong><br />\r\nStart You&#39;r Daily Shopping with 6amMart</p>', NULL, NULL),
(3, 'App\\Models\\Zone', 1, 'en', 'name', 'Demo Zone', NULL, NULL),
(4, 'App\\Models\\Category', 1, 'en', 'name', 'Demo category', NULL, NULL),
(5, 'App\\Models\\Category', 2, 'en', 'name', 'Demo sub category', NULL, NULL),
(6, 'App\\Models\\Store', 1, 'en', 'name', 'Demo Store', NULL, NULL),
(7, 'App\\Models\\Store', 1, 'en', 'address', 'House, road', NULL, NULL),
(8, 'App\\Models\\Item', 1, 'en', 'name', 'Demo Product', NULL, NULL),
(9, 'App\\Models\\Item', 1, 'en', 'description', 'Demo Product Description', NULL, NULL),
(10, 'App\\Models\\AdminPromotionalBanner', 1, 'en', 'title', 'Find', NULL, NULL),
(11, 'App\\Models\\AdminPromotionalBanner', 1, 'en', 'sub_title', 'Your daily grocery item', NULL, NULL),
(12, 'App\\Models\\AdminFeature', 1, 'en', 'title', 'Trusted', NULL, NULL),
(13, 'App\\Models\\AdminFeature', 1, 'en', 'sub_title', 'Trusted by customers and store owners', NULL, NULL),
(14, 'App\\Models\\AdminSpecialCriteria', 1, 'en', 'title', 'Demo Title', NULL, NULL),
(15, 'App\\Models\\DataSetting', 24, 'en', 'download_user_app_title', 'Let’s  Manage', NULL, NULL),
(16, 'App\\Models\\DataSetting', 25, 'en', 'download_user_app_sub_title', 'Your business  Smartly or Earn.', NULL, NULL),
(17, 'App\\Models\\DataSetting', 29, 'en', 'contact_us_title', 'Contact Us', NULL, NULL),
(18, 'App\\Models\\DataSetting', 30, 'en', 'contact_us_sub_title', 'Any question or remarks? Just write us a message!', NULL, NULL),
(19, 'App\\Models\\DataSetting', 34, 'en', 'header_title', '$Your e-Commerce!$', NULL, NULL),
(20, 'App\\Models\\DataSetting', 35, 'en', 'header_sub_title', 'Venture Starts Here', NULL, NULL),
(21, 'App\\Models\\DataSetting', 36, 'en', 'header_tag_line', 'More than just a reliable $eCommerce$ platform', NULL, NULL),
(22, 'App\\Models\\DataSetting', 59, 'en', 'business_title', '$Let’s$', NULL, NULL),
(23, 'App\\Models\\DataSetting', 60, 'en', 'business_sub_title', 'Manage your business  Smartly', NULL, NULL),
(24, 'App\\Models\\DataSetting', 68, 'en', 'fixed_header_title', '6amMart', NULL, NULL),
(25, 'App\\Models\\DataSetting', 69, 'en', 'fixed_header_sub_title', 'More than just reliable eCommerce platform', NULL, NULL),
(26, 'App\\Models\\FlutterSpecialCriteria', 1, 'en', 'title', 'Easy Checkout & Payment system', NULL, NULL),
(27, 'App\\Models\\DataSetting', 82, 'en', 'download_user_app_title', 'Download app and enjoy more!', NULL, NULL),
(28, 'App\\Models\\DataSetting', 83, 'en', 'download_user_app_sub_title', 'Download app from', NULL, NULL),
(29, 'App\\Models\\RefundReason', 1, 'en', 'reason', 'I ordered the wrong food', NULL, NULL),
(30, 'App\\Models\\AdminFeature', 2, 'en', 'title', 'Delivery', NULL, NULL),
(31, 'App\\Models\\AdminFeature', 2, 'en', 'sub_title', 'Flexible delivery system', NULL, NULL),
(32, 'App\\Models\\AdminFeature', 3, 'en', 'title', 'Shopping', NULL, NULL),
(33, 'App\\Models\\AdminFeature', 3, 'en', 'sub_title', 'Best shopping experience', NULL, NULL),
(34, 'App\\Models\\AdminFeature', 4, 'en', 'title', 'Location', NULL, NULL),
(35, 'App\\Models\\AdminFeature', 4, 'en', 'sub_title', 'Location tracking system', NULL, NULL),
(36, 'App\\Models\\AdminSpecialCriteria', 2, 'en', 'title', 'Easy to Manage Multiple Store', NULL, NULL),
(37, 'App\\Models\\AdminSpecialCriteria', 3, 'en', 'title', 'Easy to Manage E-Commerce', NULL, NULL),
(38, 'App\\Models\\AdminSpecialCriteria', 4, 'en', 'title', 'Easy to Manage Parcel Delivery', NULL, NULL),
(39, 'App\\Models\\AdminSpecialCriteria', 5, 'en', 'title', 'Easy to Manage Location Tracking', NULL, NULL),
(40, 'App\\Models\\AdminSpecialCriteria', 6, 'en', 'title', 'Easy to Manage Grocery Business', NULL, NULL),
(41, 'App\\Models\\FlutterSpecialCriteria', 2, 'en', 'title', 'Excellent Shopping Experience', NULL, NULL),
(42, 'App\\Models\\FlutterSpecialCriteria', 3, 'en', 'title', 'Thousands of stores', NULL, NULL),
(43, 'App\\Models\\Zone', 2, 'en', 'name', 'dreamz', NULL, NULL),
(44, 'App\\Models\\Attribute', 1, 'en', 'name', 'Category', NULL, NULL),
(45, 'App\\Models\\Item', 2, 'en', 'name', 'Chicken biryani', NULL, NULL),
(46, 'App\\Models\\Item', 2, 'en', 'description', 'Chicken biryani', NULL, NULL),
(47, 'App\\Models\\Module', 2, 'en', 'module_name', 'Foods', NULL, NULL),
(48, 'App\\Models\\Module', 2, 'en', 'description', '<p>All in One&nbsp;</p>', NULL, NULL),
(49, 'App\\Models\\Zone', 3, 'en', 'name', 'Sholinghur', NULL, NULL),
(50, 'App\\Models\\Store', 2, 'en', 'name', 'Juice Bros', NULL, NULL),
(51, 'App\\Models\\Store', 2, 'en', 'address', 'Sholinghur', NULL, NULL),
(52, 'App\\Models\\Category', 3, 'en', 'name', 'Starters', NULL, NULL),
(53, 'App\\Models\\Category', 4, 'en', 'name', 'Side Dishes', NULL, NULL),
(54, 'App\\Models\\Category', 5, 'en', 'name', 'Fast Foods', NULL, NULL),
(55, 'App\\Models\\Category', 6, 'en', 'name', 'Biryani', NULL, NULL),
(56, 'App\\Models\\Category', 7, 'en', 'name', 'South Indian', NULL, NULL),
(57, 'App\\Models\\Category', 8, 'en', 'name', 'Pizza', NULL, NULL),
(58, 'App\\Models\\Category', 9, 'en', 'name', 'Burger', NULL, NULL),
(59, 'App\\Models\\Category', 10, 'en', 'name', 'Sandwich', NULL, NULL),
(60, 'App\\Models\\Category', 11, 'en', 'name', 'Roti Naan', NULL, NULL),
(61, 'App\\Models\\Category', 12, 'en', 'name', 'Gravy', NULL, NULL),
(62, 'App\\Models\\Category', 13, 'en', 'name', 'Falooda', NULL, NULL),
(63, 'App\\Models\\Category', 14, 'en', 'name', 'Fresh Juice', NULL, NULL),
(64, 'App\\Models\\Category', 15, 'en', 'name', 'Mojito', NULL, NULL),
(65, 'App\\Models\\Category', 16, 'en', 'name', 'Milk shake', NULL, NULL),
(66, 'App\\Models\\Category', 17, 'en', 'name', 'Chat Items', NULL, NULL),
(67, 'App\\Models\\Category', 18, 'en', 'name', 'Soups', NULL, NULL),
(68, 'App\\Models\\Category', 19, 'en', 'name', 'Pasta', NULL, NULL),
(69, 'App\\Models\\Category', 20, 'en', 'name', 'Momos', NULL, NULL),
(70, 'App\\Models\\Category', 21, 'en', 'name', 'Brownie', NULL, NULL),
(71, 'App\\Models\\Category', 22, 'en', 'name', 'Tea', NULL, NULL),
(72, 'App\\Models\\Category', 23, 'en', 'name', 'Crispy Chicken', NULL, NULL),
(73, 'App\\Models\\Category', 24, 'en', 'name', 'Shawarma', NULL, NULL),
(74, 'App\\Models\\Item', 3, 'en', 'name', 'Pani Poori', NULL, NULL),
(75, 'App\\Models\\Item', 3, 'en', 'description', 'Pani Poori', NULL, NULL),
(76, 'App\\Models\\Item', 4, 'en', 'name', 'Masala Poori', NULL, NULL),
(77, 'App\\Models\\Item', 4, 'en', 'description', 'Masala Poori', NULL, NULL),
(78, 'App\\Models\\Item', 5, 'en', 'name', 'Dahi Poori', NULL, NULL),
(79, 'App\\Models\\Item', 5, 'en', 'description', 'Dahi poori', NULL, NULL),
(80, 'App\\Models\\Item', 6, 'en', 'name', 'Sev Puri', NULL, NULL),
(81, 'App\\Models\\Item', 6, 'en', 'description', 'Sev puri', NULL, NULL),
(82, 'App\\Models\\Item', 7, 'en', 'name', 'Bhel Puri', NULL, NULL),
(83, 'App\\Models\\Item', 7, 'en', 'description', 'Bhel puri', NULL, NULL),
(84, 'App\\Models\\Item', 8, 'en', 'name', 'Dhai Bhel Puri', NULL, NULL),
(85, 'App\\Models\\Item', 8, 'en', 'description', 'Dhai bhel puri', NULL, NULL),
(86, 'App\\Models\\Item', 9, 'en', 'name', 'Samosa', NULL, NULL),
(87, 'App\\Models\\Item', 9, 'en', 'description', 'Samosa', NULL, NULL),
(88, 'App\\Models\\Item', 10, 'en', 'name', 'Samosa Chat', NULL, NULL),
(89, 'App\\Models\\Item', 10, 'en', 'description', 'Samosa chat', NULL, NULL),
(90, 'App\\Models\\Item', 11, 'en', 'name', 'Dhai Samosa', NULL, NULL),
(91, 'App\\Models\\Item', 11, 'en', 'description', 'Dhai samosa', NULL, NULL),
(92, 'App\\Models\\Item', 12, 'en', 'name', 'Pav Bhaji', NULL, NULL),
(93, 'App\\Models\\Item', 12, 'en', 'description', 'Pav bhaji', NULL, NULL),
(94, 'App\\Models\\Item', 13, 'en', 'name', 'Mushroom Pav Bhaji', NULL, NULL),
(95, 'App\\Models\\Item', 13, 'en', 'description', 'Mushroom pav bhaji', NULL, NULL),
(96, 'App\\Models\\Item', 14, 'en', 'name', 'Paneer Pav Bhaji', NULL, NULL),
(97, 'App\\Models\\Item', 14, 'en', 'description', 'Paneer pav bhaji', NULL, NULL),
(98, 'App\\Models\\Item', 15, 'en', 'name', 'Cheese Pav Bhaji', NULL, NULL),
(99, 'App\\Models\\Item', 15, 'en', 'description', 'Cheese pav bhaji', NULL, NULL),
(100, 'App\\Models\\Item', 16, 'en', 'name', 'Kachori', NULL, NULL),
(101, 'App\\Models\\Item', 16, 'en', 'description', 'Kachori', NULL, NULL),
(102, 'App\\Models\\Item', 17, 'en', 'name', 'Dhai Kachori', NULL, NULL),
(103, 'App\\Models\\Item', 17, 'en', 'description', 'Dhai kachori', NULL, NULL),
(104, 'App\\Models\\Item', 18, 'en', 'name', 'Masala Kachori', NULL, NULL),
(105, 'App\\Models\\Item', 18, 'en', 'description', 'Masala kachori', NULL, NULL),
(106, 'App\\Models\\Item', 19, 'en', 'name', 'Papdi Chat', NULL, NULL),
(107, 'App\\Models\\Item', 19, 'en', 'description', 'Papdi chat', NULL, NULL),
(108, 'App\\Models\\Item', 20, 'en', 'name', 'Dhai Papdi', NULL, NULL),
(109, 'App\\Models\\Item', 20, 'en', 'description', 'Dhai papdi', NULL, NULL),
(110, 'App\\Models\\Item', 21, 'en', 'name', 'Samosa Fry', NULL, NULL),
(111, 'App\\Models\\Item', 21, 'en', 'description', 'Samosa fry', NULL, NULL),
(112, 'App\\Models\\Item', 22, 'en', 'name', 'Fry Pav Bhaji', NULL, NULL),
(113, 'App\\Models\\Item', 22, 'en', 'description', 'Fry pav bhaji', NULL, NULL),
(114, 'App\\Models\\Item', 23, 'en', 'name', 'Aloo Puri', NULL, NULL),
(115, 'App\\Models\\Item', 23, 'en', 'description', 'Aloo puri', NULL, NULL),
(116, 'App\\Models\\Item', 24, 'en', 'name', 'Kachori Fry', NULL, NULL),
(117, 'App\\Models\\Item', 24, 'en', 'description', 'Kachori fry', NULL, NULL),
(118, 'App\\Models\\Item', 25, 'en', 'name', 'Special Bhel Puri', NULL, NULL),
(119, 'App\\Models\\Item', 25, 'en', 'description', 'Special bhel puri', NULL, NULL),
(120, 'App\\Models\\DMVehicle', 1, 'en', 'type', 'Bike', NULL, NULL),
(121, 'App\\Models\\OrderCancelReason', 1, 'en', 'reason', 'Item Not Available', NULL, NULL),
(122, 'App\\Models\\OrderCancelReason', 2, 'en', 'reason', 'Customer Say cancel Order', NULL, NULL),
(123, 'App\\Models\\OrderCancelReason', 3, 'en', 'reason', 'Customer Number Not Reached', NULL, NULL),
(124, 'App\\Models\\OrderCancelReason', 4, 'en', 'reason', 'Other Reason', NULL, NULL),
(125, 'App\\Models\\OrderCancelReason', 5, 'en', 'reason', 'Item Not Available', NULL, NULL),
(126, 'App\\Models\\OrderCancelReason', 6, 'en', 'reason', 'Other Reason', NULL, NULL),
(127, 'App\\Models\\OrderCancelReason', 7, 'en', 'reason', 'Wrong item Selected', NULL, NULL),
(128, 'App\\Models\\OrderCancelReason', 8, 'en', 'reason', 'Sorry By Mistake', NULL, NULL),
(129, 'App\\Models\\OrderCancelReason', 9, 'en', 'reason', 'Other Reason', NULL, NULL),
(130, 'App\\Models\\RefundReason', 2, 'en', 'reason', 'Some Item Missing', NULL, NULL),
(131, 'App\\Models\\RefundReason', 3, 'en', 'reason', 'Product Damage', NULL, NULL),
(132, 'App\\Models\\RefundReason', 4, 'en', 'reason', 'Wrong Item Delivered', NULL, NULL),
(133, 'App\\Models\\Item', 26, 'en', 'name', 'Chicken Clear Soup ( 500ml', NULL, NULL),
(134, 'App\\Models\\Item', 26, 'en', 'description', 'Chicken clear soup (500ml)', NULL, NULL),
(135, 'App\\Models\\Item', 27, 'en', 'name', 'Hot And Sour Chicken Soup (500 Ml)', NULL, NULL),
(136, 'App\\Models\\Item', 27, 'en', 'description', 'Hot And Sour Chicken Soup (500 Ml)', NULL, NULL),
(137, 'App\\Models\\Item', 28, 'en', 'name', 'Egg Clear Soup (500ml )', NULL, NULL),
(138, 'App\\Models\\Item', 28, 'en', 'description', 'Egg Clear Soup (500ml )', NULL, NULL),
(139, 'App\\Models\\Item', 29, 'en', 'name', 'Chicken Pepper Soup (500ml)', NULL, NULL),
(140, 'App\\Models\\Item', 29, 'en', 'description', 'Chicken pepper soup (500ml )', NULL, NULL),
(141, 'App\\Models\\Item', 30, 'en', 'name', 'Chicken Manchow Soup (500 Ml)', NULL, NULL),
(142, 'App\\Models\\Item', 30, 'en', 'description', 'Chicken Manchow Soup (500 Ml)', NULL, NULL),
(143, 'App\\Models\\Item', 31, 'en', 'name', 'Veg Clear Soup (500ml )', NULL, NULL),
(144, 'App\\Models\\Item', 31, 'en', 'description', 'Veg Clear Soup (500ml )', NULL, NULL),
(145, 'App\\Models\\Item', 32, 'en', 'name', 'Corn Clear Soup (500l )', NULL, NULL),
(146, 'App\\Models\\Item', 32, 'en', 'description', 'Corn Clear Soup (500l )', NULL, NULL),
(147, 'App\\Models\\Item', 33, 'en', 'name', 'Mushroom Clear Soup (500ml )', NULL, NULL),
(148, 'App\\Models\\Item', 33, 'en', 'description', 'Mushroom Clear Soup (500ml )', NULL, NULL),
(149, 'App\\Models\\Item', 34, 'en', 'name', 'Hot And Sour Soup (500ml )', NULL, NULL),
(150, 'App\\Models\\Item', 34, 'en', 'description', 'Hot And Sour Soup (500ml )', NULL, NULL),
(151, 'App\\Models\\Item', 35, 'en', 'name', 'Veg Manchow Soup (500 Ml)', NULL, NULL),
(152, 'App\\Models\\Item', 35, 'en', 'description', 'Veg Manchow Soup (500 Ml)', NULL, NULL),
(153, 'App\\Models\\Store', 3, 'en', 'name', 'Vishnu Cafe & Sri Kanna Hotel', NULL, NULL),
(154, 'App\\Models\\Store', 3, 'en', 'address', 'Bus Stand Sholinghur', NULL, NULL),
(155, 'App\\Models\\Item', 36, 'en', 'name', 'Pav Bajji', NULL, NULL),
(156, 'App\\Models\\Item', 36, 'en', 'description', 'Pav Bajji', NULL, NULL),
(157, 'App\\Models\\AutomatedMessage', 1, 'en', 'message', 'How can I help you ?', NULL, NULL),
(160, 'App\\Models\\Item', 38, 'en', 'name', 'Bhel Poori', NULL, NULL),
(161, 'App\\Models\\Item', 38, 'en', 'description', 'Bhel Poori', NULL, NULL),
(164, 'App\\Models\\Item', 40, 'en', 'name', 'Dahi Poori', NULL, NULL),
(165, 'App\\Models\\Item', 40, 'en', 'description', 'Dahi Poori', NULL, NULL),
(172, 'App\\Models\\Item', 44, 'en', 'name', 'Rasam Poori', NULL, NULL),
(173, 'App\\Models\\Item', 44, 'en', 'description', 'Rasam Poori', NULL, NULL),
(174, 'App\\Models\\Item', 45, 'en', 'name', 'Chana Masala', NULL, NULL),
(175, 'App\\Models\\Item', 45, 'en', 'description', 'Chana Masala', NULL, NULL),
(234, 'App\\Models\\Category', 25, 'en', 'name', 'Coffee', NULL, NULL),
(245, 'App\\Models\\Store', 4, 'en', 'name', 'New Sri Lakshmi Narasima Hotel', NULL, NULL),
(246, 'App\\Models\\Store', 4, 'en', 'address', 'Bus stand', NULL, NULL),
(247, 'App\\Models\\Store', 5, 'en', 'name', 'Muni\'s Biryani', NULL, NULL),
(248, 'App\\Models\\Store', 5, 'en', 'address', 'New Bus Stand Sholinghur', NULL, NULL),
(249, 'App\\Models\\Item', 80, 'en', 'name', 'Veg Noodles', NULL, NULL),
(250, 'App\\Models\\Item', 80, 'en', 'description', 'Vegetable Noodles', NULL, NULL),
(251, 'App\\Models\\Item', 81, 'en', 'name', 'Chapathi 2 Nos', NULL, NULL),
(252, 'App\\Models\\Item', 81, 'en', 'description', 'Chapathi 2 nos', NULL, NULL),
(253, 'App\\Models\\Item', 82, 'en', 'name', 'Parotta 2 Nos', NULL, NULL),
(254, 'App\\Models\\Item', 82, 'en', 'description', 'Parotta 2 nos', NULL, NULL),
(255, 'App\\Models\\Item', 83, 'en', 'name', 'Egg Noodles', NULL, NULL),
(256, 'App\\Models\\Item', 83, 'en', 'description', 'Egg Noodles', NULL, NULL),
(257, 'App\\Models\\Item', 84, 'en', 'name', 'Chicken Noodles', NULL, NULL),
(258, 'App\\Models\\Item', 84, 'en', 'description', 'Chicken Noodles', NULL, NULL),
(259, 'App\\Models\\Item', 85, 'en', 'name', 'Paneer Dosa', NULL, NULL),
(260, 'App\\Models\\Item', 85, 'en', 'description', 'Paneer dosa', NULL, NULL),
(261, 'App\\Models\\Item', 86, 'en', 'name', 'Gobi Dosa', NULL, NULL),
(262, 'App\\Models\\Item', 86, 'en', 'description', 'Gobi dosa', NULL, NULL),
(263, 'App\\Models\\Item', 87, 'en', 'name', 'Mushroom Dosa', NULL, NULL),
(264, 'App\\Models\\Item', 87, 'en', 'description', 'Mushroom dosa', NULL, NULL),
(265, 'App\\Models\\Item', 88, 'en', 'name', 'Kal Dosa 2 Nos', NULL, NULL),
(266, 'App\\Models\\Item', 88, 'en', 'description', 'Kal Dosa 2 Nos', NULL, NULL),
(267, 'App\\Models\\Item', 89, 'en', 'name', 'S.P Dosa', NULL, NULL),
(268, 'App\\Models\\Item', 89, 'en', 'description', 'S.p dosa', NULL, NULL),
(269, 'App\\Models\\Item', 90, 'en', 'name', 'Onion Dosa', NULL, NULL),
(270, 'App\\Models\\Item', 90, 'en', 'description', 'Onion dosa', NULL, NULL),
(271, 'App\\Models\\Item', 91, 'en', 'name', 'Onion Uttapam', NULL, NULL),
(272, 'App\\Models\\Item', 91, 'en', 'description', 'Onion uttapam', NULL, NULL),
(273, 'App\\Models\\Item', 92, 'en', 'name', 'Ghee Dosa', NULL, NULL),
(274, 'App\\Models\\Item', 92, 'en', 'description', 'Ghee dosa', NULL, NULL),
(275, 'App\\Models\\Item', 93, 'en', 'name', 'Veg Rice', NULL, NULL),
(276, 'App\\Models\\Item', 93, 'en', 'description', 'Mixed Vegetable with Fried Rice', NULL, NULL),
(277, 'App\\Models\\Item', 94, 'en', 'name', 'Egg Rice', NULL, NULL),
(278, 'App\\Models\\Item', 94, 'en', 'description', 'Egg Fried Rice', NULL, NULL),
(279, 'App\\Models\\Item', 95, 'en', 'name', 'Idly 3 Nos', NULL, NULL),
(280, 'App\\Models\\Item', 95, 'en', 'description', 'Idly 3 nos', NULL, NULL),
(281, 'App\\Models\\Item', 96, 'en', 'name', 'Chicken Rice', NULL, NULL),
(282, 'App\\Models\\Item', 96, 'en', 'description', 'Chicken Fried Rice', NULL, NULL),
(283, 'App\\Models\\Item', 97, 'en', 'name', 'Paneer Manchurian', NULL, NULL),
(284, 'App\\Models\\Item', 97, 'en', 'description', 'Paneer Manchurian', NULL, NULL),
(285, 'App\\Models\\Item', 98, 'en', 'name', 'Gobi Manchurian', NULL, NULL),
(286, 'App\\Models\\Item', 98, 'en', 'description', 'Gobi Manchurian', NULL, NULL),
(287, 'App\\Models\\Item', 99, 'en', 'name', 'Mushroom Manchurian', NULL, NULL),
(288, 'App\\Models\\Item', 99, 'en', 'description', 'Mashroom Manchurian', NULL, NULL),
(289, 'App\\Models\\Item', 100, 'en', 'name', 'Paneer 65', NULL, NULL),
(290, 'App\\Models\\Item', 100, 'en', 'description', 'Paneer 65', NULL, NULL),
(291, 'App\\Models\\Item', 101, 'en', 'name', 'Gobi 65', NULL, NULL),
(292, 'App\\Models\\Item', 101, 'en', 'description', 'Gobi 65', NULL, NULL),
(293, 'App\\Models\\Item', 102, 'en', 'name', 'Mushroom 65', NULL, NULL),
(294, 'App\\Models\\Item', 102, 'en', 'description', 'Mushroom 65', NULL, NULL),
(295, 'App\\Models\\Item', 103, 'en', 'name', 'Pepper Chicken', NULL, NULL),
(296, 'App\\Models\\Item', 103, 'en', 'description', 'Pepper Chicken', NULL, NULL),
(297, 'App\\Models\\Item', 104, 'en', 'name', 'Chilli Chicken', NULL, NULL),
(298, 'App\\Models\\Item', 104, 'en', 'description', 'Chilli Chicken', NULL, NULL),
(299, 'App\\Models\\Item', 105, 'en', 'name', 'Veg Noodles', NULL, NULL),
(300, 'App\\Models\\Item', 105, 'en', 'description', 'Veg noodles', NULL, NULL),
(301, 'App\\Models\\Item', 106, 'en', 'name', 'Paneer Noodles', NULL, NULL),
(302, 'App\\Models\\Item', 106, 'en', 'description', 'Paneer noodles', NULL, NULL),
(303, 'App\\Models\\Item', 107, 'en', 'name', 'Gobi Noodles', NULL, NULL),
(304, 'App\\Models\\Item', 107, 'en', 'description', 'Gobi noodles', NULL, NULL),
(305, 'App\\Models\\Item', 108, 'en', 'name', 'Mushroom Noodles', NULL, NULL),
(306, 'App\\Models\\Item', 108, 'en', 'description', 'Mushroom noodles', NULL, NULL),
(307, 'App\\Models\\Item', 109, 'en', 'name', 'Chicken Lollipop', NULL, NULL),
(308, 'App\\Models\\Item', 109, 'en', 'description', 'Chicken With Lollipop Style', NULL, NULL),
(309, 'App\\Models\\Item', 110, 'en', 'name', 'Veg Rice', NULL, NULL),
(310, 'App\\Models\\Item', 110, 'en', 'description', 'Veg rice', NULL, NULL),
(311, 'App\\Models\\Item', 111, 'en', 'name', 'Paneer Rice', NULL, NULL),
(312, 'App\\Models\\Item', 111, 'en', 'description', 'Paneer rice', NULL, NULL),
(313, 'App\\Models\\Item', 112, 'en', 'name', 'Gobi Rice', NULL, NULL),
(314, 'App\\Models\\Item', 112, 'en', 'description', 'Gobi rice', NULL, NULL),
(315, 'App\\Models\\Item', 113, 'en', 'name', 'Mushroom Rice', NULL, NULL),
(316, 'App\\Models\\Item', 113, 'en', 'description', 'Mushroom rice', NULL, NULL),
(317, 'App\\Models\\Item', 114, 'en', 'name', 'Chicken Pakoda', NULL, NULL),
(318, 'App\\Models\\Item', 114, 'en', 'description', 'Chicken Pakoda', NULL, NULL),
(319, 'App\\Models\\Item', 115, 'en', 'name', 'Veg Meals', NULL, NULL),
(320, 'App\\Models\\Item', 115, 'en', 'description', 'Meals + Sambar + Rasam + Karakolambu + Butter Milk + Kottu + Poriyal + Appalam', NULL, NULL),
(321, 'App\\Models\\Item', 116, 'en', 'name', 'Mutton Biryani Half + Egg', NULL, NULL),
(322, 'App\\Models\\Item', 116, 'en', 'description', 'Mutton Biryani with Egg', NULL, NULL),
(323, 'App\\Models\\Item', 117, 'en', 'name', 'Mutton Biryani Quater + Egg', NULL, NULL),
(324, 'App\\Models\\Item', 117, 'en', 'description', 'Mutton Biryani Quater With Egg', NULL, NULL),
(325, 'App\\Models\\Item', 118, 'en', 'name', 'Mutton Biryani Half', NULL, NULL),
(326, 'App\\Models\\Item', 118, 'en', 'description', 'Mutton Biryani Seeraga Samba Rice', NULL, NULL),
(327, 'App\\Models\\Item', 119, 'en', 'name', 'Mutton Biryani Quater', NULL, NULL),
(328, 'App\\Models\\Item', 119, 'en', 'description', 'Mutton Biryani Seeraga Samba Rice', NULL, NULL),
(329, 'App\\Models\\Item', 120, 'en', 'name', 'Chicken Biryani Half + Egg', NULL, NULL),
(330, 'App\\Models\\Item', 120, 'en', 'description', 'Chicken Biryani Half Plate With Boiled Egg', NULL, NULL),
(331, 'App\\Models\\Item', 121, 'en', 'name', 'Chicken Biryani Quater + Egg', NULL, NULL),
(332, 'App\\Models\\Item', 121, 'en', 'description', 'Chicken Biryani 1/4 with Boiled Egg', NULL, NULL),
(333, 'App\\Models\\Item', 122, 'en', 'name', 'Chicken Biryani Half', NULL, NULL),
(334, 'App\\Models\\Item', 122, 'en', 'description', 'Chicken Biryani Half Plate', NULL, NULL),
(335, 'App\\Models\\Item', 123, 'en', 'name', 'Chicken Biryani Quater', NULL, NULL),
(336, 'App\\Models\\Item', 123, 'en', 'description', 'Chicken Biryani 1/4', NULL, NULL),
(337, 'App\\Models\\Item', 124, 'en', 'name', '65 Biryani', NULL, NULL),
(338, 'App\\Models\\Item', 124, 'en', 'description', 'Kushka with Chicken Pakoda', NULL, NULL),
(339, 'App\\Models\\Store', 6, 'en', 'name', 'Nandhini Family Restaurant', NULL, NULL),
(340, 'App\\Models\\Store', 6, 'en', 'address', 'Walaja Road', NULL, NULL),
(341, 'App\\Models\\Category', 26, 'en', 'name', 'Maggi', NULL, NULL),
(342, 'App\\Models\\Item', 125, 'en', 'name', 'Sweet Corn Soup', NULL, NULL),
(343, 'App\\Models\\Item', 125, 'en', 'description', 'Sweet corn soup', NULL, NULL),
(344, 'App\\Models\\Item', 126, 'en', 'name', 'Veg Clear Soup', NULL, NULL),
(345, 'App\\Models\\Item', 126, 'en', 'description', 'Veg Clear Soup', NULL, NULL),
(346, 'App\\Models\\Item', 127, 'en', 'name', 'Veg Chettined Soup', NULL, NULL),
(347, 'App\\Models\\Item', 127, 'en', 'description', 'Veg Chettined Soup', NULL, NULL),
(348, 'App\\Models\\Item', 128, 'en', 'name', 'Hot & Sour Soup', NULL, NULL),
(349, 'App\\Models\\Item', 128, 'en', 'description', 'Hot & Sour Soup', NULL, NULL),
(350, 'App\\Models\\Item', 129, 'en', 'name', 'Lemon Coriander Soup', NULL, NULL),
(351, 'App\\Models\\Item', 129, 'en', 'description', 'Lemon Coriander Soup', NULL, NULL),
(352, 'App\\Models\\Item', 130, 'en', 'name', 'Veg Manchow Soup', NULL, NULL),
(353, 'App\\Models\\Item', 130, 'en', 'description', 'Veg Manchow Soup', NULL, NULL),
(354, 'App\\Models\\Item', 131, 'en', 'name', 'Sea Food Soup', NULL, NULL),
(355, 'App\\Models\\Item', 131, 'en', 'description', 'Sea Food Soup', NULL, NULL),
(356, 'App\\Models\\Item', 132, 'en', 'name', 'Samosa Masala', NULL, NULL),
(357, 'App\\Models\\Item', 132, 'en', 'description', 'Samosa Masala', NULL, NULL),
(358, 'App\\Models\\Item', 133, 'en', 'name', 'Samosa 2 Nos', NULL, NULL),
(359, 'App\\Models\\Item', 133, 'en', 'description', 'Samosa ( 2 Nos )', NULL, NULL),
(360, 'App\\Models\\Item', 134, 'en', 'name', 'Paneer Sandwich', NULL, NULL),
(361, 'App\\Models\\Item', 134, 'en', 'description', 'Paneer Sandwich', NULL, NULL),
(362, 'App\\Models\\Item', 135, 'en', 'name', 'Mushroom Sandwich', NULL, NULL),
(363, 'App\\Models\\Item', 135, 'en', 'description', 'Mushroom Sandwich', NULL, NULL),
(364, 'App\\Models\\Item', 136, 'en', 'name', 'Gobi Sandwich', NULL, NULL),
(365, 'App\\Models\\Item', 136, 'en', 'description', 'Gobi Sandwich', NULL, NULL),
(366, 'App\\Models\\Item', 137, 'en', 'name', 'Veg Sandwich', NULL, NULL),
(367, 'App\\Models\\Item', 137, 'en', 'description', 'Veg Sandwich', NULL, NULL),
(368, 'App\\Models\\Item', 138, 'en', 'name', 'Paneer Dosa', NULL, NULL),
(369, 'App\\Models\\Item', 138, 'en', 'description', 'Paneer Dosa', NULL, NULL),
(370, 'App\\Models\\Item', 139, 'en', 'name', 'Mushroom Dosa', NULL, NULL),
(371, 'App\\Models\\Item', 139, 'en', 'description', 'Mushroom Dosa', NULL, NULL),
(372, 'App\\Models\\Item', 140, 'en', 'name', 'Gobi Dosa', NULL, NULL),
(373, 'App\\Models\\Item', 140, 'en', 'description', 'Gobi Dosa', NULL, NULL),
(374, 'App\\Models\\Item', 141, 'en', 'name', 'Onion Rava Dosa', NULL, NULL),
(375, 'App\\Models\\Item', 141, 'en', 'description', 'Onion Rava Dosa', NULL, NULL),
(376, 'App\\Models\\Item', 142, 'en', 'name', 'Onion Dosa', NULL, NULL),
(377, 'App\\Models\\Item', 142, 'en', 'description', 'Onion Dosa', NULL, NULL),
(378, 'App\\Models\\Item', 143, 'en', 'name', 'Podi Dosa', NULL, NULL),
(379, 'App\\Models\\Item', 143, 'en', 'description', 'Podi Dosa', NULL, NULL),
(380, 'App\\Models\\Item', 144, 'en', 'name', 'Ghee Dosa', NULL, NULL),
(381, 'App\\Models\\Item', 144, 'en', 'description', 'Ghee Dosa', NULL, NULL),
(382, 'App\\Models\\Item', 145, 'en', 'name', 'Masala Dosa', NULL, NULL),
(383, 'App\\Models\\Item', 145, 'en', 'description', 'Masala Dosa', NULL, NULL),
(384, 'App\\Models\\Item', 146, 'en', 'name', 'Paper Roast Dosa', NULL, NULL),
(385, 'App\\Models\\Item', 146, 'en', 'description', 'Paper Roast Dosa', NULL, NULL),
(386, 'App\\Models\\Item', 147, 'en', 'name', 'Plain Dosa', NULL, NULL),
(387, 'App\\Models\\Item', 147, 'en', 'description', 'Plain Dosa', NULL, NULL),
(388, 'App\\Models\\Item', 148, 'en', 'name', 'Crab Soup', NULL, NULL),
(389, 'App\\Models\\Item', 148, 'en', 'description', 'Crab soup', NULL, NULL),
(390, 'App\\Models\\Item', 149, 'en', 'name', 'Mutton Bone Soup', NULL, NULL),
(391, 'App\\Models\\Item', 149, 'en', 'description', 'Mutton Bone Soup', NULL, NULL),
(392, 'App\\Models\\Item', 150, 'en', 'name', 'Chicken Chettinad Soup', NULL, NULL),
(393, 'App\\Models\\Item', 150, 'en', 'description', 'Chicken Chettinad Soup', NULL, NULL),
(394, 'App\\Models\\Item', 151, 'en', 'name', 'Chicken Clear Soup', NULL, NULL),
(395, 'App\\Models\\Item', 151, 'en', 'description', 'Chicken Clear Soup', NULL, NULL),
(396, 'App\\Models\\Item', 152, 'en', 'name', 'Chocolate Milk Shake', NULL, NULL),
(397, 'App\\Models\\Item', 152, 'en', 'description', 'Chocolate Milk Shake', NULL, NULL),
(398, 'App\\Models\\Item', 153, 'en', 'name', 'Strawberry Milk Shake', NULL, NULL),
(399, 'App\\Models\\Item', 153, 'en', 'description', 'Strawberry Milk Shake', NULL, NULL),
(400, 'App\\Models\\Item', 154, 'en', 'name', 'Dry Fruit Milk Shake', NULL, NULL),
(401, 'App\\Models\\Item', 154, 'en', 'description', 'Dry Fruit Milk Shake', NULL, NULL),
(402, 'App\\Models\\Item', 155, 'en', 'name', 'Dairy Milk Shake', NULL, NULL),
(403, 'App\\Models\\Item', 155, 'en', 'description', 'Dairy Milk Shake', NULL, NULL),
(404, 'App\\Models\\Item', 156, 'en', 'name', 'KitKat Milk Shake', NULL, NULL),
(405, 'App\\Models\\Item', 156, 'en', 'description', 'KitKat Milk Shake', NULL, NULL),
(406, 'App\\Models\\Item', 157, 'en', 'name', 'Butterscotch milk Shake', NULL, NULL),
(407, 'App\\Models\\Item', 157, 'en', 'description', 'Butterscotch milk Shake', NULL, NULL),
(408, 'App\\Models\\Item', 158, 'en', 'name', 'Chocolate Oreo Shake', NULL, NULL),
(409, 'App\\Models\\Item', 158, 'en', 'description', 'Chocolate Oreo Shake', NULL, NULL),
(410, 'App\\Models\\Item', 159, 'en', 'name', 'Vanilla Milk Shake', NULL, NULL),
(411, 'App\\Models\\Item', 159, 'en', 'description', 'Vanilla Milk Shake', NULL, NULL),
(444, 'App\\Models\\Item', 176, 'en', 'name', 'Garlic Naan', NULL, NULL),
(445, 'App\\Models\\Item', 176, 'en', 'description', 'Garlic Naan', NULL, NULL),
(446, 'App\\Models\\Item', 177, 'en', 'name', 'Pudina Naan', NULL, NULL),
(447, 'App\\Models\\Item', 177, 'en', 'description', 'Pudina Naan', NULL, NULL),
(448, 'App\\Models\\Item', 178, 'en', 'name', 'Butter Naan', NULL, NULL),
(449, 'App\\Models\\Item', 178, 'en', 'description', 'Butter Naan', NULL, NULL),
(450, 'App\\Models\\Item', 179, 'en', 'name', 'Naan', NULL, NULL),
(451, 'App\\Models\\Item', 179, 'en', 'description', 'Naan', NULL, NULL),
(452, 'App\\Models\\Item', 180, 'en', 'name', 'Butter Kulcha', NULL, NULL),
(453, 'App\\Models\\Item', 180, 'en', 'description', 'Butter Kulcha', NULL, NULL),
(454, 'App\\Models\\Item', 181, 'en', 'name', 'Tandoori Wheat Parota', NULL, NULL),
(455, 'App\\Models\\Item', 181, 'en', 'description', 'Tandoori Wheat Parota', NULL, NULL),
(456, 'App\\Models\\Item', 182, 'en', 'name', 'Masala Kulcha', NULL, NULL),
(457, 'App\\Models\\Item', 182, 'en', 'description', 'Masala Kulcha', NULL, NULL),
(458, 'App\\Models\\Item', 183, 'en', 'name', 'Phulka 2 Pcs', NULL, NULL),
(459, 'App\\Models\\Item', 183, 'en', 'description', 'Phulka 2 Pcs', NULL, NULL),
(460, 'App\\Models\\Item', 184, 'en', 'name', 'Butter Roti', NULL, NULL),
(461, 'App\\Models\\Item', 184, 'en', 'description', 'Butter Roti', NULL, NULL),
(462, 'App\\Models\\Item', 185, 'en', 'name', 'Roti', NULL, NULL),
(463, 'App\\Models\\Item', 185, 'en', 'description', 'Roti', NULL, NULL),
(464, 'App\\Models\\Item', 186, 'en', 'name', 'Double Cheesy Chicken Burger', NULL, NULL),
(465, 'App\\Models\\Item', 186, 'en', 'description', 'Double Cheesy Chicken Burger', NULL, NULL),
(466, 'App\\Models\\Item', 187, 'en', 'name', 'Spl.Chicken Burger', NULL, NULL),
(467, 'App\\Models\\Item', 187, 'en', 'description', 'Spl.Chicken Burger', NULL, NULL),
(468, 'App\\Models\\Item', 188, 'en', 'name', 'Fried Chicken Burger', NULL, NULL),
(469, 'App\\Models\\Item', 188, 'en', 'description', 'Fried Chicken Burger', NULL, NULL),
(470, 'App\\Models\\Item', 189, 'en', 'name', 'Egg Burger', NULL, NULL),
(471, 'App\\Models\\Item', 189, 'en', 'description', 'Egg Burger', NULL, NULL),
(472, 'App\\Models\\Item', 190, 'en', 'name', 'Paneer Cheesy Burger', NULL, NULL),
(473, 'App\\Models\\Item', 190, 'en', 'description', 'Paneer Cheesy Burger', NULL, NULL),
(474, 'App\\Models\\Item', 191, 'en', 'name', 'Spicy Veg Burger', NULL, NULL),
(475, 'App\\Models\\Item', 191, 'en', 'description', 'Spicy Veg Burger', NULL, NULL),
(476, 'App\\Models\\Item', 192, 'en', 'name', 'Veg Burger', NULL, NULL),
(477, 'App\\Models\\Item', 192, 'en', 'description', 'Veg burger', NULL, NULL),
(478, 'App\\Models\\Item', 193, 'en', 'name', 'Sweet Butter Sandwich', NULL, NULL),
(479, 'App\\Models\\Item', 193, 'en', 'description', 'Sweet Butter Sandwich', NULL, NULL),
(480, 'App\\Models\\Item', 194, 'en', 'name', 'Spicy Chilly Chicken Sandwich', NULL, NULL),
(481, 'App\\Models\\Item', 194, 'en', 'description', 'Spicy Chilly Chicken Sandwich', NULL, NULL),
(482, 'App\\Models\\Item', 195, 'en', 'name', 'Chicken Cheese Sandwich', NULL, NULL),
(483, 'App\\Models\\Item', 195, 'en', 'description', 'Chicken Cheese Sandwich', NULL, NULL),
(484, 'App\\Models\\Item', 196, 'en', 'name', 'Chicken Sandwich', NULL, NULL),
(485, 'App\\Models\\Item', 196, 'en', 'description', 'Chicken Sandwich', NULL, NULL),
(486, 'App\\Models\\Item', 197, 'en', 'name', 'Egg Sandwich', NULL, NULL),
(487, 'App\\Models\\Item', 197, 'en', 'description', 'Egg Sandwich', NULL, NULL),
(488, 'App\\Models\\Item', 198, 'en', 'name', 'Mushroom Sandwich', NULL, NULL),
(489, 'App\\Models\\Item', 198, 'en', 'description', 'Mushroom Sandwich', NULL, NULL),
(490, 'App\\Models\\Item', 199, 'en', 'name', 'Paneer Sandwich', NULL, NULL),
(491, 'App\\Models\\Item', 199, 'en', 'description', 'Paneer Sandwich', NULL, NULL),
(492, 'App\\Models\\Item', 200, 'en', 'name', 'Veg Sandwich', NULL, NULL),
(493, 'App\\Models\\Item', 200, 'en', 'description', 'Veg Sandwich', NULL, NULL),
(494, 'App\\Models\\Item', 201, 'en', 'name', 'Fried Chicken Roll', NULL, NULL),
(495, 'App\\Models\\Item', 201, 'en', 'description', 'Fried Chicken Roll', NULL, NULL),
(496, 'App\\Models\\Item', 202, 'en', 'name', 'Chicken Roll', NULL, NULL),
(497, 'App\\Models\\Item', 202, 'en', 'description', 'Chicken Roll', NULL, NULL),
(498, 'App\\Models\\Item', 203, 'en', 'name', 'Egg Roll', NULL, NULL),
(499, 'App\\Models\\Item', 203, 'en', 'description', 'Egg Roll', NULL, NULL),
(500, 'App\\Models\\Item', 204, 'en', 'name', 'Paneer Roll', NULL, NULL),
(501, 'App\\Models\\Item', 204, 'en', 'description', 'Paneer Roll', NULL, NULL),
(502, 'App\\Models\\Item', 205, 'en', 'name', 'Corn Roll', NULL, NULL),
(503, 'App\\Models\\Item', 205, 'en', 'description', 'Corn roll', NULL, NULL),
(504, 'App\\Models\\Item', 206, 'en', 'name', 'Mushroom Roll', NULL, NULL),
(505, 'App\\Models\\Item', 206, 'en', 'description', 'Mushroom Roll', NULL, NULL),
(506, 'App\\Models\\Item', 207, 'en', 'name', 'Veg Roll', NULL, NULL),
(507, 'App\\Models\\Item', 207, 'en', 'description', 'Veg Roll', NULL, NULL),
(508, 'App\\Models\\Item', 208, 'en', 'name', 'Fish Fingers(5 Pcs)', NULL, NULL),
(509, 'App\\Models\\Item', 208, 'en', 'description', 'Fish Fingers(5 Pcs)', NULL, NULL),
(510, 'App\\Models\\Item', 209, 'en', 'name', 'Chicken Nuggets (5 pcs)', NULL, NULL),
(511, 'App\\Models\\Item', 209, 'en', 'description', 'Chicken Nuggets (5 pcs)', NULL, NULL),
(512, 'App\\Models\\Item', 210, 'en', 'name', 'Chicken Fingers (5 Pcs)', NULL, NULL),
(513, 'App\\Models\\Item', 210, 'en', 'description', 'Chicken Fingers (5 Pcs)', NULL, NULL),
(514, 'App\\Models\\Item', 211, 'en', 'name', 'Veg Fingers (5 Pcs )', NULL, NULL),
(515, 'App\\Models\\Item', 211, 'en', 'description', 'Veg Fingers (5 Pcs )', NULL, NULL),
(516, 'App\\Models\\Item', 212, 'en', 'name', 'Veg Nuggets (5 Pcs)', NULL, NULL),
(517, 'App\\Models\\Item', 212, 'en', 'description', 'Veg Nuggets (5 Pcs)', NULL, NULL),
(518, 'App\\Models\\Item', 213, 'en', 'name', 'Smilies (7 Pcs)', NULL, NULL),
(519, 'App\\Models\\Item', 213, 'en', 'description', 'Smilies (7 Pcs)', NULL, NULL),
(520, 'App\\Models\\Item', 214, 'en', 'name', 'Cheesy Fries', NULL, NULL),
(521, 'App\\Models\\Item', 214, 'en', 'description', 'Cheesy Fries', NULL, NULL),
(522, 'App\\Models\\Item', 215, 'en', 'name', 'Peri Peri Fries', NULL, NULL),
(523, 'App\\Models\\Item', 215, 'en', 'description', 'Peri Peri Fries', NULL, NULL),
(524, 'App\\Models\\Item', 216, 'en', 'name', 'French Fries', NULL, NULL),
(525, 'App\\Models\\Item', 216, 'en', 'description', 'French Fries', NULL, NULL),
(526, 'App\\Models\\Item', 217, 'en', 'name', 'Green Apple Mojito', NULL, NULL),
(527, 'App\\Models\\Item', 217, 'en', 'description', 'Green Apple mojito', NULL, NULL),
(528, 'App\\Models\\Item', 218, 'en', 'name', 'Black Current Mojito', NULL, NULL),
(529, 'App\\Models\\Item', 218, 'en', 'description', 'Black Current mojito', NULL, NULL),
(530, 'App\\Models\\Item', 219, 'en', 'name', 'Mango Mojito', NULL, NULL),
(531, 'App\\Models\\Item', 219, 'en', 'description', 'Mango Mojito', NULL, NULL),
(532, 'App\\Models\\Item', 220, 'en', 'name', 'Strawberry Mojito', NULL, NULL),
(533, 'App\\Models\\Item', 220, 'en', 'description', 'Strawberry Mojito', NULL, NULL),
(534, 'App\\Models\\Item', 221, 'en', 'name', 'Pineapple Mojito', NULL, NULL),
(535, 'App\\Models\\Item', 221, 'en', 'description', 'Pineapple Mojito', NULL, NULL),
(536, 'App\\Models\\Item', 222, 'en', 'name', 'Watermelon Mojito', NULL, NULL),
(537, 'App\\Models\\Item', 222, 'en', 'description', 'Watermelon Mojito', NULL, NULL),
(538, 'App\\Models\\Item', 223, 'en', 'name', 'Grape Mojito', NULL, NULL),
(539, 'App\\Models\\Item', 223, 'en', 'description', 'Grape Mojito', NULL, NULL),
(540, 'App\\Models\\Item', 224, 'en', 'name', 'Blue Berry Mojito', NULL, NULL),
(541, 'App\\Models\\Item', 224, 'en', 'description', 'Blue Berry Mojito', NULL, NULL),
(542, 'App\\Models\\Item', 225, 'en', 'name', 'Lime& Mint Mojito', NULL, NULL),
(543, 'App\\Models\\Item', 225, 'en', 'description', 'Lime& Mint Mojito', NULL, NULL),
(544, 'App\\Models\\Item', 226, 'en', 'name', 'Virgin Mint Mojito', NULL, NULL),
(545, 'App\\Models\\Item', 226, 'en', 'description', 'Virgin Mint Mojito', NULL, NULL),
(546, 'App\\Models\\Item', 227, 'en', 'name', 'Blue Curacao Mojito', NULL, NULL),
(547, 'App\\Models\\Item', 227, 'en', 'description', 'Blue Curacao Mojito', NULL, NULL),
(548, 'App\\Models\\Item', 228, 'en', 'name', 'Lemon Soda', NULL, NULL),
(549, 'App\\Models\\Item', 228, 'en', 'description', 'Lemon soda', NULL, NULL),
(550, 'App\\Models\\Item', 229, 'en', 'name', 'Chicken roll Shawarma', NULL, NULL),
(551, 'App\\Models\\Item', 229, 'en', 'description', 'Chicken roll Shawarma', NULL, NULL),
(552, 'App\\Models\\Item', 230, 'en', 'name', 'Peri Peri Shawarma', NULL, NULL),
(553, 'App\\Models\\Item', 230, 'en', 'description', 'Peri Peri Shawarma', NULL, NULL),
(554, 'App\\Models\\Item', 231, 'en', 'name', 'Chicken Plate Shawarma', NULL, NULL),
(555, 'App\\Models\\Item', 231, 'en', 'description', 'Chicken Plate Shawarma', NULL, NULL),
(556, 'App\\Models\\Item', 232, 'en', 'name', 'Crab Masala Gravy', NULL, NULL),
(557, 'App\\Models\\Item', 232, 'en', 'description', 'Crab Masala Gravy', NULL, NULL),
(558, 'App\\Models\\Item', 233, 'en', 'name', 'Fish Masala Gravy', NULL, NULL),
(559, 'App\\Models\\Item', 233, 'en', 'description', 'Fish Masala Gravy', NULL, NULL),
(560, 'App\\Models\\Item', 234, 'en', 'name', 'Mutton Masala Gravy', NULL, NULL),
(561, 'App\\Models\\Item', 234, 'en', 'description', 'Mutton Masala Gravy', NULL, NULL),
(562, 'App\\Models\\Item', 235, 'en', 'name', 'Mutton Masala Gravy', NULL, NULL),
(563, 'App\\Models\\Item', 235, 'en', 'description', 'Mutton Masala Gravy', NULL, NULL),
(564, 'App\\Models\\Item', 236, 'en', 'name', 'Egg Masala Gravy', NULL, NULL),
(565, 'App\\Models\\Item', 236, 'en', 'description', 'Egg Masala Gravy', NULL, NULL),
(566, 'App\\Models\\Item', 237, 'en', 'name', 'Egg Chettinad Gravy', NULL, NULL),
(567, 'App\\Models\\Item', 237, 'en', 'description', 'Egg Chettinad Gravy', NULL, NULL),
(568, 'App\\Models\\Item', 238, 'en', 'name', 'Egg Kadai Gravy', NULL, NULL),
(569, 'App\\Models\\Item', 238, 'en', 'description', 'Egg Kadai Gravy', NULL, NULL),
(570, 'App\\Models\\Item', 239, 'en', 'name', 'Egg Keema Gravy', NULL, NULL),
(571, 'App\\Models\\Item', 239, 'en', 'description', 'Egg Keema Gravy', NULL, NULL),
(572, 'App\\Models\\Item', 240, 'en', 'name', 'Nadukozhi Gravy', NULL, NULL),
(573, 'App\\Models\\Item', 240, 'en', 'description', 'Nadukozhi Gravy', NULL, NULL),
(574, 'App\\Models\\Item', 241, 'en', 'name', 'Kadai Gravy', NULL, NULL),
(575, 'App\\Models\\Item', 241, 'en', 'description', 'Kadai Gravy', NULL, NULL),
(576, 'App\\Models\\Item', 242, 'en', 'name', 'Panjab Chicken Gravy', NULL, NULL),
(577, 'App\\Models\\Item', 242, 'en', 'description', 'Panjab Chicken Gravy', NULL, NULL),
(578, 'App\\Models\\Item', 243, 'en', 'name', 'Malabar Chicken Gravy', NULL, NULL),
(579, 'App\\Models\\Item', 243, 'en', 'description', 'Malabar Chicken Gravy', NULL, NULL),
(580, 'App\\Models\\Item', 244, 'en', 'name', 'Butter Chicken Gravy', NULL, NULL),
(581, 'App\\Models\\Item', 244, 'en', 'description', 'Butter Chicken Gravy', NULL, NULL),
(582, 'App\\Models\\Item', 245, 'en', 'name', 'Chicken Tikka Masala', NULL, NULL),
(583, 'App\\Models\\Item', 245, 'en', 'description', 'Chicken Tikka Masala', NULL, NULL),
(584, 'App\\Models\\Item', 246, 'en', 'name', 'Pepper Chicken Gravy', NULL, NULL),
(585, 'App\\Models\\Item', 246, 'en', 'description', 'Pepper Chicken Gravy', NULL, NULL),
(586, 'App\\Models\\Item', 247, 'en', 'name', 'Chicken Chettinad Gravy', NULL, NULL),
(587, 'App\\Models\\Item', 247, 'en', 'description', 'Chicken Chettinad Gravy', NULL, NULL),
(588, 'App\\Models\\Item', 248, 'en', 'name', 'Kadai Chicken Gravy', NULL, NULL),
(589, 'App\\Models\\Item', 248, 'en', 'description', 'Kadai Chicken Gravy', NULL, NULL),
(590, 'App\\Models\\Item', 249, 'en', 'name', 'Chicken Gravy', NULL, NULL),
(591, 'App\\Models\\Item', 249, 'en', 'description', 'Chicken Gravy', NULL, NULL),
(592, 'App\\Models\\Item', 250, 'en', 'name', 'Cashewnut Gravy', NULL, NULL),
(593, 'App\\Models\\Item', 250, 'en', 'description', 'Cashewnut Gravy', NULL, NULL),
(594, 'App\\Models\\Item', 251, 'en', 'name', 'Paneer Tikka Masala', NULL, NULL),
(595, 'App\\Models\\Item', 251, 'en', 'description', 'Paneer Tikka Masala', NULL, NULL),
(596, 'App\\Models\\Item', 252, 'en', 'name', 'Paneer Butter Gravy', NULL, NULL),
(597, 'App\\Models\\Item', 252, 'en', 'description', 'Paneer Butter Gravy', NULL, NULL),
(598, 'App\\Models\\Item', 253, 'en', 'name', 'Kadai Paneer Gravy', NULL, NULL),
(599, 'App\\Models\\Item', 253, 'en', 'description', 'Kadai Paneer Gravy', NULL, NULL),
(600, 'App\\Models\\Item', 254, 'en', 'name', 'Kadai Mushroom Gravy', NULL, NULL),
(601, 'App\\Models\\Item', 254, 'en', 'description', 'Kadai Mushroom Gravy', NULL, NULL),
(602, 'App\\Models\\Item', 255, 'en', 'name', 'Mushroom Chettinad Gravy', NULL, NULL),
(603, 'App\\Models\\Item', 255, 'en', 'description', 'Mushroom Chettinad Gravy', NULL, NULL),
(604, 'App\\Models\\Item', 256, 'en', 'name', 'Mushroom Pepper Masala', NULL, NULL),
(605, 'App\\Models\\Item', 256, 'en', 'description', 'Mushroom Pepper Masala', NULL, NULL),
(606, 'App\\Models\\Item', 257, 'en', 'name', 'Gobi Masala Fry', NULL, NULL),
(607, 'App\\Models\\Item', 257, 'en', 'description', 'Gobi Masala Fry', NULL, NULL),
(608, 'App\\Models\\Item', 258, 'en', 'name', 'Dal Tadka', NULL, NULL),
(609, 'App\\Models\\Item', 258, 'en', 'description', 'Dal Tadka', NULL, NULL),
(610, 'App\\Models\\Item', 259, 'en', 'name', 'Dal Fry Masala', NULL, NULL),
(611, 'App\\Models\\Item', 259, 'en', 'description', 'Dal Fry Masala', NULL, NULL),
(612, 'App\\Models\\Item', 260, 'en', 'name', 'Prawn Noodles', NULL, NULL),
(613, 'App\\Models\\Item', 260, 'en', 'description', 'Prawn noodles', NULL, NULL),
(614, 'App\\Models\\Item', 261, 'en', 'name', 'Mutton Noodles', NULL, NULL),
(615, 'App\\Models\\Item', 261, 'en', 'description', 'Mutton Noodles', NULL, NULL),
(616, 'App\\Models\\Item', 262, 'en', 'name', 'Chicken Noodles', NULL, NULL),
(617, 'App\\Models\\Item', 262, 'en', 'description', 'Chicken Noodles', NULL, NULL),
(618, 'App\\Models\\Item', 263, 'en', 'name', 'Egg Noodles', NULL, NULL),
(619, 'App\\Models\\Item', 263, 'en', 'description', 'Egg noodles', NULL, NULL),
(620, 'App\\Models\\Item', 264, 'en', 'name', 'Paneer Noodles', NULL, NULL),
(621, 'App\\Models\\Item', 264, 'en', 'description', 'Paneer noodles', NULL, NULL),
(622, 'App\\Models\\Item', 265, 'en', 'name', 'Mushroom Noodles', NULL, NULL),
(623, 'App\\Models\\Item', 265, 'en', 'description', 'Mushroom Noodles', NULL, NULL),
(624, 'App\\Models\\Item', 266, 'en', 'name', 'Gobi Noodles', NULL, NULL),
(625, 'App\\Models\\Item', 266, 'en', 'description', 'Gobi Noodles', NULL, NULL),
(626, 'App\\Models\\Item', 267, 'en', 'name', 'Veg Noodles', NULL, NULL),
(627, 'App\\Models\\Item', 267, 'en', 'description', 'Veg noodles', NULL, NULL),
(628, 'App\\Models\\Item', 268, 'en', 'name', 'Prawn Fried Rice', NULL, NULL),
(629, 'App\\Models\\Item', 268, 'en', 'description', 'Prawn fried Rice', NULL, NULL),
(630, 'App\\Models\\Item', 269, 'en', 'name', 'Mutton Fried Rice', NULL, NULL),
(631, 'App\\Models\\Item', 269, 'en', 'description', 'Mutton Fried Rice', NULL, NULL),
(632, 'App\\Models\\Item', 270, 'en', 'name', 'Mix Non Veg Fried Rice', NULL, NULL),
(633, 'App\\Models\\Item', 270, 'en', 'description', 'Mix Non Veg Fried Rice', NULL, NULL),
(634, 'App\\Models\\Item', 271, 'en', 'name', 'Chilli Garlic Chicken Fried Rice', NULL, NULL),
(635, 'App\\Models\\Item', 271, 'en', 'description', 'Chilli Garlic Chicken fried Rice', NULL, NULL),
(636, 'App\\Models\\Item', 272, 'en', 'name', 'Chicken Fried Rice', NULL, NULL),
(637, 'App\\Models\\Item', 272, 'en', 'description', 'Chicken Fried Rice', NULL, NULL),
(638, 'App\\Models\\Item', 273, 'en', 'name', 'Egg Fried Rice', NULL, NULL),
(639, 'App\\Models\\Item', 273, 'en', 'description', 'Egg Fried Rice', NULL, NULL),
(640, 'App\\Models\\Item', 274, 'en', 'name', 'Paneer Fried Rice', NULL, NULL),
(641, 'App\\Models\\Item', 274, 'en', 'description', 'Paneer Fried Rice', NULL, NULL),
(642, 'App\\Models\\Item', 275, 'en', 'name', 'Mushroom Fried Rice', NULL, NULL),
(643, 'App\\Models\\Item', 275, 'en', 'description', 'Mushroom Fried Rice', NULL, NULL),
(644, 'App\\Models\\Item', 276, 'en', 'name', 'Gobi Fried Rice', NULL, NULL),
(645, 'App\\Models\\Item', 276, 'en', 'description', 'Gobi Fried Rice', NULL, NULL),
(646, 'App\\Models\\Item', 277, 'en', 'name', 'Ghee Fried Rice', NULL, NULL),
(647, 'App\\Models\\Item', 277, 'en', 'description', 'Ghee Fried Rice', NULL, NULL),
(648, 'App\\Models\\Item', 278, 'en', 'name', 'Jeera Fried Rice', NULL, NULL),
(649, 'App\\Models\\Item', 278, 'en', 'description', 'Jeera Fried Rice', NULL, NULL),
(650, 'App\\Models\\Item', 279, 'en', 'name', 'Veg Fried Rice', NULL, NULL),
(651, 'App\\Models\\Item', 279, 'en', 'description', 'Veg Fried Rice', NULL, NULL),
(652, 'App\\Models\\Item', 280, 'en', 'name', 'Mix Veg Fried Rice', NULL, NULL),
(653, 'App\\Models\\Item', 280, 'en', 'description', 'Mix Veg Fried Rice', NULL, NULL),
(654, 'App\\Models\\Item', 281, 'en', 'name', 'Prawn Kadai Rice', NULL, NULL),
(655, 'App\\Models\\Item', 281, 'en', 'description', 'Prawn Kadai Rice', NULL, NULL),
(656, 'App\\Models\\Item', 282, 'en', 'name', 'Mutton Kadai Rice', NULL, NULL),
(657, 'App\\Models\\Item', 282, 'en', 'description', 'Mutton Kadai Rice', NULL, NULL),
(658, 'App\\Models\\Item', 283, 'en', 'name', 'Naddukozhi Kadai Rice', NULL, NULL),
(659, 'App\\Models\\Item', 283, 'en', 'description', 'Mutton Kadai Rice', NULL, NULL),
(660, 'App\\Models\\Item', 284, 'en', 'name', 'Chicken Kadai Rice', NULL, NULL),
(661, 'App\\Models\\Item', 284, 'en', 'description', 'Chicken Kadai Rice', NULL, NULL),
(662, 'App\\Models\\Item', 285, 'en', 'name', 'Chilli Prawn', NULL, NULL),
(663, 'App\\Models\\Item', 285, 'en', 'description', 'Chilli Prawn', NULL, NULL),
(664, 'App\\Models\\Item', 286, 'en', 'name', 'Prawn Pepper Fry', NULL, NULL),
(665, 'App\\Models\\Item', 286, 'en', 'description', 'Prawn Pepper Fry', NULL, NULL),
(666, 'App\\Models\\Item', 287, 'en', 'name', 'Prawn Chukka', NULL, NULL),
(667, 'App\\Models\\Item', 287, 'en', 'description', 'Prawn Chukka', NULL, NULL),
(668, 'App\\Models\\Item', 288, 'en', 'name', 'Prawn 65', NULL, NULL),
(669, 'App\\Models\\Item', 288, 'en', 'description', 'Prawn 65', NULL, NULL),
(670, 'App\\Models\\Item', 289, 'en', 'name', 'Fish 65', NULL, NULL),
(671, 'App\\Models\\Item', 289, 'en', 'description', 'Fish 65', NULL, NULL),
(672, 'App\\Models\\Item', 290, 'en', 'name', 'Fish Royal Seema', NULL, NULL),
(673, 'App\\Models\\Item', 290, 'en', 'description', 'Fish Royal Seema', NULL, NULL),
(674, 'App\\Models\\Item', 291, 'en', 'name', 'Apollo Fish', NULL, NULL),
(675, 'App\\Models\\Item', 291, 'en', 'description', 'Apollo Fish', NULL, NULL),
(676, 'App\\Models\\Item', 292, 'en', 'name', 'Mutton Ghee Roast', NULL, NULL),
(677, 'App\\Models\\Item', 292, 'en', 'description', 'Mutton Ghee Roast', NULL, NULL),
(678, 'App\\Models\\Item', 293, 'en', 'name', 'Mutton Chukka', NULL, NULL),
(679, 'App\\Models\\Item', 293, 'en', 'description', 'Mutton chukka', NULL, NULL),
(680, 'App\\Models\\Item', 294, 'en', 'name', 'Mutton Pepper Fry', NULL, NULL),
(681, 'App\\Models\\Item', 294, 'en', 'description', 'Mutton Pepper Fry', NULL, NULL),
(682, 'App\\Models\\Item', 295, 'en', 'name', 'Chicken Chukka', NULL, NULL),
(683, 'App\\Models\\Item', 295, 'en', 'description', 'Chicken Chukka', NULL, NULL),
(684, 'App\\Models\\Item', 296, 'en', 'name', 'Pepper Chicken', NULL, NULL),
(685, 'App\\Models\\Item', 296, 'en', 'description', 'Pepper Chicken', NULL, NULL),
(686, 'App\\Models\\Item', 297, 'en', 'name', 'Chicken Royal Seema', NULL, NULL),
(687, 'App\\Models\\Item', 297, 'en', 'description', 'Chicken Royal Seema', NULL, NULL),
(688, 'App\\Models\\Item', 298, 'en', 'name', 'Chicken 90', NULL, NULL),
(689, 'App\\Models\\Item', 298, 'en', 'description', 'Chicken 90', NULL, NULL),
(690, 'App\\Models\\Item', 299, 'en', 'name', 'Chicken 555', NULL, NULL),
(691, 'App\\Models\\Item', 299, 'en', 'description', 'Chicken 555', NULL, NULL),
(692, 'App\\Models\\Item', 300, 'en', 'name', 'Chicken 72', NULL, NULL),
(693, 'App\\Models\\Item', 300, 'en', 'description', 'Chicken 72', NULL, NULL),
(694, 'App\\Models\\Item', 301, 'en', 'name', 'Chicken 65', NULL, NULL),
(695, 'App\\Models\\Item', 301, 'en', 'description', 'Chicken 65', NULL, NULL),
(696, 'App\\Models\\Item', 302, 'en', 'name', 'Rampuri Chicken', NULL, NULL),
(697, 'App\\Models\\Item', 302, 'en', 'description', 'Rampuri Chicken', NULL, NULL),
(698, 'App\\Models\\Item', 303, 'en', 'name', 'Chicken Fry', NULL, NULL),
(699, 'App\\Models\\Item', 303, 'en', 'description', 'Chicken Fry', NULL, NULL),
(700, 'App\\Models\\Item', 304, 'en', 'name', 'Ginger Chicken', NULL, NULL),
(701, 'App\\Models\\Item', 304, 'en', 'description', 'Ginger Chicken', NULL, NULL),
(702, 'App\\Models\\Item', 305, 'en', 'name', 'Garlic Chicken', NULL, NULL),
(703, 'App\\Models\\Item', 305, 'en', 'description', 'Garlic Chicken', NULL, NULL),
(704, 'App\\Models\\Item', 306, 'en', 'name', 'Dragon Chicken', NULL, NULL),
(705, 'App\\Models\\Item', 306, 'en', 'description', 'Dragon Chicken', NULL, NULL),
(706, 'App\\Models\\Item', 307, 'en', 'name', 'Schezwan Chicken', NULL, NULL),
(707, 'App\\Models\\Item', 307, 'en', 'description', 'Schezwan Chicken', NULL, NULL),
(708, 'App\\Models\\Item', 308, 'en', 'name', 'Lemon Chicken', NULL, NULL),
(709, 'App\\Models\\Item', 308, 'en', 'description', 'Lemon Chicken', NULL, NULL),
(710, 'App\\Models\\Item', 309, 'en', 'name', 'Chicken Manchurian', NULL, NULL),
(711, 'App\\Models\\Item', 309, 'en', 'description', 'Chicken Manchurian', NULL, NULL),
(712, 'App\\Models\\Item', 310, 'en', 'name', 'Chilli Chicken', NULL, NULL),
(713, 'App\\Models\\Item', 310, 'en', 'description', 'Chilli Chicken', NULL, NULL),
(714, 'App\\Models\\Item', 311, 'en', 'name', 'Chicken Lollipop', NULL, NULL),
(715, 'App\\Models\\Item', 311, 'en', 'description', 'Chicken Lollipop', NULL, NULL),
(716, 'App\\Models\\Item', 312, 'en', 'name', 'Egg Pepper Fry', NULL, NULL),
(717, 'App\\Models\\Item', 312, 'en', 'description', 'Egg Pepper Fry', NULL, NULL),
(718, 'App\\Models\\Item', 313, 'en', 'name', 'Egg Manchurian', NULL, NULL),
(719, 'App\\Models\\Item', 313, 'en', 'description', 'Egg Manchurian', NULL, NULL),
(720, 'App\\Models\\Item', 314, 'en', 'name', 'Chilli Egg', NULL, NULL),
(721, 'App\\Models\\Item', 314, 'en', 'description', 'Chilli Egg', NULL, NULL),
(722, 'App\\Models\\Item', 315, 'en', 'name', 'Masala Omelette', NULL, NULL),
(723, 'App\\Models\\Item', 315, 'en', 'description', 'Masala Omelette', NULL, NULL),
(724, 'App\\Models\\Item', 316, 'en', 'name', 'Egg Podimas', NULL, NULL),
(725, 'App\\Models\\Item', 316, 'en', 'description', 'Egg Podimas', NULL, NULL);
INSERT INTO `translations` (`id`, `translationable_type`, `translationable_id`, `locale`, `key`, `value`, `created_at`, `updated_at`) VALUES
(726, 'App\\Models\\Item', 317, 'en', 'name', 'Chicken Tikka', NULL, NULL),
(727, 'App\\Models\\Item', 317, 'en', 'description', 'Chicken Tikka', NULL, NULL),
(728, 'App\\Models\\Item', 318, 'en', 'name', 'Paneer Tikka', NULL, NULL),
(729, 'App\\Models\\Item', 318, 'en', 'description', 'Paneer Tikka', NULL, NULL),
(730, 'App\\Models\\Item', 319, 'en', 'name', 'Paneer 65', NULL, NULL),
(731, 'App\\Models\\Item', 319, 'en', 'description', 'Paneer 65', NULL, NULL),
(732, 'App\\Models\\Item', 320, 'en', 'name', 'Paneer Manchurian', NULL, NULL),
(733, 'App\\Models\\Item', 320, 'en', 'description', 'Paneer Manchurian', NULL, NULL),
(734, 'App\\Models\\Item', 321, 'en', 'name', 'Chilli Paneer', NULL, NULL),
(735, 'App\\Models\\Item', 321, 'en', 'description', 'Chilli Paneer', NULL, NULL),
(736, 'App\\Models\\Item', 322, 'en', 'name', 'Paneer Pepper Fry', NULL, NULL),
(737, 'App\\Models\\Item', 322, 'en', 'description', 'Paneer Pepper Fry', NULL, NULL),
(738, 'App\\Models\\Item', 323, 'en', 'name', 'Chilli Gobi', NULL, NULL),
(739, 'App\\Models\\Item', 323, 'en', 'description', 'Chilli Gobi', NULL, NULL),
(740, 'App\\Models\\Item', 324, 'en', 'name', 'Gobi 65', NULL, NULL),
(741, 'App\\Models\\Item', 324, 'en', 'description', 'Gobi 65', NULL, NULL),
(742, 'App\\Models\\Item', 325, 'en', 'name', 'Gobi Manchurian', NULL, NULL),
(743, 'App\\Models\\Item', 325, 'en', 'description', 'Gobi Manchurian', NULL, NULL),
(744, 'App\\Models\\Item', 326, 'en', 'name', 'Gobi Pepper Fry', NULL, NULL),
(745, 'App\\Models\\Item', 326, 'en', 'description', 'Gobi Pepper Fry', NULL, NULL),
(746, 'App\\Models\\Item', 327, 'en', 'name', 'Gobi Butter Garlic', NULL, NULL),
(747, 'App\\Models\\Item', 327, 'en', 'description', 'Gobi Butter Garlic', NULL, NULL),
(748, 'App\\Models\\Item', 328, 'en', 'name', 'Mushroom 65', NULL, NULL),
(749, 'App\\Models\\Item', 328, 'en', 'description', 'Mushroom 65', NULL, NULL),
(750, 'App\\Models\\Item', 329, 'en', 'name', 'Mushroom Manchurian', NULL, NULL),
(751, 'App\\Models\\Item', 329, 'en', 'description', 'Mushroom Manchurian', NULL, NULL),
(752, 'App\\Models\\Item', 330, 'en', 'name', 'Chilli Mushroom', NULL, NULL),
(753, 'App\\Models\\Item', 330, 'en', 'description', 'Chilli Mushroom', NULL, NULL),
(754, 'App\\Models\\Item', 331, 'en', 'name', 'Grill Chicken', NULL, NULL),
(755, 'App\\Models\\Item', 331, 'en', 'description', 'Grill Chicken', NULL, NULL),
(762, 'App\\Models\\Item', 335, 'en', 'name', 'Barbeque Chicken', NULL, NULL),
(763, 'App\\Models\\Item', 335, 'en', 'description', 'Barbeque Chicken', NULL, NULL),
(764, 'App\\Models\\Item', 336, 'en', 'name', 'Tandoori Chicken', NULL, NULL),
(765, 'App\\Models\\Item', 336, 'en', 'description', 'Tandoori Chicken', NULL, NULL),
(766, 'App\\Models\\Item', 337, 'en', 'name', 'Kfc Chicken', NULL, NULL),
(767, 'App\\Models\\Item', 337, 'en', 'description', 'Kfc Chicken', NULL, NULL),
(768, 'App\\Models\\Item', 338, 'en', 'name', 'Kfc Mini Bucket', NULL, NULL),
(769, 'App\\Models\\Item', 338, 'en', 'description', 'Kfc mini bucket+ cocacola', NULL, NULL),
(770, 'App\\Models\\Item', 339, 'en', 'name', 'Fish Full Bbq', NULL, NULL),
(771, 'App\\Models\\Item', 339, 'en', 'description', 'Fish Full Bbq', NULL, NULL),
(772, 'App\\Models\\Item', 340, 'en', 'name', 'Chicken Popcorn 16 Pcs', NULL, NULL),
(773, 'App\\Models\\Item', 340, 'en', 'description', 'Chicken Popcorn 16 Pcs', NULL, NULL),
(774, 'App\\Models\\Item', 341, 'en', 'name', 'Chicken Popcorn 12 Pcs', NULL, NULL),
(775, 'App\\Models\\Item', 341, 'en', 'description', 'Chicken Popcorn 12 Pcs', NULL, NULL),
(776, 'App\\Models\\Item', 342, 'en', 'name', 'Chicken Thigh', NULL, NULL),
(777, 'App\\Models\\Item', 342, 'en', 'description', 'Chicken Thigh', NULL, NULL),
(778, 'App\\Models\\Item', 343, 'en', 'name', 'Chicken Strips 3 Pcs', NULL, NULL),
(779, 'App\\Models\\Item', 343, 'en', 'description', 'Chicken Strips 3 Pcs', NULL, NULL),
(780, 'App\\Models\\Item', 344, 'en', 'name', 'Chicken Wings 3 Pcs', NULL, NULL),
(781, 'App\\Models\\Item', 344, 'en', 'description', 'Chicken Wings 3 Pcs', NULL, NULL),
(782, 'App\\Models\\Item', 345, 'en', 'name', 'Chicken Lollipop Kfc 3 Pcs', NULL, NULL),
(783, 'App\\Models\\Item', 345, 'en', 'description', 'Chicken Lollipop Kfc 3 Pcs', NULL, NULL),
(784, 'App\\Models\\Item', 346, 'en', 'name', 'Mushroom 5 Pcs', NULL, NULL),
(785, 'App\\Models\\Item', 346, 'en', 'description', 'Mushroom 5 Pcs', NULL, NULL),
(786, 'App\\Models\\Item', 347, 'en', 'name', 'Paneer 4 Pcs', NULL, NULL),
(787, 'App\\Models\\Item', 347, 'en', 'description', 'Paneer 4 Pcs', NULL, NULL),
(788, 'App\\Models\\Item', 348, 'en', 'name', 'Mutton Pasta', NULL, NULL),
(789, 'App\\Models\\Item', 348, 'en', 'description', 'Mutton Pasta', NULL, NULL),
(790, 'App\\Models\\Item', 349, 'en', 'name', 'Chicken Pasta', NULL, NULL),
(791, 'App\\Models\\Item', 349, 'en', 'description', 'Chicken Pasta', NULL, NULL),
(792, 'App\\Models\\Item', 350, 'en', 'name', 'Cheese Pasta', NULL, NULL),
(793, 'App\\Models\\Item', 350, 'en', 'description', 'Cheese Pasta', NULL, NULL),
(794, 'App\\Models\\Item', 351, 'en', 'name', 'Red Sauce Pasta', NULL, NULL),
(795, 'App\\Models\\Item', 351, 'en', 'description', 'Red Sauce Pasta', NULL, NULL),
(796, 'App\\Models\\Item', 352, 'en', 'name', 'White Sauce Pasta', NULL, NULL),
(797, 'App\\Models\\Item', 352, 'en', 'description', 'White Sauce Pasta', NULL, NULL),
(798, 'App\\Models\\Item', 353, 'en', 'name', 'Onion Samosa', NULL, NULL),
(799, 'App\\Models\\Item', 353, 'en', 'description', 'Onion Samosa', NULL, NULL),
(800, 'App\\Models\\Item', 354, 'en', 'name', 'Oreo Coffee', NULL, NULL),
(801, 'App\\Models\\Item', 354, 'en', 'description', 'Oreo Coffee', NULL, NULL),
(802, 'App\\Models\\Item', 355, 'en', 'name', 'KitKat Coffee', NULL, NULL),
(803, 'App\\Models\\Item', 355, 'en', 'description', 'KitKat Coffee', NULL, NULL),
(804, 'App\\Models\\Item', 356, 'en', 'name', 'Choco Coffee', NULL, NULL),
(805, 'App\\Models\\Item', 356, 'en', 'description', 'Choco Coffee', NULL, NULL),
(806, 'App\\Models\\Item', 357, 'en', 'name', 'Cold Coffee', NULL, NULL),
(807, 'App\\Models\\Item', 357, 'en', 'description', 'Cold Coffee', NULL, NULL),
(808, 'App\\Models\\Item', 358, 'en', 'name', 'Oreo Milk Shake', NULL, NULL),
(809, 'App\\Models\\Item', 358, 'en', 'description', 'Oreo Milk Shake', NULL, NULL),
(810, 'App\\Models\\Item', 359, 'en', 'name', 'Boost Milk Shake', NULL, NULL),
(811, 'App\\Models\\Item', 359, 'en', 'description', 'Boost Milk Shake', NULL, NULL),
(812, 'App\\Models\\Item', 360, 'en', 'name', 'Dry Fruit Shake', NULL, NULL),
(813, 'App\\Models\\Item', 360, 'en', 'description', 'Dry Fruit Shake', NULL, NULL),
(814, 'App\\Models\\Item', 361, 'en', 'name', 'Dates Shake', NULL, NULL),
(815, 'App\\Models\\Item', 361, 'en', 'description', 'Dates Shake', NULL, NULL),
(816, 'App\\Models\\Item', 362, 'en', 'name', 'Strawberry Shake', NULL, NULL),
(817, 'App\\Models\\Item', 362, 'en', 'description', 'Strawberry Shake', NULL, NULL),
(818, 'App\\Models\\Item', 363, 'en', 'name', 'Black Currant MilkShake', NULL, NULL),
(819, 'App\\Models\\Item', 363, 'en', 'description', 'Black Currant MilkShake', NULL, NULL),
(820, 'App\\Models\\Item', 364, 'en', 'name', 'Butterscotch MilkShake', NULL, NULL),
(821, 'App\\Models\\Item', 364, 'en', 'description', 'Butterscotch MilkShake', NULL, NULL),
(822, 'App\\Models\\Item', 365, 'en', 'name', 'Vanilla MilkShake', NULL, NULL),
(823, 'App\\Models\\Item', 365, 'en', 'description', 'Vanilla MilkShake', NULL, NULL),
(824, 'App\\Models\\Item', 366, 'en', 'name', 'Chocolate MilkShake', NULL, NULL),
(825, 'App\\Models\\Item', 366, 'en', 'description', 'Chocolate MilkShake', NULL, NULL),
(826, 'App\\Models\\Item', 367, 'en', 'name', 'Rose Milk', NULL, NULL),
(827, 'App\\Models\\Item', 367, 'en', 'description', 'Rose Milk', NULL, NULL),
(828, 'App\\Models\\Store', 7, 'en', 'name', 'Ravanas Restaurant', NULL, NULL),
(829, 'App\\Models\\Store', 7, 'en', 'address', 'Sholinghur', NULL, NULL),
(830, 'App\\Models\\Item', 368, 'en', 'name', 'Nattu Kozhi Soup', NULL, NULL),
(831, 'App\\Models\\Item', 368, 'en', 'description', 'Nattu Kozhi Soup', NULL, NULL),
(832, 'App\\Models\\Item', 369, 'en', 'name', 'Mutton Soup', NULL, NULL),
(833, 'App\\Models\\Item', 369, 'en', 'description', 'Mutton Soup', NULL, NULL),
(834, 'App\\Models\\Item', 370, 'en', 'name', 'Chicken Soup', NULL, NULL),
(835, 'App\\Models\\Item', 370, 'en', 'description', 'Chicken Soup', NULL, NULL),
(836, 'App\\Models\\Item', 371, 'en', 'name', 'Chicken Clear Soup', NULL, NULL),
(837, 'App\\Models\\Item', 371, 'en', 'description', 'Chicken Clear Soup', NULL, NULL),
(838, 'App\\Models\\Item', 372, 'en', 'name', 'Cream Of Mushroom Soup', NULL, NULL),
(839, 'App\\Models\\Item', 372, 'en', 'description', 'Cream Of Mushroom Soup', NULL, NULL),
(840, 'App\\Models\\Item', 373, 'en', 'name', 'Mushroom Soup', NULL, NULL),
(841, 'App\\Models\\Item', 373, 'en', 'description', 'Mushroom Soup', NULL, NULL),
(842, 'App\\Models\\Item', 374, 'en', 'name', 'Manchow', NULL, NULL),
(843, 'App\\Models\\Item', 374, 'en', 'description', 'Manchow', NULL, NULL),
(844, 'App\\Models\\Item', 375, 'en', 'name', 'Sweet Corn Soup', NULL, NULL),
(845, 'App\\Models\\Item', 375, 'en', 'description', 'Sweet Corn Soup', NULL, NULL),
(846, 'App\\Models\\Item', 376, 'en', 'name', 'Veg Clear Soup', NULL, NULL),
(847, 'App\\Models\\Item', 376, 'en', 'description', 'Veg Clear Soup', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unit` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL,
  `cm_firebase_token` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `order_count` int(11) NOT NULL DEFAULT 0,
  `login_medium` varchar(255) DEFAULT NULL,
  `social_id` varchar(255) DEFAULT NULL,
  `zone_id` bigint(20) UNSIGNED DEFAULT NULL,
  `wallet_balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `loyalty_point` decimal(24,3) NOT NULL DEFAULT 0.000,
  `ref_code` varchar(10) DEFAULT NULL,
  `current_language_key` varchar(255) DEFAULT 'en',
  `ref_by` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_token` varchar(255) DEFAULT NULL,
  `module_ids` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `is_phone_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `interest`, `cm_firebase_token`, `status`, `order_count`, `login_medium`, `social_id`, `zone_id`, `wallet_balance`, `loyalty_point`, `ref_code`, `current_language_key`, `ref_by`, `temp_token`, `module_ids`) VALUES
(1, 'Muthu', 'K', '+919787698254', 'rohitmu@gmail.com', NULL, 0, NULL, '$2y$10$p8UzXRPU6.jxAMdROmS6iuv.knCsDbJy4jcBYBTadPyROZ8yD7dWO', NULL, '2024-09-19 05:56:38', '2024-11-04 17:05:43', NULL, '@', 1, 4, NULL, NULL, 0, 5.000, 0.000, 'WGHRJIBEBM', 'en', NULL, NULL, NULL),
(2, 'Muthu', 'K', '+919677957844', 'rohitmut7@gmail.com', NULL, 0, NULL, '$2y$10$CvYVgOZaDjtUtXyNNX.bp.nn3KsSQvkAnw7ZNdPiuQ.UugNL26TkC', NULL, '2024-10-04 11:23:22', '2024-10-04 11:23:26', NULL, '@', 1, 0, NULL, NULL, 0, 0.000, 0.000, 'RXAMMKM8GO', 'en', NULL, NULL, NULL),
(3, 'J', 'Me', '7871901741', NULL, NULL, 0, NULL, NULL, NULL, '2024-10-04 11:59:13', '2024-10-04 11:59:13', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'TZLGSINJXS', 'en', NULL, NULL, NULL),
(4, 'Muthu', 'K', '+918838692286', NULL, NULL, 0, NULL, NULL, NULL, '2024-10-04 12:10:51', '2024-10-04 12:10:56', NULL, '@', 1, 0, NULL, NULL, 0, 0.000, 0.000, '899KFZEV9P', 'en', NULL, NULL, NULL),
(5, 'Muthu', 'K', '+919629741836', NULL, NULL, 0, NULL, NULL, NULL, '2024-10-19 16:52:38', '2024-10-19 16:53:00', NULL, 'dujzN7q5TL6tVwKM7_Rooj:APA91bGFcaDtttphEklQKjfitZPn9PQkZ7SIjIbetpQ1241oMQ2HiB_leKrjYoM7JjnKeitFCa6nvzVw61YbLNgZttRO2RRtGPs5KOjmBG4TY8uH0rEhAeNo3iWN5yn-H9sYS1oHJkjl', 1, 0, NULL, NULL, 0, 0.000, 0.000, 'NQ4RIZEK6K', 'en', NULL, NULL, NULL),
(6, 'Ramesh', 'K', '+919080403711', NULL, NULL, 0, NULL, NULL, NULL, '2024-10-19 17:56:11', '2024-10-19 17:58:40', NULL, 'e8qwGxX2R7iJAqbd0ziXpG:APA91bEj8_NoIqEOw7zLGo9mXuFKu4A0ltUKPEjP58jcRApYZI51TPk4LQU726QAPmO1ACjaYXJm6oJe2odsiro_TVo_ROegv6ZshcDX8oW9dqjwIPc6Q1biw9dbbbOMAjR31XhxdeWD', 1, 0, NULL, NULL, 0, 0.000, 0.000, 'PFRLIVN1V8', 'en', NULL, NULL, NULL),
(7, 'Raja', 'K', '+919876543211', NULL, NULL, 0, NULL, NULL, NULL, '2024-10-23 13:35:37', '2024-10-23 13:35:37', NULL, NULL, 1, 0, NULL, NULL, NULL, 0.000, 0.000, 'DFJMBF9ZDS', 'en', NULL, NULL, NULL),
(8, 'Raja', 'K', '+919876543210', NULL, NULL, 0, NULL, NULL, NULL, '2024-10-23 14:34:57', '2024-10-23 15:25:42', '[15]', '@', 1, 0, NULL, NULL, 0, 0.000, 0.000, 'Y7G7G7EIFK', 'en', NULL, NULL, '[\"2\"]'),
(9, 'Kumar', 'S', '+919876543222', NULL, NULL, 0, NULL, NULL, NULL, '2024-10-23 16:26:23', '2024-10-23 16:26:34', NULL, '@', 1, 0, NULL, NULL, 0, 0.000, 0.000, 'QRGHEPOIV4', 'en', NULL, NULL, NULL),
(10, 'Muthu', 'K', '+919876543216', NULL, NULL, 0, NULL, NULL, NULL, '2024-10-23 16:32:14', '2024-10-23 16:32:18', NULL, '@', 1, 0, NULL, NULL, 0, 0.000, 0.000, 'QLEO8DYJ2Z', 'en', NULL, NULL, NULL),
(11, 'Sekar', 'M', '+918898765432', NULL, NULL, 0, NULL, NULL, NULL, '2024-10-23 17:49:26', '2024-10-23 17:50:26', NULL, NULL, 1, 0, NULL, NULL, 0, 0.000, 0.000, 'XE7DCMCUOK', 'en', NULL, NULL, NULL),
(12, 'Demo', '1', '+917558103851', NULL, NULL, 0, NULL, NULL, NULL, '2024-10-24 11:49:20', '2024-10-24 11:49:37', NULL, 'fmI59DCdRfiWG6AAcJDGO0:APA91bH1qBEGFJ9bXxnYQRzjo32Olg20Z72YpDGmhJf-6LWhLItwLIMkI4nC9WdJB2eH1q0kXvog6gP-bx2oKm5nhMKbVgOmGHngBSwrT-vVCsAY2h27ANRuIG6zAWa2y0uxOnV8ron0', 1, 0, NULL, NULL, 0, 0.000, 0.000, '9BKGJO8BZB', 'en', NULL, NULL, NULL),
(13, 'Surya', 'R', '+918098765432', NULL, NULL, 0, NULL, NULL, NULL, '2024-10-24 16:15:47', '2024-10-24 16:15:56', NULL, 'ewf2KeAtSwaypGpwt4h6Zr:APA91bEQYabKa7gQCFNFt8b8CSEjFGJ2saDYPPw7xjcmLjJjivdlL7FiO_g6IX08M5R1utTZxuXXbkxvi_yRuk1Zyava1VEc0464G6tVstMQtHd-XmzGlMc', 1, 0, NULL, NULL, 0, 0.000, 0.000, 'OTSY3ILGBF', 'en', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deliveryman_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `f_name`, `l_name`, `phone`, `email`, `image`, `admin_id`, `user_id`, `vendor_id`, `deliveryman_id`, `created_at`, `updated_at`) VALUES
(1, 'Muthu', 'K', '+919787698254', 'rohitmu@gmail.com', NULL, NULL, 1, NULL, NULL, '2024-09-19 06:00:41', '2024-09-19 06:00:41'),
(2, 'Vishnu Cafe & Sri Kanna Hotel', '', '9500628584', 'Vishnucafe5@gmail.com', '2024-10-16-670f657954cd9.png', NULL, NULL, 3, NULL, '2024-10-07 11:13:02', '2024-10-16 12:34:25'),
(3, 'Raja', 'K', '+919876543210', 'rohitmuthu@gmail.com', '2024-10-07-67036e50bfd0b.png', NULL, NULL, NULL, 1, '2024-10-07 11:16:57', '2024-10-07 11:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `data`, `status`, `user_id`, `vendor_id`, `delivery_man_id`, `created_at`, `updated_at`) VALUES
(1, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your  order 100001 is successfully placed\",\"order_id\":100001,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 11:07:22', '2024-10-07 11:07:22'),
(2, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100001 is confirmed\",\"order_id\":100001,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 11:09:19', '2024-10-07 11:09:19'),
(3, '{\"title\":\"Order Notification\",\"description\":\"New order push description\",\"order_id\":100001,\"module_id\":2,\"order_type\":\"delivery\",\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 3, NULL, '2024-10-07 11:09:20', '2024-10-07 11:09:20'),
(4, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your food is started for cooking by Vishnu Cafe & Sri Kanna Hotel\",\"order_id\":100001,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 11:12:16', '2024-10-07 11:12:16'),
(5, '{\"title\":\"Order Notification\",\"description\":\"Delivery man is on the way. For this order 100001\",\"order_id\":100001,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 11:12:45', '2024-10-07 11:12:45'),
(6, '{\"title\":\"Order Notification\",\"description\":\"Order 100001 is canceled by your request\",\"order_id\":100001,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 11:47:34', '2024-10-07 11:47:34'),
(7, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your  order 100002 is successfully placed\",\"order_id\":100002,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 11:48:01', '2024-10-07 11:48:01'),
(8, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100002 is confirmed\",\"order_id\":100002,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 11:48:43', '2024-10-07 11:48:43'),
(9, '{\"title\":\"Order Notification\",\"description\":\"New order push description\",\"order_id\":100002,\"module_id\":2,\"order_type\":\"delivery\",\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 3, NULL, '2024-10-07 11:48:44', '2024-10-07 11:48:44'),
(10, '{\"title\":\"Order Notification\",\"description\":\"Order 100002 is canceled by your request\",\"order_id\":100002,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:18:58', '2024-10-07 13:18:58'),
(11, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your  order 100003 is successfully placed\",\"order_id\":100003,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:19:34', '2024-10-07 13:19:34'),
(12, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100003 is confirmed\",\"order_id\":100003,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:20:03', '2024-10-07 13:20:03'),
(13, '{\"title\":\"Order Notification\",\"description\":\"New order push description\",\"order_id\":100003,\"module_id\":2,\"order_type\":\"delivery\",\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 3, NULL, '2024-10-07 13:20:03', '2024-10-07 13:20:03'),
(14, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100003 is confirmed\",\"order_id\":100003,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:28:13', '2024-10-07 13:28:13'),
(15, '{\"title\":\"Order Notification\",\"description\":\"New order push description\",\"order_id\":100003,\"module_id\":2,\"order_type\":\"delivery\",\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 3, NULL, '2024-10-07 13:28:14', '2024-10-07 13:28:14'),
(16, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your food is started for cooking by Vishnu Cafe & Sri Kanna Hotel\",\"order_id\":100003,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:31:16', '2024-10-07 13:31:16'),
(17, '{\"title\":\"Order Notification\",\"description\":\"Proceed for cooking\",\"order_id\":100003,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, NULL, 1, '2024-10-07 13:31:17', '2024-10-07 13:31:17'),
(18, '{\"title\":\"Order Notification\",\"description\":\"Delivery man is on the way. For this order 100003\",\"order_id\":100003,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:31:31', '2024-10-07 13:31:31'),
(19, '{\"title\":\"Order Notification\",\"description\":\"Ready for delivery\",\"order_id\":100003,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, NULL, 1, '2024-10-07 13:31:31', '2024-10-07 13:31:31'),
(20, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100003  is ready for delivery\",\"order_id\":100003,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:33:32', '2024-10-07 13:33:32'),
(21, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100003  is ready for delivery\",\"order_id\":100003,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, 3, NULL, '2024-10-07 13:33:32', '2024-10-07 13:33:32'),
(22, '{\"title\":\"Order Notification\",\"description\":\"Order 100003 delivered successfully\",\"order_id\":100003,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:33:53', '2024-10-07 13:33:53'),
(23, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your  order 100004 is successfully placed\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:36:03', '2024-10-07 13:36:03'),
(24, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100004 is confirmed\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:36:41', '2024-10-07 13:36:41'),
(25, '{\"title\":\"Order Notification\",\"description\":\"New order push description\",\"order_id\":100004,\"module_id\":2,\"order_type\":\"delivery\",\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 3, NULL, '2024-10-07 13:36:42', '2024-10-07 13:36:42'),
(26, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your food is started for cooking by Vishnu Cafe & Sri Kanna Hotel\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:37:03', '2024-10-07 13:37:03'),
(27, '{\"title\":\"Order Notification\",\"description\":\"Proceed for cooking\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, NULL, 1, '2024-10-07 13:37:03', '2024-10-07 13:37:03'),
(28, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your food is started for cooking by Vishnu Cafe & Sri Kanna Hotel\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:37:17', '2024-10-07 13:37:17'),
(29, '{\"title\":\"Order Notification\",\"description\":\"Proceed for cooking\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, NULL, 1, '2024-10-07 13:37:17', '2024-10-07 13:37:17'),
(30, '{\"title\":\"Order Notification\",\"description\":\"Delivery man is on the way. For this order 100004\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:37:21', '2024-10-07 13:37:21'),
(31, '{\"title\":\"Order Notification\",\"description\":\"Ready for delivery\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, NULL, 1, '2024-10-07 13:37:22', '2024-10-07 13:37:22'),
(32, '{\"title\":\"Order Notification\",\"description\":\"Delivery man is on the way. For this order 100004\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:37:24', '2024-10-07 13:37:24'),
(33, '{\"title\":\"Order Notification\",\"description\":\"Ready for delivery\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, NULL, 1, '2024-10-07 13:37:24', '2024-10-07 13:37:24'),
(34, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100004  is ready for delivery\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:37:35', '2024-10-07 13:37:35'),
(35, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100004  is ready for delivery\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, 3, NULL, '2024-10-07 13:37:35', '2024-10-07 13:37:35'),
(36, '{\"title\":\"Order Notification\",\"description\":\"Order 100004 delivered successfully\",\"order_id\":100004,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:37:53', '2024-10-07 13:37:53'),
(37, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your  order 100005 is successfully placed\",\"order_id\":100005,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:41:30', '2024-10-07 13:41:30'),
(38, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100005 is confirmed\",\"order_id\":100005,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:42:38', '2024-10-07 13:42:38'),
(39, '{\"title\":\"Order Notification\",\"description\":\"New order push description\",\"order_id\":100005,\"module_id\":2,\"order_type\":\"delivery\",\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 3, NULL, '2024-10-07 13:42:39', '2024-10-07 13:42:39'),
(40, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your food is started for cooking by Vishnu Cafe & Sri Kanna Hotel\",\"order_id\":100005,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:42:57', '2024-10-07 13:42:57'),
(41, '{\"title\":\"Order Notification\",\"description\":\"Proceed for cooking\",\"order_id\":100005,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, NULL, 1, '2024-10-07 13:42:58', '2024-10-07 13:42:58'),
(42, '{\"title\":\"Order Notification\",\"description\":\"Delivery man is on the way. For this order 100005\",\"order_id\":100005,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:43:16', '2024-10-07 13:43:16'),
(43, '{\"title\":\"Order Notification\",\"description\":\"Ready for delivery\",\"order_id\":100005,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, NULL, 1, '2024-10-07 13:43:16', '2024-10-07 13:43:16'),
(44, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100005  is ready for delivery\",\"order_id\":100005,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:43:35', '2024-10-07 13:43:35'),
(45, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100005  is ready for delivery\",\"order_id\":100005,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, 3, NULL, '2024-10-07 13:43:35', '2024-10-07 13:43:35'),
(46, '{\"title\":\"Order Notification\",\"description\":\"Order 100005 delivered successfully\",\"order_id\":100005,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 13:43:50', '2024-10-07 13:43:50'),
(47, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your  order 100006 is successfully placed\",\"order_id\":100006,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 14:40:58', '2024-10-07 14:40:58'),
(48, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100006 is confirmed\",\"order_id\":100006,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 14:42:09', '2024-10-07 14:42:09'),
(49, '{\"title\":\"Order Notification\",\"description\":\"New order push description\",\"order_id\":100006,\"module_id\":2,\"order_type\":\"delivery\",\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 2, NULL, '2024-10-07 14:42:10', '2024-10-07 14:42:10'),
(50, '{\"title\":\"Order Notification\",\"description\":\"Order 100006 is canceled by your request\",\"order_id\":100006,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 14:43:58', '2024-10-07 14:43:58'),
(51, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your  order 100007 is successfully placed\",\"order_id\":100007,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 14:44:53', '2024-10-07 14:44:53'),
(52, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100007 is confirmed\",\"order_id\":100007,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 14:45:30', '2024-10-07 14:45:30'),
(53, '{\"title\":\"Order Notification\",\"description\":\"New order push description\",\"order_id\":100007,\"module_id\":2,\"order_type\":\"delivery\",\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 3, NULL, '2024-10-07 14:45:31', '2024-10-07 14:45:31'),
(54, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100007 is confirmed\",\"order_id\":100007,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 14:46:09', '2024-10-07 14:46:09'),
(55, '{\"title\":\"Order Notification\",\"description\":\"New order push description\",\"order_id\":100007,\"module_id\":2,\"order_type\":\"delivery\",\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 3, NULL, '2024-10-07 14:46:09', '2024-10-07 14:46:09'),
(56, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your food is started for cooking by Vishnu Cafe & Sri Kanna Hotel\",\"order_id\":100007,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 14:46:27', '2024-10-07 14:46:27'),
(57, '{\"title\":\"Order Notification\",\"description\":\"Proceed for cooking\",\"order_id\":100007,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, NULL, 1, '2024-10-07 14:46:28', '2024-10-07 14:46:28'),
(58, '{\"title\":\"Order Notification\",\"description\":\"Delivery man is on the way. For this order 100007\",\"order_id\":100007,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 14:46:39', '2024-10-07 14:46:39'),
(59, '{\"title\":\"Order Notification\",\"description\":\"Ready for delivery\",\"order_id\":100007,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, NULL, 1, '2024-10-07 14:46:39', '2024-10-07 14:46:39'),
(60, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100007  is ready for delivery\",\"order_id\":100007,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 14:47:00', '2024-10-07 14:47:00'),
(61, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100007  is ready for delivery\",\"order_id\":100007,\"image\":\"\",\"type\":\"order_status\"}', 1, NULL, 3, NULL, '2024-10-07 14:47:00', '2024-10-07 14:47:00'),
(62, '{\"title\":\"Order Notification\",\"description\":\"Order 100007 delivered successfully\",\"order_id\":100007,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-07 14:56:45', '2024-10-07 14:56:45'),
(63, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your  order 100008 is successfully placed\",\"order_id\":100008,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-17 15:25:55', '2024-10-17 15:25:55'),
(64, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your order 100008 is confirmed\",\"order_id\":100008,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-17 15:27:33', '2024-10-17 15:27:33'),
(65, '{\"title\":\"Order Notification\",\"description\":\"New order push description\",\"order_id\":100008,\"module_id\":2,\"order_type\":\"delivery\",\"image\":\"\",\"type\":\"new_order\"}', 1, NULL, 3, NULL, '2024-10-17 15:27:34', '2024-10-17 15:27:34'),
(66, '{\"title\":\"Order Notification\",\"description\":\"Muthu K, Your food is started for cooking by Vishnu Cafe & Sri Kanna Hotel\",\"order_id\":100008,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-17 15:29:43', '2024-10-17 15:29:43'),
(67, '{\"title\":\"Order Notification\",\"description\":\"Delivery man is on the way. For this order 100008\",\"order_id\":100008,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-17 15:29:52', '2024-10-17 15:29:52'),
(68, '{\"title\":\"Fund added\",\"description\":\"Fund added to your wallet\",\"order_id\":\"\",\"image\":\"\",\"type\":\"add_fund\",\"order_status\":\"\"}', 1, 1, NULL, NULL, '2024-10-17 15:30:34', '2024-10-17 15:30:34'),
(69, '{\"title\":\"Order Notification\",\"description\":\"Order 100008 is canceled by your request\",\"order_id\":100008,\"image\":\"\",\"type\":\"order_status\"}', 1, 1, NULL, NULL, '2024-10-17 15:31:56', '2024-10-17 15:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `firebase_token` varchar(255) DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `f_name`, `l_name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `bank_name`, `branch`, `holder_name`, `account_no`, `image`, `status`, `firebase_token`, `auth_token`) VALUES
(1, 'Demo', 'Store', '+101511111111', 'demo.store@gmail.com', NULL, '$2y$10$Rtm/6/dNJwwRZcfUAjCNdezs3xCwTN1oTW/2mqrRBZkGqHHZAqcuW', NULL, '2023-08-15 23:45:01', '2023-08-15 23:45:01', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(2, 'Gopi', 'Nath', '+919710577733', 'Juicebros5@gmail.com', NULL, '$2y$10$LIJEpuNRJSimK2nSIlq3Iu87DYdgaA5fUb0hUp22TPyxEpQqcmuJe', NULL, '2024-09-20 18:33:19', '2024-11-05 07:09:50', NULL, NULL, NULL, NULL, NULL, 1, 'enI5XF09T_idgaoJQar-1i:APA91bFRJOSwPCIAfvDRK-yuY2SGiiEjZlUKQThdBeTehIytM3IlDgIp-6drAXQuQr-olZUpQh9cTMsvpc-HWUD1JDWqvvHanvVDaOCKCpoIWuMaW_7Qqdv5wLIo6TyGbPnS2_orAHAS', 'xkduRNyOq9Zas5fDKeOQcxqtH51BZtlPiTP2fSbkVUjvauqivhacYVTDFckfystY2AIMUTM0Ul3OloyuahKdyuwWFrCHETpFyHXiBk9qXMHRPIUKI3X931M8'),
(3, 'Santhosh', 'Santhosh', '9500628584', 'Vishnucafe5@gmail.com', NULL, '$2y$10$.eiwmMOobfIXQGBKslF9sOCnZLwsR/xOH0gnHEYsJLRG2SAid9pv2', 'zXmAujMFRv7pBazPWrmPKBdWqY90que2pezpxadpWd7MHIJK7aAEjwANQUne', '2024-10-02 22:16:02', '2024-10-28 08:45:48', NULL, NULL, NULL, NULL, NULL, 1, '@', 'QPEFUFVtOqs2NxyhY43e7CBvTRz79FQCjh1luI0dK6SduKe3Y5G6acnp00XEP8HORji3kKUKxPtHxUF6DWucvobaY30Wadzu50oeSlHTiysEm4CsezR0YdkR'),
(4, 'Vinoth', 'Kumar', '9600521132', 'vinosrk2@gmail.com', NULL, '$2y$10$fHmmx3GV29QfoQc.Zv/gPuqBHUAv5GnMxIMz04DJFynjP2EiK6caq', NULL, '2024-10-18 14:12:29', '2024-10-26 11:27:00', NULL, NULL, NULL, NULL, NULL, 1, '@', 'atEHaU29c83wQxycO5VphufyhhXKOzKu0uGKRMOPYN2qkTKv7dhYsdTAwQvRomB6Wpy8WYG0j2IXEMlalUcXnV3ItK0QyhiFsIgxoVpnShjpGLhXPjIw6h5l'),
(5, 'Muniswaran', 'Chandru', '7826008111', 'Munisbiryani5@gmail.com', NULL, '$2y$10$ljTw4LbKhjpBtORQ/SbjLuqWbfgpuh6/BmKdqXUdXZ8fd2FZZR80C', NULL, '2024-10-18 14:37:48', '2024-10-28 08:47:05', NULL, NULL, NULL, NULL, NULL, 1, '@', 'mzfwkiasUMNift1XxUynbezNHnLA8slfdqQhuqjpNUWVf487RjQt02MUYMwiKZB03YRTVt0ojIgLRoK25Uyf6ua52tB9onoOpUv9IYRkmavoMqnGJ1YYNpBF'),
(6, 'Paneer', 'Selvam', '9994433234', 'Nandhini5@gmail.com', NULL, '$2y$10$wgCCdFyBt5yglk3HsVpojOPeAD8CF34q5FtkMkPgWU2dJp1Uq.3.e', NULL, '2024-10-18 23:44:55', '2024-11-05 07:09:32', NULL, NULL, NULL, NULL, NULL, 1, '@', '4zNfdTZFf4gel2ZSYVntap03H958pIODWrn1QjL9kVE0xW2IC9keCclWs8d48wMGoAjOkILA6jsOLxxeXaCdtW5Z5E5y3ihtCLm860uEG3qygN2yLx49bR8l'),
(7, 'Kamal', 'Aadhi', '+917708153131', 'Ravanas5@gmail.com', NULL, '$2y$10$dzAr6EYGC/oS56zcn.AS/.ryCH9HEGKgQTY7Kr8whqiMg091AIBMi', NULL, '2024-11-05 14:08:43', '2024-11-05 14:21:24', NULL, NULL, NULL, NULL, NULL, 1, 'cZHGn2h5QD-F9dLvI7fP87:APA91bFe-qsNIr-UChg8hiYBdtvgnc9u56HWYEidxTgVwrPKCZ0BnegvzrZeUGVlu4T-aF_GCG412hJmGVTHsjsUmZgGs3VQdkhjno6ZgFWHe6tEbg7i8i2UFPEFLcOphzHV6CJGcvnG', 'Uqfd91Y17p76Qv2iQYLgbUKNxujHuYdAAkE6UEVnPC1WAj6WLOKT0r5fn77qQpVMS1150GFDrWTJI12IjEUmv7Xz5LzpuGYvq43x0b0nGkNplzeOTxkFBexH');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_employees`
--

CREATE TABLE `vendor_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(100) DEFAULT NULL,
  `l_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `employee_role_id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL,
  `store_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `firebase_token` varchar(255) DEFAULT NULL,
  `auth_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_logged_in` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_bonuses`
--

CREATE TABLE `wallet_bonuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `bonus_type` varchar(255) NOT NULL,
  `bonus_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `minimum_add_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `maximum_bonus_amount` double(23,3) NOT NULL DEFAULT 0.000,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_payments`
--

CREATE TABLE `wallet_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_ref` varchar(255) DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `payment_status` varchar(50) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transactions`
--

CREATE TABLE `wallet_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` char(36) NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `debit` decimal(24,3) NOT NULL DEFAULT 0.000,
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT 0.000,
  `balance` decimal(24,3) NOT NULL DEFAULT 0.000,
  `transaction_type` varchar(191) DEFAULT NULL,
  `reference` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallet_transactions`
--

INSERT INTO `wallet_transactions` (`id`, `user_id`, `transaction_id`, `credit`, `debit`, `admin_bonus`, `balance`, `transaction_type`, `reference`, `created_at`, `updated_at`) VALUES
(1, 1, '069bc1b8-663f-4850-8e8e-455ac5e2cafa', 5.000, 0.000, 0.000, 5.000, 'loyalty_point', NULL, '2024-10-17 15:30:34', '2024-10-17 15:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `item_id`, `created_at`, `updated_at`, `store_id`) VALUES
(5, 12, 331, '2024-10-24 12:00:21', '2024-10-24 12:00:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_methods`
--

CREATE TABLE `withdrawal_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `method_fields` text NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawal_methods`
--

INSERT INTO `withdrawal_methods` (`id`, `method_name`, `method_fields`, `is_default`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Withdrawal', '[{\"input_type\":\"string\",\"input_name\":\"shop_name\",\"placeholder\":\"Enter Shop Full Name\",\"is_required\":1}]', 1, 1, '2024-09-25 00:34:17', '2024-09-25 00:34:17');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_note` varchar(255) DEFAULT NULL,
  `amount` decimal(23,3) NOT NULL DEFAULT 0.000,
  `approved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivery_man_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `withdrawal_method_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'manual'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `coordinates` polygon NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_wise_topic` varchar(255) DEFAULT NULL,
  `customer_wise_topic` varchar(255) DEFAULT NULL,
  `deliveryman_wise_topic` varchar(255) DEFAULT NULL,
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT 0,
  `digital_payment` tinyint(1) NOT NULL DEFAULT 0,
  `increased_delivery_fee` double(8,2) NOT NULL DEFAULT 0.00,
  `increased_delivery_fee_status` tinyint(1) NOT NULL DEFAULT 0,
  `increase_delivery_charge_message` varchar(255) DEFAULT NULL,
  `offline_payment` tinyint(1) NOT NULL DEFAULT 0,
  `display_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `name`, `coordinates`, `status`, `created_at`, `updated_at`, `store_wise_topic`, `customer_wise_topic`, `deliveryman_wise_topic`, `cash_on_delivery`, `digital_payment`, `increased_delivery_fee`, `increased_delivery_fee_status`, `increase_delivery_charge_message`, `offline_payment`, `display_name`) VALUES
(1, 'Demo Zone', 0x0000000001030000000100000006000000129fd7f90bb2534077fa547e03462b401c9f273ac0125440199272a47b772b40fe9ef764c02654404223370395922940ef9ed75b63f85340b5202fe81ac22740e79ee71886815340d8402e7205f22840129fd7f90bb2534077fa547e03462b40, 0, '2023-08-15 23:35:04', '2024-09-20 18:19:56', 'zone_1_store', 'zone_1_customer', 'zone_1_delivery_man', 0, 0, 0.00, 0, NULL, 0, NULL),
(2, 'dreamz', 0x000000000103000000010000000a000000e0509b493e7a534003594208c1c42440318ad3e35b845340aa4fe7779fd324404b8ad363268553401c8c0d8987be24402c8ad32348855340959da74ae4ac24402c8ad3232c8353409ce0ec6248a52440358ad3a3837e534086b2b04c97a42440318ad3e3377b5340090eebb90ca82440288ad36324785340d4d7700f50af2440288ad36324785340ad5dfa2d42c02440e0509b493e7a534003594208c1c42440, 1, '2024-09-19 05:54:34', '2024-10-07 11:28:19', 'zone_2_store', 'zone_2_customer', 'zone_2_delivery_man', 1, 1, 0.00, 0, NULL, 0, NULL),
(3, 'Sholinghur', 0x000000000103000000010000002100000073e99e75dcdb5340d4ed8eb75c562a409329575ecddc5340809682b8c8562a4079298618e4dc53407bcaa036e2522a407e29a4184ddd5340005be2cedb4e2a407f29a998d6dd5340e915d59f4a4e2a4041ba13a8e0dd53400bd72aa6c8482a4066faaf4acbdd534075c4b3302b412a404d7aa956ebdd53402da218c1c2392a40fc1ddd80f2dd5340c5ab829d79322a4050a951b088de53401aa94c1d66322a406ec90d13e0de5340a987e7a7a1302a407469ed3bfbde5340aef5f6bc102d2a405e0c08253cdf53406732947ad9282a40952cc0934fdf534007a38b532c232a40215caf41cfde53408ed862dbb71e2a40e87b6392afde5340834d5f96be182a40cf1b3def33de5340ac653216ad142a40d7db377bb1dd5340115f70858c0f2a40d17b2b35fcdb5340e2c512b8f70e2a4074106bcf6bda534028bef1b76e112a40a57021b804d95340b5744acec9142a407580b189fdd75340927894b9a2162a400350d19edcd65340812f6362561d2a40159030c274d65340eb4d065dd3272a40004034b654d65340127b228ffa2e2a409b1a989a68d653402f41473258382a406b7aed485ed75340f273287f07402a4064f81a42e3d75340fddd4f87e7462a408358e3c194d85340dcac5ba8ae4d2a403e081bdebfd95340b3e6914845542a407608e880a9da534054ec370096582a406be8bee979db5340724e538605592a4073e99e75dcdb5340d4ed8eb75c562a40, 1, '2024-09-20 18:13:55', '2024-09-25 00:55:50', 'zone_3_store', 'zone_3_customer', 'zone_3_delivery_man', 1, 1, 0.00, 0, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addon_settings`
--
ALTER TABLE `addon_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_settings_id_index` (`id`);

--
-- Indexes for table `add_ons`
--
ALTER TABLE `add_ons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_features`
--
ALTER TABLE `admin_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_promotional_banners`
--
ALTER TABLE `admin_promotional_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_special_criterias`
--
ALTER TABLE `admin_special_criterias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_testimonials`
--
ALTER TABLE `admin_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allergies`
--
ALTER TABLE `allergies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allergy_item`
--
ALTER TABLE `allergy_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `automated_messages`
--
ALTER TABLE `automated_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banners_module_id_foreign` (`module_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaigns_module_id_foreign` (`module_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_backs`
--
ALTER TABLE `cash_backs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash_back_histories`
--
ALTER TABLE `cash_back_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_module_id_foreign` (`module_id`);

--
-- Indexes for table `common_conditions`
--
ALTER TABLE `common_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`),
  ADD KEY `coupons_module_id_foreign` (`module_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_settings`
--
ALTER TABLE `data_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_wallets`
--
ALTER TABLE `delivery_man_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_men_phone_unique` (`phone`);

--
-- Indexes for table `disbursements`
--
ALTER TABLE `disbursements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disbursement_details`
--
ALTER TABLE `disbursement_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disbursement_withdrawal_methods`
--
ALTER TABLE `disbursement_withdrawal_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d_m_vehicles`
--
ALTER TABLE `d_m_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecommerce_item_details`
--
ALTER TABLE `ecommerce_item_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_roles`
--
ALTER TABLE `employee_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `external_configurations`
--
ALTER TABLE `external_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flutter_special_criterias`
--
ALTER TABLE `flutter_special_criterias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generic_names`
--
ALTER TABLE `generic_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_module_id_foreign` (`module_id`);

--
-- Indexes for table `item_campaigns`
--
ALTER TABLE `item_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_campaigns_module_id_foreign` (`module_id`);

--
-- Indexes for table `item_generic_names`
--
ALTER TABLE `item_generic_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_nutrition`
--
ALTER TABLE `item_nutrition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_tag`
--
ALTER TABLE `item_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_types`
--
ALTER TABLE `module_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_wise_banners`
--
ALTER TABLE `module_wise_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_wise_why_chooses`
--
ALTER TABLE `module_wise_why_chooses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_zone`
--
ALTER TABLE `module_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_messages`
--
ALTER TABLE `notification_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nutritions`
--
ALTER TABLE `nutritions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `offline_payments`
--
ALTER TABLE `offline_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `orders_module_id_foreign` (`module_id`);

--
-- Indexes for table `order_cancel_reasons`
--
ALTER TABLE `order_cancel_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_references`
--
ALTER TABLE `order_references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_transactions_zone_id_index` (`zone_id`),
  ADD KEY `order_transactions_module_id_foreign` (`module_id`);

--
-- Indexes for table `parcel_categories`
--
ALTER TABLE `parcel_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `parcel_categories_name_unique` (`name`),
  ADD KEY `parcel_categories_module_id_foreign` (`module_id`);

--
-- Indexes for table `parcel_delivery_instructions`
--
ALTER TABLE `parcel_delivery_instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pharmacy_item_details`
--
ALTER TABLE `pharmacy_item_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_verifications_phone_unique` (`phone`);

--
-- Indexes for table `priority_lists`
--
ALTER TABLE `priority_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provide_d_m_earnings`
--
ALTER TABLE `provide_d_m_earnings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `react_testimonials`
--
ALTER TABLE `react_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refunds`
--
ALTER TABLE `refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund_reasons`
--
ALTER TABLE `refund_reasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_module_id_foreign` (`module_id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storages_data_id_index` (`data_id`),
  ADD KEY `storages_value_index` (`value`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurants_phone_unique` (`phone`),
  ADD KEY `stores_module_id_foreign` (`module_id`);

--
-- Indexes for table `store_configs`
--
ALTER TABLE `store_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_notification_settings`
--
ALTER TABLE `store_notification_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_schedule`
--
ALTER TABLE `store_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_subscriptions`
--
ALTER TABLE `store_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_wallets`
--
ALTER TABLE `store_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_billing_and_refund_histories`
--
ALTER TABLE `subscription_billing_and_refund_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_packages`
--
ALTER TABLE `subscription_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription_transactions`
--
ALTER TABLE `subscription_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_products`
--
ALTER TABLE `temp_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translations_translationable_id_index` (`translationable_id`),
  ADD KEY `translations_locale_index` (`locale`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_ref_code_unique` (`ref_code`),
  ADD KEY `users_zone_id_index` (`zone_id`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_phone_unique` (`phone`),
  ADD UNIQUE KEY `vendors_email_unique` (`email`);

--
-- Indexes for table `vendor_employees`
--
ALTER TABLE `vendor_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendor_employees_email_unique` (`email`);

--
-- Indexes for table `wallet_bonuses`
--
ALTER TABLE `wallet_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_payments`
--
ALTER TABLE `wallet_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `zones_name_unique` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_ons`
--
ALTER TABLE `add_ons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_features`
--
ALTER TABLE `admin_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_promotional_banners`
--
ALTER TABLE `admin_promotional_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_special_criterias`
--
ALTER TABLE `admin_special_criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_testimonials`
--
ALTER TABLE `admin_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_wallets`
--
ALTER TABLE `admin_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000;

--
-- AUTO_INCREMENT for table `allergies`
--
ALTER TABLE `allergies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `allergy_item`
--
ALTER TABLE `allergy_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `automated_messages`
--
ALTER TABLE `automated_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cash_backs`
--
ALTER TABLE `cash_backs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_back_histories`
--
ALTER TABLE `cash_back_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `common_conditions`
--
ALTER TABLE `common_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `customer_addresses`
--
ALTER TABLE `customer_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `data_settings`
--
ALTER TABLE `data_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `delivery_histories`
--
ALTER TABLE `delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_man_wallets`
--
ALTER TABLE `delivery_man_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `disbursements`
--
ALTER TABLE `disbursements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disbursement_details`
--
ALTER TABLE `disbursement_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disbursement_withdrawal_methods`
--
ALTER TABLE `disbursement_withdrawal_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d_m_reviews`
--
ALTER TABLE `d_m_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d_m_vehicles`
--
ALTER TABLE `d_m_vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ecommerce_item_details`
--
ALTER TABLE `ecommerce_item_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_roles`
--
ALTER TABLE `employee_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `external_configurations`
--
ALTER TABLE `external_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flutter_special_criterias`
--
ALTER TABLE `flutter_special_criterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `generic_names`
--
ALTER TABLE `generic_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT for table `item_campaigns`
--
ALTER TABLE `item_campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_generic_names`
--
ALTER TABLE `item_generic_names`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_nutrition`
--
ALTER TABLE `item_nutrition`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_tag`
--
ALTER TABLE `item_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loyalty_point_transactions`
--
ALTER TABLE `loyalty_point_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `module_types`
--
ALTER TABLE `module_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_wise_banners`
--
ALTER TABLE `module_wise_banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_wise_why_chooses`
--
ALTER TABLE `module_wise_why_chooses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_zone`
--
ALTER TABLE `module_zone`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notification_messages`
--
ALTER TABLE `notification_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `nutritions`
--
ALTER TABLE `nutritions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `offline_payments`
--
ALTER TABLE `offline_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offline_payment_methods`
--
ALTER TABLE `offline_payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100009;

--
-- AUTO_INCREMENT for table `order_cancel_reasons`
--
ALTER TABLE `order_cancel_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_delivery_histories`
--
ALTER TABLE `order_delivery_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_references`
--
ALTER TABLE `order_references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_transactions`
--
ALTER TABLE `order_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `parcel_categories`
--
ALTER TABLE `parcel_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parcel_delivery_instructions`
--
ALTER TABLE `parcel_delivery_instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacy_item_details`
--
ALTER TABLE `pharmacy_item_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `priority_lists`
--
ALTER TABLE `priority_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `provide_d_m_earnings`
--
ALTER TABLE `provide_d_m_earnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `react_testimonials`
--
ALTER TABLE `react_testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `refunds`
--
ALTER TABLE `refunds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `refund_reasons`
--
ALTER TABLE `refund_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `soft_credentials`
--
ALTER TABLE `soft_credentials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `storages`
--
ALTER TABLE `storages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=806;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `store_configs`
--
ALTER TABLE `store_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `store_notification_settings`
--
ALTER TABLE `store_notification_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `store_schedule`
--
ALTER TABLE `store_schedule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `store_subscriptions`
--
ALTER TABLE `store_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_wallets`
--
ALTER TABLE `store_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscription_billing_and_refund_histories`
--
ALTER TABLE `subscription_billing_and_refund_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_packages`
--
ALTER TABLE `subscription_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_transactions`
--
ALTER TABLE `subscription_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `temp_products`
--
ALTER TABLE `temp_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `track_deliverymen`
--
ALTER TABLE `track_deliverymen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=848;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendor_employees`
--
ALTER TABLE `vendor_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_bonuses`
--
ALTER TABLE `wallet_bonuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_payments`
--
ALTER TABLE `wallet_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wallet_transactions`
--
ALTER TABLE `wallet_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `withdrawal_methods`
--
ALTER TABLE `withdrawal_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD CONSTRAINT `campaigns_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `coupons`
--
ALTER TABLE `coupons`
  ADD CONSTRAINT `coupons_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `item_campaigns`
--
ALTER TABLE `item_campaigns`
  ADD CONSTRAINT `item_campaigns_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `order_transactions`
--
ALTER TABLE `order_transactions`
  ADD CONSTRAINT `order_transactions_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `parcel_categories`
--
ALTER TABLE `parcel_categories`
  ADD CONSTRAINT `parcel_categories_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `modules` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
