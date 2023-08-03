/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.7.16-log : Database - assignment
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`assignment` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `assignment`;

/*Data for the table `account` */

insert  into `account`(`Account_ID`,`Email`,`Username`,`Full_Name`,`Departmet_ID`,`Position_ID`,`Create_Date`,`age`) values 
(1,'sonnv@gmail.com','sonnv','Nguyễn Văn Sơn',1,1,'2023-07-04',18),(2,'tuan@gmail.com','nvtuan','Nguyễn Văn Tuấn',2,1,'2023-07-09',22),(3,'van@gmail.com','van','nguyên văn vân',4,3,'2023-07-17',40),(4,'hong@gmail.com','hong','nguyễn thị hồng',2,2,'2023-07-26',34),(5,'phong@cnt.com','phong','Nguyen Văn Phong',5,1,'2023-07-31',18),(6,'anh@cnt.com','anh','Nguyễn Văn Anh',5,2,'2023-07-26',45),(7,'abc@cnt.com','abc','Trần Abc',3,2,'2023-07-26',45),(8,'gcde@gmai.com','gcde','nguyễn gcde',2,1,'2023-07-09',18),(9,'huong@gmail.com','huong','phùng thị hương',1,1,'2023-07-17',34);
insert  into `account`(`Account_ID`,`Email`,`Username`,`Full_Name`,`Departmet_ID`,`Position_ID`,`Create_Date`,`age`) values (10,'lethanhduyen@gmail.com','duyen','lê thanh duyên',6,4,'2023-08-01',22);

/*Data for the table `answer` */

insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values (1,'kết quả là 11',1,'1'),(2,'kết quả là 12',1,'0'),(3,'kết quả là 13',1,'0'),(4,'kết quả là 14',1,'0'),(5,NULL,NULL,'0');
insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values (6,'kết quả là 2',2,'0'),(7,'kết quả là 3',2,'1'),(8,'kết quả là 5',2,'0'),(9,'kết quả là 4',2,'0');
insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values (10,'quang hợp',3,'0'),(11,'hô hấp',3,'0'),(12,'tiêu hóa',3,'1'),(13,'sinh sản',3,'0');
insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values (14,'22',4,'0'),(15,'23',4,'1'),(16,'24',4,'0'),(17,'21',4,'0');
insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values (18,'trung quốc',5,'0'),(19,'ấn độ',5,'1'),(20,'nga',5,'0'),(21,'việt nam',5,'0');
insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values (22,'nga',6,'1'),(23,'trungg quốc',6,'0'),(24,'canada',6,'0'),(25,'úc',6,'0');
insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values (26,'châu âu',7,'0'),(27,'châu phi',7,'0'),(28,'châu á',7,'1'),(29,'châu mỹ',7,'0');
insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values(30,'dấu diếm',8,'0'),(31,'dấu giếm',8,'0'),(32,'giấu giếm',8,'1'),(33,'giấu diểm',8,'0');
insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values(34,'26',9,'0'),(35,'27',9,'0'),(36,'28',9,'0'),(37,'29',9,'1');
insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values(38,'con mèo',10,'0'),(39,'chạy nhảy',10,'1'),(40,'đo đỏ',10,'0'),(41,'cái cây',10,'0');
insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values(42,'văn lang',11,'1'),(43,'đại việt',11,'0'),(44,'âu lạc',11,'0'),(45,'việt nam',11,'0');
insert  into `answer`(`Answer_ID`,`Content`,`Question_ID`,`is_Correct`) values(46,'ROM',12,'0'),(47,'RAM',12,'0'),(48,'Cache',12,'1'),(49,'Buffer',12,'0');

/*Data for the table `categoryquestion` */

insert  into `categoryquestion`(`Category_ID`,`Category_Name`) values (1,'Du lich'),(2,'Công nghệ thông tin'),(3,'Lịch sử'),(4,'Toán học');
insert  into `categoryquestion`(`Category_ID`,`Category_Name`) values (5,'Khoa học'),(6,'Địa lý'),(7,'Tiếng việt');

/*Data for the table `department` */

insert  into `department`(`Departmet_ID`,`Department_Name`) values (1,'Phòng kỹ thuật'),(2,'Phòng nhân sự'),(3,'Phòng kế toán'),(4,'Ban giám đốc'),(5,'Phòng bảo vệ');
insert  into `department`(`Departmet_ID`,`Department_Name`) values (6,'Phòng kinh doanh');
/*Data for the table `exam` */

/*Data for the table `examquestion` */

/*Data for the table `group` */

insert  into `group`(`Group_ID`,`Group_Name`,`Creator_ID`,`Create_Date`) values (1,'TESTER',1,'2023-07-30'),(2,'JAVA',1,'2023-07-27'),(3,'DOTNET',2,'2023-07-18'),(4,'PM',1,'2023-07-04');
insert  into `group`(`Group_Name`,`Creator_ID`,`Create_Date`) values ('Trà chanh',10, now());
/*Data for the table `groupaccount` */

insert  into `groupaccount`(`Group_ID`,`Account_ID`,`Join_Date`) values (1,1,'2023-07-18'),(2,2,'2023-07-27');
insert  into `groupaccount`(`Group_ID`,`Account_ID`,`Join_Date`) values  (5,10,now());
/*Data for the table `position` */

insert  into `position`(`Position_Name`) values ('Dev'),('Test'),('Scrum Master'),('PM');
insert  into `position`(Position_Name) values ('Thực tập sinh' );
/*Data for the table `question` */

insert  into `question`(`Question_ID`,`Content`,`Category_ID`,`Type_ID`,`Creator_ID`,`Create_Date`) values (1,'Kết quả của biểu thức sau là m ấy: 5 + 6 ?',4,2,1,'2023-07-26'),(2,'Phep tính sau cho kết quả là mấy : 15:5?',4,1,2,'2023-07-11');
insert  into `question`(`Question_ID`,`Content`,`Category_ID`,`Type_ID`,`Creator_ID`,`Create_Date`) values (3,'Quá trình phân hủy thưc ăn là gì?',5,2,10,'2023-08-01'),(4,'Con người có bao nhiêu cặp NST?',5,1,9,'2023-08-02');
insert  into `question`(`Question_ID`,`Content`,`Category_ID`,`Type_ID`,`Creator_ID`,`Create_Date`) values (5,'Nước nào đông dân nhất thế giới?',6,2,10,'2023-08-02'),(6,'Nước nào có diện tich lớn nhất thế giới',6,1,2,'2023-08-01'),(7,'Việt Nam nằm ở châu lục nào?',6,2,9,'2023-07-26');
insert  into `question`(`Question_ID`,`Content`,`Category_ID`,`Type_ID`,`Creator_ID`,`Create_Date`) values (8,'Từ nào viết đúng chính tả?',7,1,8,'2023-07-29'),(9, 'Bảng chữ cái tiếng Việt có bao nhiêu chữ?',7,2,2,'2020-08-03'),(10,'Từ nào thuộc từ loại động từ?',7,2,5,'2023-07-25');
insert  into `question`(`Question_ID`,`Content`,`Category_ID`,`Type_ID`,`Creator_ID`,`Create_Date`) values (11,'Nhà nước đầu tiên của nước ta là gì?',3,2,6,'2023-08-03'),(12,'Bộ nhớ đệm trong CPU được dọi là?',2,1,5,'2023-07-24');
/*Data for the table `typequestion` */

insert  into `typequestion`(`Type_ID`,`Type_Name`) values (1,'Khó'),(2,'Dễ');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*lấy danh sách account với độ tuổi tăng dần*/
select*from `account` order by age asc
/*lấy danh sách account cùng tên phòng ban tương ứng*/
select count(*), department_name from(
select `account`.account_id,`account`.email,`account`.username,`account`.departmet_id,`account`.position_id,`department`.department_name
from `account` join `department` on `account`.departmet_id = `department`.departmet_id) as tonghop
group by department_name
/*lấy tên chức vụ và tính tuổi trung bình của từng chức vụ*/
select avg(age), position_name from (select `account`.username, `account`.age, `position`.position_name, `account`.full_name
from `account` join `position` on `account`.position_id = `position`.position_name) as chucvu
group by position_name
/*lấy ra danh sách câu hỏi được tạo ra ngày hôm nay*/
select*from `question` where create_date = '2023-08-02'
/* lấy danh sách câu hỏi và câu trả lời đúng sắp xếp theoo thứ tự thời gian tạo tăng dần*/
select create_date from (select `question`.question_id,`question`.content, `question`.type_id, `question`.create_date
from `question` join `answer` on `question`.question_id = `answer`.question_id) as answer_question
group by create_date 
select*from question order by create_date asc
/*đếm xem có bao nhiêu câu hỏi trong từng lĩnh vực*/
select count(*), category_id from question group by category_id
/* đếm xem có bao nhiêu câu hỏi dễ, câu hỏi khó*/
select count(*) from question where type_id = 1
select count(*) from question where type_id = 2
/*đếm xem có bao nhiêu câu hỏi trong từng lĩnh vực*/
select count(*), category_id from (select `question`.content, `question`.type_id, `question`.category_id from `question`join `TypeQuestion` on `question`.type_id = `TypeQuestion`.type_id) as type_question
group by category_id
/* đếm xem có bao nhiêu câu hỏi dễ, câu hỏi khó*/
select count(*), type_id from (select `question`.content, `question`.type_id, `question`.category_id from `question`join `TypeQuestion` on `question`.type_id = `TypeQuestion`.type_id) as type_question
group by type_id



