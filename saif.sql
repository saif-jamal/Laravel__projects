-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2021 at 04:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saif`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptions_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptions_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','block') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title_en`, `title_ar`, `descriptions_en`, `descriptions_ar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'android games', 'العاب الاندرويد', 'this is a category for android and ios games ', 'هذا قسم خاص بالعاب الهاتف المحمول للاندرويد  والايفون', 'active', '2021-11-10 13:29:56', NULL),
(2, 'pc games', 'العاب الحاسوب', 'this is  a category for pc games ', 'هذا قسم خاص بالعاب الحاسوب', 'active', '2021-11-10 13:29:56', NULL),
(3, 'software program', 'برامح مختلفة', 'this is a category for software programmes', 'هذا قسم لبرامح المختلفة', 'active', '2021-11-10 13:32:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','block') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 'dsfsadfadsfasdfasdfasdfasdfasdfasdfasdfa', 'active', '2021-11-10 13:52:49', NULL),
(2, 'adfadcxzzcxvzdfdxWERERGGVZCZVXCVZCVZCVZCVXXZCXVZCXVZXCVZXCVZXCVZCX', 'active', '2021-11-10 13:52:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, '2021_11_09_201517_create_posts_table', 1),
(5, '2021_11_09_201538_create_categories_table', 1),
(6, '2021_11_09_201600_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `postname_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postname_ar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptions_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptions_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','block') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `postname_en`, `postname_ar`, `descriptions_en`, `descriptions_ar`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'pubg mobile', 'ببجي موبايل', 'this is a game for android and ios', 'هية لعبة لاجهزة  الهواتف ', 'https://images.unsplash.com/photo-1564049489314-60d154ff107d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1183&q=80', 'active', '2021-11-10 13:34:49', NULL),
(2, 'red dead redemptions 2', 'رد ديد ردمبشنز 2', 'this is a game for pc only is open map', 'هية لعبة لاجهزة الحاسوب تكون بعالم مفتوح', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxITEhUSEhMWFhUVGRcYGBgXFxgVGBgYGRgYGBgXFhUZHSggGRslHhcVITEhJSkrLi4uGB8zODMtNygtLisBCgoKDg0OGxAQGy0mICUtLS8tMC0tLS0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALwBDAMBIgACEQEDEQH/xAAcAAACAgMBAQAAAAAAAAAAAAAEBQIGAQMHAAj/xABCEAACAQIEAwUFBgQFBAIDAQABAhEAAwQSITEFQVEGEyJhcTKBkaGxBxQjQsHRM1Ji8BVykrLhU4Ki8SRzFkPSCP/EABsBAAEFAQEAAAAAAAAAAAAAAAUAAQIDBAYH/8QAOBEAAQMBBgMHBAAFBAMAAAAAAQACEQMEEiExQVEFYXETgZGhwdHwIjKx4RQjQlLxBjOSshUWgv/aAAwDAQACEQMRAD8ApdxzJ1O55nrUO8Pn8TWbm/vP1qNCl6aAIUs58/iaznbqfiahWaSeApd43U/E1jOep+JrFepkoWc56n4msi43n8aia9STwFLM3U/E1g3D1PxrFZVCTABJ6ASfhSTEBRLt1Pxr3eHqfia2iyAJYgbwB4mkRoQD4d+fQ1aOzPDLDkm5bYkKP4kwTrmIAAGXVYnXXyqqvaG0WF58lRVqNYJhVS0HYwuYnoJJ+VLMbxwJIRszf+I//qrd9o+Gu4SyloC5+KjSFV1tJaBA8R2a4RvJ0BkiWFcprbZ6V9t94zyHvkuct3GnAmnQjr7e+PLdH3+LXm3cjyGn0pxwC+xVpLEzuWn3bzVXp7wAjNHeakezrHv5TV9Zo7MwsXC7Q91saXumdzv1/wAqwZz1PxNeDHqfiahXqFrvICTL2hcMcyaTGhMj0JpzaxGZQysSDtqarXHgO+MNmmJ8j0+EU27J3QVKNEIQfEGgZp1OTxb/AFrdVY3s74C5ewW+s21us9Z17EwcJkdMMROGOOCY5z1PxNeNw9T8TR9zATJVYEwIObTWWgeKPPLtQOQ8hPpr/wCqyhwOS6FrmlR7w9T8TWe8PU/E1E1ipJ1LvG6n4mvd4fP4msVikmgKXeN5/E17vG8/iajXqSdS7w+fxNZznz+JqFepJ4C2d43U/E1jOep+JqFepJQpFz1PxNGYVzG536+lA0XhNj6/oKSg8YIe7ufU/WoVK5ufU/WsUymMlmsV6sUk6zXq9WKSZZFTtWyxCqCSdgN6xk23128/Siba5QTMEx4QTqNCQxB0BHLr0imJTF0YLWLENB1IMEAiOQ1fYakVNUABk+HnHPUb6a8iJj1orB27l11i2YBEBVIUajcDTWIJbludJqy8P7KoPE8qfEIVp0MggsR8Ij1NZq1pZRH1n1WerWDPu8vmCqtnBXTAQasSIWSY25TI8R5k/Crn2K4BdOKtPd8C5iTbBgNALDwgnwyJIO+mlO7FlVEKoHoInzPU0x4KYv2/8w+elDW8UdUrMa1sAuHM5j5qhlqtLn0nACMD+FH7X+HXcRgLltXW1aQd7ddixJW3L5FtqPEZVTqeVfLNfZXajhIxeGuWCwXON2GZQeRZfzAGDB0kCZ2r47vgBmAOYSYO067x512S41aaZcFX8UHWNdppdFMOG5g0qQD56nUchzqD/tIWiyGK7DsQrVXopRcu3VBNx2Ub8kZvK2g1HmTWrD8QmPF6g3Lin4zB+VDv4cnIz0XanjFIOAc0tJ0OB8BPdvpKF47ZIuTlygge/wCdE9kHT71bW5IS6e7JG4zaKQeXiy+6a18Ru2nIOdpjmc5/2gfOlVtypBUwQZB5gjY1uDC+ldOGELkrU8U7WalI/wBUiD+sPBdubsqUnu2RtIC3EzAjkGJJiDzUA0DcsNacXXtOsCSoBcAkEeG6u0woykwB1nRzgO1eFfD2r1y/atl1BKs4DBhowy76MDypfiO3mDzZUz3f5iiQq+rPH7VyNN9sLiHsLtDgR5wB08kfbbQSJIM+Pkl+OsW7s3om2xOqwt2fDIa2dGAmdNfENaE+4WGQZb9vvJOj/hmI9nUkTI3mOXOk3Hu2gymzgrfcoSSzgyzTHsjZIjcaiBBHNR2YwT3He8QWCbnc5mmCZ350ap2WoKd5xLdgYPSf0fDJRbxS9XbQpb5yIj1jqE5uWypIIgioUwEArmCsphZU5ZGsEkey3qORkGhsThmQkHy+fp8uogjQ1MOR0P0WivVmsVJWL1Zr1eFJJYr1erFJKVmicJsfX9BQtF4QaH1/QUlW/JD3Nz6n61gVK5ufU/WoUlYMlKsV6pW0JIAEkkAep0HzikkVm1bLGFBJOwAJJ9AKPtcOMhT7ZBJUnKEGniuN+XecvLSd4qxcPwZw6FbQzYh10YaZNgQA2wWZJ6x7im7PEWiuc52lmO+dv6tPZknQR66k0OfbWh0ZDTc840H56LDUtY0y+Y9Pz0lVVlKsUskswBBfUQo0MZvYXbxTsd4MU24H2ZZ4uXpUaQOZHLwkeH38uQ3qy4Dgtq0F0zFYILDWYA8XUiDHSYG1MiawWjiZi7S8de7/AAs77UTg3x1/SHw2FS2MqLlH1MATJ3OgogVgAnQak7DczUu0FhsLZF27ew9nMYm85AHOAq6ufJaw0LLXtTjcEnU+5KH1q7KQl5WIrZh7oR0diBDKddNiK5x2q7U27qsMPxREGXRUw18FjGs3mGYazBCiNPWqN9ys3Gm9j0J/myYm5v1zWwf750Zs/wDp+qIc94BB0E5c8PVD6vEmQQ1s+Xuvob7S+2eFsYHEW0xFtsRcQ20RLi5wbgy5zB8IUEtJjavlqmmM4faQgLirVzzRbwA9c9tT8qEVEnVzHULPyJFdVKFdmeXiPdD1O25G30B+tFotjm1z3Io+WapDDWTqt4jye231TNUb3XwVoszjiHN/5t9SB5oTvWjLJjpOlZ+8P/MfjFNUtoIEW28kS4zH/URW82rL6lLhKzIypbAA5kiNPfUO15HwWsWFxH+62euHiCT5FIXusdyT6kmt9nBXG1CmOp0HxOlHniKWzFi0gP8AOSW+BNOMDw7vJ790ulhpFz2CR4fAIB3/AL5s+rdEkR1+eqanZKT3XQ8uPIEAdXOx8Gd6rncW1/iPmP8AKmvxubfCahfxZYZQAqDZRt6nqfM1qxVoq7KREE/WjuCcDv4t+7spJEZmOiqDzZuXPTcxoKm4taLzzgNTkFlNVx+im2J0EyepzPTAclq4Pwu7ibq2bSyzfADmzHkBXc+B9nbWHwww0BwfbJEZ2O5PTy6Vq7Jdl7WCtkL4rje3cIgn+lRyXy+Pk9NcdxXihtDwykfoHmd98NPFF7FZexF533HyVH472dazNyzLpzUgNlAH5p9ob8pHzpLhFV/CZOnKM6x/JJ8SxqV8jHWuo1Uu0fZpcrXrIhhqUGx3JKjk37VOx8Rvfy6px0Pv7+KOUbRP0vOO/v7qn3bJWCRo2qnkw6itdGif4ZkjMBlUEMY0JAIOVo08+fmNctwRqCCAQR0P0PIijQJ1RFrtCtderNRp1NerEV6vCnUZXqLwux9f0FCUXhdj6/oKdQfkh7m59T9axWbm59T9ajTKazV27L8GCql5xlczlk8uoEaEieumtVLAqk5nJAGpyxmJOyif7gGrt2auO7NdbOoaAqsWYBAoC5Z3JiSf6f6qH8Qe4UiGmN/b3wOCx2x5uQPnL3TtcMoOYKAwBAIGsHUj4iiQa12nnXlUprmXkkw5C1KoMKnWKrBhJaeJ8WuYWxnw1g38VcYpaGUlEMTJ/mc6wo1gMdFVjVVf7J+JY1hieI4nNeaCyZgcq75A4lUI/lVSuu9XnAY5rLZ115EHY/8APQ064tjGxOFuW8LcW3fuLlUsJy5iAxiROk6iY3gxB7Pg1romi2kPpcNN+YOp31QK30XioahxB8l80/aFwbC4PGPh8Jea6lsKGJA8LwMy51MOZ1OggnLyoLszwW5irpt27TXIBJjQJyDMxIAEnmd432p52p+zHiODJPctetifxLQzrE7lR4l03kADqd6B7G8WuYe6bSqe8d1gE5IdVuKCx3kZyIjUMw3ijZWFuYR/G+weMsLrYJAElyVOuZVygKSIGdddtZnQ09+xXszbxD37+JtrcsWUA8UkF28QAHQCSR1K+dNOJcRu9xh8HduZ1uqXYSWvGx7QlT4lVwGOZjmCK2YywBvfZDhBbhLKuUXMULt0ldFzOYtgGBKhFtrm5gSJmqnE3VZP1AzHouZ9v+EpbxDZoNthNm1YUW1W3PhhA0FpOrHcnYRAo93ht0NnQNbA1BuOAxPKCNtD8jrV4xVkhmzyreyxOjSNILb6UvuYeyASfFPUlifQnlWNtpjFH3cPF0Auy1GE85Mn8Ku8Jwt680O7FRu0k5R0HKTEegp/xHgPeWD3Vsk2hIIUnQalWI5Eda3W8RGRQktcMIijWOtdB7E3h3bo7Df2SdQI10P96VB9d8hwwUhZ2U6Lh92854/J/WC5jguzihhFsMQQRBYnSNYA66xV34N2HDgXHIRTJAXV5J1mRC68taf8MxNq1dNru1ti6S1q4mquuYrlJbUMDGns+IRvW7iONv2m3Uqdjl+sHeqn1n6lM1oJuUmhvWJ7sMCuO/aHwXu+KG2FOW8bTrBUFs+VHOY6Al1fU6TXVOC8Ks4e2LdlcqjrvPMt50g45dY8VwT3VUq2GI2/MzvEjyJtnXTfyq3UM43aHFlKnpEnnjA8I81nsdENe86zC9NYmvVmueW9ZrFZrFMkqz2m4FnzXkALEeJYgk6QVIGh05zM+kI8MFYtbvewSwU6Zg3h/EBEyYC5vIho3roNV3jPCVSbq+FZk5fCwYsNUgczGka67kiDFitd5vZPPQ+nzTBaaVbC67u5KjYqwUYg8jvtPQ1qp/xW4t9EZVh/ENIBJGUlfPQiOennNIDR2k8ubiIKK0nlwxz1UalFerFWKxYorC7H1/QUNROFOh9f0FOFW/JD3N/efrURUru/vP1o3hQUObjpnRQSRBKknwqGMGASefSoudAlOTdbKnh8CLjpatkE5SSSYGc7hTqP5RMVf+H4MraVQRsADBEJAmAdQTHu03y61bs3hSJuuhYmPFPiUMG1AmWzaAafm51ecAVKF711bIiQbgGkkBVyhtT5A0ItvaVXto08ccMsTnn0+GUIt1YNzOA+aIXjeLXCYdcRcBFqQsiIGpXQTJOh8ImApmNJJt3AyhlIKsAQeRBEgigu0OE4dcwLYRuJDN+I8pDEtcdXJ7oGYEEQDsze5O/2n8Owlq3awtgXWtoqB2BAlVAlUMwNNswNbKv+n2Oa0U3QdScZ6CRqueZxJwJvCRppCt2Hwdx/YRm8wNPjtROI4JfCZi9u1BBJuMIAmTPL3TXJOIfa5xPFN3eHBWdktKcx9MsuP9VSs9hOPcSIfElraHniHIIB6W9X9xFX2fgVCk4OcS4jfAeGP5VdXiNR4gADxnxVl4/iMIbtu6/ELRu4Z+9QYay7wVIMF+8CkGBKyN6PXtLai0VsXrvfXMixYu2AEKkF/wAR2zhWKEkaAA1oT7O8Pwywbt3FZrwgrMLBBHsEsCoG88opJwvtRiGxITFB2CmEunvruYOcqi0rGQWOUc+fSt1ps9PscKYcWg3RA12HPXdZ6VR1/FxExJk6LoWH4jeT2bhjodR8DWniRtYgg38PZd1IK3MgF1SCCClzddVHwqFxCphgQRyIg1GuJp2200cG1HDvP4M/hHnWejUxLQfnJLeM27FrFMwCqXt4fK0w3dDKjE66JbNsGZ1JIPsg04+xvH95w5LRbObTXAG11Q3bmUkk77+6Pev4xh1uWZKy9qWUgw4tsR3yLMhpAzZSIlZ5QW/Ye1YsWEsYVyRAuFXIY2hchgrsoGYkkxsdRpo1dhZLULRSD948RgfPHvQi0Wfsxrr0zwPhII31xhLvtS4GBbOJtLDM34hHtGQoQyT4RIiANSR0rmWEwhJzPPof1rv/ABzBDEYe5ZY5cwgHowhlPxA9a572w7Lm3cZ7JXultZ3zNlFoIoBzeRAB6kzApVaTiZC22C102tDapxE+Aj9gdAFzjBXLvfNihoFzLb1AOhBziSNBlPPrWb+PNy4xuXmBBOfu1yz1AKkhWOgzMQNZ60iv8Ra5ktkDKQQACYgEDlsvhnXodqJ4VibNv+Mzsx37vKIEN1IkmQSZ3mrzSAEnyT/xV90M5yThpt4bq48EvWLuRMRjitxZWyFQLbQEqsMYjJKhYJBnUsCVjoiX7d3Dg3GVxB8SnLOUlc+vs6ggzoDM6VwwNmYta+8JbALAumcAr7BBUQoIJGoIAgbHTdgOIXMPfyFnKuLoKAHKXYSoAcGUa4LZmJ6ebPswdr+Fk/intxjDqcNox81dzfXEcXIUFlw9lbbMNBmzlwp18S/qo2FW+uY/Z1j2vYx20TPbOdbYXKSjDVgQcsltxvJ5iT06uY45hXazZo+bZ7LdYTepl25XhXlNQLa1KKDQtsKVSNQFTqKZQrVfsK6sjiVYQR1BrfFYNSDiMk653ieFPav90pjUAMTE5/Z0B0nUHlv5UDxLBuuW4VKhtY/q8ug/UN0k9B4tgFuwxTMR4SBoSrETBPQgMPNfOgRaQt3F4gsIuKdRqXkwTp7U6bxPKugpcQJaHEY6jXmR+StzLUcDrr89MtlzysU27TYdUxNxVneTPVtTHlrSmitN4ewOGolEWuvNB3XqLwg0Pr+goQUZhDofX9BU0n5IW7ufU/WmmHufgiwCA1x1Pu0Vcxjacxj09KWMssR1J+tWjgeCBxKSUZVGeAFC+ElVyjUmGB2MTrz1otD2sbeOmPeMlTWeGgTpj4ZJsvD5ZLRZZXIXgBZyyAolSSsC5rM7etWIcPS+Vs3EFxWIBUiQesj0oTC4O2jFkWCRl5+XzMLr5Cm/artNY4PhVd1z37s5EBguwiZPJFka+fU0IsdndbK4gkBkEmIM+5jyXO260ikyM5wC5Vwz7OMcmKxGbCN3WZltuYPhNyAywS0ZZ1AmPWrdgvstS2yF1a6GAPd4cLZTT/rYhyHg6aKAd96pdr7a+KBnY9ywbLC93CpBk5YOYzt4idtK6hje0eL4hw2xieGXFs3LrrauBwG7t2ZUIzZTABO8ahlOldmubTO99x4ZZm7cs4RCPYtDK7coL63LhH8wy1TsX9o+IvkWeGWDatsdL1wG7euHmbdqZJ82JoV/sptoWxHFscXYxEFnLbExmAJO+kHqaLtdorNpCnC7K2kjKcQ/iYj+k8/QHL5giKSSCxXCPu4OI4niD37Kxto7C5fZspIhdEtz5CeRrmHB+2GJw794pDNmDFmkvIMjxTykgDbyq+cN7JYjGYw4m4z3FEAZ9cpYgSx0EyfZidfKaUdpuC4ThWLdbgF8581rLIyDKrHMCYkM0DU7eoCSXUMCuMxAfF3WDWri2DbQAZ7ZZPxEIH5ZhhOpFzyrfcssvtKVnqCPrVF4XxZgDi8O7C3irJtNaJICXLfdKbywxglUQEeR8gLLwjtBc0tu1soYEFvFB5gnwsBqdcp6a6VzvEuGMq1i8OgkTyn9o3YX1OwkCQDHPf12ReLsZgpzFSjK4IIGqmYM6R1mh+xvELJx74SwDke0bhcMAAwMHKOshSFAMAmSYo0TqDuCQfX+9aHfDph7ljHmE/EXD5zATI1u+Bmk+FQ7pqOcA6TWPg1dzKps7mk5/wDzEzhz65wpW9n8suvR67T0/avWIsEMCDCyTG8sRAO/KF908tRzT7UeIsMPctq4YYlbeoII/Da0hDCARmL6egOlPeD9tbOJjDYsLauPGWJy3IKkBOjj+U67EZtQtK+1ziiZ2sOCM1tSSoMEopa2ubmsq0xp4o0ILHpWGYIQs03U3lrxiPnmqTwvhdsWgWTvCC3OBHUgHUeR2mtR7SNZYDC2UR1J8RtqxBG6qGlR5mJ84FA4THXQAylRkA0mCZjTloAo028Pwddm8RhkttcxQuZ7nsMkAINPEfDoZYnaIA1Eaotgkux+bZLV2gLAyn9OGJgaczBnqVrwnbjiSuSzBi4ALd2oIWJ0yADQA6HlPKn32gYw3Uss4UldC9skQxGdYXJIUANrqVHMneeEW1fUvbud6LaFraF0Vky620CDKwglgpyxDDXQA1bjDXr+PC2gQzuMiaEKVECVBKiBJYDTxNyp2hpfgIhUOLmMGMz871Z/sy4QBdvXpYd0O5AOx1LPBG4mCPXnvXRaC4Nwu3hrKWbQhV+JY6kk89flFGiuG4haf4muagyyHQfJRuhS7OmG+KiVrxWtlerFKvlRValXqyaZRUaxUq9STqMVVeIrkxQI0GrjVi1xlUsUHIBpYQdPEYq1MKScewsstwCWHhGuze3bMRvnVR6Oa22J8PI/uBCspGHdxVH4yZvP0BhdSfCAMpkmdRr6mgDT/jvCO5tqSGlidAQyrqSdQBrqo21g+VIDXUUXtewFpkeyM0XBzBC9ReEOh9f0FCUXhNj6/oKtUn5Ldw20DcuMTotu428awVUT/mYVYuB4VRbvN4VAFtMzKDDBQzN1gsV+vpXsMUFu/m55VXfcsW0j/LOtXDs+y922dg3eOwBHhDCFTQdfCaG217mgkbgeEFYrSSAe70KdcMVkCs+rTmbpvMabwIHuqs//AOisHdc4XEKC1kI4LASFLMhBboDKgHyq1qRyppg8dba01jEoLllwQQRm0O4I5j5is3B+IMo1HNq4B2ugI9D5LneIWd1QBzcwvlKu6fZZjTg+B3sSySPvBuKDswti2XI91p481qxYbsBwGy3ei1mg5grPduAbaZDv75qP2iWG+72gbYt4cNkt2QAFAynW4F0GggIJETOuldX29OCQ4HoQfwhFOg97wyIJ3wXPe2HHjjblvF4kMlu4EW1hUcsCYB/EuQsjxAxAiR11FxlyPxLzgKkZFEhE6QPzN0MacgKvvCXs47CnA3wqvYBvWbpAjwklpHIgN7wZ3Wub8av2B3bXGaFZiqgaMVMSdNtPLekyqHxzUq1mfSLgY+nPvyPRdG+0btjZtWrOFtstq2xs3HCe1Ai8AFXUAlVBkSZPvqPaXA2OIphcQha0nc92CbYBu3Eci4418W6if2qrDAWb7XHc3muPmIzoyieRkAzy5+6rbwQ2Dw60lxrqDD3mW4kFHe0wtu/d3D7ALZxpr4uXO1Z17gpslvulnUWbD85OYEuxaOZYsY5CBWMN4riqXVVVhJLAcxufy70p7F4rD2eMv3UrZLXUtgnMQs6AnnAH/J3qwdg7yq4S45QsHZkuMUaZJC5GI0GvkYNDbUz6yen+Uf4fXu0ANBexnUaeYVm7W8dt2h3Vu6BfuZckKrRmLILju0qEBGuhOlUnjPFsTn+73mtcQujMoW0WNq0dQQLVtLeYmCZ26zuVv2kYRg1m4u6WzmjkDeuFfcJpBwDtFew+dbZCd9lVnCrIEzppprrP/ESpUgad5gEnPAeaorF1CvdJIzgzocMNtj5lbsO34d4MwVB4lsMGbn4lS5HgZdTDaGCN6FxeKuXLSW+8Z7SZsoIBK5ssgmJiV2JIHKnmJ4TaxXefd0yLaCs9/EXCoLEKGLz4FSZjTMxPPlW7z6rurQAsQVKyem43HurSwziPmHzHPdZqmzstPE5bdMtjC1rimESAyjQjqADofLXlpXvvjsqqQSFgaDkD8jqR76PsWhcYKQBcJgSQoY/0s2k+Rrf/AIFdBym2VbzUj1OulOajRmkLNUd9pkfMCNDyS0Xpf8NAJhRPUrl1nrMxXTPst4IVFzF3pLBe6tk8i3tx8QJ9etIeGcDS2cxhmiJjY7Ej1k1063kw2HtWnZUBKr4iFm4wZysnnqKwWy0/ynBmy3U7G6nDqmZOXhjsiCajnqTitYU1xAAhEYW4VmoK1TqBUV6vV7NQOO4kLbIv8x18h/7qbKbnmApNaXGAjiawDrQmK4gtt7SH/wDYSJ6QCfrA99FUiwtAJGeSaCMVljpQDoHBDAEHqJ2gjT1FF3bsaHnQ3IDnP71ZTluKm0YIHEYe3ilILAi05UgeGCuYETuJlfhXOrqFSQdxvBBHuI0NdA4Jebvb6voAwIAgDVntyY1LEqN/KqZx2yUv3FYk+IwTOonQyd+nuo/YCW1H0pwABHr+VvshIcW6QCl8UVhRofX9BQ00VhTofX9BRRbX5IyzgQba3GHtXxbERMFZb9N/1q28Pw/hTMoBD6AgGILEZYETl00qk4e/ldGPiCuTl1nUj3cq6FhMYrMygHwkCSCA2nInfpQfiHaNG4xO0aR4FD7ReHmjyKW4/jCWrlu3IlnAaZEKQdQdt8tH3nAEkhQBqToB5k1Qe02LVsRmUloAE6QRuMhUTGp3mh9hswrPh2UH5sqKFIVHQea6DmkSpBnbmPjXsVjm4lg2+7OLhw7sl0aqrkAN4WOjOvhMjTU7gwVOPu3PuTm2p7xkVEUnMTcvMLVtQ06nM41nkelWns1ZtYaxe4ZYWThLC52H5715XZ/f/DbyFxRRbg1kLWVKhyyHOMz3ZeKC220XKjGiJBn5+fBcgvXHtPNpjbvoZCHZuuQHRpBI03kg71qUW8Vh2A8LKIdTupPsuOqz+1WjHmy4y3UDciDlMRuDrIqv8R4OikXMJday4JOmoM8jPI6aajTaiNGsJEyD5e8d2CJWuyl7XAQZEbHORGkg45gHKBoBisRioAt2VmBmYsMs8woBn3mKZcLugqUxoCWrgCvkbUaGWzRC6x1iN6rPFPvKd67iC4ALW/CCSyCYGxOv+o0RwW1et4e+brFGLWsmdtd3zQDtMiiJdeYSPJc92Ap2hrH5YZiPX1XRMF2Kw+U2S+hUNbdAFzIeZj8wnWDBmecCOF4DxHDMFW7YvWAYm4G7xV2mCCpO228ctwB2a404+6W1w9+4MPbyuyWyylm0ID+zoAvONfKrcvEb14Efd3sLI8d7LmGsyttCQfew8wdqGuvAmfP5KKuecIOmmWGGOnSfdc649iGe+2vskqNANASNgAANzHnVUxPDLbKbtrXnlHsmPaAPI6GnXHmaxje4fWcwJ/qloIHnp8aV8IbLhc3QOfnFSp3mC+DnHnPsjdU2a0EWaAQ1rjOxaGQR1Dp657JcHVAoIVrTNmUtmIHVWVSATVotX8Le/BIsorIue+7Z2VhyQrlVEHJApY7SKq3A4fPZbZhmHUFZMjziT7qk9jKxLMVZFkZY8Q6r0rY4AuLTn89VzIa7sm12D6TgRo0iZB5Ri3eYzRWPKYfEFLLPdRgMrOoDMrrDBrZmJBMbGCDANH4Di93DwM/eJBLWXzNkYTADFfCdAYBIg9ZA34G797w64TD4dbeUd49wwzZlMm610qCqxPhncnUbUluW/ut8282cAjK6k5WU7lY9onkZjTQ86WDpaRjt/jL5KqY91Mh7TA0I05HcTvhin1vtvbS8p7gMqsDIuNBgzMFdvKmnb3joxWDwrKwzG9c7wCGytl8OnMQdD+oikWJ4Ut/W2RbxGhAMKl08lPK3dOgnRWO8Nq1cxMIwgEHVbiPoysDDDqP01pMo05DmjJK0Wiviyqfxlyj/ACrn2U7W3MP+HfOe2rBeZKqwJDIeYEHw9CIjn09bqsoZWBDCQRqCDsRXBMbigSrqIQgLpyjkehH0q3diO0/3du5un8Fjof8Apk8/8p59N+shuK8ND/5tIfVqBr+/z1W2x1hdukzH40XTFb5f3tW8HrWLbBgCCCCJBGoIPMHmKyVrlnEFECV6qrxYZruYbEaSRGk89vrvVnu3Mqlt45VWcdiUCMUyg5i4mJXqcp23Gs1rsTTeJA5fPJX0CQ6e5K+M8QfvLRLBsgVgokRMEBiI3EfGrfw7Fi6gcaciJBg+ZHOucY27nctMkhJ0jZFB5+VWzspjLa2iC8sTJEHTQwBI1PhOgn60SttmHYNujEbDfNaK9OKQIzCf4hxsfKtFq7mWRpMD361HiN0JB1kke7Wg+HYtQrIW1DkDlpJ5+80LbT+iR83WdrJbIWop3eILMTlhiQBmzFO7ddv6nYjzpN25YG9b65NT/wBzae7Wm+Px/dOWYeAAR4RILK/WOaLVa4zjTeS07SWhgxiBmmYB56fpRayMcajah2jy6fMFfQae0Dj08koovCrofX9BQ1F4LY+v6Ci8og8YIa4dSPMn61a+zN092ogwt62ZOgyv4dCTr4gdB1+FWZJLHpJP+oDT3kVbezNg9wX3n2Y/LlckgEk9AY0G3OaxW6Ozx3HzwlZ7TAZCe47ilm2WRyJFvNllRmGvhEmJ8j1rmmIK5jkmOU6GPPU6++rL2vxKscptw6kDPEyNTlnlvMEGfnVWqrhtAU6d7UxPzmmsdK62d1077OnQYZsTfY91hHuXSSSQMtkKgA5hQ985erIarX2acdu3sZxLiFxm7lLV7EXEBgkwe7QMNRlRWAIjYU+4Zab/APHMdk3PenafCEtZt/6Vaq99nOFUcA4rdHtMrqfRLcj/AHmuhogCm1cbxDG2VsYx9QFu7a9mrtvF3Gs3myuS7TEy3izCIBBnXbWeVJ8MR7GclxuGPi3/AJek8x8abt2zt4nD2LwM3bdtLWIT82ZB/GA5o3UeydD1Ir8Xwt8DOiP0zgSPTMPpQ+rfDiCO8R8KNWNzX0WlrsYxB+YeBSrEYfS4txgFYjUkCCGLDQ7xKD/tNC4PHZLjC/eS6jgKVFsgCWVgwZSNQVB3PnTfubDqCissj8l14H/ZJX5UvTs9ZLojXHUXHVZORoLSATK7T51bSr3cPT9qi02Nr/rOnPv2GErqfZO8WtHTwyMvmCoP6x7qJ49xKxYTNfupbEz4mALRJhRuT5ClHDuzzG2FGNxLIpZQv4aLoYPsoCRodzU7PB8MnfLbtqbwtse8aJJggSx9kAxr69KzXWqD3EvLufX2/K5X2hxa4zFLi7SsELGQdwF1WfUD50gw18jCXBO7Ko/3Gt2HxinF3CgCpdZwAuwkkrA6bRS1rn4Kr1dj8lA+pok2nH06CPU+SodaW3O1GDrr2mMpusYCORGOsFabN0qwZTBUyKtbImItC4vhPlqbbcx/Up+hFU6nHAeJd08N/DfRvLo3u+lPXYXC83MefJU8LtbKVQ063+2/A8joeUb9+YBB1k3GL52RFUjMvTSBA2g+c70fcvrctCzYtZ7lwxcvOC927cJIRLIJ8KAAeIjc6RAnZxLATqAGgDSYFxJmARt1B5HyqF3FvaFp8CjKVzZygzupy5YIMxoWEnr5iqab21YI/Q+fMVtt1hqWYkEyNDq70ETjluMChwL2AutaxCZrjL/DlXXxjKSzIScwI9mdwN+cO1WDL/jgzEK5PtTpBedzECd9ppZfuXLdxu9U97AyksZVjBDk7s0ef0plgZDNhpDgg96wOYTG6nkFPPyO+gq4yId47LBTio00ndBuDjHeddhjySfg1lrl1LYZVFxlQm5/D1MS/kJ35U24fZXx2nWLltmVl10gkR7oj3VhezrQgtul8McpCsFUmSAUd4+cV42HtYsLczi4wOcXEZLgOWQWDAamAZ19TvSqw9hg5einw0uoWlge2Q6BBxwdkR3+oT/s/wBp3wL93dzPhn1SILI3RZIEHpPn1noPDOP4fEA91cBYbofDcHrbOvvGlcvxNlXXK3sn/wAfMUPhcEYCXCCFIyXEJDqPKNooHabDQtAvn6XaxrzjffddBUsFVtYini04idD/AGk5gHNpggZFdYtYsMHg6kSogtpqJyjWNKQ8UfMHBtjwWjqumsiN9fiKqnA+N37RyYkG4h8IuAd5l13Me0NZkgmn74q24fVpyOBooU+EnQAnXTn1rMbGaD5z5j5+1Kh9QvhpHIiCPkZ5FKLyqHMTGgmIjQfrTLgeM7sEhFZsyhSxYQWz6sBoY1jSfEaVWrZOwJ8hr/fOmeGAS0WdTHeoNiIKrdO415j41srgXYOOQ81vqAXYPJP+L4p/ZLBgddBpI3G/Wliv+IWHMkjnznSsHF974yIn+/fWu5fVPGyyBGmo3rBTplouxioU6d1saoztFi0KKCsksAfaWNJ3Htb7edVYR3Y6htPQg5p+Cx76YcW4kbnsgAAgggmfZAA19G/vdTFELLSuUwMlZRYWheovCbH1/QULRWE2Pr+grSrX5LQRLEf5vlJpvwnjHc2nRlZlcMNDlyTvlOu/oNhvSZ/aPr+tM+EYq3b71Lq5gwGmokqdANdNyfdVNdoLCCJyw79OeqhUaHNgickLxDGd45YAqD+UsWAjaJ5eXKTQtTvZPyFok6MANJ01B10+lQFWgACArGAAQFfuIdo73DuBYZ7Vu2xv3biOLillyE3ARAI3Cgek1DgPAGscK4tatsWtXLKYiwf5rT2mce+FKnqVNJu1nExieHLw4WiHw1hMZbfMIuKpdby5eWVWduc9220CTvsK7ZLB4ViDKvm7gnbWS9k+ssw8yw5iijB9Le5eeWqpNeqYzc7/ALSuNWrzKZUwf73qw4TtF4cjBY5hlke6D9az297LPw/FvYIbuyS1pyPbtk6H1GoPp51V6Z9Nr81GjaKlA/SVaxeRjNkFOvdPJPouYfCp42/cYEPmCjKMzBUnKSQwzPvrVSrFQ7ALT/5F5EEfPBX3h/2i37KZBcYgdVVvgS1L+L9tL91HRfD3oAuP+d1EkL/SvibTnNVKvU4oUwZAVL7bWeCCc9gB55onCTnXLvmEes6Vi+dSvQkfM0RwUTiLP/2KfgQT9KFvtLMepJ+dTn6o5epVd2KAdObiPANK01msV6pqhWfs7xOQLDn/AOsn/Z+3/qm7Frbd6ntL7Y/nX9+n/JqhirjwjiPfJ4v4q+15j+f9/wDmsFppXD2je/5sdV1nBrc20U/4Oucf6Dr06jTcSOpXH3s4i2rZspEZDIAk77+mvSPI1DGcOt4gWsNgEzOql3crlLSsuxYnw2wIEn2iToAFpdxawigZwShaRH5G5+qHn5jzrScXcTOoDLafwtpAuARC5940J0Oo301qym280Fp6fNToh1vDqdVzagAOAMa7HkNfKJC38O4gAgw6gZRJdzDMCCSAjjVVJ1OWZ15Uz4zgroxK3L7SwRVBzK/hKSgLKT4spHPag8ThbFvCylxji7hGdbYHdJaM+CYkN4Z0MxvoTBHBLuHW3cs3ZuOVXLlICASASZ1MDYjqTyGZPxBI+c1GzOh7bwyIPKRkM9hisnas2faX1rOJw7Wm7q4Cf5WYQWXow5MOdD4q9kt3G5BCB6t4f1rDcM3V2TbUw0+20Ak8oEn5qocPM209B/uNGWLxWYO4IPmCCD8iaFwqQiAclWtHEb5tlLm6+JSPWCp/8flUi2+8gc1QKgs9ma5+QDZ8gT3Znkn2CJJ8JA5ankeX/MURcxWbwlSBqTqYJ9mYjfU/GkyY0KFcHRiqiOYZtfp8qb3rp2U7bmeX7bVncwg4/IVhuud9OOR7jkt2FRiMxEDYDyrONuEDQA7afT+zQgxDQIYyNv2AofF4wuACoEc9ZqttEufJyUg1aZEHrIO3KDPpy0rXXqxNbVYs0Xhdj6/oKForC7H1/QUkz8kNd395+tYY/SvXNz6n61JTpBjqD8iPp8KdNMBa6xNZrC+dJKcYTnCPeVLWPw4z3eHNmdOb4Zycw65VY3M2mgvE8qXfaJ2WGHa3xHAn/wCHiSty0yaGy7eLuzHswZy9II3XUjgXFXw15btuCdQyn2WU6MrDmpH6HlV37A8Twxd+GsA2CxOZrVm74jYuE5nw5P5kOrIw1ka+I1ss9QRdK4/jNgqMqurNEtOJ5HWeuffGi14C2e0PB/xcv3zCsVV4jMQoIzdA66GNMyzoNK4txXhV3DsUuoVIMGQQZHIg6g12YdlsdwPGnE8PR8TgrhAu2VlrirOxUeJiskq4B5g+de+1vC4qzdt4v7yb9nEjwF7Vu2QBqLbhQCxAO5UdNxVxDplqFUnUiLtWeRGMdRgCO8EabLlFeo67i1b2raz1WV/Uj5VCybX5w/uIP1FSk7KJY2Ya4RuZH5/aEr1ObuEsKskXQ0SoaFB1A6Hr8qXG6sQEA8yST+3ypmuvYhSrUHUjDiO5G8PtZbb320ABVP6nYRp/lEn4UrNbGuEwCSY28vStVOARMqD3gta0CI8ycz+BHLeV6vV6sinVaxRGHvsjB1MEf3BHMUPROFtZzl+HrypjlipMvXhdz0VoW4MVYMb816MPZ9x/WluAxzdzcQzKowA8j5Hmpkeh8qD4Li+6ug/lbwn9D8YNF8btG1iBcA0bX1OzA+v61lawMeaehxHqj9e0utNnZa/6m/Q/oftd4+Z2RPAuLtgnlArXiPA3thAwBBQDQv05THSp4zh1/Bm26kLdvENbCvmuWxIKhwQMpaVIOoMGkV4AEOs6mR5Ebg+cxVg7PY7DhWN+22IuPoqGcqSMuckHV+Q0J6RVrxH1AdfmyEtMm5lGXT8klOWuC6jtiMQju9xi0E5rb6QxJAHi1iN9fOEPFkdsuHYeLN4iNoAkH0MzUOC8S+6XQwt570nw3beZVJHhISZLaqw9w5mieNWsVZFjEXQYupmWSpJWTDeHYHz91VdnddPh1hEGWwGmabpun7o/tnEaYxtlKKI199a8TYDqUP5vk35TUrV0MoYeyf7ipVgxaea7I3KrIzaR3EEeoVdwuIKobbbh0I9Z1Hy+dW9+Zjny0qp4/D//ACQB+cq36n6GrQHFabRBuka4oNwhtRva0343CGjoJ9CFOzeykEzvUcXeVjosefXnJHXlXnOm1aGjlp86zNaCbyMxqo1ipVg1akQs0ZhBofX9BQlFYTY+v6CmTvOCEvA5h6nN86wG85o65hhJ1O56ftUPuw6n5ftTqsEAygzWDRhww6n5ftUThh1Py/anTOeENUrbkEEaEQQRoQRqCDyNb0ww6n5ftUhg16n5ftSSvhWqx9oWIOGbDXockQt05s6xBBJDKWIjfMp8zVl+zvgty8q4huJYq8qlkuYe9DpOhysLhfSMpBGoB33rkuLlQQCR5866p9gy5bWJQExntnXUyUg6+4VroOfkSuV4xRszJNNkOnHbw9o6Knfa1xPBJijgMNw3DZkKhriqbbm46yFTuSkxmHtZgTy0rnvFkWxduWQmV7bMjEnMVZTDAcgZBE610/7PeEWsVx3E3r4LtbuXrygnw5xcGUx/Tm0HKB0rnPHcMHxN92JzNduE7bl2nlWgiSgjKha0gASdYEjA5HTuWnG3u8ts53FtE9WL5voKR1beKYJRaYSf4p6flWBypP8A4cnVvl+1V0ftw3W3ik9sLxk3RPifSEqr1Nf8OTq3y/avf4cnVvl+1WoclVepr/hydW+X7V7/AA5OrfL9qSSVUz4Gv4qf5l+hP6VL/Dk6t8v2plwHBLnGp9odP5X8qrq/Yei2cObetVMH+4JDetHM0DQE/CaZcQxBfDWZ1aWHuXSfmKNTBW4dygJU6TMak8ga9d4en3ZTrKgxtzdp5eQqF4OI5H0PstPZvoUnuwh7cuj2+YkxmklqYyNoG1Unr1HkdRRPA+LNhbve21U3ACFLDNkJEFgObDly9akuHDAqxYhEJWTtrsPL9zWv/D16n5ftVpaCIKGXzhuE+bBXLdv79ecd7ck20uBmuupBLXyY2nQEmJMDakBuuAHLTm0KnYjXwx01PxmjLqF1hnY6KSZEnoCYmByHKiOA4FGzO0kovhB2+FQi7iVqa/tXCmO7rudzHtgtHBMQA3dzo+q+TD8vr/xTegeN3musLlwyyKiKQFWFQeHRQBO/x9IcC1OsnbyrHaWYh266XgdqLqbqLv6cuhJw7vWNEru2ScQj8grf3/5fKjbDghoHssyt6rWwWvEup2b6rSK/bINwh3Eu2gaBv0pqdM1cNh6q+02tlivVIJDnEn/iPaE+UsORqBU+dV7uT/1Ln+r/AIqN3CydWY+pmrv4SNfJY/8A2Jh+2me8/pOzi7Y0Nxf9VTW4p1Vlb0YGlYwo6nfy6elbsNgE1B2jy/aomiIzVlPi9R7oujz/AH+EzAPn8KKwoMH1/QUlt8MsliuQRr1nnzrVgwwB/Eff+b0pmUL/ANpU6/FzRgVGZ5Q6cuoC/9k=', 'active', '2021-11-10 13:34:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','block') COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'saif jamal', 'saif.jamal6173@gmail.com', NULL, '$2y$10$7T9ecigOx.zGLogj9jEbwOTKf/dGABua2llFox2qp8fugx5XP6k32', 'active', 'admin', 'Y9eAXmnwO1oRwLn1Qk7QmjBVuJll26ufdHpcPe4GkZHLu7GhPQ3yLwMgl8Mm', '2021-11-09 18:24:35', '2021-11-09 18:24:35'),
(2, 'saif', 'saif@gmail.com', NULL, '$2y$10$qKmaGA5O6Vh3I6I7/FvC0ObiVdJjB0z7M1OhQBqO/YYOwsiNbHIfm', 'active', 'admin', NULL, '2021-11-09 19:30:23', '2021-11-09 19:30:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
