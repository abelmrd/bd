-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.10.2-MariaDB-1:10.10.2+maria~ubu2204 - mariadb.org binary distribution
-- SO del servidor:              debian-linux-gnu
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para database
CREATE DATABASE IF NOT EXISTS `database` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `database`;

-- Volcando estructura para tabla database.Productos
CREATE TABLE IF NOT EXISTS `Productos` (
  `ID_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL DEFAULT '',
  `descripcion` varchar(100) NOT NULL DEFAULT '',
  `precio` float NOT NULL DEFAULT 0,
  `composicion` varchar(120) NOT NULL DEFAULT '0',
  `imagen` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla database.Productos: ~5 rows (aproximadamente)
INSERT INTO `Productos` (`ID_pedido`, `nombre`, `descripcion`, `precio`, `composicion`, `imagen`) VALUES
	(1, 'Arandanos', '120 UDS. Complemento Proantocianidinas con Vitamina C añadida', 4, 'Extracto de Arándanos (Vaccinium macrocarpon) (Bayas)', '1.png'),
	(2, 'VitaminaB12', '120 Pastillas. Comprimido de disolución rápida', 3, 'Manitol, Sabores naturales, Celulosa (origen vegetal), Crospovidona, Colorante de remolacha', '2.png'),
	(25, 'Colageno', 'Colágeno Marino Hidrolizado + Ácido hialurónico ', 3, 'Hidrolizado de colágeno, magnesio, ácido L-ascórbico, citrato de zinc, hialuronato de sodio', '4.png'),
	(26, 'Magnesio', 'Magnesio Comprimidos 120 capsulas', 3, 'Cloruro de magnesio, carbonato de magnesio, antiaglomerante', '3.png'),
	(29, 'Suplemento Zinc', 'Oligoelemento capaz de actuar sobre el funcionamiento del sistema inmunológico', 3.8, 'Maltodextrina, Cápsula de origen vegetal (HPMC) ,Zinc (pilodato)', '5.png');

-- Volcando estructura para tabla database.Usuarios
CREATE TABLE IF NOT EXISTS `Usuarios` (
  `id_usu` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_usu`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla database.Usuarios: ~2 rows (aproximadamente)
INSERT INTO `Usuarios` (`id_usu`, `nombre`, `password`) VALUES
	(1, 'Abel', '1234'),
	(2, 'antonio', '1234');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
