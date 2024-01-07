-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 07 Oca 2024, 20:24:14
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bby361_yarengozutok`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `eserler`
--

CREATE TABLE `eserler` (
  `eserID` int(11) NOT NULL,
  `eserAdi` text NOT NULL,
  `yazarID` int(11) NOT NULL,
  `yayineviID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `eserler`
--

INSERT INTO `eserler` (`eserID`, `eserAdi`, `yazarID`, `yayineviID`) VALUES
(1, 'Tutunamayanlar', 1, 1),
(2, 'Sinekli Bakkal', 2, 2),
(3, 'Saatleri Ayarlama Enstitüsü', 3, 4),
(4, 'Kürk Mantolu Madonna', 4, 3),
(5, 'Anayurt Oteli', 5, 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yayınevleri`
--

CREATE TABLE `yayınevleri` (
  `yayineviID` int(11) NOT NULL,
  `yayineviAdi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yayınevleri`
--

INSERT INTO `yayınevleri` (`yayineviID`, `yayineviAdi`) VALUES
(1, 'İletişim Yayınları'),
(2, 'Can Yayınları'),
(3, 'Yapıkredi Yayınları'),
(4, 'Dergah Yayınları');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yazarlar`
--

CREATE TABLE `yazarlar` (
  `yazarID` int(11) NOT NULL,
  `yazarAdi` text NOT NULL,
  `yazarSoyadi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `yazarlar`
--

INSERT INTO `yazarlar` (`yazarID`, `yazarAdi`, `yazarSoyadi`) VALUES
(1, 'Oğuz', 'Atay'),
(2, 'Halide Edip', 'Adıvar'),
(3, 'Ahmet Hamdi', 'Tanpınar'),
(4, 'Sabahattin ', 'Ali'),
(5, 'Yusuf', 'Atılgan');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `eserler`
--
ALTER TABLE `eserler`
  ADD PRIMARY KEY (`eserID`);

--
-- Tablo için indeksler `yayınevleri`
--
ALTER TABLE `yayınevleri`
  ADD PRIMARY KEY (`yayineviID`);

--
-- Tablo için indeksler `yazarlar`
--
ALTER TABLE `yazarlar`
  ADD PRIMARY KEY (`yazarID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
