-- MySQL dump 10.13  Distrib 5.7.41, for Win64 (x86_64)
--
-- Host: localhost    Database: vz_blog
-- ------------------------------------------------------
-- Server version	5.7.41-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  `del_flag` char(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2034 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'system',NULL,1,'M','0','0','','system',0,'2021-11-12 10:46:19',0,NULL,'系统管理目录','0'),(2,'内容管理',0,2,'content',NULL,1,'M','0','0',NULL,'table',NULL,'2022-01-08 02:44:38',1,'2022-07-31 12:34:23','','0'),(3,'写博文',0,3,'write','content/article/write/index',1,'C','0','0','content:article:writer','build',NULL,'2022-01-08 03:39:58',1,'2022-07-31 22:07:05','','0'),(100,'用户管理',1,1,'user','system/user/index',1,'C','0','0','system:user:list','user',0,'2021-11-12 10:46:19',1,'2022-07-31 15:47:58','用户管理菜单','0'),(101,'角色管理',1,2,'role','system/role/index',1,'C','0','0','system:role:list','peoples',0,'2021-11-12 10:46:19',0,NULL,'角色管理菜单','0'),(102,'菜单管理',1,3,'menu','system/menu/index',1,'C','0','0','system:menu:list','tree-table',0,'2021-11-12 10:46:19',0,NULL,'菜单管理菜单','0'),(200,'分类管理',2,1,'category','content/category/index',1,'C','0','0','content:category:list','example',NULL,'2022-01-08 02:51:45',NULL,'2022-01-08 02:51:45','','0'),(201,'文章管理',2,2,'article','content/article/index',1,'C','0','0','content:article:list','build',NULL,'2022-01-08 02:53:10',NULL,'2022-01-08 02:53:10','','0'),(202,'标签管理',2,3,'tag','content/tag/index',1,'C','0','0','content:tag:index','button',NULL,'2022-01-08 02:55:37',NULL,'2023-09-13 11:20:29','','0'),(203,'友链管理',2,4,'link','content/link/index',1,'C','0','0','content:link:list','404',NULL,'2022-01-08 02:56:50',NULL,'2022-01-08 02:56:50','','0'),(1001,'用户新增',100,1,'','',1,'F','0','0','system:user:add','#',0,'2021-11-12 10:46:19',0,NULL,'','0'),(1002,'用户删除',100,2,'','',1,'F','0','0','system:user:remove','#',0,'2021-11-12 10:46:19',0,NULL,'','0'),(1003,'用户修改',100,3,'','',1,'F','0','0','system:user:edit','#',0,'2021-11-12 10:46:19',0,NULL,'','0'),(1011,'角色新增',101,1,'','',1,'F','0','0','system:role:add','#',0,'2021-11-12 10:46:19',0,NULL,'','0'),(1012,'角色删除',101,2,'','',1,'F','0','0','system:role:remove','#',0,'2021-11-12 10:46:19',0,NULL,'','0'),(1013,'角色修改',101,3,'','',1,'F','0','0','system:role:edit','#',0,'2021-11-12 10:46:19',0,NULL,'','0'),(1021,'菜单新增',102,1,'','',1,'F','0','0','system:menu:add','#',0,'2021-11-12 10:46:19',0,NULL,'','0'),(1022,'菜单删除',102,2,'','',1,'F','0','0','system:menu:remove','#',0,'2021-11-12 10:46:19',0,NULL,'','0'),(1023,'菜单修改',102,3,'','',1,'F','0','0','system:menu:edit','#',0,'2021-11-12 10:46:19',0,NULL,'','0'),(2001,'分类新增',200,1,'',NULL,1,'F','0','0','content:category:add','#',NULL,'2022-01-16 07:59:17',NULL,'2022-01-16 07:59:17','','0'),(2002,'分类删除',200,2,'',NULL,1,'F','0','0','content:category:remove','#',NULL,'2022-01-16 08:00:05',NULL,'2022-01-16 08:00:05','','0'),(2003,'分类修改',200,3,'',NULL,1,'F','0','0','content:category:edit','#',NULL,'2022-01-16 07:59:44',NULL,'2022-01-16 07:59:44','','0'),(2004,'分类导出',200,4,'',NULL,1,'F','0','0','content:category:export','#',NULL,'2022-01-21 07:06:59',NULL,'2022-01-21 07:06:59','','0'),(2011,'文章新增',201,1,'',NULL,1,'F','0','0','content:article:add','#',NULL,'2022-01-16 07:59:17',NULL,'2022-01-16 07:59:17','','0'),(2012,'文章删除',201,2,'',NULL,1,'F','0','0','content:article:remove','#',NULL,'2022-01-16 08:00:05',NULL,'2022-01-16 08:00:05','','0'),(2013,'文章修改',201,3,'',NULL,1,'F','0','0','content:article:edit','#',NULL,'2022-01-16 07:59:44',NULL,'2022-01-16 07:59:44','','0'),(2021,'标签新增',202,1,'',NULL,1,'F','0','0','content:tag:add','#',NULL,'2022-01-16 07:59:17',NULL,'2022-01-16 07:59:17','','0'),(2022,'标签删除',202,2,'',NULL,1,'F','0','0','content:tag:remove','#',NULL,'2022-01-16 08:00:05',NULL,'2022-01-16 08:00:05','','0'),(2023,'标签修改',202,3,'',NULL,1,'F','0','0','content:tag:edit','#',NULL,'2022-01-16 07:59:44',NULL,'2022-01-16 07:59:44','','0'),(2031,'友链新增',203,1,'',NULL,1,'F','0','0','content:link:add','#',NULL,'2022-01-16 07:59:17',NULL,'2022-01-16 07:59:17','','0'),(2032,'友链删除',203,2,'',NULL,1,'F','0','0','content:link:remove','#',NULL,'2022-01-16 08:00:05',NULL,'2022-01-16 08:00:05','','0'),(2033,'友链修改',203,3,'',NULL,1,'F','0','0','content:link:edit','#',NULL,'2022-01-16 07:59:44',NULL,'2022-01-16 07:59:44','','0');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'0','0',0,'2021-11-12 10:46:19',0,NULL,'超级管理员'),(2,'编辑','editor',2,'0','0',0,'2021-11-12 10:46:19',0,'2023-09-13 10:44:43','编辑'),(3,'友链审核员','link',3,'0','0',NULL,'2022-01-16 06:49:30',NULL,'2022-01-16 08:05:09','友链审核员'),(4,'普通用户','user',4,'0','0',NULL,'2022-01-06 14:07:40',NULL,'2022-01-07 03:48:48','普通用户');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (2,2),(2,3),(2,200),(2,201),(2,202),(2,2001),(2,2002),(2,2003),(2,2004),(2,2011),(2,2012),(2,2013),(2,2021),(2,2022),(2,2023),(3,2),(3,203),(3,2031),(3,2032),(3,2033);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '用户名',
  `nick_name` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '昵称',
  `password` varchar(64) NOT NULL DEFAULT 'NULL' COMMENT '密码',
  `type` char(1) DEFAULT '0' COMMENT '用户类型：0代表普通用户，1代表管理员',
  `status` char(1) DEFAULT '0' COMMENT '账号状态（0正常 1停用）',
  `email` varchar(64) DEFAULT NULL COMMENT '邮箱',
  `phonenumber` varchar(32) DEFAULT NULL COMMENT '手机号',
  `sex` char(1) DEFAULT NULL COMMENT '用户性别（0男，1女，2未知）',
  `avatar` varchar(128) DEFAULT NULL COMMENT '头像',
  `create_by` bigint(20) DEFAULT NULL COMMENT '创建人的用户id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` bigint(20) DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `del_flag` int(11) DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','Vzer','$2a$10$VcIamfDZIvkRP1JJZKYAHOZpsb4Z3LZptJACS9wur9mZoOpTMpsAO','1','0','228675@email.com','18888888888','0','http://s0srvv6dm.hn-bkt.clouddn.com/2023/09/13/2437ad1351a942e9b824c326d313401d.jpg',NULL,'2022-01-05 09:01:56',NULL,'2023-09-14 05:43:13',0),(2,'editor','编辑','$2a$10$Cjxu8UwfmUYvgzy7VJexke3suuKNM9bwy8ENHj4UEzBmMZX5p.OBm','0','0','123@email.com',NULL,'0','http://s0srvv6dm.hn-bkt.clouddn.com/2023/09/11/95ccdf9554e840b48366d872e7e62cac.jpg',-1,'2022-01-30 17:18:44',-1,'2023-09-14 05:43:29',0),(3,'link','友链审核员','$2a$10$v9QNSgh6rMgjwuvmgwWJG.wxPWfARyBk/c8oDDQU4JbXI2ufIOyXu','0','0','123456@email.com',NULL,'0',NULL,NULL,'2022-01-05 13:28:43',NULL,'2023-09-14 05:43:36',0),(4,'user','路人甲','$2a$10$Cjxu8UwfmUYvgzy7VJexke3suuKNM9bwy8ENHj4UEzBmMZX5p.OBm','0','0','123@email.com','19098790742','0',NULL,NULL,NULL,NULL,'2023-09-14 05:43:44',0);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1),(2,2),(3,3),(4,4);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vz_article`
--

DROP TABLE IF EXISTS `vz_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vz_article` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '文章内容',
  `summary` varchar(1024) DEFAULT NULL COMMENT '文章摘要',
  `category_id` bigint(20) DEFAULT NULL COMMENT '所属分类id',
  `thumbnail` varchar(256) DEFAULT NULL COMMENT '缩略图',
  `is_top` char(1) DEFAULT '0' COMMENT '是否置顶（0否，1是）',
  `status` char(1) DEFAULT '1' COMMENT '状态（0已发布，1草稿）',
  `view_count` bigint(200) DEFAULT '0' COMMENT '访问量',
  `is_comment` char(1) DEFAULT '1' COMMENT '是否允许评论 1是，0否',
  `create_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vz_article`
--

LOCK TABLES `vz_article` WRITE;
/*!40000 ALTER TABLE `vz_article` DISABLE KEYS */;
INSERT INTO `vz_article` VALUES (1,'Cherno C++ 笔记','# Cherno\n[TheCherno原视频](https://www.youtube.com/playlist?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb)\n防御式声明防御在同一个cpp里重复引用.h。  \n```C++\n#ifndef _CONST_\n#define _CONST_\n...\n#endif\n//另一种简单常用的\n#pragma once\n```\n\n多个相同的定义linker报错  \n在头文件里定义了函数体并被多个cpp重复引用:\n\n1. 对.h里的文件的函数体前增加static(仅自己cpp使用)或inline(将函数体直接套入主函数)\n2. 把函数体放到一个cpp文件中, .h头文件里只声明\n\n无论什么类型的指针本质都是存储内存地址的整数  \n指针类型只是在读取或修改数据时告诉编译器数据的类型(占多大的内存)  \n\nnew底层其实是call了malloc，malloc是memory allocation的简写，它负责分配内存，delete则调用了free()，区别是new和delete不仅管理内存，还会调用constructor和destructor，另外它们都是operator，可以重载。  \nnew【】和delete【】其实另两个operator，它们做的事情稍微有点不一样，你调用new【】的时候，必须要指定一个size，但调用delete【】的时候，并没有指定size，这是因为new【】不仅分配了所需要的内存，还会多分配一个额外的空间，来存储这个size，所以`char* buffer = new char[8];`，它所做的是分配这样一块内存【8, 0, 0, 0, 0, 0, 0, 0, 0】，连续的，但是多一块在最前面，但是return给你的是跳过那块内存的地址，比如malloc返回的是0x1，但new【】给你返回的是0x1+2（我记得它分配的是一个word（一般是short）的大小，具体大小需要看系统），然后在`delete[] buffer;`的时候，它会往前推一个word，因为它知道前面一个word肯定是size，从而拿到size，进而delete所有  \n\n`memset(buffer,0,8)` 将buffer所指的首地址后八个字节都填0\n\n`int& ref = a;`引用即别名：引用并非对象，相反的，它只是为一个已经存在的对象所起的另外一个名字。引用定义的同时必须赋值 并且赋值后不能改变引用对象  \n函数传值和传引用(只要在函数定义的形参前加&)  引用能做的指针都能做  \n\nC++中struct和class的用法作用相同 不过struct默认成员都为public class默认为private(struct中也可定义方法)  \n\n类或结构体外的static表示只对它声明所在的cpp文件中“可见” extern表示要在别的cpp文件中寻找定义  \n类或结构体内的static共享空间，可看作在类或结构体的命名空间中 `Class::element` 静态成员函数中不能调用非静态成员 静态成员函数没有 this 指针  \n静态成员变量使用前必须先初始化(如 int MyClass::m_nNumber = 0;)，否则会在 linker 时出错  \n\nvirtual会创建虚表，虚表中类似存储函数指针，不同类初始化时，保存的函数指针不同，因此不同实例的基类指针，访问虚函数时，其获取的函数指针不同，完成重载  \n\n`virtual std::string GetName() = 0;` 纯虚函数 包含pure vertual function的类我们无法实例化 一定需要子类提供所有纯虚函数的实现子类才能实例化 (接口)  \n\n父类中的protected的作用是让子类可以访问父类中的private成员  \n\n函数中要返回数组(数组在函数中创建的)需要用new来分配除非传入的是数组的地址参数 `int arr[5];`储存在栈中 `int* arr = new int[5];`储存在堆中(不能用sizeof求大小)  \n\n字符串字面量 只读常量  \n\n`const Entity&` 相当于常量指针常量，指向的内容和本身都不能修改 常对象只能调用常成员函数，而不能调用其他的成员函数 所以调用的函数要加const`int GetX const(){}`表示不能修改实际的类成员  \n\nmutable 对于const的常函数中需要更改类的成员数据时(Debug) 定义时加上`mutable int m_DebugCount;`就可在常函数里修改`m_DebugCount` Lambda表达式中可用(?)  \n\n尽量使用成员初始化列表 初始化const成员变量只能用初始化列表实现，因为不能赋值  \n\n构造函数前加explicit则不能用隐式转换  \n\n* 智能指针  \n	智能指针本质就是一个类模板 对象会自动调用析构函数去释放该指针所指向的空间 不需要new和delete  \n	unique_ptr 不能进行拷贝和赋值 `std::unique_ptr<Entity> entity = std::make_unique<Entity>();`  \n	shared_ptr 允许多个智能指针可以指向同一块资源 维护着一份引用计数 计数为0则释放  \n	```C++\n		{\n			std::shared_ptr<Entity> entity1;\n			{\n				std::shared_ptr<Entity> entity2 = std::make_shared<Entity>();\n				entity1 = entity2;\n			}\n		}\n	```\n	weak_ptr  通常情况下需要跟 shared_ptr 一起使用 构造和析构时引用计数不增加也不会减少 专门用来解决两个类中shared_ptr相互引用而导致的内存泄露问题  \n\n深拷贝与浅拷贝的区别就在于深拷贝会在堆内存中另外申请空间来储存数据，从而也就解决了指针悬挂的问题。简而言之，深拷贝和浅拷贝的区别是在对象状态中包含其它对象的引用的时候，当拷贝一个对象时，如果需要拷贝这个对象引用的对象，则是深拷贝，否则是浅拷贝。未定义显示拷贝构造函数的情况下，系统会调用默认的拷贝函数——即浅拷贝，对有引用的对象浅拷贝会释放同一块内存两次,导致程序崩溃。  \n```C++\n//深拷贝构造函数\nString(const String& other)\n    :m_Size(other.m_Size)\n{\n    m_String = new char[m_Size+1];\n    memcpy(m_String,other.m_String,m_Size+1);\n}\n~String(){\n    delete[] m_string;\n}\n```\n\n总是通过const引用来传递对象  \n\n* Vector\n	```C++\n	class Vertex {\n	public:\n		float m_X, m_Y, m_Z;\n\n		Vertex(float x, float y, float z) :m_X(x), m_Y(y), m_Z(z) {}\n\n		Vertex(const Vertex& vertex) :m_X(vertex.m_X), m_Y(vertex.m_Y), m_Z(vertex.m_Z) {\n			std::cout << \"copy\" << std::endl;\n		}\n	};\n\n	int main() {\n		std::vector<Vertex> vertices;\n		vertices.push_back(Vertex(1, 2, 3));\n		vertices.push_back(Vertex(4, 5, 6));\n		vertices.push_back(Vertex(7, 8, 9));\n	}\n	//得到六次输出 说明有六次复制\n	```\n	分别为 在main的栈中构造临时变量vertex然后调用拷贝复制到vector的栈中1+1+1 以及 vector每次输入后扩展空间要把原来的数据复制到新的内存空间中1+2  \n	优化:\n\n	```C++\n	int main() {\n		std::vector<Vertex> vertices;\n		vertices.reserve(3);\n		vertices.emplace_back(1, 2, 3);\n		vertices.emplace_back(4, 5, 6);\n		vertices.emplace_back(7, 8, 9);\n	}\n	//无输出\n	```\n	reserve提前预定好vector的空间不用扩展 emplace_back则是传递参数化列表直接在vector中构建vertex  \n\n\n* 库文件  \n	include中的.h文件 lib文件夹中的.lib .dll dll.lib  \n	静态链接  \n	gcc进行链接时会把静态库.lib中的代码打包到可执行文件中，**编译时加载**，所以在发布程序的时候无须提供静态库，移植方便，运行快  \n	属性->C++->常规->附加包含目录 填include文件夹路径`$(SolutionDir)Dependencies\\include` 即可在程序中include<.h>  \n	属性->链接器->常规->附加库目录 填lib文件夹路径`$(SolutionDir)Dependencies\\lib` 属性->链接器->输入->附加依赖项中填.lib文件名 即可引入库文件  \n	动态链接  \n	gcc进行链接时，动态库的代码不会被打包到可执行程序中，**运行时加载**，所以在发布程序的时候需要提供动态库  \n	include同上  \n	链接器输入中附加依赖项改为dll.lib(指向文件) 同时将dll文件放在和exe文件同一目录当中即可  \n\n	同一个Solution中自定义库 对project的属性调成lib include路径改为自己创建的.h的路径 对主项目添加引用选择库项目即可(静态)  \n\n模板函数只有在被调用时才会被创建  \n\n栈分配比堆分配更好 要很大的存储空间或者要持续很长作用域的才用堆分配  \n\n函数指针`typedef void(*Function)(int);` `Function func = Helloworld//函数名;` 每一个函数名都是一个函数指针，函数名后加（）就是调用该函数  \n\nlambda 更多看为一个变量而不是一个函数 有函数指针的地方可以用 `auto lambda = [](//参数){//函数主体};`  \n`[外层变量传入](参数变量传入) -> 返回类型 { 函数体 } //(-> 返回变量可以不写，因为很容易从return推断)`  \n例子：`[](int value){ std::cout << \"value : \" << value << std::endl;}`  \n[]用于捕获 要用到函数体外定义的变量时 [=]所有变量按值传递 [&]所有变量按引用传递 [a]a按值传递 [&a]a变量按引用传递  \n非捕获lambda可以隐式转换为函数指针，而有捕获lambda不可以。所以非捕获lambda可以作为原始函数指针`void(*func)(int)`的参数 捕获的参数要为`const std::function<void(int)>& func`  \n\n* 计时  \n	```C++\n		using namespace std::literals::chrono_literals;//可以使用s,h,min等时间后缀\n		auto start = std::chrono::high_resolution_clock::now();//记录时间\n		std::this_thread::sleep_for(1s);//停1秒\n		auto end = std::chrono::high_resolution_clock::now();\n\n		std::chrono::duration<float> duration = end - start;\n		std::cout << duration.count() << \"s\" << std::endl;\n	```\n\n	```C++\n	struct Timer {//计时类 将类放在作用域中Timer timer;即可\n		std::chrono::time_point<std::chrono::steady_clock> start, end;\n		std::chrono::duration<float> duration;\n\n		Timer() {\n			start = std::chrono::high_resolution_clock::now();\n		}\n		~Timer() {\n			end = std::chrono::high_resolution_clock::now();\n			duration = end - start;\n			//startTime = std::chrono::time_point_cast<std::chrono::microseconds>(start).time_since_epoch().count();显式类型转换 不损失精度 以微秒输出\n			float ms = duration.count() * 1000.0f;\n			std::cout << ms << \" ms\" << std::endl;\n		}\n	};\n	```\n	```C++\n	#include<iostream>\n	#include<chrono>\n	class Timer {\n	public:\n		Timer(const char* name) : m_Name(name), m_Stopped(false) {\n			m_StartTimepoint = std::chrono::high_resolution_clock::now();\n		}\n		void Stop() {\n			auto endTimepoint = std::chrono::high_resolution_clock::now();\n\n			long long start = std::chrono::time_point_cast<std::chrono::milliseconds>(m_StartTimepoint).time_since_epoch().count();\n			long long end = std::chrono::time_point_cast<std::chrono::milliseconds>(endTimepoint).time_since_epoch().count();\n\n			std::cout << m_Name << \":\" << (end - start) << \"ms\\n\";\n\n			m_Stopped = true;\n		}\n		~Timer() {\n			if (!m_Stopped)\n				Stop();\n		}\n\n	private:\n		const char* m_Name;\n		std::chrono::time_point<std::chrono::steady_clock> m_StartTimepoint;\n		bool m_Stopped;\n	};\n	```\n	[可视化计时头文件(生成的json放入edge://tracing/)](https://gist.github.com/TheCherno/31f135eea6ee729ab5f26a6908eb3a5e)\n\n类型双关 用不同的类型去解释同一段内存 `*(float*)&x//x为int`  \n\nunion里的成员会共享内存，分配的大小是按最大成员的sizeof, union中要是有两个结构体，改变其中一个另外一个里面对应的也会改变. 如果是这两个成员是结构体struct{ int a,b}和int k,如果k=2;对应a=2，b不变 union用不同的结构表示同样的数据很好用  \n\n* 虚析构函数  \n	对派生类的会先调用基类构造函数再调用派生类构造函数 析构时先调用派生类析构函数再调用基类析构函数  \n	而多态时(用基类指针来引用派生类对象)则只会调用基类的析构函数而不会调用派生类的析构函数造成内存泄漏  \n	此时要用**虚析构函数**告诉编译器还有派生类的析构函数需要调用 基类析构函数前加virtual (不是覆写析构函数)  \n	当需要写一个有子类的类时一定要用虚析构函数  \n\n	定义基类的虚析构并不是增加，而是：基类中只要定义了虚析构(且只能在基类中定义虚析构，子类析构才是虚析构，如果在二级子类中定义虚析构，编译器不认，且virtual失效）  \n	在编译器角度来讲，那么由此基类派生出的所有子类地析构均为对基类的虚析构的重写，当多态发生时，用父类引用，引用子类实例时，此时的虚指针保存的子类虚表的地址，该函数指针数组中的第一元素永远留给虚析构函数指针。所以当delete 父类引用时，即第一个调用子类虚表中的子类重写的虚析构函数此为第一阶段。  \n	然后进入第二阶段：(二阶段纯为内存释放而触发的逐级析构与虚析构无关)而当子类发生析构时，子类内存开始释放，因内存包涵关系，触发父类析构执行，层层向上递进，至到子类所包涵的所有内存释放完成。  \n\n	编译器保证在继承体系中，构造由内到外（内指基类），析构有外到内，子类析构函数结束时，会沿着继承链往上析构  \n\n* C++的强制类型转换  \n	cast 分为 static_cast  dynamic_cast reinterpret_cast const_cast 相比c方便检查  \n	static_cast 用于进行比较“自然”和低风险的转换，如整型和浮点型、字符型之间的互相转换,不能用于指针类型的强制转换`static_cast<double>(n)//n为int型`  \n	reinterpret_cast  用于进行各种不同类型的指针之间强制转换 类型双关  \n	const_cast 仅用于进行去除 const 属性的转换  \n	dynamic_cast 不检查转换安全性，仅运行时检查，如果不能转换，返回null 用于检查一个对象是否为给定类型 存储rtti(运行时内存信息)  \n\n条件与操作断点  \n\n* 预编译头文件  \n	C++ 编译器是单独、分别对每个cpp文件进行预编译（也就是对#include，#define 等进行文本替换），生成编译单元。编译单元是一个自包含文件，C++编译器对编译单元进行编译。考虑，头文件A.h被多个cpp文件（比如A1.cpp，A2.cpp）包含，每个cpp文件都要进行单独编译，其中的A.h部分就会被多次重复的编译，造成效率低。  \n	把A.h以及类似A.h这样的头文件，包含到stdafx.h中（当然也可以是其他文件），在stdafx.cpp中包含stdafx.h，打开stdafx.cpp文件的属性对话框，将属性对话框中的\"预编译头\"设置为 “/Yc”即创建预编译头。对于原先包含A.h的cpp文件，删除#include \"A.h\"，改成包含stdafx.h，同时打开这些cpp文件（A1.cpp，A2.cpp）的属性对话框(也可打开整个项目的属性)，将属性对话框中的  \"预编译头\" 设置为 \"/Yu\"即使用预编译头。这样的话，下次编译A1.cpp，A2.cpp的时候，对于A.h头文件中的那部分，就不需要编译了，节省时间。  \n	工程对预先编译的代码进行编译，会生成一个pch文件（precompiled header），该文件包含了编译的结果。注意，可以对任何代码生成到pch中，但是生成pch是个很耗时的操作，因此，只对那些稳定的代码(比如标准模板库)创建预编译头文件。  \n\n* 结构化绑定 C++17  \n	结构化绑定允许声明多个变量，可以使用数组,结构体 ,pair等中的元素来初始化  \n	返回多个值可以用元组来实现替代用结构体了  \n	```C++\n	std::tuple<std::string, int> CreatPerson() {\n		return { \"Cherno\",19 };\n	}\n	int main() {\n		auto[name, age] = CreatPerson();\n	}\n	```\n\n* 处理OPTIONAL数据 C++17  \n	`#include <optional>`  \n	`std::optional<type> function(param){statement; return type;}//type返回值`  \n	`auto result = function(param);`  \n	result.has_value()或直接通过if (result)判断数据是否存在  \n	通过result.value()获取数据,或`type& res = *result;`  \n	result.value_or(xxx)其中xxx作为默认值，如果存在数据返回数据，不存在返回xxx  \n	使用场景—目标值可能存在也可能不存在，比如读取文件并返回内容，可能读取成功有数据，读取成功无数据，读取不成功。  \n\n* 单一变量存放多种类型的数据variant C++17  \n	`#include <variant>`  \n	`std::variant<type1, type2> data;`  \n	`data = type1(xxx)`  \n	`data.index()`打印第几个类型可以看出是什么类型  \n	`std::get<type>(data)`  \n	`auto value = std::get_if(type)(&data)`如果为type则返回指向其地址的指针否则返回空指针  \n	类似于union，type1与type2表示存储的数据类型。类型安全 所占空间为存储的数据的总和  \n	存储任意类型的数据any 不用确定具体类型的variant  \n\n* 多线程并发基础 [参考](https://zhuanlan.zhihu.com/p/194198073)  \n	把一个任务拆分为多个子任务，然后交由不同线程处理不同子任务,使得这多个子任务同时执行  \n	`#include<thread>`  \n	`std::thread th1(proc1);`创建了一个名为th1的线程，并且线程th1开始执行  \n	当线程启动后，一定要在和线程相关联的std::thread对象销毁前，对线程运用join()或者detach()方法。作用为等待调用线程运行结束后当前线程再继续运行.join()与detach()都是std::thread类的成员函数，是两种线程阻塞方法，两者的区别是是否等待子线程执行结束。都只能调用一次  \n	互斥量(锁)  \n	共享数据同一时间只能给一个人用 解决数据共享过程中可能存在的访问冲突 开始使用时lock则其他线程只能等待lock 使用完后unlock  \n	死锁 多个线程争夺共享资源导致每个线程都不能取得自己所需的全部资源，程序无法向下执行  \n	在互斥量锁定到互斥量解锁之间的代码叫做临界区 需要互斥访问共享资源的那段代码称为临界区  \n	互斥锁 互斥量mutex就是互斥锁，加锁的资源支持互斥访问  \n	读写锁  \n	shared_mutex读写锁把对共享资源的访问者划分成读者和写者，多个读线程能同时读取共享资源，但只有一个写线程能同时读取共享资源  \n	```C++\n	shared_mutex s_m;\n	std::string book;\n	void read()\n	{\n		s_m.lock_shared();\n		cout << book;\n		s_m.unlock_shared();\n	}\n	void write()\n	{\n		s_m.lock();\n		book = \"new context\";\n		s_m.unlock();\n	}\n	```\n	互斥锁流程  \n	`#include<mutex>`  \n	`std::mutex m;//实例化m对象，不要理解为定义变量`  \n	进入临界区之前对互斥量加锁m.lock();，退出临界区时对互斥量解锁m.unlock()  \n	用`std::lock_guard<mutex> g1(m);`lock_guard传入一个参数时，该参数为互斥量，此时调用了lock_guard的构造函数，申请锁定m 可替换lock与unlock 类似智能指针 退出作用域时析构即自动unlock  \n	异步线程  \n	`#include<future>`  \n	std::async是函数模板，用来启动一个异步任务，返回一个std::future类模板对象，future对象起到了占位的作用 就是说该变量现在无值，但将来会有值 调用std::future对象的get()成员函数时，主线程会被阻塞直到异步线程执行结束，并把返回结果传递给std::future，即通过FutureObject.get()获取函数返回值 之后才不再阻塞  \n	```C++\n	#include <iostream>\n	#include <thread>\n	#include <mutex>\n	#include<future>\n	#include<Windows.h>\n	using namespace std;\n	double t1(const double a, const double b)\n	{\n		double c = a + b;\n		Sleep(3000);//假设t1函数是个复杂的计算过程，需要消耗3秒\n		return c;\n	}\n	int main() \n	{\n		double a = 2.3;\n		double b = 6.7;\n		future<double> fu = async(t1, a, b);//创建异步线程线程，并将线程的执行结果用fu占位；\n		cout << \"计算结果：\" << fu.get() << endl;//阻塞主线程，直至异步线程return\n		return 0;\n	}\n	```\n	std::shard_future 也是占位 但std::future的get()成员函数是转移数据所有权;std::shared_future的get()成员函数是复制数据 future对象的get()只能调用一次 无法实现多个线程等待同一个异步线程，一旦其中一个线程获取了异步线程的返回值，其他线程就无法再次获取。 std::shared_future对象的get()可以调用多次；可以实现多个线程等待同一个异步线程，每个线程都可以获取异步线程的返回值。  \n	线程池  \n	程序启动后，预先创建一定数量的线程放入空闲队列中，这些线程都是处于阻塞状态 接收到任务后，任务被挂在任务队列，线程池选择一个空闲线程来执行此任务。任务执行完毕后，不销毁线程，线程继续保持在池中等待下一次的任务。  \n	std::thread 创建线程时需要传递函数名和函数的参数一并传入作为参数  \n	传入参数为基本数据类型(int，char,string等)时，会拷贝一份给创建的线程  \n	传入参数为指针时，会浅拷贝一份给创建的线程，(只会拷贝对象的指针)  \n	传入的参数为类对象时，会拷贝一份给创建的线程。会调用类对象的拷贝构造函数  \n	传入的参数为引用时，必须用`ref(实参)`(而不是&)传递给形参，否则编译不通过，此时不存在“拷贝”行为。引用只是变量的别名，该对象始终只有一份  \n\n* 单例  \n	C++中的单例只是一种组织全局变量和静态函数的方式 静态函数不一定对这些变量有作用 不能在外部被实例化(构造函数在private中) 和命名空间作用类似  \n	```C++\n	class Singleton{\n	public:\n		Singleton(const Singleton&) = delete;//防止复制\n		static Singleton& Get() {\n			static Singleton instance;\n			return instance;\n			//return s_Instance;\n		}\n		int Function() { return m_Num; }\n		//static int Function(){return Get().IFunc();}这样可直接调用Singleton::Function()而不用加Get()\n	private:\n		Singleton() {}\n		//static Singleton s_Instance;\n\n		//int IFunc(){return m_Num;}\n		int m_Num = 0;\n	};\n	//Singleton Singleton::s_Instance;\n	```\n\n在release模式 c++标准库中的std::string在小于等于15个字符的时候不会导致堆分配 只分配一小块基于栈的缓冲区  \n\n跟踪内存分配  \n```C++\n#include<iostream>\n#include<memory>\nstruct AllocationMetrics {\n	uint32_t TotalAllocated = 0;\n	uint32_t TotalFreed = 0;\n	uint32_t CurrentUsage() { return TotalAllocated - TotalFreed; }\n};\nstatic AllocationMetrics s_AllocationMetrics;\nvoid* operator new(size_t size) {//关键就在重写new和delete 简单的直接在重写的函数中打印size 还可打断点看call stack\n	s_AllocationMetrics.TotalAllocated += size;\n	return malloc(size);\n}\nvoid operator delete(void* memory, size_t size) {\n	s_AllocationMetrics.TotalFreed += size;\n	free(memory);\n}\nstatic void PrintMemoryUsage() {//在main中调用即可查看共用了多少内存\n	std::cout << \"Memory Usage: \" << s_AllocationMetrics.CurrentUsage() << \" bytes\\n\";\n}\n```\n\n* 移动语义 [参考](https://www.cnblogs.com/zhangyi1357/p/16018810.html)  \n	左值时有具体存储空间的变量 右值是临时值 左值引用`std::string& str`只能接受左值 加上const`const std::string& str`则也能接受右值 右值引用`std::string&& str`只能接受右值   \n	左值有地址和值，可以出现在赋值运算符左边或者右边 右值是数值字符串那些 也可以出现在赋值的左边，右值也有地址，只不过访问不到 如a+1这种右值只是将结果存储在一个临时对象中赋值完则析构  \n	左值对应于一个实实在在的内存位置，右值只是临时的对象，它的内存对程序来说只能读不能写  \n\n	移动语义  \n	很多时候我们只是单纯创建一些右值，然后赋给某个对象用作构造函数。这时候会出现的情况是，我们首先需要在main函数里创建这个右值对象，然后复制给这个对象相应的成员变量。如果我们可以直接把这个右值变量移动到这个成员变量而不需要做一个额外的复制行为，程序性能就这样提高了。\n	移动构造函数  \n	在赋值时不调用被复制的类的赋值构造函数,而是直接移动  \n	将复制其它类的类的原有的构造函数的参数改为右值引用  \n	```C++\n		// Entity(const String& name)\n		//     : m_Name(name) {}\n		Entity(String&& name)\n			: m_Name(name) {}\n	```\n	但仍调用了被复制的类的赋值构造函数,实际上接受右值的函数在参数传进来后其右值属性就退化了，所以给m_Name的参数仍然是左值，还是会调用复制构造函数。解决的办法是将name转型  \n	```C++\n	Entity(String&& name)\n		:m_Name((String&&)name) {}\n	//或直接用库函数\n	Entity(String&& name)\n		:m_Name(std::move(name)) {}\n	```\n	移动赋值运算符  \n	将一个已经存在的对象移动给另一个已经存在的对象 移动赋值运算符重载  \n	```C++\n		String& operator=(String&& other) {\n			printf(\"Moved\\n\");\n			if (this != &other) {//移动赋值相当于把别的对象的资源都偷走，不需要移动到自己\n				delete[] m_Data;\n	\n				m_Size = other.m_Size;\n				m_Data = other.m_Data;\n	\n				other.m_Data = nullptr;//原来自己的资源一定要释放，否则指向自己原来内容内存的指针没了造成内存泄露\n				other.m_Size = 0;\n			}\n			return *this;\n		}\n	//使用时 str1 = std::move(str2);\n	```\n',NULL,2,'http://s0srvv6dm.hn-bkt.clouddn.com/2023/09/13/3ff4377aa694489fa69bb5f0b43f339b.jpg','1','0',9,'0',1,'2023-09-13 12:49:34',1,'2023-09-13 12:49:34',0),(2,'Git','# Git\n\n## 基本\n(file为具体文件名)\ngit add file将工作区文件存入暂存区  \ngit commit -m \"\" 将暂存区文件提交至分支并加注释  \ngit status 掌握仓库当前的状态 看修改和增加的状况  \ngit diff file 查看具体修改  \ngit log 查看提交的历史日志 可以看到commit id  \nHEAD指向当前的版本 当前分支  \ngit reset --hard HEAD^ 回到上一版本  \ngit reset --hard (commit id 前几位) 回到对应的版本  \ngit reflog 查看命令历史 可以确定版本的id  \ncat file 查看文件内容  \n**Git管理的是修改而不是文件**  \ngit diff HEAD -- file 查看工作区和版本库里面最新版本的区别  \nrm file 就是在工作区删文件  \ngit rm file 就是删文件，并且把删文件的修改提交到暂存区 相当于rm删文件后，git add 提交 要撤回和上述相同  \n## 改错要撤回\n\n1. 改乱了工作区某个文件的内容，想直接丢弃工作区的修改时，git restore file 回到最近一次git commit或git add时的状态  \n2. 不但改乱了工作区某个文件的内容，还添加到了暂存区时(add)，第一步git restore --staged file，把暂存区的修改撤销掉，重新放回工作区,就回到1，第二步按1操作。  \n3. 已经提交了不合适的修改到版本库时(commit)，想要撤销本次提交，版本回退git reset --hard HEAD^ 工作区，暂存区，版本库都是上次的内容  \n\n## 远程仓库github\n\n* 关联远程库:  \n在GitHub上新建仓库 git remote add origin git@github.com:vzerzz/gitest.git 把本地仓库和远程仓库关联 远程库的名字就是origin  \ngit push -u origin master 把当前分支master推送到远程 第一次加-u直接把本地master和远程master关联  \n之后本地提交后可直接git push origin master 推送分支git push origin dev  \ngit remote -v 查看远程库信息 显示了可以抓取和推送的origin的地址。如果没有推送权限，就看不到push的地址。  \ngit remote rm origin 解除了本地和远程的绑定关系 远程库未删除(在GitHub删)  \n好处:本地提交可无网络 有网了直接push到远程库  \n* 克隆远程库:  \ngit clone git@github.com:vzerzz/gitest.git  \n库内容会在gitest文件夹中 此时库已和远程库关联  \n* 参与别人项目:  \nFork 在自己的账号下克隆了一个别人的仓库  \n从自己的账号下clone仓库(一定要自己的 别人的没有权限推送修改)  \n修改完后推送给自己的仓库 希望别人能接受你的修改，那就在GitHub上发起一个pull request  \n\n## 分支\n\n分支可视作指针 master是指向提交 HEAD指向当前分支  \ngit checkout -b dev 创建并切换到dev分支 git branch dev +git checkout dev  \ngit branch 查看当前分支  \ngit log --graph --pretty=oneline --abbrev-commit 查看分支历史  \n\n1. 在dev上提交 切换回master后看不见修改  \ngit merge dev 合并dev分支到当前分支(快速合并) 可以看见修改  \n![0.png](http://s0srvv6dm.hn-bkt.clouddn.com/2023/09/14/4146995f4bd74e4991456b945800fe37.png)\ngit branch -d dev 删除dev分支  \n\n2. 当master分支和dev分支各自都分别有新的提交 则无法快速合并 只能试图把各自的修改合并起来，但这种合并就可能会有冲突 只能修改后再合并  \n![1.png](http://s0srvv6dm.hn-bkt.clouddn.com/2023/09/14/4b425938d23f445286f8301e255b066b.png) \n\n3. 禁用Fast forward Git就会在merge时生成一个新的commit 不删除分支  \ngit merge --no-ff -m \"merge with no-ff\" dev 加上-m参数，把commit描述写进去 合并后的历史有分支，能看出来曾经做过合并，而fast forward合并就看不出来曾经做过合并  \n![2.png](http://s0srvv6dm.hn-bkt.clouddn.com/2023/09/14/3b52967f6b0a468ca22ad87e6c51994e.png)\n\n* 分支策略:  \nmaster分支仅用来发布新版本，不能在上面干活 每个人都在dev分支上干活，每个人都有自己的分支，时不时地往dev分支上合并就可以  \n当dev分支工作没有完成时，去修别的分支的bug 先把git stash一下，工作现场“储藏”起来(此时status是干净的)然后换分支去修复bug，换回来后再git stash pop，恢复工作现场的同时把stash内容也删了(或git stash apply恢复 git stash drop删除)  \n在master分支上修复的bug，想要合并到当前dev分支，可以用git cherry-pick commit id(修复bug操作的commit id)，把bug提交的修改“复制”到当前分支 相当于把修改又提交了一次  \n要丢弃一个没有被合并过的分支，可以通过git branch -D dev强行删除  \nmaster分支是主分支 dev分支开发分支 bug分支修复bug feature分支实现新功能  \n\n* 多人开发:  \ngit clone下来只是一个本地的master  \n再git checkout -b dev origin/dev创建本地dev上修改 提交到本地master后  \n再远程提交到origin的dev分支 git push origin dev  \n如果另一个人早在你之前在远程提交更新了dev 那么可能会有冲突 此时git pull把最新的提交从origin/dev抓下来，然后，在本地合并，解决冲突，再推送  \n如果失败则git branch --set-upstream-to=origin/dev dev 指定本地dev分支与远程origin/dev分支的链接 再pull 之后手动解决合并冲突之类的push即可  \ngit pull 后 git rebase 把你的提交“放置”在远程拉取的提交之后 把分叉的提交历史“整理”成一条直线，看上去更直观  \n\n## 标签\n\n标签不能移动 相当于一个commit的引用别称之类  \ngit tag v1.0 用于新建一个标签，默认为HEAD，也可以指定一个commit id  \ngit tag 查看所有标签 git show v0.9 查看标签信息  \n标签总是和某个commit挂钩。如果这个commit既出现在master分支，又出现在dev分支，那么在这两个分支上都可以看到这个标签  \ngit tag -d v0.1 删除标签 创建的标签都只存储在本地，不会自动推送到远程  \n推送某个标签到远程 git push origin tagname  \n一次性推送全部尚未推送到远程的本地标签 git push origin --tags\n删除远程标签先删本地 git tag -d v0.9 再删远程 git push origin :refs/tags/v0.9  \n\n## .gitignore\n在Git工作区的根目录下创建.gitignore文件，把要忽略的文件名填进去，Git就会自动忽略这些文件  \n[.gitignore文件模板](https://github.com/github/gitignore)  \n```\n*.exe # 排除所有.exe结尾的文件\n.* # 排除所有.开头的文件\n!.gitignore # 不排除.gitignore\n```\ngit add -f filename 强制添加到Git  \n\n## 指令\n![Git command.png](http://s0srvv6dm.hn-bkt.clouddn.com/2023/09/14/586a01e586d44cc389956dd4826bef9f.png) \n\n[参考教程](https://www.liaoxuefeng.com/wiki/896043488029600)  \n[练习网站](https://learngitbranching.js.org/)',NULL,4,'http://s0srvv6dm.hn-bkt.clouddn.com/2023/09/14/67356020068744dc8d2a66a58142af22.jpg','1','0',1,'0',1,'2023-09-14 05:48:46',1,'2023-09-14 05:48:46',0);
/*!40000 ALTER TABLE `vz_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vz_article_tag`
--

DROP TABLE IF EXISTS `vz_article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vz_article_tag` (
  `article_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `tag_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '标签id',
  PRIMARY KEY (`article_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='文章标签关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vz_article_tag`
--

LOCK TABLES `vz_article_tag` WRITE;
/*!40000 ALTER TABLE `vz_article_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `vz_article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vz_category`
--

DROP TABLE IF EXISTS `vz_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vz_category` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '分类名',
  `pid` bigint(200) DEFAULT '-1' COMMENT '父分类id，如果没有父分类为-1',
  `description` varchar(512) DEFAULT NULL COMMENT '描述',
  `status` char(1) DEFAULT '0' COMMENT '状态0:正常,1禁用',
  `create_by` bigint(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(200) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int(11) DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vz_category`
--

LOCK TABLES `vz_category` WRITE;
/*!40000 ALTER TABLE `vz_category` DISABLE KEYS */;
INSERT INTO `vz_category` VALUES (1,'Java',-1,NULL,'0',1,'2023-09-13 12:44:31',1,'2023-09-13 12:44:31',0),(2,'C++',-1,NULL,'0',1,'2023-09-13 12:44:37',1,'2023-09-13 12:44:37',0),(3,'Graphics',-1,NULL,'0',1,'2023-09-13 12:44:45',1,'2023-09-13 12:44:45',0),(4,'Tools',-1,NULL,'0',1,'2023-09-13 12:44:58',1,'2023-09-13 12:44:58',0),(5,'Unity',-1,NULL,'0',1,'2023-09-13 12:47:42',1,'2023-09-13 12:47:42',0);
/*!40000 ALTER TABLE `vz_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vz_comment`
--

DROP TABLE IF EXISTS `vz_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vz_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` char(1) DEFAULT '0' COMMENT '评论类型（0代表文章评论，1代表友链评论）',
  `article_id` bigint(20) DEFAULT NULL COMMENT '文章id',
  `root_id` bigint(20) DEFAULT '-1' COMMENT '根评论id',
  `content` varchar(512) DEFAULT NULL COMMENT '评论内容',
  `to_comment_user_id` bigint(20) DEFAULT '-1' COMMENT '所回复的目标评论的userid',
  `to_comment_id` bigint(20) DEFAULT '-1' COMMENT '回复目标评论id',
  `create_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vz_comment`
--

LOCK TABLES `vz_comment` WRITE;
/*!40000 ALTER TABLE `vz_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `vz_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vz_link`
--

DROP TABLE IF EXISTS `vz_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vz_link` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `logo` varchar(256) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL COMMENT '网站地址',
  `status` char(1) DEFAULT '2' COMMENT '审核状态 (0代表审核通过，1代表审核未通过，2代表未审核)',
  `create_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友链';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vz_link`
--

LOCK TABLES `vz_link` WRITE;
/*!40000 ALTER TABLE `vz_link` DISABLE KEYS */;
INSERT INTO `vz_link` VALUES (1,'旧博客',NULL,NULL,'https://vzerzz.github.io/','0',1,'2023-09-13 12:46:14',1,'2023-09-14 05:52:24',0);
/*!40000 ALTER TABLE `vz_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vz_tag`
--

DROP TABLE IF EXISTS `vz_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vz_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL COMMENT '标签名',
  `create_by` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` bigint(20) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `del_flag` int(1) DEFAULT '0' COMMENT '删除标志（0代表未删除，1代表已删除）',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标签';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vz_tag`
--

LOCK TABLES `vz_tag` WRITE;
/*!40000 ALTER TABLE `vz_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `vz_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-15 16:55:49
