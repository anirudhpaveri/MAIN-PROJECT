/*
SQLyog Community v13.0.1 (64 bit)
MySQL - 5.5.20-log : Database - answer checker
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`answer checker` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `answer checker`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `msgid` int(11) NOT NULL AUTO_INCREMENT,
  `fromid` int(11) DEFAULT NULL,
  `toid` int(11) DEFAULT NULL,
  `message` varchar(90) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`msgid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `chat` */

insert  into `chat`(`msgid`,`fromid`,`toid`,`message`,`date`) values 
(1,3,8,'hey neethi ','2023-05-03'),
(2,8,3,'hello sir','2023-05-03'),
(3,8,3,'utu','2023-05-07'),
(4,8,3,'utu','2023-05-07'),
(5,8,3,'dffg','2023-05-07');

/*Table structure for table `courses` */

DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `course_id` int(20) NOT NULL AUTO_INCREMENT,
  `dep_id` int(20) NOT NULL,
  `courses` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `courses` */

insert  into `courses`(`course_id`,`dep_id`,`courses`) values 
(1,1,'bca'),
(2,2,'bsc maths'),
(4,4,'bsc electrical'),
(5,1,'MCA');

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `dep_id` int(20) NOT NULL AUTO_INCREMENT,
  `department name` varchar(20) NOT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `department` */

insert  into `department`(`dep_id`,`department name`) values 
(1,'computer science'),
(2,'maths'),
(4,'electronics');

/*Table structure for table `exam` */

DROP TABLE IF EXISTS `exam`;

CREATE TABLE `exam` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `sub_id` int(20) NOT NULL,
  `name` varchar(90) DEFAULT NULL,
  `time` varchar(90) DEFAULT NULL,
  `date` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `exam` */

insert  into `exam`(`id`,`sub_id`,`name`,`time`,`date`) values 
(1,1,'first internal','10:00','2023-05-04'),
(4,4,'second internel','10:00','2023-05-07'),
(5,4,'tird internel','10:00','2023-05-07'),
(6,5,'first internel','09:00','2023-05-07'),
(7,5,'third internel','10:00','2023-05-07'),
(8,5,'second internel','10:00','2023-05-08'),
(9,6,'second internel','14:00','2023-05-08'),
(10,7,'tird internel','13:00','2023-05-08');

/*Table structure for table `exam shedule` */

DROP TABLE IF EXISTS `exam shedule`;

CREATE TABLE `exam shedule` (
  `schedule_id` int(20) NOT NULL AUTO_INCREMENT,
  `exam_id` int(20) NOT NULL,
  `exam time` time DEFAULT NULL,
  `exam date` date DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `exam shedule` */

insert  into `exam shedule`(`schedule_id`,`exam_id`,`exam time`,`exam date`) values 
(4,1,'00:00:00','0000-00-00'),
(5,1,'00:00:00','0000-00-00'),
(6,2,'00:20:23','0000-00-00'),
(7,3,'00:20:23','0000-00-00'),
(8,1,'00:00:00','0000-00-00'),
(9,1,'00:20:23','0000-00-00');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `login` */

insert  into `login`(`id`,`username`,`password`,`type`) values 
(1,'admin','admin','admin'),
(3,'raju','raju','staff'),
(4,'ammu','ammu','staff'),
(8,'neethi','neethi','student'),
(10,'geever','Geever1234','staff'),
(11,'shanibjan','Jaan123','student'),
(12,'safnashamli','Sham123','student'),
(13,'priyajd','Priya123','staff'),
(14,'safnapp','Safna1234','student'),
(15,'anirudhp','Ani1234','student');

/*Table structure for table `manage exam` */

DROP TABLE IF EXISTS `manage exam`;

CREATE TABLE `manage exam` (
  `exam_id` int(20) NOT NULL AUTO_INCREMENT,
  `sub_id` int(20) NOT NULL,
  `details` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `exam name` varchar(30) NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `manage exam` */

/*Table structure for table `mange question answer` */

DROP TABLE IF EXISTS `mange question answer`;

CREATE TABLE `mange question answer` (
  `man_id` int(20) NOT NULL AUTO_INCREMENT,
  `exam_id` int(20) NOT NULL,
  `staff_id` int(20) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `mark` int(20) DEFAULT NULL,
  PRIMARY KEY (`man_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `mange question answer` */

insert  into `mange question answer`(`man_id`,`exam_id`,`staff_id`,`question`,`answer`,`mark`) values 
(1,1,4,'afdsads','asfadf',23),
(2,1,4,'e;k;r;lk/w;lk/;lk','e2rrrt',22),
(3,1,4,'fljf.lj.','ef.m.,dmaf',3),
(4,1,4,'uiuguyg','ii9ii',67),
(5,3,4,'kjsdjsadkjasd','sdsdjlds',98),
(6,2,22,'etyuy','ggjh',34),
(7,1,22,'1. data minig?','mining',60),
(8,1,22,'','',0),
(9,1,22,'','',0);

/*Table structure for table `mange_allosub` */

DROP TABLE IF EXISTS `mange_allosub`;

CREATE TABLE `mange_allosub` (
  `allo_id` int(15) NOT NULL AUTO_INCREMENT,
  `staff_id` int(15) NOT NULL,
  `sub_id` int(15) NOT NULL,
  PRIMARY KEY (`allo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

/*Data for the table `mange_allosub` */

insert  into `mange_allosub`(`allo_id`,`staff_id`,`sub_id`) values 
(2,4,2),
(4,10,4),
(5,3,1),
(10,13,6),
(12,3,5),
(15,13,7),
(16,10,8);

/*Table structure for table `mange_subject` */

DROP TABLE IF EXISTS `mange_subject`;

CREATE TABLE `mange_subject` (
  `sub_id` int(20) NOT NULL AUTO_INCREMENT,
  `course_id` int(20) NOT NULL,
  `subject name` varchar(20) NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `mange_subject` */

insert  into `mange_subject`(`sub_id`,`course_id`,`subject name`) values 
(1,1,'graphics'),
(2,2,'statistics'),
(4,4,'analog analysis'),
(5,5,'IPR'),
(6,5,'bio informatics'),
(7,5,'vb'),
(8,5,'dbms');

/*Table structure for table `notes` */

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `staff_id` int(20) NOT NULL,
  `sub_id` int(20) NOT NULL,
  `note_id` int(20) NOT NULL AUTO_INCREMENT,
  `notes` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `file` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `notes` */

insert  into `notes`(`staff_id`,`sub_id`,`note_id`,`notes`,`date`,`file`) values 
(3,1,1,'first module notes','2023-05-03','AI_Sound_Recognition_on_Asthma_Medication_Adherence.docx'),
(13,5,3,'mod1','2023-05-07','CULTURAL_EVENTS_LIST.pdf'),
(13,5,4,'mod2','2023-05-07','20229123.pdf');

/*Table structure for table `notification` */

DROP TABLE IF EXISTS `notification`;

CREATE TABLE `notification` (
  `not_id` int(20) NOT NULL AUTO_INCREMENT,
  `notification` varchar(100) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`not_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `notification` */

insert  into `notification`(`not_id`,`notification`,`date`,`time`) values 
(1,'sports day on tuesday(28/4/23)','2023-05-03','15:24:13');

/*Table structure for table `qa` */

DROP TABLE IF EXISTS `qa`;

CREATE TABLE `qa` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `exam_id` int(20) NOT NULL,
  `staff_id` int(20) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `mark` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `qa` */

insert  into `qa`(`id`,`exam_id`,`staff_id`,`question`,`answer`,`mark`) values 
(1,1,3,'what are oop concepts','modularity object class',2),
(2,1,3,'what is abstraction','It shows only essential attributes and hides unnecessary information from the outside.',5),
(4,1,3,'what are constructors','It is used to initialize objects of the class.',3),
(5,4,10,'What do you understand from the word electronics?','It involves the study, design and use of electrical devices that operate by controlling the flow of ',5),
(6,4,10,'What are passive and active electrical components?','This question aims to gauge your understanding of the fundamentals of electronics',5),
(7,4,10,'What is a passband?','Passband is the variety of frequencies or wavelengths that can pass through a filter without attenua',5),
(8,4,10,'What is an ideal current source?','The interviewer intends to test your knowledge about basic electronics engineering principles. Elabo',5),
(9,4,10,'What is an ideal voltage source?','an ideal voltage source is a two-terminal element having a specified voltage across the terminals at',5),
(10,5,10,'How and when do you use a resistor?','The purpose of a resistor is to oppose the flow of current, creating a drop in voltage across the te',5),
(11,5,10,'What are the two main types of communication','There are two main types of communication, analog and digital.',5),
(12,5,10,'Does the Norton theorem apply to linear circuitry','Yes, Norton\'s theorem applies to linear circuitry. It helps measure the equivalency of batteries and',5),
(13,4,10,'How is Ohm\'s law used to calculate the current of an electrical device?','I first determine the voltage and resistance of the electrical device',5),
(14,4,10,'What is sampling','The process of obtaining a set of samples from a continuous function of time x(t) is referred to as ',5),
(15,4,10,'What is stop band','A stopband is a band of frequencies, between specified limits, in which a circuit, such as a filter ',5),
(16,4,10,'Define Power Rating','Pd= V f x I f.',2),
(17,4,10,' What is demodulation','Demodulation is the act of removing the modulation from an analog signal to get the original baseban',5),
(18,6,13,'What are the 4 types of intellectual property?','Patents, trademarks, copyrights, and trade secrets',2),
(19,6,13,'What is IPR in Mcq?','What is IPR in Mcq? Intellectual Property Rights ',2),
(20,6,13,'Is copyright a legal?','Copyright is a form of protection grounded in the U.S',2),
(21,6,13,'Who is the first owner of copyright?','public undertaking',2),
(22,7,13,'What is the duration of copyright?',' 60 years in addition to the author\'s lifespan',2),
(23,7,13,'What is the world\'s oldest copyright?','Nationality of author where the making of unpublished work is extended over considerable period.',2);

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `res_id` int(20) NOT NULL AUTO_INCREMENT,
  `stud_id` int(20) NOT NULL,
  `q_id` int(20) NOT NULL,
  `answer` varchar(90) DEFAULT NULL,
  `result` float DEFAULT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `result` */

insert  into `result`(`res_id`,`stud_id`,`q_id`,`answer`,`result`) values 
(1,8,1,'',0),
(2,8,2,'',0),
(3,8,4,'',0),
(4,11,5,'It involves the study, design and use of electrical devices that operate by controlling th',4.67707),
(5,11,6,'Passive components are those that do not require external sources to function',0.385758),
(6,11,7,'dsdfjgjg',0),
(7,11,8,' a current source provides constant current,',0),
(8,11,9,'gddssaa',0),
(9,11,10,'The purpose of a resistor is to oppose the flow of current, creating a drop in voltage acr',4.80769),
(10,11,11,'There are two main types of communication, analog and digital.',5),
(11,11,12,' Norton\'s theorem applies to linear circuitry.',3.30719);

/*Table structure for table `staff details` */

DROP TABLE IF EXISTS `staff details`;

CREATE TABLE `staff details` (
  `lid` int(11) NOT NULL,
  `staff_id` int(20) NOT NULL AUTO_INCREMENT,
  `first name` varchar(20) NOT NULL,
  `last name` varchar(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `pincode` int(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `dep_id` int(20) NOT NULL,
  `house name` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `phone` bigint(20) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `staff details` */

insert  into `staff details`(`lid`,`staff_id`,`first name`,`last name`,`place`,`pincode`,`email`,`dep_id`,`house name`,`post`,`phone`) values 
(3,1,'raju','kk','medical college',678909,'raju@gmail.com',1,'kunnath','chevayur',9845452312),
(4,2,'ammu','h','kannur',678909,'ammu123@gmail.com',2,'neethi','chevayur',9847472518),
(10,6,'GEEVER','REDDY','Thrissure',875946,'geeverc@gmail.com',4,'palakkal','trissur',8129451251),
(13,7,'PRIYA','JD','PALAKKAD',890123,'priya@gmail.com',1,'DASHU','PALAAD',9984563234);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `lid` int(11) DEFAULT NULL,
  `stud_id` int(20) NOT NULL AUTO_INCREMENT,
  `first name` varchar(20) NOT NULL,
  `last name` varchar(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `course_id` int(20) NOT NULL,
  `place` varchar(20) NOT NULL,
  `post` varchar(20) NOT NULL,
  `staffid` int(11) DEFAULT NULL,
  PRIMARY KEY (`stud_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `student` */

insert  into `student`(`lid`,`stud_id`,`first name`,`last name`,`phone`,`email`,`pincode`,`course_id`,`place`,`post`,`staffid`) values 
(8,1,'neethi','kp',9845452312,'Neethi@gmail.com','673001',1,'kozhikode','poonoor',3),
(11,3,'SHANIB','JAAN',8124568934,'shanibjan32@gmail.co','676312',4,'MALAPPURAM','URANGATTIRI',10),
(12,4,'SAFNA','SHAMLI',8129451251,'shamli@gmail.com','676101',4,'MALAPPURAM','TIRUR',10),
(14,5,'safna','pp',9544354722,'safna@gmail.com','676101',5,'alatiyur','alath',13),
(15,6,'ANIRUDH','RAM',8891945661,'rudh@gmail.com','671096',5,'manglam','alathiyur',13);

/*Table structure for table `test_result` */

DROP TABLE IF EXISTS `test_result`;

CREATE TABLE `test_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` int(11) DEFAULT NULL,
  `result` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `test_result` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
