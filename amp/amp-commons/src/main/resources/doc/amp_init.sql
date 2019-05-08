/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.24-log : Database - amp_db
*********************************************************************
*/
drop database if exists amp_db;
CREATE DATABASE amp_db DEFAULT CHARACTER SET utf8mb4;
USE amp_db;

DROP TABLE IF EXISTS sys_admin;
CREATE TABLE sys_admin (
  admin_id int(10) NOT NULL AUTO_INCREMENT COMMENT '后台管理主键',
  admin_no varchar(255) NOT NULL COMMENT '管理人员编号',
  admin_name varchar(255) NOT NULL COMMENT '管理人员姓名',
  password varchar(500) NOT NULL COMMENT '登录密码',
  role_id int(10) NOT NULL COMMENT '管理员角色',
  create_admin int(10) NOT NULL COMMENT '添加人',
  create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  update_admin int(10) NOT NULL COMMENT '修改人',
  update_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (admin_id)
) ENGINE=InnoDB CHARSET=utf8mb4 comment='管理员信息表';
insert into sys_admin(admin_no, admin_name, password, role_id, create_admin, update_admin) values ('AD000001', '王大锤', '21232f297a57a5a743894a0e4a801fc3', 1, 1, 1);


DROP TABLE IF EXISTS sys_app_info;
CREATE TABLE sys_app_info (
  app_id int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  app_name varchar(255) NOT NULL COMMENT '名称',
  dev_id int(10) NOT NULL COMMENT '开发人',
  category_id int(10) NOT NULL COMMENT '类别',
  logo varchar(500) NOT NULL COMMENT 'app图标',
  app_info varchar(500) NOT NULL COMMENT '简介',
  platform_id int(10) NOT NULL COMMENT '使用平台',
  examine int(10) NOT NULL COMMENT '审核状态',
  status int(10) DEFAULT NULL COMMENT 'app状态',
  checker int(10) NOT NULL COMMENT '审核人',
  create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (app_id)
) ENGINE=InnoDB CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_category;
CREATE TABLE sys_category (
  category_id int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  category_code varchar(255) NOT NULL COMMENT '编号',
  category_name varchar(255) NOT NULL COMMENT '类别名称',
  create_admin int(10) NOT NULL COMMENT '创建人',
  create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_admin int(10) NOT NULL COMMENT '修改人',
  update_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (category_id)
) ENGINE=InnoDB CHARSET=utf8mb4;

insert into sys_category(category_code, category_name, create_admin, update_admin) values ('sale', '购物比价', 1, 1 );
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('entertainment', '影音娱乐', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('tools', '实用工具', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('convenience', '便捷生活', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('tour', '旅游住宿', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('photo', '拍摄美化', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('news', '新闻阅读', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('intercourse', '社交通讯', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('finance', '金融理财', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('education', '教育', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('navigation', '出行导航', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('food', '美食', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('vehicle', '汽车', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('business', '商务', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('children', '儿童', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('health', '运动健康', 1, 1);
insert into sys_category(category_code, category_name, create_admin, update_admin) values ('theme', '主题个性', 1, 1);


DROP TABLE IF EXISTS sys_dev;
CREATE TABLE sys_dev (
  dev_id int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  dev_no varchar(255) NOT NULL COMMENT '编号',
  dev_name varchar(255) NOT NULL COMMENT '姓名',
  password varchar(500) NOT NULL COMMENT '登录密码',
  cellphone varchar(100) NOT NULL COMMENT '联系电话',
  email varchar(500) NOT NULL COMMENT '电子邮件',
  dev_info varchar(500) NOT NULL COMMENT '开发人员简介',
  create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  update_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (dev_id)
) ENGINE=InnoDB CHARSET=utf8mb4;


DROP TABLE IF EXISTS sys_dictionary;
CREATE TABLE sys_dictionary (
  dictionary_id int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  parent_id int(10) NOT NULL COMMENT '上级字典',
  dictionary_name varchar(255) NOT NULL COMMENT '字典名称',
  create_admin int(10) NOT NULL COMMENT '创建人',
  create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_admin int(10) NOT NULL COMMENT '更信任',
  update_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (dictionary_id)
) ENGINE=InnoDB CHARSET=utf8mb4;
insert into sys_dictionary(parent_id, dictionary_name, create_admin, update_admin) values(0, 'APP状态', 1, 1);
insert into sys_dictionary(parent_id, dictionary_name, create_admin, update_admin) values(0, '所属平台', 1, 1);
insert into sys_dictionary(parent_id, dictionary_name, create_admin, update_admin) values(0, '是否上架', 1, 1);
insert into sys_dictionary(parent_id, dictionary_name, create_admin, update_admin) values(1, '待审核', 1, 1);
insert into sys_dictionary(parent_id, dictionary_name, create_admin, update_admin) values(1, '审核通过', 1, 1);
insert into sys_dictionary(parent_id, dictionary_name, create_admin, update_admin) values(1, '审核未通过', 1, 1);
insert into sys_dictionary(parent_id, dictionary_name, create_admin, update_admin) values(2, '手机', 1, 1);
insert into sys_dictionary(parent_id, dictionary_name, create_admin, update_admin) values(2, '平板', 1, 1);
insert into sys_dictionary(parent_id, dictionary_name, create_admin, update_admin) values(2, '通用', 1, 1);
insert into sys_dictionary(parent_id, dictionary_name, create_admin, update_admin) values(3, '已上架', 1, 1);
insert into sys_dictionary(parent_id, dictionary_name, create_admin, update_admin) values(3, '已下架', 1, 1);


DROP TABLE IF EXISTS sys_role;
CREATE TABLE sys_role (
  role_id int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  role_name varchar(255) NOT NULL COMMENT '角色名称',
  create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (role_id)
) ENGINE=InnoDB CHARSET=utf8mb4;
insert into sys_role(role_name) values ('管理员');
insert into sys_role(role_name) values ('审核员');


DROP TABLE IF EXISTS sys_version;
CREATE TABLE sys_version (
  version_id int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  app_id int(10) NOT NULL COMMENT '软件信息',
  apk_name varchar(500) NOT NULL COMMENT '开发包名称',
  support_rom varchar(255) NOT NULL COMMENT '硬件支持',
  software_size double(10, 2) NOT NULL COMMENT '软件大小',
  download_link varchar(500) NOT NULL COMMENT '下载地址',
  examine int(10) NOT NULL COMMENT '审核状态',
  status int(10) DEFAULT NULL COMMENT 'app状态',
  checker int(10) NOT NULL COMMENT '审核人',
  create_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (version_id)
) ENGINE=InnoDB CHARSET=utf8mb4;
