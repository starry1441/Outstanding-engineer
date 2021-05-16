/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.50-log : Database - dao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dao` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `dao`;

/*Table structure for table `a_s` */

DROP TABLE IF EXISTS `a_s`;

CREATE TABLE `a_s` (
  `Aname` varchar(50) NOT NULL COMMENT '活动名称',
  `Sno` varchar(20) NOT NULL COMMENT '学号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `a_s` */

insert  into `a_s`(`Aname`,`Sno`) values ('羽毛球比赛','18408010402'),('羽毛球比赛','18408010403'),('羽毛球比赛','18408010405'),('羽毛球比赛','18408010406'),('羽毛球比赛','18408010408'),('羽毛球比赛','18408010410'),('书法比赛','18408010401'),('书法比赛','18408010402'),('书法比赛','18408010404'),('书法比赛','18408010403'),('爱心献血','18408010412'),('爱心献血','18408010409'),('爱心献血','18408010408'),('ps大赛','18408010406'),('ps大赛','18408010407'),('蓝桥杯','18408010405');

/*Table structure for table `activity` */

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `Aname` varchar(50) NOT NULL COMMENT '活动名称',
  `Cname` varchar(20) NOT NULL COMMENT '举办社团名称',
  `Atime` varchar(20) NOT NULL COMMENT '举办时间',
  `Aplace` varchar(50) NOT NULL COMMENT '举办地点',
  `Acontent` varchar(500) NOT NULL COMMENT '内容介绍',
  `Anum` int(10) NOT NULL COMMENT '参与最大人数',
  PRIMARY KEY (`Aname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `activity` */

insert  into `activity`(`Aname`,`Cname`,`Atime`,`Aplace`,`Acontent`,`Anum`) values ('ps大赛','追星社','周天全天','不限','提交一张你自己做的喜欢的明星的照片',20),('书法比赛','书画社','周六下午两点开始','阶梯教室','书法比赛',15),('爱心献血','青年志愿者社','周五全天','流星苑广场','鼓励献血',20),('羽毛球比赛','羽毛球社','周六全天','体育馆','羽毛球比赛',25),('蓝桥杯','数学建模社','周六上午九点开始','教室','学习如何建立数学模型',20);

/*Table structure for table `apply` */

DROP TABLE IF EXISTS `apply`;

CREATE TABLE `apply` (
  `Ano` varchar(20) NOT NULL COMMENT '申请编号',
  `Asno` varchar(20) NOT NULL COMMENT '申请学生编号',
  `Acname` varchar(20) NOT NULL COMMENT '申请社团名称',
  `Acclass` varchar(20) NOT NULL COMMENT '申请社团类别',
  `Acsdept` varchar(20) NOT NULL COMMENT '申请学生学院',
  `Acteacher` varchar(20) NOT NULL COMMENT '指导教师',
  `Accomment` varchar(100) NOT NULL COMMENT '社团简介',
  `Acreason` varchar(200) NOT NULL COMMENT '申请理由',
  `Adeal` varchar(2) DEFAULT '1' COMMENT '判断是否处理',
  PRIMARY KEY (`Ano`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `apply` */

/*Table structure for table `club` */

DROP TABLE IF EXISTS `club`;

CREATE TABLE `club` (
  `Cno` varchar(20) NOT NULL COMMENT '社团账号',
  `Cname` varchar(20) NOT NULL COMMENT '社团名称',
  `Ccomment` varchar(100) DEFAULT NULL COMMENT '社团简介',
  `CSdept` varchar(20) NOT NULL COMMENT '社团归属系',
  `Cclass` varchar(20) NOT NULL COMMENT '社团类别',
  `Cteacher` varchar(20) NOT NULL COMMENT '指导老师',
  `Cperson` int(10) NOT NULL COMMENT '社团人数',
  PRIMARY KEY (`Cno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=COMPACT;

/*Data for the table `club` */

insert  into `club`(`Cno`,`Cname`,`Ccomment`,`CSdept`,`Cclass`,`Cteacher`,`Cperson`) values ('01','羽毛球社','散发汗水','计算机系','体育兴趣类','王平',6),('02','数学建模社','享受智慧','数学系','学术科技类','白静',4),('03','书画社','绘画人生','人文学院','文学文艺类','刘兴',2),('04','青年志愿者社','帮助他人','校级组织','社会实践类','田汉',5),('05','追星社','追星最爱','艺术学院','娱乐休闲类','吴光',3),('06','轮滑社','滑出精彩','机械学院','体育兴趣类','张亮',3);

/*Table structure for table `cs` */

DROP TABLE IF EXISTS `cs`;

CREATE TABLE `cs` (
  `Cname` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Sno` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cs` */

insert  into `cs`(`Cname`,`Sno`) values ('羽毛球社','18408010401'),('羽毛球社','18408010402'),('羽毛球社','18408010403'),('羽毛球社','18408010408'),('羽毛球社','18408010412'),('数学建模社','18408010405'),('数学建模社','18408010408'),('数学建模社','18408010412'),('书画社','18408010402'),('书画社','18408010404'),('青年志愿者社','18408010407'),('青年志愿者社','18408010405'),('青年志愿者社','18408010407'),('青年志愿者社','18408010408'),('青年志愿者社','18408010411'),('追星社','18408010409'),('追星社','18408010410'),('追星社','18408010412'),('羽毛球社','18408010403'),('数学建模社','18408010401'),('轮滑社','18408010412'),('轮滑社','18408010407'),('轮滑社','18408010408');

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `Mno` varchar(20) NOT NULL COMMENT '管理员账号',
  `Mname` varchar(20) NOT NULL COMMENT '管理员名字',
  `Mpassword` varchar(20) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`Mno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=COMPACT;

/*Data for the table `manager` */

insert  into `manager`(`Mno`,`Mname`,`Mpassword`) values ('19891366991','王平','19891366991');

/*Table structure for table `president` */

DROP TABLE IF EXISTS `president`;

CREATE TABLE `president` (
  `Sno` varchar(20) NOT NULL COMMENT '社长学号',
  `Cname` varchar(20) NOT NULL COMMENT '社团名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `president` */

insert  into `president`(`Sno`,`Cname`) values ('18408010401','羽毛球社'),('18408010402','数学建模社'),('18408010403','书画社'),('18408010404','青年志愿者社'),('18408010405','追星社');

/*Table structure for table `sapply` */

DROP TABLE IF EXISTS `sapply`;

CREATE TABLE `sapply` (
  `Sno` varchar(20) DEFAULT NULL COMMENT '申请学生学号',
  `Cname` varchar(20) DEFAULT NULL COMMENT '申请加入社团',
  `Sdeal` varchar(2) DEFAULT '1' COMMENT '默认未处置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sapply` */

/*Table structure for table `squit` */

DROP TABLE IF EXISTS `squit`;

CREATE TABLE `squit` (
  `Sno` varchar(20) DEFAULT NULL,
  `Cname` varchar(20) DEFAULT NULL,
  `qdeal` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `squit` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `Sno` varchar(20) CHARACTER SET gbk NOT NULL COMMENT '学号',
  `Sname` varchar(20) NOT NULL COMMENT '姓名',
  `Sdept` varchar(20) NOT NULL COMMENT '系别',
  `Smajor` varchar(20) NOT NULL COMMENT '专业',
  `Sgrade` varchar(20) NOT NULL COMMENT '年级',
  `Sqq` varchar(20) NOT NULL COMMENT 'qq',
  `Sphone` varchar(20) NOT NULL COMMENT '电话',
  `Ssign` varchar(300) DEFAULT NULL COMMENT '个性签名',
  `Ssex` varchar(20) NOT NULL COMMENT '性别',
  PRIMARY KEY (`Sno`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `student` */

insert  into `student`(`Sno`,`Sname`,`Sdept`,`Smajor`,`Sgrade`,`Sqq`,`Sphone`,`Ssign`,`Ssex`) values ('18408010401','樊奕星','计算机系','软件工程','18级','540831441','18792473152','有志者事竟成','男'),('18408010402','阿云','人文系','汉语言','19级','136579','1375684',NULL,'男'),('18408010403','阿泉','化学系','化工','18级','146987','1456987',NULL,'男'),('18408010404','阿西','计算机系','网络工程','17级','1456987','1236547',NULL,'女'),('18408010405','阿东','计算机系','软件工程','19级','1478523','1598745',NULL,'男'),('18408010406','高松琪','计算机学院','软件工程','18级','1377815796','15686716873','上心','女'),('18408010407','阿星','通信系','物联网','20级','156784','1795461',NULL,'男'),('18408010408','阿爽','人文系','汉语言','19级','169436','1796358',NULL,'女'),('18408010409','阿甜','化学系','化工','19级','126979','1698725',NULL,'女'),('18408010410','阿萌','外语系','英语','17级','1239864','1369754',NULL,'女'),('18408010411','阿夏','机械系','机电','18级','14923','1398621',NULL,'男'),('18408010412','范爽爽','计算机学院','软件工程','18级','850886402','18091533803','天道酬勤','女');

/*Table structure for table `studentpassword` */

DROP TABLE IF EXISTS `studentpassword`;

CREATE TABLE `studentpassword` (
  `Sno` varchar(20) NOT NULL COMMENT '学号',
  `Spassword` varchar(20) NOT NULL COMMENT '密码',
  KEY `Sno1` (`Sno`) USING BTREE,
  CONSTRAINT `Sno1` FOREIGN KEY (`Sno`) REFERENCES `student` (`Sno`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=COMPACT;

/*Data for the table `studentpassword` */

insert  into `studentpassword`(`Sno`,`Spassword`) values ('18408010406','18408010406'),('18408010401','18408010401'),('18408010412','18408010412'),('18408010402','18408010402'),('18408010403','18408010403'),('18408010404','18408010404'),('18408010405','18408010405'),('18408010407','18408010407'),('18408010408','18408010408'),('18408010409','18408010409'),('18408010410','18408010410'),('18408010411','18408010411');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
