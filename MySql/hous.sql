/*
SQLyog v10.2 
MySQL - 5.5.50 : Database - renting
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`renting` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `renting`;

/*Table structure for table `apply` */

DROP TABLE IF EXISTS `apply`;

CREATE TABLE `apply` (
  `apply_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `area` double(255,0) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userlist_id` int(255) NOT NULL,
  PRIMARY KEY (`apply_id`,`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `apply` */

insert  into `apply`(`apply_id`,`house_id`,`address`,`area`,`price`,`status`,`userlist_id`) values (11,'b2','成都市高新区盛和二路185号南钻威尼斯2栋1单元602地铁5号线',10,1000.00,'已拒绝',15),(12,'b3','成都市锦江区三圣乡锦江城市花园1期8栋1单元2302号地铁5号线',22,1200.00,'已拒绝',15),(13,'b4','四川省成都市青羊区白丝街2号缤纷假日酒店626号地铁6号线',18,1750.00,'已拒绝',15),(18,'b5','河南省郑州市莲花乡穗石村18号地铁2号线',60,700.00,'申请中',15),(19,'a4','成都市武侯区科华南路339号明宇大厦地铁2号线',20,600.00,'申请中',15),(20,'a2','四川省成都市金牛区解放路一段154号香山苑7栋1单元403地铁3号线',66,499.00,'申请中',15),(21,'b2','成都市高新区盛和二路185号南钻威尼斯2栋1单元602地铁5号线',10,1000.00,'申请中',15),(22,'b7','四川省成都市成龙大道1段9号卓锦城24-201号地铁1号线',70,1400.00,'申请中',15),(23,'c7','成都市锦江区东大街216号喜年广场A座1208地铁1号线',18,1900.00,'申请中',15),(24,'a5','四川省成都市双流县华阳街道广都上街138号南阳盛世2栋1单元1101地铁4号线',20,700.00,'申请中',15);

/*Table structure for table `applyout` */

DROP TABLE IF EXISTS `applyout`;

CREATE TABLE `applyout` (
  `aoid` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`aoid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `applyout` */

insert  into `applyout`(`aoid`,`house_id`,`address`,`status`,`userlist_id`) values (3,'b1','桃源居','已拒绝',12),(6,'k2','贝岗街18号','已拒绝',15),(7,'a1','河南省郑州市莲花乡幸福村2号','已同意',15);

/*Table structure for table `checkout` */

DROP TABLE IF EXISTS `checkout`;

CREATE TABLE `checkout` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `checkout` */

insert  into `checkout`(`cid`,`house_id`,`address`,`status`,`userlist_id`) values (2,'k2','贝岗街18号','已退租',15),(3,'c1','广药1-364','已退租',12),(5,'a2','河南省郑州市莲花乡幸福村3号','已退租',15),(6,'a3','河南省郑州市莲花乡幸福村4号','已退租',15),(7,'a4','河南省郑州市莲花乡幸福村5号','已退租',15),(8,'a5','河南省郑州市莲花乡幸福村6号','已退租',15),(9,'a6','河南省郑州市莲花乡幸福村7号','已退租',15),(10,'c3','河南省郑州市莲花乡菊花园1-364','已退租',12),(11,'1002','北京清华园','已退租',NULL);

/*Table structure for table `hetong` */

DROP TABLE IF EXISTS `hetong`;

CREATE TABLE `hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chuzu` varchar(255) DEFAULT NULL,
  `chuzu_idcard` varchar(255) DEFAULT NULL,
  `zuke` varchar(255) DEFAULT NULL,
  `zuke_idcard` varchar(255) DEFAULT NULL,
  `fromdate` varchar(255) DEFAULT NULL,
  `todate` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `house_id` varchar(255) DEFAULT NULL,
  `payday` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `hetong` */

insert  into `hetong`(`id`,`chuzu`,`chuzu_idcard`,`zuke`,`zuke_idcard`,`fromdate`,`todate`,`price`,`address`,`house_id`,`payday`) values (6,'admin','5224251995256456256','刘三','522425199510170936','2019-05-22','2020-05-22',800.00,'河南省郑州市莲花乡穗石村1号','k8',22),(7,'admin','522425199611088413','刘三','522425199510170936','2019-05-28','2020-05-28',800.00,'四川省成都市东丽街138号金科一城7-2-1705地铁6号线','c4',28),(8,'admin','522425199510170936','刘三','522425199510170936','2019-05-28','2020-05-28',800.00,' 	四川省成都市金牛区解放路一段154号香山苑7栋1单元403-123地铁4号线','b1',28),(9,'A','A','A','A','','',5000.00,'辽宁省鞍山市东长甸街道鞍山鞍山师范学院2-123地铁8号线','',10),(10,'A','A','A','A','','',5000.00,'北京清华园','',10),(11,'admin','A55555555555555555','李四','A15555555555555555','2019-12-12','2019-12-31',900.00,'北京清华园',NULL,10),(12,'admin','A44444444444444444','李四','A44444444444444444','2019-12-12','2019-12-14',5000.00,'北京清华园',NULL,10),(13,'admin','A44444444444444444','李四','A44444444444444444','2019-12-01','2019-12-31',5000.00,'北京清华园',NULL,10),(14,'admin','A44444444444444444','李四','A44444444444444444','2019-12-01','2019-12-08',5000.00,'北京清华园',NULL,10),(15,'admin','A44444444444444444','李四','A44444444444444444','2019-12-01','2019-12-12',5000.00,'北京清华园','',10),(16,'admin','aaaaaaaaaaaaaaaaaa','李四','aaaaaaaaaaaaaaaaaa','2019-12-07','2019-12-31',900.00,'北京清华园','',10),(17,'admin','aaaaaaaaaaaaaaaaaa','李四','aaaaaaaaaaaaaaaaaa','2019-12-07','2019-12-31',900.00,'北京清华园','',10);

/*Table structure for table `houselist` */

DROP TABLE IF EXISTS `houselist`;

CREATE TABLE `houselist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `houseid` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `area` double DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `img` varchar(100) NOT NULL,
  `introduce` varchar(1000) NOT NULL,
  `landlady` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`houseid`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

/*Data for the table `houselist` */

insert  into `houselist`(`id`,`houseid`,`address`,`area`,`price`,`status`,`img`,`introduce`,`landlady`) values (16,'k20','北京中关村旁边',60,499.00,'已租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(17,'k1','河南省郑州市莲花乡东风街13号地铁1号线',63,1300.00,'已租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(20,'b5','河南省郑州市莲花乡穗石村18号地铁2号线',60,700.00,'已被申请','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(21,'k8','河南省郑州市莲花乡穗石村1号地铁2号线',66,800.00,'已租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','123'),(23,'a2','四川省成都市金牛区解放路一段154号香山苑7栋1单元403地铁3号线',66,499.00,'已被申请','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(24,'a4','成都市武侯区科华南路339号明宇大厦地铁2号线',20,600.00,'已被申请','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(25,'a5','四川省成都市双流县华阳街道广都上街138号南阳盛世2栋1单元1101地铁4号线',20,700.00,'已被申请','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(26,'b1','四川省成都市金牛区解放路一段154号香山苑7栋1单元403-123地铁4号线',70,900.00,'已租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','123'),(27,'b2','成都市高新区盛和二路185号南钻威尼斯2栋1单元602地铁5号线',10,1000.00,'已被申请','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(28,'b3','成都市锦江区三圣乡锦江城市花园1期8栋1单元2302号地铁5号线',22,1200.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(29,'b4','四川省成都市青羊区白丝街2号缤纷假日酒店626号地铁6号线',18,1750.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(30,'b7','四川省成都市成龙大道1段9号卓锦城24-201号地铁1号线',70,1400.00,'已被申请','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(31,'c4','四川省成都市东丽街138号金科一城7-2-1705地铁6号线',15,800.00,'已租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(32,'c5','成都市成华区建设路54号猛追湾横街69小区地铁3号线',70,1500.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(33,'c6','四川省成都市成华区建业路88号龙湖三千里二期5-1-2403地铁2号线',70,1700.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(34,'c7','成都市锦江区东大街216号喜年广场A座1208地铁1号线',18,1900.00,'已被申请','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(35,'c8','北京市海淀区宝盛北里西区1号楼3单元301地铁3号线',78,1500.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(36,'c9','北京市昌平区上坡家园2号楼1106地铁4号线',70,2000.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','123'),(37,'d1','北京市东城区广渠门外忠实里西区2号楼1106室-123地铁5号线',56,2200.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(38,'d2','北京市昌平区回龙观镇北京人家佳园小区32号楼7单元102室地铁7号线',70,2500.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(39,'d3','北京市丰台区左安门外芳城东里5号楼3单元202 -123地铁4号线',70,700.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(40,'d4','北京市通州区宋庄镇疃里二区1号楼2单元402室地铁5号线',32,450.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(41,'d5','成都市武侯区人民南路四段27号商鼎国际1号楼B座2单元7楼703室 地铁7号线',70,3000.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(42,'d6','北京市海淀区北洼路中海雅园丽华阁9B-123地铁6号线',9,3300.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(43,'f1','北京海淀区西三旗建材城西路85号院8楼4门501室地铁7号线',70,700.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(44,'f2','四川省成都市青羊区白丝街2号缤纷假日626号地铁8号线',70,3800.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(45,'f3','成都市高新区天泰路47号御府花都A区2-4-1502 地铁9号线',150,700.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','123'),(46,'f4','四川省成都市锦江区宏济新路298号世纪朝阳4幢2单元401 -123地铁10号线',70,4000.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','admin'),(47,'1010','四川省成都市锦江区宏济新路298号世纪朝阳6幢2单元103 地铁10号线',156,4200.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','123'),(48,'1009','四川省成都市成华区新风路189号世家东部时空3栋2单元地铁9号线',88,700.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','123'),(49,'1008','四川省成都市成华区和美东路8号富丽东方-123地铁8号线',70,5000.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','123'),(50,'1007','成都市武侯区少陵路50号康河郦景3期8栋3单元10楼4号地铁7号线',70,500.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','123'),(51,'1006','四川省成都市锦江区宏济新路339号3单元205-123地铁6号线',45,1800.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','123'),(52,'1001','北京中关村-123地铁8号线',40,2000.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','123'),(54,'1005','辽宁省鞍山市东长甸街道鞍山鞍山师范学院-123地铁9号线',35,1200.00,'已租赁','/imgs/3.jpg','1212寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们1212的良好的学习风气集成下去，形成一个传统！！','123'),(55,'1003','鞍山师范学院d座431寝室-123地铁10号线',10,7500.00,'未租赁','/imgs/3.jpg','431寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们431的良好的学习风气集成下去，形成一个传统！！','123'),(56,'1004','辽宁省鞍山市东长甸街道鞍山鞍山师范学院2-123地铁10号线',500,8000.00,'未租赁','/imgs/3.jpg','鞍山师范学院(Anshan Normal College)是一所全日制普通本科师范院校，位于有“钢铁之都”之称的辽宁省鞍山市。\r\n学校始建于1958年；1993年升格为鞍山师范学院；2011年学校成功“申硕”并成为了全国本科办学院校中第一所也是唯一一所学前教育专业学位研究生试点单位。\r\n据2016年8月学校官网显示， 学校占地面积68万平方米，建筑面积33万平方米。设有14个二级分院、4个公共教研部、2个附属学校。图书馆藏书91万册，各类期刊1450种。有专业实验室31个，教学科研仪器设备值达6423万元。各类在校生总数近2万人，其中全日制本专科生13563人，教育硕士研究生47人，已形成了从全日制本专科生教育到研究生教育、成人教育、留学生教育全方位、多层次的办学格局。\r\n','123'),(57,'1027','辽宁省鞍山市东长甸街道鞍山鞍山师范学院2-123地铁8号线',160,5000.00,'未租赁','/imgs/3.jpg','1212寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们1212的良好的学习风气集成下去，形成一个传统！！','123'),(58,'1029','辽宁省鞍山市东长甸街道鞍山鞍山师范学院2-123地铁7号线11',160,5000.00,'未租赁','/imgs/3.jpg','1212寝室具有良好的学习风气，热爱学习，每天日以继夜就是为了学习，为学习生，为学习死，为了学习，奋斗一辈子，活到老，学到老，一辈子都在学习。我们寝室虽然没有人获得奖学金，但是我们依然热爱学习，不会因为任何事情所改变，这是风水超级好，希望我们走后能有一个好的继承人，把我们1212的良好的学习风气集成下去，形成一个传统！！','123'),(60,'1030','辽宁省鞍山市东长甸街道鞍山鞍山师范学院2-123地铁8号线',160,5000.00,'未租赁','/imgs/14ac6de9437842019bcd90858b2b2834.jpeg','物美景美社区社友更美','123');

/*Table structure for table `paid` */

DROP TABLE IF EXISTS `paid`;

CREATE TABLE `paid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `paydate` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `paid` */

insert  into `paid`(`id`,`house_id`,`address`,`price`,`date`,`paydate`,`name`,`userlist_id`,`status`) values (5,'c1','广药1-364',500.00,'2019-03-01','2019-04-09','赵颖欣',10,'租金已缴'),(10,'k10','河南省郑州市莲花乡回事村3号',1000.00,'2019-05-25','2019-05-22','刘三',15,'租金已缴'),(11,'k9','河南省郑州市莲花乡回事村2号',900.00,'2019-05-21','2019-05-22','刘三',15,'租金已缴'),(12,'k8',' 	河南省郑州市莲花乡穗石村1号',800.00,'2019-05-22','2019-05-22','刘三',15,'租金已缴'),(13,'k8','河南省郑州市莲花乡穗石村1号',800.00,'2019-05-23','2019-05-28','刘三',15,'租金已缴');

/*Table structure for table `schedule` */

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `schedule` */

insert  into `schedule`(`id`,`date`,`content`) values (2,'2019-05-24','今天给刘三收租'),(3,'2019-04-01','今天是收租日');

/*Table structure for table `solve` */

DROP TABLE IF EXISTS `solve`;

CREATE TABLE `solve` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` text,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `solve` */

insert  into `solve`(`id`,`house_id`,`address`,`date`,`detail`,`name`,`userlist_id`,`status`) values (5,'c3','菊花园1-364','2019-03-05','天花板漏水','李四',12,'已处理'),(6,'c2','碧桂园1-364','2019-03-07','窗户坏了','张三',14,'已处理'),(7,'k2','贝岗街18号','2019-03-09','天花板漏水','张思',15,'已处理'),(9,'1001','北京中关村','2019-05-15','厕所漏水','张思',15,'已处理');

/*Table structure for table `topaid` */

DROP TABLE IF EXISTS `topaid`;

CREATE TABLE `topaid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `topaid` */

insert  into `topaid`(`id`,`house_id`,`address`,`price`,`date`,`name`,`userlist_id`,`status`) values (5,'k8','河南省郑州市莲花乡穗石村1号',500.00,'2019-05-16','刘三',15,'租金未缴');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`type`) values (1,'admin','21232f297a57a5a743894a0e4a801fc3','admin'),(3,'123','202cb962ac59075b964b07152d234b70','zuke'),(5,'刘三','202cb962ac59075b964b07152d234b70','zuke'),(6,'123','202cb962ac59075b964b07152d234b70','admin'),(7,'1234','202cb962ac59075b964b07152d234b70','admin'),(8,'12345','123','zuke'),(9,'qaz','123','admin'),(10,'521','B1Y6P+O75+O6hEMa2dBVrw==','admin');

/*Table structure for table `userlist` */

DROP TABLE IF EXISTS `userlist`;

CREATE TABLE `userlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `idcard` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`idcard`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `userlist` */

insert  into `userlist`(`id`,`name`,`idcard`,`phone`,`user_id`) values (12,'李四','522425111111111111','18826107777',3),(15,'刘三','522425111111111111','18826107777',5),(16,'李四','522425111111111111','18826107777',7),(17,'刘三','522425111111111111','18826107777',47),(18,'admin','522425111111111111','18826107777',1);

/*Table structure for table `wrong` */

DROP TABLE IF EXISTS `wrong`;

CREATE TABLE `wrong` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `detail` text,
  `name` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `wrong` */

insert  into `wrong`(`id`,`house_id`,`address`,`date`,`detail`,`name`,`userlist_id`,`status`) values (6,'c9','北京市昌平区上坡家园2号楼1106地铁4号线','2019-05-22','卫生间爆炸了','刘三',15,'待处理'),(7,'k8','河南省郑州市莲花乡穗石村1号','2019-05-28','灯泡坏了','刘三',15,'待处理'),(9,'b1','河南省郑州市莲花乡穗石村1号','2019-12-13','灯泡坏了','刘三',15,'待处理');

/*Table structure for table `zulist` */

DROP TABLE IF EXISTS `zulist`;

CREATE TABLE `zulist` (
  `zid` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` varchar(255) NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `userlist_id` int(11) NOT NULL,
  `contract_id` int(11) NOT NULL,
  PRIMARY KEY (`zid`,`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `zulist` */

insert  into `zulist`(`zid`,`house_id`,`price`,`address`,`userlist_id`,`contract_id`) values (8,'k8',800.00,'河南省郑州市莲花乡穗石村1号',15,6),(9,'c4',800.00,'四川省成都市东丽街138号金科一城7-2-1705地铁6号线',15,7),(10,'b1',900.00,'四川省成都市金牛区解放路一段154号香山苑7栋1单元403-123地铁4号线',15,8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
