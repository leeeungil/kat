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
  `delete_flag` INT(2),
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
  `delete_flag` INT(2),
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
  `delete_flag` INT(2),
  PRIMARY KEY (`notice_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

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
  `delete_flag` INT(2),
  PRIMARY KEY (`CONTINENT_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE MENU_COUNTRY;
CREATE TABLE MENU_COUNTRY (
  `COUNTRY_NO` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY` varchar(50) NOT NULL,
  `CONTINET_NO` INT(11) NOT NULL,
  `delete_flag` INT(2),
  PRIMARY KEY (`COUNTRY_NO`),
  FOREIGN KEY(`CONTINET_NO`) REFERENCES MENU_CONTINENT(`CONTINENT_NO`) 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE MENU_CITY;
CREATE TABLE MENU_CITY (
  `CITY_NO` int(11) NOT NULL AUTO_INCREMENT,
  `CITY` varchar(50) NOT NULL,
  `COUNTRY_NO` INT(11) NOT NULL,
  `delete_flag` INT(2),
  PRIMARY KEY (`CITY_NO`),
  FOREIGN KEY(`COUNTRY_NO`) REFERENCES MENU_COUNTRY(`COUNTRY_NO`) 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
















/*
 * 0. 공지사항 NOTICE
 * 
 * 1. 상품(투어) PRODUCT 
 * 2. 상품(티켓) PRODUCT 
 * 3. 상품(셔틀 등) PRODUCT 
 * 
 * 11. 후기(투어) PRODUCT_REVIEW
 * 12. 후기(티켓) PRODUCT_REVIEW
 * 13. 후기(셔틀 등) PRODUCT_REVIEW
 * 
 * 20. 숙박  %%예정
 * */

DROP TABLE PRODUCT;
CREATE TABLE PRODUCT (
  `product_no` int(20) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(200) NOT NULL,
  `product_type` int(20) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `cost` int(20) NOT NULL,
  `continent` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `business_number` int(11) NOT NULL,
  `product_main_photo` varchar(200) NOT NULL,
  `sell_start` varchar(100) NOT NULL,
  `sell_end` varchar(100) DEFAULT NULL,
  `delete_flag` INT(2) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE PRODUCT_CONTENT;
CREATE TABLE PRODUCT_CONTENT (
  `product_content_no` int(20) NOT NULL AUTO_INCREMENT,
  `product_no` int(20) NOT NULL,
  `user_profile` varchar(2000) DEFAULT NULL,
  `product_content` varchar(4000) DEFAULT NULL,
  `product_info` varchar(2000) DEFAULT NULL,
  `delete_flag` INT(2),
  PRIMARY KEY (`product_content_no`),
  FOREIGN KEY(`product_no`) REFERENCES PRODUCT(`product_no`) 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE PRODUCT_PHOTO;
CREATE TABLE PRODUCT_PHOTO (
  `product_photo_no` int(20) NOT NULL AUTO_INCREMENT,
  `product_photo1` varchar(100) DEFAULT NULL,
  `product_photo2` varchar(100) DEFAULT NULL,
  `product_photo3` varchar(100) DEFAULT NULL,
  `product_photo4` varchar(100) DEFAULT NULL,
  `product_photo5` varchar(100) DEFAULT NULL,
  `product_photo6` varchar(100) DEFAULT NULL,
  `product_photo7` varchar(100) DEFAULT NULL,
  `product_photo8` varchar(100) DEFAULT NULL,
  `product_photo9` varchar(100) DEFAULT NULL,
  `product_photo10` varchar(100) DEFAULT NULL,
  `product_content_no` int(20) NOT NULL,
  `delete_flag` INT(2),
  PRIMARY KEY (`product_photo_no`),
  FOREIGN KEY(`product_content_no`) REFERENCES PRODUCT_CONTENT(`product_content_no`) 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE PRODUCT_COURSE;
CREATE TABLE PRODUCT_COURSE (
  `product_no` int(20) NOT NULL,
  `course_no` varchar(400) NOT NULL,
  `course` varchar(400) DEFAULT NULL,
  `course_photo_dir` varchar(30) DEFAULT NULL,
  `delete_flag` INT(2),
  FOREIGN KEY(`product_no`) REFERENCES PRODUCT(`product_no`) 
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
  `delete_flag` INT(2),
  PRIMARY KEY (`review_no`),
  FOREIGN KEY(`product_no`) REFERENCES PRODUCT(`product_no`) 
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


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