# ************************************************************
# Dump of table "regions". Only spain in this dump.
# ------------------------------------------------------------

CREATE TABLE `regions` (
  `id_region` tinyint(4) NOT NULL,
  `region` varchar(100) NOT NULL DEFAULT '' COMMENT 'Spain=Comunidad Autonoma, France=Region...,
  `country` char(2) NOT NULL DEFAULT '' COMMENT 'ISO 3166-1 alpha-2 code'
) ENGINE=InnoDB;

INSERT INTO `regions` (`id_region`, `region`, `country`)
VALUES
	(1,'Andalucía','ES'),
	(2,'Aragón','ES'),
	(3,'Asturias, Principado de','ES'),
	(4,'Balears, Illes','ES'),
	(5,'Canarias','ES'),
	(6,'Cantabria','ES'),
	(7,'Castilla y León','ES'),
	(8,'Castilla - La Mancha','ES'),
	(9,'Catalunya','ES'),
	(10,'Comunitat Valenciana','ES'),
	(11,'Extremadura','ES'),
	(12,'Galicia','ES'),
	(13,'Madrid, Comunidad de','ES'),
	(14,'Murcia, Región de','ES'),
	(15,'Navarra, Comunidad Foral de','ES'),
	(16,'País Vasco','ES'),
	(17,'Rioja, La','ES'),
	(18,'Ceuta','ES'),
	(19,'Melilla','ES');

# Dump of table provincias
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
