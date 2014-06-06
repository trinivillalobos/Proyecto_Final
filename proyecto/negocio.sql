/*
SQLyog Ultimate v9.63 
MySQL - 5.5.25a : Database - negocio
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`negocio` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `negocio`;

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id_producto` int(255) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(250) NOT NULL,
  `precio` float NOT NULL,
  `existencia` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `especificaciones` longtext NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `productos` */

insert  into `productos`(`id_producto`,`nombre_producto`,`precio`,`existencia`,`descripcion`,`especificaciones`) values (13,'Shampoo matizador',190,5,'Quita lo amarillo	','Ninguna'),(14,'Shampoo de proteinas',250,5,'Brinda proteinas','Usar cada lavada de cabello'),(15,'Keratina',300,2,'Repara el cabellos resecos','Aplicacion diaria'),(16,'Shampoo de caballo',210,9,'1 litro','ayuda al crecimiento acelerado del cabello'),(17,'Plancha alaciadora',350,7,'Color negro','Usar con cabello seco'),(18,'Shampoo de Caida',250,10,'Controla la caida del cabello','500 ml');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `Id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nivel` int(11) NOT NULL,
  PRIMARY KEY (`Id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`Id_usuario`,`nombre`,`apellido_paterno`,`apellido_materno`,`user`,`password`,`nivel`) values (1,'Carolina','Lopez','Velarde','caro','admin',0),(2,'Trinidad','Villalobos','Lopez','trini','trini',1);

/*Table structure for table `vendidos` */

DROP TABLE IF EXISTS `vendidos`;

CREATE TABLE `vendidos` (
  `id_vendido` int(11) NOT NULL AUTO_INCREMENT,
  `producto` varchar(250) NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_vendido`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `vendidos` */

insert  into `vendidos`(`id_vendido`,`producto`,`precio`,`cantidad`,`fecha`,`Id_usuario`) values (1,'Plancha alaciadora',350,1,'2014-05-28 22:50:16',1);

/*Table structure for table `ventas` */

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `id_ventas` int(255) NOT NULL AUTO_INCREMENT,
  `total` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_ventas`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `ventas` */

insert  into `ventas`(`id_ventas`,`total`,`fecha`,`Id_usuario`) values (1,350,'2014-05-28 22:50:16',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
