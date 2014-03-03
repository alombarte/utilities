# ************************************************************
# Comunidades Autónomas.
#
# Albert Lombarte
# Twitter: @alombarte
# ------------------------------------------------------------

CREATE TABLE `comunidades` (
  `id_comunidad` tinyint(4) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `comunidades` (`id_comunidad`, `nombre`)
VALUES
	(1,'Andalucía'),
	(2,'Aragón'),
	(3,'Asturias, Principado de'),
	(4,'Balears, Illes'),
	(5,'Canarias'),
	(6,'Cantabria'),
	(7,'Castilla y León'),
	(8,'Castilla - La Mancha'),
	(9,'Catalunya'),
	(10,'Comunitat Valenciana'),
	(11,'Extremadura'),
	(12,'Galicia'),
	(13,'Madrid, Comunidad de'),
	(14,'Murcia, Región de'),
	(15,'Navarra, Comunidad Foral de'),
	(16,'País Vasco'),
	(17,'Rioja, La'),
	(18,'Ceuta'),
	(19,'Melilla');
