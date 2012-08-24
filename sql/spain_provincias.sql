# ------------------------------------------------------------
# Listado de provincias españolas 2012.
#
# Datos extraídos del INE (Instituo Nacional de Estadística).
#
# El campo id_provincia debería coincidir con los dos primeros dígitos del código postal
# de la provincia. Los que tienen un dígito, añadir el 0 delante.
#
# Ejemplo:
# Dado un código postal 08031, tomamos los dos primeros dígitos (08) y vemos que pertenence a prov. Barcelona,
# Similarmente el código postal 44652 => 44 => província de Teruel
#
# Albert Lombarte
# Twitter: @alombarte
# ------------------------------------------------------------

CREATE TABLE `provincias` (
  `id_provincia` smallint(6) DEFAULT NULL,
  `provincia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB;

INSERT INTO `provincias` (`id_provincia`, `provincia`)
VALUES
	(2,'Albacete'),
	(3,'Alicante/Alacant'),
	(4,'Almería'),
	(1,'Araba/Álava'),
	(33,'Asturias'),
	(5,'Ávila'),
	(6,'Badajoz'),
	(7,'Balears, Illes'),
	(8,'Barcelona'),
	(48,'Bizkaia'),
	(9,'Burgos'),
	(10,'Cáceres'),
	(11,'Cádiz'),
	(39,'Cantabria'),
	(12,'Castellón/Castelló'),
	(51,'Ceuta'),
	(13,'Ciudad Real'),
	(14,'Córdoba'),
	(15,'Coruña, A'),
	(16,'Cuenca'),
	(20,'Gipuzkoa'),
	(17,'Girona'),
	(18,'Granada'),
	(19,'Guadalajara'),
	(21,'Huelva'),
	(22,'Huesca'),
	(23,'Jaén'),
	(24,'León'),
	(27,'Lugo'),
	(25,'Lleida'),
	(28,'Madrid'),
	(29,'Málaga'),
	(52,'Melilla'),
	(30,'Murcia'),
	(31,'Navarra'),
	(32,'Ourense'),
	(34,'Palencia'),
	(35,'Palmas, Las'),
	(36,'Pontevedra'),
	(26,'Rioja, La'),
	(37,'Salamanca'),
	(38,'Santa Cruz de Tenerife'),
	(40,'Segovia'),
	(41,'Sevilla'),
	(42,'Soria'),
	(43,'Tarragona'),
	(44,'Teruel'),
	(45,'Toledo'),
	(46,'Valencia/València'),
	(47,'Valladolid'),
	(49,'Zamora'),
	(50,'Zaragoza');
