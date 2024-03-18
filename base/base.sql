/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 5.7.31 : Database - alpha
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alpha` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `alpha`;

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `codigo` int(11) NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categorias` */

insert  into `categorias`(`codigo`,`descricao`) values (1,'Frutas');
insert  into `categorias`(`codigo`,`descricao`) values (2,'Legumes');
insert  into `categorias`(`codigo`,`descricao`) values (3,'Carnes');
insert  into `categorias`(`codigo`,`descricao`) values (4,'Peixes');
insert  into `categorias`(`codigo`,`descricao`) values (5,'Laticínios');
insert  into `categorias`(`codigo`,`descricao`) values (6,'Pães');
insert  into `categorias`(`codigo`,`descricao`) values (7,'Bebidas');
insert  into `categorias`(`codigo`,`descricao`) values (8,'Congelados');
insert  into `categorias`(`codigo`,`descricao`) values (9,'Doces');
insert  into `categorias`(`codigo`,`descricao`) values (10,'Biscoitos');
insert  into `categorias`(`codigo`,`descricao`) values (11,'Cereais');
insert  into `categorias`(`codigo`,`descricao`) values (12,'Enlatados');
insert  into `categorias`(`codigo`,`descricao`) values (13,'Condimentos');
insert  into `categorias`(`codigo`,`descricao`) values (14,'Massas');
insert  into `categorias`(`codigo`,`descricao`) values (15,'Grãos');
insert  into `categorias`(`codigo`,`descricao`) values (16,'Snacks');
insert  into `categorias`(`codigo`,`descricao`) values (17,'Produtos de Limpeza');
insert  into `categorias`(`codigo`,`descricao`) values (18,'Produtos de Beleza');
insert  into `categorias`(`codigo`,`descricao`) values (19,'Pet Shop');
insert  into `categorias`(`codigo`,`descricao`) values (20,'Outros');

/*Table structure for table `produtos` */

DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco_unitario` decimal(10,2) NOT NULL,
  `categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  KEY `fk1` (`categoria`),
  CONSTRAINT `fk1` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `produtos` */

insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (1,'Maçã',1.01,13);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (2,'Banana',0.50,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (3,'Laranja',0.80,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (4,'Abacaxi',2.50,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (5,'Manga',1.50,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (6,'Cenoura',0.70,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (7,'Batata',0.50,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (8,'Tomate',1.00,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (9,'Alface',1.20,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (10,'Couve',1.30,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (11,'Carne Bovina',20.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (12,'Carne Suína',15.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (13,'Frango',10.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (14,'Salsicha',6.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (15,'Hambúrguer',5.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (16,'Salmão',30.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (17,'Atum',25.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (18,'Bacalhau',35.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (19,'Camarão',40.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (20,'Sardinha',16.00,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (21,'Leite',3.00,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (22,'Queijo',6.00,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (23,'Iogurte',4.00,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (24,'Manteiga',5.00,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (25,'Creme de Leite',2.50,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (26,'Pão Francês',0.50,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (27,'Pão de Forma',4.00,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (28,'Baguete',2.00,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (29,'Croissant',3.50,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (30,'Rosca',3.00,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (31,'Coca-Cola',6.00,7);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (32,'Suco de Laranja',4.00,7);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (33,'Água Mineral',2.00,7);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (34,'Cerveja',5.00,7);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (35,'Vinho',20.00,7);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (36,'Pizza Congelada',12.00,8);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (37,'Lasanha Congelada',15.00,8);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (38,'Sorvete',10.00,8);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (39,'Açaí',13.00,8);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (40,'Pão de Queijo Congelado',11.00,8);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (41,'Chocolate',5.00,9);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (42,'Bala',2.00,9);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (43,'Chiclete',1.00,9);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (44,'Bolo',10.00,9);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (45,'Doce de Leite',6.00,9);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (46,'Biscoito Recheado',3.50,10);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (47,'Biscoito Salgado',3.00,10);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (48,'Biscoito de Polvilho',2.50,10);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (49,'Biscoito Integral',4.00,10);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (50,'Biscoito de Chocolate',4.50,10);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (51,'Pera',1.20,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (52,'Uva',2.00,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (53,'Melão',3.00,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (54,'Melancia',4.00,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (55,'Abobrinha',1.30,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (56,'Pimentão',1.50,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (57,'Berinjela',1.70,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (58,'Chuchu',1.20,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (59,'Carne de Porco',15.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (60,'Carne de Cordeiro',22.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (61,'Carne de Peru',13.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (62,'Carne de Pato',18.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (63,'Tilápia',14.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (64,'Truta',16.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (65,'Pargo',20.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (66,'Robalo',22.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (67,'Leite Condensado',3.50,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (68,'Creme de Leite',2.50,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (69,'Queijo Prato',6.50,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (70,'Queijo Mussarela',7.00,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (71,'Pão Integral',5.50,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (72,'Pão de Centeio',6.00,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (73,'Pão de Queijo',0.50,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (74,'Pão de Batata',0.60,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (75,'Fanta',5.00,7);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (76,'Sprite',5.00,7);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (77,'Suco de Maçã',4.50,7);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (78,'Suco de Uva',4.50,7);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (79,'Lasanha Congelada',12.00,8);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (80,'Pizza Congelada',15.00,8);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (81,'Hambúrguer Congelado',10.00,8);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (82,'Batata Frita Congelada',8.00,8);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (83,'Bolo de Chocolate',10.00,9);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (84,'Bolo de Laranja',10.00,9);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (85,'Bolo de Cenoura',10.00,9);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (86,'Bolo de Fubá',10.00,9);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (87,'Biscoito de Maizena',3.50,10);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (88,'Biscoito de Coco',3.50,10);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (89,'Biscoito de Chocolate',4.00,10);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (90,'Biscoito de Morango',4.00,10);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (91,'Arroz Integral',5.00,11);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (92,'Arroz Parboilizado',5.50,11);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (93,'Arroz Arbóreo',6.00,11);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (94,'Arroz Negro',7.00,11);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (95,'Feijão Preto',4.50,15);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (96,'Feijão Carioca',4.50,15);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (97,'Feijão Fradinho',5.00,15);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (98,'Feijão Branco',5.00,15);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (99,'Detergente',2.00,17);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (100,'Sabão em Pó',10.00,17);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (101,'Sabão em Barra',1.50,17);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (102,'Amaciante',6.00,17);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (103,'Desinfetante',5.00,17);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (104,'Água Sanitária',3.00,17);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (105,'Shampoo',10.00,18);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (106,'Condicionador',10.00,18);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (107,'Sabonete',2.00,18);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (108,'Creme Dental',5.00,18);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (109,'Desodorante',8.00,18);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (110,'Ração para Cães',20.00,19);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (111,'Ração para Gatos',20.00,19);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (112,'Areia para Gatos',10.00,19);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (113,'Brinquedo para Cães',15.00,19);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (114,'Brinquedo para Gatos',15.00,19);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (115,'Papel Higiênico',10.00,20);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (116,'Guardanapo de Papel',5.00,20);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (117,'Papel Toalha',6.00,20);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (118,'Fósforo',1.00,20);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (119,'Vela',2.00,20);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (120,'Morango',4.00,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (121,'Kiwi',6.00,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (122,'Limão',2.01,8);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (123,'Coco',5.00,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (124,'Abacate',4.00,1);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (125,'Pepino',2.00,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (126,'Repolho',3.00,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (127,'Brócolis',4.00,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (128,'Couve-flor',4.00,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (129,'Ervilha',3.00,2);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (130,'Carne de Avestruz',25.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (131,'Carne de Coelho',22.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (132,'Carne de Veado',30.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (133,'Carne de Jacaré',35.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (134,'Carne de Javali',33.00,3);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (135,'Tambaqui',18.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (136,'Pacu',16.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (137,'Pintado',20.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (138,'Pirarucu',25.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (139,'Dourado',22.00,4);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (140,'Leite em Pó',5.00,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (141,'Queijo Ralado',4.00,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (142,'Requeijão',6.00,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (143,'Manteiga com Sal',5.50,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (144,'Manteiga sem Sal',5.50,5);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (145,'Pão de Hambúrguer',0.75,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (146,'Pão de Hot Dog',0.75,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (147,'Pão Sírio',0.80,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (148,'Pão de Milho',0.90,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (149,'Pão de Aveia',1.00,6);
insert  into `produtos`(`codigo`,`descricao`,`preco_unitario`,`categoria`) values (150,'Guaraná',5.00,7);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
