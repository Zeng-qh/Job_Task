CREATE DATABASE girls;
CREATE DATABASE myemployees;
CREATE DATABASE student;

use girls;

/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : girls

 Target Server Type    : SQL Server
 Target Server Version : 140000
 File Encoding         : 65001

 Date: 19/06/2020 11:45:45
*/


-- ----------------------------
-- Table structure for admin
-- ----------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[admin]') AND type IN ('U'))
	DROP TABLE [admin]
GO

CREATE TABLE [admin](
  [id] int NOT NULL,
  [username] nvarchar(10) NOT NULL,
  [password] nvarchar(10) NOT NULL
)
GO


-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [admin]  VALUES (N'1', N'john', N'8888')
GO

INSERT INTO [admin]  VALUES (N'2', N'lyt', N'6666')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for beauty
-- ----------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[beauty]') AND type IN ('U'))
	DROP TABLE [beauty]
GO

CREATE TABLE [beauty] (
  [id] int NOT NULL,
  [name] nvarchar(50) NOT NULL,
  [sex] nchar(1) NULL,
  [borndate] datetime NULL,
  [phone] nvarchar(11) NOT NULL,
  [photo] image NULL,
  [boyfriend_id] int NULL
)
GO


-- ----------------------------
-- Records of beauty
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [beauty]  VALUES (N'1', N'柳岩', N'女', N'1988-02-03 00:00:00', N'18209876577', NULL, N'8')
GO

INSERT INTO [beauty]  VALUES (N'2', N'苍老师', N'女', N'1987-12-30 00:00:00', N'18219876577', NULL, N'9')
GO

INSERT INTO [beauty]  VALUES (N'3', N'Angelababy', N'女', N'1989-02-03 00:00:00', N'18209876567', NULL, N'3')
GO

INSERT INTO [beauty]  VALUES (N'4', N'热巴', N'女', N'1993-02-03 00:00:00', N'18209876579', NULL, N'2')
GO

INSERT INTO [beauty]  VALUES (N'5', N'周冬雨', N'女', N'1992-02-03 00:00:00', N'18209179577', NULL, N'9')
GO

INSERT INTO [beauty]  VALUES (N'6', N'周芷若', N'女', N'1988-02-03 00:00:00', N'18209876577', NULL, N'1')
GO

INSERT INTO [beauty]  VALUES (N'7', N'岳灵珊', N'女', N'1987-12-30 00:00:00', N'18219876577', NULL, N'9')
GO

INSERT INTO [beauty]  VALUES (N'8', N'小昭', N'女', N'1989-02-03 00:00:00', N'18209876567', NULL, N'1')
GO

INSERT INTO [beauty]  VALUES (N'9', N'双儿', N'女', N'1993-02-03 00:00:00', N'18209876579', NULL, N'9')
GO

INSERT INTO [beauty]  VALUES (N'10', N'王语嫣', N'女', N'1992-02-03 00:00:00', N'18209179577', NULL, N'4')
GO

INSERT INTO [beauty]  VALUES (N'11', N'夏雪', N'女', N'1993-02-03 00:00:00', N'18209876579', NULL, N'9')
GO

INSERT INTO [beauty]  VALUES (N'12', N'赵敏', N'女', N'1992-02-03 00:00:00', N'18209179577', NULL, N'1')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for boys
-- ----------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[girls].[boys]') AND type IN ('U'))
	DROP TABLE [boys]
GO

CREATE TABLE [boys] (
  [id] int NOT NULL,
  [boyName] nvarchar(20) NULL,
  [userCP] int NULL
)
GO


-- ----------------------------
-- Records of boys
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [boys]  VALUES (N'1', N'张无忌', N'100')
GO

INSERT INTO [boys]  VALUES (N'2', N'鹿晗', N'800')
GO

INSERT INTO [boys]  VALUES (N'3', N'黄晓明', N'50')
GO

INSERT INTO [boys]  VALUES (N'4', N'段誉', N'300')
GO

COMMIT
GO


-- ----------------------------
-- Primary Key structure for table admin
-- ----------------------------
ALTER TABLE [admin] ADD PRIMARY KEY CLUSTERED ([id])
GO


-- ----------------------------
-- Primary Key structure for table beauty
-- ----------------------------
ALTER TABLE [beauty] ADD PRIMARY KEY CLUSTERED ([id])
GO


-- ----------------------------
-- Primary Key structure for table boys
-- ----------------------------
ALTER TABLE [boys] ADD PRIMARY KEY CLUSTERED ([id])
GO



USE student;

/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : student

 Target Server Type    : SQL Server
 Target Server Version : 140000
 File Encoding         : 65001

 Date: 19/06/2020 11:48:00
*/


-- ----------------------------
-- Table structure for major
-- ----------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[major]') AND type IN ('U'))
	DROP TABLE [major]
GO

CREATE TABLE [major] (
  [majorid] int NOT NULL,
  [majorname] nvarchar(20) NOT NULL
)
GO


-- ----------------------------
-- Records of major
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [major]  VALUES (N'1', N'javaee')
GO

INSERT INTO [major]  VALUES (N'2', N'html5')
GO

INSERT INTO [major]  VALUES (N'3', N'android')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for result
-- ----------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[result]') AND type IN ('U'))
	DROP TABLE [result]
GO

CREATE TABLE [result] (
  [id] int NOT NULL,
  [studentno] nvarchar(10) NOT NULL,
  [score] float NULL
)
GO


-- ----------------------------
-- Records of result
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [result]  VALUES (N'1', N's001', N'100')
GO

INSERT INTO [result]  VALUES (N'2', N's002', N'90')
GO

INSERT INTO [result]  VALUES (N'3', N's003', N'80')
GO

INSERT INTO [result]  VALUES (N'4', N's004', N'70')
GO

INSERT INTO [result]  VALUES (N'5', N's005', N'60')
GO

INSERT INTO [result]  VALUES (N'6', N's006', N'50')
GO

INSERT INTO [result]  VALUES (N'7', N's006', N'40')
GO

INSERT INTO [result]  VALUES (N'8', N's005', N'95')
GO

INSERT INTO [result]  VALUES (N'9', N's006', N'88')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for student
-- ----------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[student]') AND type IN ('U'))
	DROP TABLE [student]
GO

CREATE TABLE [student] (
  [studentno] nvarchar(10) NOT NULL,
  [studentname] nvarchar(20) NOT NULL,
  [loginpwd] nvarchar(8) NOT NULL,
  [sex] nchar(1) NULL,
  [majorid] int NOT NULL,
  [phone] nvarchar(11) NULL,
  [email] nvarchar(20) NULL,
  [borndate] datetime NULL
)
GO


-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [student]  VALUES (N'S001', N'张三封', N'8888', N'男', N'1', N'13288886666', N'zhangsanfeng@126.com', N'1966-09-01 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S002', N'殷天正', N'8888', N'男', N'1', N'13888881234', N'yintianzheng@qq.com', N'1976-09-02 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S003', N'周伯通', N'8888', N'男', N'2', N'13288886666', N'zhoubotong@126.com', N'1986-09-03 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S004', N'张翠山', N'8888', N'男', N'1', N'13288886666', NULL, N'1995-09-04 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S005', N'小小张', N'8888', N'女', N'3', N'13288885678', N'xiaozhang@126.com', N'1990-09-05 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S006', N'张无忌', N'8888', N'男', N'2', N'13288886666', N'zhangwuji@126.com', N'1998-08-09 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S007', N'赵敏', N'0000', N'女', N'1', N'13288880987', N'zhaomin@126.com', N'1998-06-09 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S008', N'周芷若', N'6666', N'女', N'1', N'13288883456', N'zhouzhiruo@126.com', N'1996-07-09 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S009', N'殷素素', N'8888', N'女', N'1', N'13288886666', N'yinsusu@163.com', N'1986-01-09 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S010', N'宋远桥', N'6666', N'男', N'3', N'1328888890', N'songyuanqiao@qq.com', N'1996-02-09 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S011', N'杨不悔', N'6666', N'女', N'2', N'13288882345', NULL, N'1995-09-09 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S012', N'杨逍', N'9999', N'男', N'1', N'13288885432', NULL, N'1976-09-09 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S013', N'纪晓芙', N'9999', N'女', N'3', N'13288888765', NULL, N'1976-09-09 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S014', N'谢逊', N'9999', N'男', N'1', N'13288882211', NULL, N'1946-09-09 00:00:00')
GO

INSERT INTO [student]  VALUES (N'S015', N'宋青书', N'9999', N'男', N'3', N'13288889900', NULL, N'1976-06-08 00:00:00')
GO

COMMIT
GO


-- ----------------------------
-- Primary Key structure for table major
-- ----------------------------
ALTER TABLE [major] ADD PRIMARY KEY CLUSTERED ([majorid])
GO


-- ----------------------------
-- Primary Key structure for table result
-- ----------------------------
ALTER TABLE [result] ADD PRIMARY KEY CLUSTERED ([id])
GO


-- ----------------------------
-- Primary Key structure for table student
-- ----------------------------
ALTER TABLE [student] ADD PRIMARY KEY CLUSTERED ([studentno])
GO


USE myemployees;
/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : myemployees

 Target Server Type    : SQL Server
 Target Server Version : 140000
 File Encoding         : 65001

 Date: 19/06/2020 11:46:47
*/


-- ----------------------------
-- Table structure for departments
-- ----------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[departments]') AND type IN ('U'))
	DROP TABLE [departments]
GO

CREATE TABLE [departments] (
  [department_id] int NOT NULL,
  [department_name] nvarchar(3) NULL,
  [manager_id] int NULL,
  [location_id] int NULL
)
GO


-- ----------------------------
-- Records of departments
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [departments]  VALUES (N'10', N'Adm', N'200', N'1700')
GO

INSERT INTO [departments]  VALUES (N'20', N'Mar', N'201', N'1800')
GO

INSERT INTO [departments]  VALUES (N'30', N'Pur', N'114', N'1700')
GO

INSERT INTO [departments]  VALUES (N'40', N'Hum', N'203', N'2400')
GO

INSERT INTO [departments]  VALUES (N'50', N'Shi', N'121', N'1500')
GO

INSERT INTO [departments]  VALUES (N'60', N'IT', N'103', N'1400')
GO

INSERT INTO [departments]  VALUES (N'70', N'Pub', N'204', N'2700')
GO

INSERT INTO [departments]  VALUES (N'80', N'Sal', N'145', N'2500')
GO

INSERT INTO [departments]  VALUES (N'90', N'Exe', N'100', N'1700')
GO

INSERT INTO [departments]  VALUES (N'100', N'Fin', N'108', N'1700')
GO

INSERT INTO [departments]  VALUES (N'110', N'Acc', N'205', N'1700')
GO

INSERT INTO [departments]  VALUES (N'120', N'Tre', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'130', N'Cor', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'140', N'Con', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'150', N'Sha', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'160', N'Ben', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'170', N'Man', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'180', N'Con', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'190', N'Con', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'200', N'Ope', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'210', N'IT ', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'220', N'NOC', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'230', N'IT ', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'240', N'Gov', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'250', N'Ret', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'260', N'Rec', NULL, N'1700')
GO

INSERT INTO [departments]  VALUES (N'270', N'Pay', NULL, N'1700')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for employees
-- ----------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[employees]') AND type IN ('U'))
	DROP TABLE [employees]
GO

CREATE TABLE [employees] (
  [employee_id] int NOT NULL,
  [first_name] nvarchar(20) NULL,
  [last_name] nvarchar(25) NULL,
  [email] nvarchar(25) NULL,
  [phone_number] nvarchar(20) NULL,
  [job_id] nvarchar(10) NULL,
  [salary] float NULL,
  [commission_pct] float NULL,
  [manager_id] int NULL,
  [department_id] int NULL,
  [hiredate] datetime NULL
)
GO


-- ----------------------------
-- Records of employees
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [employees]  VALUES (N'100', N'Steven', N'K_ing', N'SKING', N'515.123.4567', N'AD_PRES', N'24000.00', NULL, NULL, N'90', N'1992-04-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'101', N'Neena', N'Kochhar', N'NKOCHHAR', N'515.123.4568', N'AD_VP', N'17000.00', NULL, N'100', N'90', N'1992-04-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'102', N'Lex', N'De Haan', N'LDEHAAN', N'515.123.4569', N'AD_VP', N'17000.00', NULL, N'100', N'90', N'1992-04-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'103', N'Alexander', N'Hunold', N'AHUNOLD', N'590.423.4567', N'IT_PROG', N'9000.00', NULL, N'102', N'60', N'1992-04-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'104', N'Bruce', N'Ernst', N'BERNST', N'590.423.4568', N'IT_PROG', N'6000.00', NULL, N'103', N'60', N'1992-04-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'105', N'David', N'Austin', N'DAUSTIN', N'590.423.4569', N'IT_PROG', N'4800.00', NULL, N'103', N'60', N'1998-03-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'106', N'Valli', N'Pataballa', N'VPATABAL', N'590.423.4560', N'IT_PROG', N'4800.00', NULL, N'103', N'60', N'1998-03-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'107', N'Diana', N'Lorentz', N'DLORENTZ', N'590.423.5567', N'IT_PROG', N'4200.00', NULL, N'103', N'60', N'1998-03-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'108', N'Nancy', N'Greenberg', N'NGREENBE', N'515.124.4569', N'FI_MGR', N'12000.00', NULL, N'101', N'100', N'1998-03-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'109', N'Daniel', N'Faviet', N'DFAVIET', N'515.124.4169', N'FI_ACCOUNT', N'9000.00', NULL, N'108', N'100', N'1998-03-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'110', N'John', N'Chen', N'JCHEN', N'515.124.4269', N'FI_ACCOUNT', N'8200.00', NULL, N'108', N'100', N'2000-09-09 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'111', N'Ismael', N'Sciarra', N'ISCIARRA', N'515.124.4369', N'FI_ACCOUNT', N'7700.00', NULL, N'108', N'100', N'2000-09-09 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'112', N'Jose Manuel', N'Urman', N'JMURMAN', N'515.124.4469', N'FI_ACCOUNT', N'7800.00', NULL, N'108', N'100', N'2000-09-09 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'113', N'Luis', N'Popp', N'LPOPP', N'515.124.4567', N'FI_ACCOUNT', N'6900.00', NULL, N'108', N'100', N'2000-09-09 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'114', N'Den', N'Raphaely', N'DRAPHEAL', N'515.127.4561', N'PU_MAN', N'11000.00', NULL, N'100', N'30', N'2000-09-09 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'115', N'Alexander', N'Khoo', N'AKHOO', N'515.127.4562', N'PU_CLERK', N'3100.00', NULL, N'114', N'30', N'2000-09-09 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'116', N'Shelli', N'Baida', N'SBAIDA', N'515.127.4563', N'PU_CLERK', N'2900.00', NULL, N'114', N'30', N'2000-09-09 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'117', N'Sigal', N'Tobias', N'STOBIAS', N'515.127.4564', N'PU_CLERK', N'2800.00', NULL, N'114', N'30', N'2000-09-09 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'118', N'Guy', N'Himuro', N'GHIMURO', N'515.127.4565', N'PU_CLERK', N'2600.00', NULL, N'114', N'30', N'2000-09-09 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'119', N'Karen', N'Colmenares', N'KCOLMENA', N'515.127.4566', N'PU_CLERK', N'2500.00', NULL, N'114', N'30', N'2000-09-09 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'120', N'Matthew', N'Weiss', N'MWEISS', N'650.123.1234', N'ST_MAN', N'8000.00', NULL, N'100', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'121', N'Adam', N'Fripp', N'AFRIPP', N'650.123.2234', N'ST_MAN', N'8200.00', NULL, N'100', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'122', N'Payam', N'Kaufling', N'PKAUFLIN', N'650.123.3234', N'ST_MAN', N'7900.00', NULL, N'100', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'123', N'Shanta', N'Vollman', N'SVOLLMAN', N'650.123.4234', N'ST_MAN', N'6500.00', NULL, N'100', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'124', N'Kevin', N'Mourgos', N'KMOURGOS', N'650.123.5234', N'ST_MAN', N'5800.00', NULL, N'100', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'125', N'Julia', N'Nayer', N'JNAYER', N'650.124.1214', N'ST_CLERK', N'3200.00', NULL, N'120', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'126', N'Irene', N'Mikkilineni', N'IMIKKILI', N'650.124.1224', N'ST_CLERK', N'2700.00', NULL, N'120', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'127', N'James', N'Landry', N'JLANDRY', N'650.124.1334', N'ST_CLERK', N'2400.00', NULL, N'120', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'128', N'Steven', N'Markle', N'SMARKLE', N'650.124.1434', N'ST_CLERK', N'2200.00', NULL, N'120', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'129', N'Laura', N'Bissot', N'LBISSOT', N'650.124.5234', N'ST_CLERK', N'3300.00', NULL, N'121', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'130', N'Mozhe', N'Atkinson', N'MATKINSO', N'650.124.6234', N'ST_CLERK', N'2800.00', NULL, N'121', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'131', N'James', N'Marlow', N'JAMRLOW', N'650.124.7234', N'ST_CLERK', N'2500.00', NULL, N'121', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'132', N'TJ', N'Olson', N'TJOLSON', N'650.124.8234', N'ST_CLERK', N'2100.00', NULL, N'121', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'133', N'Jason', N'Mallin', N'JMALLIN', N'650.127.1934', N'ST_CLERK', N'3300.00', NULL, N'122', N'50', N'2004-02-06 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'134', N'Michael', N'Rogers', N'MROGERS', N'650.127.1834', N'ST_CLERK', N'2900.00', NULL, N'122', N'50', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'135', N'Ki', N'Gee', N'KGEE', N'650.127.1734', N'ST_CLERK', N'2400.00', NULL, N'122', N'50', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'136', N'Hazel', N'Philtanker', N'HPHILTAN', N'650.127.1634', N'ST_CLERK', N'2200.00', NULL, N'122', N'50', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'137', N'Renske', N'Ladwig', N'RLADWIG', N'650.121.1234', N'ST_CLERK', N'3600.00', NULL, N'123', N'50', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'138', N'Stephen', N'Stiles', N'SSTILES', N'650.121.2034', N'ST_CLERK', N'3200.00', NULL, N'123', N'50', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'139', N'John', N'Seo', N'JSEO', N'650.121.2019', N'ST_CLERK', N'2700.00', NULL, N'123', N'50', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'140', N'Joshua', N'Patel', N'JPATEL', N'650.121.1834', N'ST_CLERK', N'2500.00', NULL, N'123', N'50', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'141', N'Trenna', N'Rajs', N'TRAJS', N'650.121.8009', N'ST_CLERK', N'3500.00', NULL, N'124', N'50', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'142', N'Curtis', N'Davies', N'CDAVIES', N'650.121.2994', N'ST_CLERK', N'3100.00', NULL, N'124', N'50', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'143', N'Randall', N'Matos', N'RMATOS', N'650.121.2874', N'ST_CLERK', N'2600.00', NULL, N'124', N'50', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'144', N'Peter', N'Vargas', N'PVARGAS', N'650.121.2004', N'ST_CLERK', N'2500.00', NULL, N'124', N'50', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'145', N'John', N'Russell', N'JRUSSEL', N'011.44.1344.429268', N'SA_MAN', N'14000.00', N'0.40', N'100', N'80', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'146', N'Karen', N'Partners', N'KPARTNER', N'011.44.1344.467268', N'SA_MAN', N'13500.00', N'0.30', N'100', N'80', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'147', N'Alberto', N'Errazuriz', N'AERRAZUR', N'011.44.1344.429278', N'SA_MAN', N'12000.00', N'0.30', N'100', N'80', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'148', N'Gerald', N'Cambrault', N'GCAMBRAU', N'011.44.1344.619268', N'SA_MAN', N'11000.00', N'0.30', N'100', N'80', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'149', N'Eleni', N'Zlotkey', N'EZLOTKEY', N'011.44.1344.429018', N'SA_MAN', N'10500.00', N'0.20', N'100', N'80', N'2002-12-23 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'150', N'Peter', N'Tucker', N'PTUCKER', N'011.44.1344.129268', N'SA_REP', N'10000.00', N'0.30', N'145', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'151', N'David', N'Bernstein', N'DBERNSTE', N'011.44.1344.345268', N'SA_REP', N'9500.00', N'0.25', N'145', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'152', N'Peter', N'Hall', N'PHALL', N'011.44.1344.478968', N'SA_REP', N'9000.00', N'0.25', N'145', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'153', N'Christopher', N'Olsen', N'COLSEN', N'011.44.1344.498718', N'SA_REP', N'8000.00', N'0.20', N'145', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'154', N'Nanette', N'Cambrault', N'NCAMBRAU', N'011.44.1344.987668', N'SA_REP', N'7500.00', N'0.20', N'145', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'155', N'Oliver', N'Tuvault', N'OTUVAULT', N'011.44.1344.486508', N'SA_REP', N'7000.00', N'0.15', N'145', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'156', N'Janette', N'K_ing', N'JKING', N'011.44.1345.429268', N'SA_REP', N'10000.00', N'0.35', N'146', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'157', N'Patrick', N'Sully', N'PSULLY', N'011.44.1345.929268', N'SA_REP', N'9500.00', N'0.35', N'146', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'158', N'Allan', N'McEwen', N'AMCEWEN', N'011.44.1345.829268', N'SA_REP', N'9000.00', N'0.35', N'146', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'159', N'Lindsey', N'Smith', N'LSMITH', N'011.44.1345.729268', N'SA_REP', N'8000.00', N'0.30', N'146', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'160', N'Louise', N'Doran', N'LDORAN', N'011.44.1345.629268', N'SA_REP', N'7500.00', N'0.30', N'146', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'161', N'Sarath', N'Sewall', N'SSEWALL', N'011.44.1345.529268', N'SA_REP', N'7000.00', N'0.25', N'146', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'162', N'Clara', N'Vishney', N'CVISHNEY', N'011.44.1346.129268', N'SA_REP', N'10500.00', N'0.25', N'147', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'163', N'Danielle', N'Greene', N'DGREENE', N'011.44.1346.229268', N'SA_REP', N'9500.00', N'0.15', N'147', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'164', N'Mattea', N'Marvins', N'MMARVINS', N'011.44.1346.329268', N'SA_REP', N'7200.00', N'0.10', N'147', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'165', N'David', N'Lee', N'DLEE', N'011.44.1346.529268', N'SA_REP', N'6800.00', N'0.10', N'147', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'166', N'Sundar', N'Ande', N'SANDE', N'011.44.1346.629268', N'SA_REP', N'6400.00', N'0.10', N'147', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'167', N'Amit', N'Banda', N'ABANDA', N'011.44.1346.729268', N'SA_REP', N'6200.00', N'0.10', N'147', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'168', N'Lisa', N'Ozer', N'LOZER', N'011.44.1343.929268', N'SA_REP', N'11500.00', N'0.25', N'148', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'169', N'Harrison', N'Bloom', N'HBLOOM', N'011.44.1343.829268', N'SA_REP', N'10000.00', N'0.20', N'148', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'170', N'Tayler', N'Fox', N'TFOX', N'011.44.1343.729268', N'SA_REP', N'9600.00', N'0.20', N'148', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'171', N'William', N'Smith', N'WSMITH', N'011.44.1343.629268', N'SA_REP', N'7400.00', N'0.15', N'148', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'172', N'Elizabeth', N'Bates', N'EBATES', N'011.44.1343.529268', N'SA_REP', N'7300.00', N'0.15', N'148', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'173', N'Sundita', N'Kumar', N'SKUMAR', N'011.44.1343.329268', N'SA_REP', N'6100.00', N'0.10', N'148', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'174', N'Ellen', N'Abel', N'EABEL', N'011.44.1644.429267', N'SA_REP', N'11000.00', N'0.30', N'149', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'175', N'Alyssa', N'Hutton', N'AHUTTON', N'011.44.1644.429266', N'SA_REP', N'8800.00', N'0.25', N'149', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'176', N'Jonathon', N'Taylor', N'JTAYLOR', N'011.44.1644.429265', N'SA_REP', N'8600.00', N'0.20', N'149', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'177', N'Jack', N'Livingston', N'JLIVINGS', N'011.44.1644.429264', N'SA_REP', N'8400.00', N'0.20', N'149', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'178', N'Kimberely', N'Grant', N'KGRANT', N'011.44.1644.429263', N'SA_REP', N'7000.00', N'0.15', N'149', NULL, N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'179', N'Charles', N'Johnson', N'CJOHNSON', N'011.44.1644.429262', N'SA_REP', N'6200.00', N'0.10', N'149', N'80', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'180', N'Winston', N'Taylor', N'WTAYLOR', N'650.507.9876', N'SH_CLERK', N'3200.00', NULL, N'120', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'181', N'Jean', N'Fleaur', N'JFLEAUR', N'650.507.9877', N'SH_CLERK', N'3100.00', NULL, N'120', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'182', N'Martha', N'Sullivan', N'MSULLIVA', N'650.507.9878', N'SH_CLERK', N'2500.00', NULL, N'120', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'183', N'Girard', N'Geoni', N'GGEONI', N'650.507.9879', N'SH_CLERK', N'2800.00', NULL, N'120', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'184', N'Nandita', N'Sarchand', N'NSARCHAN', N'650.509.1876', N'SH_CLERK', N'4200.00', NULL, N'121', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'185', N'Alexis', N'Bull', N'ABULL', N'650.509.2876', N'SH_CLERK', N'4100.00', NULL, N'121', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'186', N'Julia', N'Dellinger', N'JDELLING', N'650.509.3876', N'SH_CLERK', N'3400.00', NULL, N'121', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'187', N'Anthony', N'Cabrio', N'ACABRIO', N'650.509.4876', N'SH_CLERK', N'3000.00', NULL, N'121', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'188', N'Kelly', N'Chung', N'KCHUNG', N'650.505.1876', N'SH_CLERK', N'3800.00', NULL, N'122', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'189', N'Jennifer', N'Dilly', N'JDILLY', N'650.505.2876', N'SH_CLERK', N'3600.00', NULL, N'122', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'190', N'Timothy', N'Gates', N'TGATES', N'650.505.3876', N'SH_CLERK', N'2900.00', NULL, N'122', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'191', N'Randall', N'Perkins', N'RPERKINS', N'650.505.4876', N'SH_CLERK', N'2500.00', NULL, N'122', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'192', N'Sarah', N'Bell', N'SBELL', N'650.501.1876', N'SH_CLERK', N'4000.00', NULL, N'123', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'193', N'Britney', N'Everett', N'BEVERETT', N'650.501.2876', N'SH_CLERK', N'3900.00', NULL, N'123', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'194', N'Samuel', N'McCain', N'SMCCAIN', N'650.501.3876', N'SH_CLERK', N'3200.00', NULL, N'123', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'195', N'Vance', N'Jones', N'VJONES', N'650.501.4876', N'SH_CLERK', N'2800.00', NULL, N'123', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'196', N'Alana', N'Walsh', N'AWALSH', N'650.507.9811', N'SH_CLERK', N'3100.00', NULL, N'124', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'197', N'Kevin', N'Feeney', N'KFEENEY', N'650.507.9822', N'SH_CLERK', N'3000.00', NULL, N'124', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'198', N'Donald', N'OConnell', N'DOCONNEL', N'650.507.9833', N'SH_CLERK', N'2600.00', NULL, N'124', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'199', N'Douglas', N'Grant', N'DGRANT', N'650.507.9844', N'SH_CLERK', N'2600.00', NULL, N'124', N'50', N'2014-03-05 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'200', N'Jennifer', N'Whalen', N'JWHALEN', N'515.123.4444', N'AD_ASST', N'4400.00', NULL, N'101', N'10', N'2016-03-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'201', N'Michael', N'Hartstein', N'MHARTSTE', N'515.123.5555', N'MK_MAN', N'13000.00', NULL, N'100', N'20', N'2016-03-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'202', N'Pat', N'Fay', N'PFAY', N'603.123.6666', N'MK_REP', N'6000.00', NULL, N'201', N'20', N'2016-03-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'203', N'Susan', N'Mavris', N'SMAVRIS', N'515.123.7777', N'HR_REP', N'6500.00', NULL, N'101', N'40', N'2016-03-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'204', N'Hermann', N'Baer', N'HBAER', N'515.123.8888', N'PR_REP', N'10000.00', NULL, N'101', N'70', N'2016-03-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'205', N'Shelley', N'Higgins', N'SHIGGINS', N'515.123.8080', N'AC_MGR', N'12000.00', NULL, N'101', N'110', N'2016-03-03 00:00:00')
GO

INSERT INTO [employees]  VALUES (N'206', N'William', N'Gietz', N'WGIETZ', N'515.123.8181', N'AC_ACCOUNT', N'8300.00', NULL, N'205', N'110', N'2016-03-03 00:00:00')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for job_grades
-- ----------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[job_grades]') AND type IN ('U'))
	DROP TABLE [job_grades]
GO

CREATE TABLE [job_grades] (
  [grade_level] nvarchar(3) NULL,
  [lowest_sal] int NULL,
  [highest_sal] int NULL
)
GO


-- ----------------------------
-- Records of job_grades
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [job_grades]  VALUES (N'A', N'1000', N'2999')
GO

INSERT INTO [job_grades]  VALUES (N'B', N'3000', N'5999')
GO

INSERT INTO [job_grades]  VALUES (N'C', N'6000', N'9999')
GO

INSERT INTO [job_grades]  VALUES (N'D', N'10000', N'14999')
GO

INSERT INTO [job_grades]  VALUES (N'E', N'15000', N'24999')
GO

INSERT INTO [job_grades]  VALUES (N'F', N'25000', N'40000')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for jobs
-- ----------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[jobs]') AND type IN ('U'))
	DROP TABLE [jobs]
GO

CREATE TABLE [jobs] (
  [job_id] nvarchar(10) NOT NULL,
  [job_title] nvarchar(35) NULL,
  [min_salary] int NULL,
  [max_salary] int NULL
)
GO


-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [jobs]  VALUES (N'AC_ACCOUNT', N'Public Accountant', N'4200', N'9000')
GO

INSERT INTO [jobs]  VALUES (N'AC_MGR', N'Accounting Manager', N'8200', N'16000')
GO

INSERT INTO [jobs]  VALUES (N'AD_ASST', N'Administration Assistant', N'3000', N'6000')
GO

INSERT INTO [jobs]  VALUES (N'AD_PRES', N'President', N'20000', N'40000')
GO

INSERT INTO [jobs]  VALUES (N'AD_VP', N'Administration Vice President', N'15000', N'30000')
GO

INSERT INTO [jobs]  VALUES (N'FI_ACCOUNT', N'Accountant', N'4200', N'9000')
GO

INSERT INTO [jobs]  VALUES (N'FI_MGR', N'Finance Manager', N'8200', N'16000')
GO

INSERT INTO [jobs]  VALUES (N'HR_REP', N'Human Resources Representative', N'4000', N'9000')
GO

INSERT INTO [jobs]  VALUES (N'IT_PROG', N'Programmer', N'4000', N'10000')
GO

INSERT INTO [jobs]  VALUES (N'MK_MAN', N'Marketing Manager', N'9000', N'15000')
GO

INSERT INTO [jobs]  VALUES (N'MK_REP', N'Marketing Representative', N'4000', N'9000')
GO

INSERT INTO [jobs]  VALUES (N'PR_REP', N'Public Relations Representative', N'4500', N'10500')
GO

INSERT INTO [jobs]  VALUES (N'PU_CLERK', N'Purchasing Clerk', N'2500', N'5500')
GO

INSERT INTO [jobs]  VALUES (N'PU_MAN', N'Purchasing Manager', N'8000', N'15000')
GO

INSERT INTO [jobs]  VALUES (N'SA_MAN', N'Sales Manager', N'10000', N'20000')
GO

INSERT INTO [jobs]  VALUES (N'SA_REP', N'Sales Representative', N'6000', N'12000')
GO

INSERT INTO [jobs]  VALUES (N'SH_CLERK', N'Shipping Clerk', N'2500', N'5500')
GO

INSERT INTO [jobs]  VALUES (N'ST_CLERK', N'Stock Clerk', N'2000', N'5000')
GO

INSERT INTO [jobs]  VALUES (N'ST_MAN', N'Stock Manager', N'5500', N'8500')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for locations
-- ----------------------------
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[locations]') AND type IN ('U'))
	DROP TABLE [locations]
GO

CREATE TABLE [locations] (
  [location_id] int NOT NULL,
  [street_address] nvarchar(40) NULL,
  [postal_code] nvarchar(12) NULL,
  [city] nvarchar(30) NULL,
  [state_province] nvarchar(25) NULL,
  [country_id] nvarchar(2) NULL
)
GO


-- ----------------------------
-- Records of locations
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [locations]  VALUES (N'1000', N'1297 Via Cola di Rie', N'00989', N'Roma', NULL, N'IT')
GO

INSERT INTO [locations]  VALUES (N'1100', N'93091 Calle della Testa', N'10934', N'Venice', NULL, N'IT')
GO

INSERT INTO [locations]  VALUES (N'1200', N'2017 Shinjuku-ku', N'1689', N'Tokyo', N'Tokyo Prefecture', N'JP')
GO

INSERT INTO [locations]  VALUES (N'1300', N'9450 Kamiya-cho', N'6823', N'Hiroshima', NULL, N'JP')
GO

INSERT INTO [locations]  VALUES (N'1400', N'2014 Jabberwocky Rd', N'26192', N'Southlake', N'Texas', N'US')
GO

INSERT INTO [locations]  VALUES (N'1500', N'2011 Interiors Blvd', N'99236', N'South San Francisco', N'California', N'US')
GO

INSERT INTO [locations]  VALUES (N'1600', N'2007 Zagora St', N'50090', N'South Brunswick', N'New Jersey', N'US')
GO

INSERT INTO [locations]  VALUES (N'1700', N'2004 Charade Rd', N'98199', N'Seattle', N'Washington', N'US')
GO

INSERT INTO [locations]  VALUES (N'1800', N'147 Spadina Ave', N'M5V 2L7', N'Toronto', N'Ontario', N'CA')
GO

INSERT INTO [locations]  VALUES (N'1900', N'6092 Boxwood St', N'YSW 9T2', N'Whitehorse', N'Yukon', N'CA')
GO

INSERT INTO [locations]  VALUES (N'2000', N'40-5-12 Laogianggen', N'190518', N'Beijing', NULL, N'CN')
GO

INSERT INTO [locations]  VALUES (N'2100', N'1298 Vileparle (E)', N'490231', N'Bombay', N'Maharashtra', N'IN')
GO

INSERT INTO [locations]  VALUES (N'2200', N'12-98 Victoria Street', N'2901', N'Sydney', N'New South Wales', N'AU')
GO

INSERT INTO [locations]  VALUES (N'2300', N'198 Clementi North', N'540198', N'Singapore', NULL, N'SG')
GO

INSERT INTO [locations]  VALUES (N'2400', N'8204 Arthur St', NULL, N'London', NULL, N'UK')
GO

INSERT INTO [locations]  VALUES (N'2500', N'Magdalen Centre, The Oxford Science Park', N'OX9 9ZB', N'Oxford', N'Oxford', N'UK')
GO

INSERT INTO [locations]  VALUES (N'2600', N'9702 Chester Road', N'09629850293', N'Stretford', N'Manchester', N'UK')
GO

INSERT INTO [locations]  VALUES (N'2700', N'Schwanthalerstr. 7031', N'80925', N'Munich', N'Bavaria', N'DE')
GO

INSERT INTO [locations]  VALUES (N'2800', N'Rua Frei Caneca 1360 ', N'01307-002', N'Sao Paulo', N'Sao Paulo', N'BR')
GO

INSERT INTO [locations]  VALUES (N'2900', N'20 Rue des Corps-Saints', N'1730', N'Geneva', N'Geneve', N'CH')
GO

INSERT INTO [locations]  VALUES (N'3000', N'Murtenstrasse 921', N'3095', N'Bern', N'BE', N'CH')
GO

INSERT INTO [locations]  VALUES (N'3100', N'Pieter Breughelstraat 837', N'3029SK', N'Utrecht', N'Utrecht', N'NL')
GO

INSERT INTO [locations]  VALUES (N'3200', N'Mariano Escobedo 9991', N'11932', N'Mexico City', N'Distrito Federal,', N'MX')
GO

COMMIT
GO


-- ----------------------------
-- Indexes structure for table departments
-- ----------------------------
CREATE NONCLUSTERED INDEX [loc_id_fk]
ON [departments] (
  [location_id]
)
GO


-- ----------------------------
-- Primary Key structure for table departments
-- ----------------------------
ALTER TABLE [departments] ADD PRIMARY KEY CLUSTERED ([department_id])
GO


-- ----------------------------
-- Indexes structure for table employees
-- ----------------------------
CREATE NONCLUSTERED INDEX [dept_id_fk]
ON [employees] (
  [department_id]
)
GO

CREATE NONCLUSTERED INDEX [job_id_fk]
ON [employees] (
  [job_id]
)
GO


-- ----------------------------
-- Primary Key structure for table employees
-- ----------------------------
ALTER TABLE [employees] ADD PRIMARY KEY CLUSTERED ([employee_id])
GO


-- ----------------------------
-- Primary Key structure for table jobs
-- ----------------------------
ALTER TABLE [jobs] ADD PRIMARY KEY CLUSTERED ([job_id])
GO


-- ----------------------------
-- Primary Key structure for table locations
-- ----------------------------
ALTER TABLE [locations] ADD PRIMARY KEY CLUSTERED ([location_id])
GO


-- ----------------------------
-- Foreign Keys structure for table departments
-- ----------------------------
ALTER TABLE [departments] ADD CONSTRAINT [loc_id_fk] FOREIGN KEY ([location_id]) REFERENCES [locations] ([location_id])
GO


-- ----------------------------
-- Foreign Keys structure for table employees
-- ----------------------------
ALTER TABLE [employees] ADD CONSTRAINT [dept_id_fk] FOREIGN KEY ([department_id]) REFERENCES [departments] ([department_id])
GO

ALTER TABLE [employees] ADD CONSTRAINT [job_id_fk] FOREIGN KEY ([job_id]) REFERENCES [jobs] ([job_id])
GO



