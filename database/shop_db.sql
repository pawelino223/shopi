-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 11 Gru 2023, 20:53
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `shop_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '79782e79d84a5dbb21807cfbdd4bf0673d452261');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(2, 'Aparat Canon EOS R7', 'Rodzaj: bezlusterkowiec\r\n\r\nW zestawie: korpus + obiektyw\r\n\r\nMatryca (przetwornik): 32.5 MP\r\n\r\nMocowanie: Canon RF\r\n\r\nJakość nagrywania filmów: 4K\r\n\r\nWizjer elektroniczny: tak\r\n\r\nPrzekątna LCD: 2.95 cale\r\n\r\nKolor: czarny', 7999, '5137C010-1.jpg', '5137C010-2.jpg', '5137C010-3.jpg'),
(3, 'Aparat Canon EOS 2000D', 'Rodzaj: lustrzanka\r\n\r\nW zestawie: korpus + obiektyw standardowy\r\nMatryca (przetwornik): 24.1 MP\r\nRozmiar matrycy: 22.3 x 14.9 mm\r\nMaks. zoom optyczny: 0.34 x\r\nJakość nagrywania filmów: Full HD\r\nWizjer optyczny: tak\r\nPrzekątna LCD: 3 cale', 1999, 'APCANEOS2000KITDC-1.jpg', 'APCANEOS2000KITDC-2.jpg', 'APCANEOS2000KITDC-3.jpg'),
(4, 'Laptop Apple MacBook Air - M1 ', 'Dane techniczne\r\nProducent\r\nApple\r\n\r\nGwarancja\r\n3 lata w serwisie zewnętrznym\r\n\r\nGrupa produktowa\r\nApple MacBook\r\n\r\nSystem operacyjny\r\nMac OS\r\n\r\nRodzaj laptopa\r\nbiznesowy\r\n\r\ndo domu\r\n\r\nPrzekątna ekranu\r\n13.3 cali\r\n\r\nTyp procesora\r\nApple M\r\n\r\nRodzaj dysku\r\nSSD\r\n\r\nModel\r\nApple MacBook Air 13.3&#39;&#39; (2020)', 5400, 'LTAPLMGN63ZE-1.jpg', 'LTAPLMGN63ZE-2.jpg', 'LTAPLMGN63ZE-3.jpg'),
(5, 'Laptop HP 14 - Core i3-N305', 'System operacyjny: Windows 11 Home\r\nTyp procesora: Intel Core i3\r\nWielkość pamięci RAM:\r\n8 GB\r\n16 GB\r\nPojemność dysku SSD:\r\n512 GB\r\n1000 GB\r\nKarta graficzna: Intel UHD Graphics\r\nKolor obudowy: srebrny', 2000, 'NBHP84A08EA-1.jpg', 'NBHP84A08EA-2.jpg', 'NBHP84A08EA-2 (1).jpg'),
(6, 'Telewizor Philips 55OLED707/12', 'Rozdzielczość nominalna: 3840 x 2160 (4K Ultra HD) piksele\r\nSmart TV: tak\r\nLiczba złącz HDMI: 4\r\nLiczba złącz USB: 3\r\nKlasa energetyczna (2021): G\r\nModel: Philips 707/12', 5000, 'TVHLCDPHI55OLED707-1.jpg', 'TVHLCDPHI55OLED707-2.jpg', 'TVHLCDPHI55OLED707-3.jpg'),
(7, 'Telewizor LG 50NANO763QA', 'Rozdzielczość nominalna: 3840 x 2160 (4K Ultra HD) piksele\r\nSmart TV: tak\r\nLiczba złącz HDMI: 3\r\nLiczba złącz USB: 2\r\nKlasa energetyczna (2021): G\r\nModel: LG NANO763QA', 2100, 'TVLCDLG50NANO763QA-1.jpg', 'TVLCDLG50NANO763QA-2.jpg', 'TVLCDLG50NANO763QA-3.jpg'),
(8, 'Myszka Logitech G502 Hero', 'Typ urządzenia: mysz ergonomiczna\r\nMaksymalna rozdzielczość pracy: 25600 dpi\r\nSzybkość śledzenia : 400 IPS\r\nMaksymalne przyspieszenie: 40 G\r\nProfil: praworęczny\r\nLiczba przycisków: 11 szt.\r\nRolka przewijania: 1 szt.\r\nŁadowanie bezprzewodowe: nie\r\nOprogramowanie: Logitech G HUB\r\nKolor: czarny', 230, 'MYSZLOGGG502HERO-1.jpg', 'MYSZLOGGG502HERO-2.jpg', 'MYSZLOGGG502HERO-3.jpg'),
(9, 'Myszka Logitech MX Master 3s ', 'Typ urządzenia: mysz ergonomiczna\r\nMaksymalna rozdzielczość pracy: 8000 dpi\r\nProfil: praworęczny\r\nLiczba przycisków: 7 szt.\r\nRolka przewijania: 2 szt.\r\nOprogramowanie: Logitech Options+\r\nZaprojektowano dla:', 480, 'MYSZLOGMXM3SGRA-1.jpg', 'MYSZLOGMXM3SGRA-2.jpg', 'MYSZLOGMXM3SGRA-3.jpg'),
(10, 'Lodówka Beko RCSA300K30WN', 'Wysokość: 181.3 cm\r\nSzerokość: 54 cm\r\nGłębokość: 57.4 cm\r\nKolor: biały\r\nKlasa energetyczna (2021): F', 1520, 'ADLODWBEKRCSA300K30WN-1.jpg', 'ADLODWBEKRCSA300K30WN-2.jpg', 'ADLODWBEKRCSA300K30WN-1 (1).jpg'),
(11, 'Lodówka Samsung RB34T672EWW', 'Wysokość: 185.3 cm\r\nSzerokość: 59.5 cm\r\nGłębokość: 65.8 cm\r\nKolor: biały\r\nKlasa energetyczna (2021): E', 2600, 'ADCHL20-1.jpg', 'ADCHL20-2.jpg', 'ADCHL20-3.jpg'),
(12, 'Pralka Beko WUE7512WWE', 'Klasa energetyczna (2021): D\r\nWysokość: 84 cm\r\nSzerokość: 60 cm\r\nGłębokość: 49 cm\r\nPoziom hałasu: 72 dB', 1400, 'ADPRA710409-1.jpg', 'ADPRA710409-2.jpg', 'ADPRA710409-3.jpg'),
(13, 'Pralka Samsung WW60A3120WE', 'Klasa energetyczna (2021): C\r\nWysokość: 85 cm\r\nSzerokość: 59.5 cm\r\nGłębokość: 40 cm\r\nPoziom hałasu: 74 dB', 1530, 'ADPRALSAMWW60A3120WE-1.jpg', 'ADPRALSAMWW60A3120WE-2.jpg', 'ADPRALSAMWW60A3120WE-3.jpg'),
(14, 'Smartwatch Garmin Instinct 2 Solar Tactical', 'Rozmiar: 45 mm\r\nKolor koperty: czarny\r\nbrązowy\r\nczarny\r\nMateriał koperty: tworzywo wzmocnione włóknem szklanym\r\nKolor paska:\r\nczarny\r\nMateriał paska: silikon', 1530, 'ZEGSP70100262703-1.jpg', 'ZEGSP70100262703-2.jpg', 'ZEGSP70100262703-3.jpg'),
(15, 'Smartwatch Huawei Watch GT 3 Active', 'Rozmiar:\r\n46 mm\r\nKolor koperty: czarny\r\nMateriał koperty: stal nierdzewna\r\nKolor paska:\r\nczarny\r\nMateriał paska:\r\nstal nierdzewna', 800, 'SMHUAWATCH3SPORTPROGT3-1.jpg', 'SMHUAWATCH3SPORTPROGT3-1 (1).jpg', 'SMHUAWATCH3SPORTPROGT3-2.jpg'),
(16, 'Smartfon Samsung Galaxy S21 FE', 'Stan: nowy\r\nPrzekątna wyświetlacza: 6.4 cale\r\nPamięć Flash: 128 GB\r\nSystem operacyjny: Android 12\r\nRozdzielczość: 2340 x 1080 piksele\r\nAparat fotograficzny z tyłu: 12 Mpix\r\nPamięć RAM: 6 GB\r\nKolor: grafitowy', 3000, 'TELKOMSMG990BZAFEUE-1.jpg', 'TELKOMSMG990BZAFEUE-2.jpg', 'TELKOMSMG990BZAFEUE-3.jpg'),
(17, 'Smartfon Google Pixel 6 Pro', 'Stan: nowy\r\nPrzekątna wyświetlacza: 6.7 cale\r\nPamięć Flash: 128 GB\r\nSystem operacyjny: Android 12\r\nRozdzielczość: 3120 x 1440 piksele\r\nAparat fotograficzny z tyłu: 50 Mpix\r\nPamięć RAM: 12 GB\r\nKolor: czarny\r\nWaga: 210 g', 2570, 'TELKOMPIX6PGA03164BS-1.jpg', 'TELKOMPIX6PGA03164BS-2.jpg', 'TELKOMPIX6PGA03164BS-3.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(2, 'pawel', 'pawel1@pawel.pl', '5564a40b3044389cdd055bde6a926496e668fbf8');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
