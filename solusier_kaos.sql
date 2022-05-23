/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.24-MariaDB : Database - solusier_kaos
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`solusier_kaos` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `solusier_kaos`;

/*Table structure for table `banner` */

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` text NOT NULL,
  `caption` text NOT NULL,
  `gambar_banner` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `banner` */

insert  into `banner`(`id`,`judul`,`caption`,`gambar_banner`) values 
(1,'Selamat Datang di KAOS','Menerima pesanan jasa sablon dan design kaos. Mulai dari jasa sablon manual, DTG, dan Sublim. Sablon print warna tanpa batasan Warna dan Ukuran','1.jpg'),
(2,'Mengapa Kami','Kami selalu menyediakan kaos premium dan berkualitas baik, jadi jangan ragu untuk order kaos di tempat kami','1808493104_2.jpg');

/*Table structure for table `portofolio` */

DROP TABLE IF EXISTS `portofolio`;

CREATE TABLE `portofolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_galeri` varchar(128) NOT NULL,
  `gambar_galeri` varchar(128) NOT NULL,
  `gambar_klien` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `portofolio` */

insert  into `portofolio`(`id`,`judul_galeri`,`gambar_galeri`,`gambar_klien`) values 
(1,'galeri1','galeri.jpg','klien.png'),
(2,'galeri2','galeri.jpg','klien2.png'),
(3,'galeri3','galeri.jpg','klien.png'),
(4,'galeri4','galeri.jpg','klien2.png'),
(5,'galeri5','galeri.jpg','klien.png'),
(6,'galeri6','galeri.jpg','klien2.png'),
(9,'Galeri 7','1211842432_galeri-5.png','1211842432_0015-logo-tesla.jpg'),
(10,'Galeri 8','1207942113_galeri8.jpeg','1207942113_sapcex.jpg');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul_kaos` varchar(128) NOT NULL,
  `gambar_kaos` varchar(128) NOT NULL,
  `harga_kaos` decimal(32,0) NOT NULL,
  `stok_kaos` int(128) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `products` */

insert  into `products`(`id`,`judul_kaos`,`gambar_kaos`,`harga_kaos`,`stok_kaos`,`deskripsi`,`kategori`) values 
(1,'Kaos Polo','kaos_polo.jpg',20000,2,'asdfgh','kaos&kemeja'),
(2,'Kaos Polos','1721412462_kaos_polos.jpg',0,0,'','kaos&kemeja'),
(3,'Kaos Jersey Futsal','1268889444_jersey_futsal.jpg',0,0,'','jersey futsal');

/*Table structure for table `testimoni` */

DROP TABLE IF EXISTS `testimoni`;

CREATE TABLE `testimoni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `instasi` varchar(128) NOT NULL,
  `testimoni` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `testimoni` */

insert  into `testimoni`(`id`,`nama`,`foto`,`instasi`,`testimoni`) values 
(1,'Muhammad Muklis','avatar.jpg','PT Usaha Teknologi Makmur','Kaos nya bagus, bahannya mantap, gak nyesel order di sini, next time saya akan order kaos di sini lagi'),
(2,'Naufal Darussalam','avatar.jpg','PT Dharma Lautan Utama','Pesan Jersey di tempat ini hasilnya mantap, kaosnya adem, enak di pakai waktu bermain sepak bola'),
(3,'Saifudin','1721695004_6.jpg','Tarkam FC','Beli jersey di sini mantap, hasilnya sesuai request, terbaik memang, saya kasih bintang 5');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
