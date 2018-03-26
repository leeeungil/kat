DROP TABLE MASTER;
CREATE TABLE MASTER (
  `master_no` int(11) NOT NULL AUTO_INCREMENT,
  `master_id` varchar(45) NOT NULL,
  `master_pw` varchar(45) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`master_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 문의하기 테이블 */
DROP TABLE ASK_TO;
CREATE TABLE ASK_TO (
  `ask_no` int(11) NOT NULL AUTO_INCREMENT,
  `ask_title` varchar(200) DEFAULT NULL,
  `ask_content` varchar(2000) DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `writer_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `ask_reply` varchar(300) DEFAULT NULL,
  `create_date` datetime NOT NULL,
  `DELETE_FLAG` INT(2),
  PRIMARY KEY (`ask_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 예약하기 테이블 */
DROP TABLE RESERVATION;
CREATE TABLE RESERVATION (
  `reserv_no` int(11) NOT NULL AUTO_INCREMENT,
  `reserv_id` varchar(100) NOT NULL,
  `people_number` varchar(50) NOT NULL,
  `reserv_time` datetime NOT NULL,
  `reserv_phone` varchar(45) NOT NULL,
  `DELETE_FLAG` INT(2),
  PRIMARY KEY (`reserv_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 홈페이지 공지사항 테이블 */
DROP TABLE NOTICE;
CREATE TABLE NOTICE (
  `notice_no` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(200) NOT NULL,
  `notice_content` varchar(2000) NOT NULL,
  `master_no` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  `DELETE_FLAG` INT(2),
  PRIMARY KEY (`notice_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE PRODUCT;
CREATE TABLE PRODUCT (
  `product_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `product_type` varchar(50) NOT NULL,
  `cost` int(11) NOT NULL,
  `business_number` int(11) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `continent` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `DELETE_FLAG` INT(2),
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE PRODUCT_REVIEW;
CREATE TABLE PRODUCT_REVIEW (
  `review_no` int(11) NOT NULL AUTO_INCREMENT,
  `review_title` varchar(200) DEFAULT NULL,
  `review_content` varchar(2000) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `writer_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `product_no` int(11) DEFAULT NULL,
  `review_point` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `DELETE_FLAG` INT(2),
  PRIMARY KEY (`review_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


/*
 * 1. 공지사항 NOTICE
 * 2. 상품(투어, 티켓, 셔틀 등) PRODUCT 
 * 3. 후기(투어, 티켓, 셔틀 등) PRODUCT_REVIEW
 * 4. 숙박  %%예정
 * */
DROP TABLE PHOTO;
CREATE TABLE PHOTO (
  `photo_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_type` int(11) NOT NULL,
  `board_no` int(11) NOT NULL,
  `file_dir` varchar(200) NOT NULL,
  `apply_user_id` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`photo_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE BUSINESS;
CREATE TABLE BUSINESS (
  `business_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `zip_code` varchar(100) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `business_phone` varchar(100) DEFAULT NULL,
  `business_number` varchar(100) DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`business_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE MEMBER;
CREATE TABLE MEMBER (
  `member_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/* 대륙 - 국가 - 도시 */
DROP TABLE MENU_CONTINENT;
CREATE TABLE MENU_CONTINENT (
  `CONTINENT_NO` int(11) NOT NULL AUTO_INCREMENT,
  `CONTINENT` varchar(50) NOT NULL,
  `DELETE_FLAG` INT(2),
  PRIMARY KEY (`CONTINENT_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE MENU_COUNTRY;
CREATE TABLE MENU_COUNTRY (
  `COUNTRY_NO` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY` varchar(50) NOT NULL,
  `CONTINET_NO` INT(11) NOT NULL,
  `DELETE_FLAG` INT(2),
  PRIMARY KEY (`COUNTRY_NO`),
  FOREIGN KEY(`CONTINET_NO`) REFERENCES MENU_CONTINENT(`CONTINENT_NO`) 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE MENU_CITY;
CREATE TABLE MENU_CITY (
  `CITY_NO` int(11) NOT NULL AUTO_INCREMENT,
  `CITY` varchar(50) NOT NULL,
  `COUNTRY_NO` INT(11) NOT NULL,
  `DELETE_FLAG` INT(2),
  PRIMARY KEY (`CITY_NO`),
  FOREIGN KEY(`COUNTRY_NO`) REFERENCES MENU_COUNTRY(`COUNTRY_NO`) 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;