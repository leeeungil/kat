DROP TABLE MASTER;
DROP TABLE ASK_TO;
DROP TABLE RESERVATION;
DROP TABLE NOTICE;
DROP TABLE MEMBER;
DROP TABLE MENU_CONTINENT;
DROP TABLE MENU_COUNTRY;
DROP TABLE MENU_CITY;
DROP TABLE BUSINESS;

CREATE TABLE MASTER (
  `master_no` int(11) NOT NULL AUTO_INCREMENT,
  `master_id` varchar(45) NOT NULL,
  `master_pw` varchar(45) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`master_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* 문의하기 테이블 */
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
CREATE TABLE NOTICE (
  `notice_no` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(200) NOT NULL,
  `notice_content` varchar(2000) NOT NULL,
  `master_no` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  `delete_flag` INT(2),
  PRIMARY KEY (`notice_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE MEMBER (
  `member_no` int(11) NOT NULL AUTO_INCREMENT,
  `member_type` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password1` varchar(100) NOT NULL,
  `password2` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email_confirm` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `delete_flag` int(11) NOT NULL,
  PRIMARY KEY (`member_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

CREATE TABLE BUSINESS (
  `business_no` int(11) NOT NULL AUTO_INCREMENT, 
  `member_no` int(11) NOT NULL,
  `business_name` varchar(100) NOT NULL,
  `business_tel` varchar(100) DEFAULT NULL,
  `business_phone` varchar(100) NOT NULL,
  `business_address` varchar(100) NOT NULL,
  `business_number` int(11) DEFAULT NULL,
  `business_photo` varchar(100) NOT NULL,
  `delete_flag` int(11) NOT NULL,
  PRIMARY KEY (`business_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;  

/* 대륙 - 국가 - 도시 */
CREATE TABLE MENU_CONTINENT (
  `CONTINENT_NO` int(11) NOT NULL AUTO_INCREMENT,
  `CONTINENT` varchar(50) NOT NULL,
  `delete_flag` INT(2),
  PRIMARY KEY (`CONTINENT_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE MENU_COUNTRY (
  `COUNTRY_NO` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY` varchar(50) NOT NULL,
  `CONTINET_NO` INT(11) NOT NULL,
  `delete_flag` INT(2),
  PRIMARY KEY (`COUNTRY_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE MENU_CITY (
  `CITY_NO` int(11) NOT NULL AUTO_INCREMENT,
  `CITY` varchar(50) NOT NULL,
  `COUNTRY_NO` INT(11) NOT NULL,
  `delete_flag` INT(2),
  PRIMARY KEY (`CITY_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;









DROP TABLE PRODUCT;
DROP TABLE PRODUCT_SUB;
DROP TABLE PRODUCT_TYPE;
DROP TABLE PRODUCT_CONTENT;
DROP TABLE PRODUCT_PHOTO;
DROP TABLE PRODUCT_COURSE;
DROP TABLE PRODUCT_REVIEW;
DROP TABLE FAVORITE_PRODUCT;

/*
 * 0. 공지사항 NOTICE
 * 
 * 1. 상품(투어) PRODUCT 
 * 2. 상품(셔틀) PRODUCT 
 * 3. 상품(티켓) PRODUCT 
 * 4. 상품(스냅) PRODUCT
 * 
 * 101. 후기(투어) PRODUCT_REVIEW
 * 102. 후기(티켓) PRODUCT_REVIEW
 * 103. 후기(셔틀 등) PRODUCT_REVIEW
 * 
 * 200. 숙박  %%예정
 * */;
CREATE TABLE PRODUCT (
  `product_no` int(20) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(200) NOT NULL,
  `product_type` int(20) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `continent` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `member_no` varchar(100) DEFAULT NULL,
  `user_profile` varchar(2000) DEFAULT NULL,
  `business_number` int(11) NOT NULL,
  `product_main_photo` varchar(200) NOT NULL,
  `use_flag` INT(2) NOT NULL,
  `delete_flag` INT(2) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE PRODUCT_SUB (
  `product_sub_no` int(20) NOT NULL AUTO_INCREMENT,
  `product_no` int(20) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `cost` int(50) NOT NULL,
  `max_people` int(20) NOT NULL,
  `delete_flag` INT(2) NOT NULL,
  PRIMARY KEY (`product_sub_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE PRODUCT_TYPE (
  `product_type` int(20) NOT NULL,
  `product_type_name` varchar(200) NOT NULL,
  `delete_flag` INT(2) NOT NULL,
  PRIMARY KEY (`product_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE PRODUCT_CONTENT (
  `product_content_no` int(20) NOT NULL AUTO_INCREMENT,
  `product_no` int(20) NOT NULL,
  `product_content` varchar(4000) DEFAULT NULL,
  `product_info` varchar(2000) DEFAULT NULL,
  `delete_flag` INT(2),
  PRIMARY KEY (`product_content_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

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
  `product_no` int(20) NOT NULL,
  `delete_flag` INT(2),
  PRIMARY KEY (`product_photo_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE PRODUCT_COURSE (
  `product_no` int(20) NOT NULL,
  `course_no` int(20) NOT NULL AUTO_INCREMENT,
  `course` varchar(4000) DEFAULT NULL,
  `course_photo_dir` varchar(30) DEFAULT NULL,
  `delete_flag` INT(2),
  PRIMARY KEY (`course_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`review_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

CREATE TABLE FAVORITE_PRODUCT (
	`FAVORITE_NO` INT(11) NOT NULL AUTO_INCREMENT,
	`PRODUCT_NO` INT(20) NOT NULL,
	`MEMBER_NO` INT(11) NOT NULL,
	`CREATE_DATE` DATE NOT NULL,
	`DELETE_FLAG` INT(2) NOT NULL,
	PRIMARY KEY (`FAVORITE_NO`)
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




DROP TABLE GO_WITH;
DROP TABLE COMMENT;


/* 동행, 댓글 */
CREATE TABLE `GO_WITH` (
  `go_with_no` int(11) NOT NULL AUTO_INCREMENT,
  `go_with_title` varchar(200) NOT NULL,
  `go_with_content` varchar(2000) NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL,
  `read_count` int(11) DEFAULT NULL,
  `delete_flag` int(2) DEFAULT NULL,
  PRIMARY KEY (`go_with_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/* 댓글 테이블 */
CREATE TABLE COMMENT (
  `cmt_no` int(11) NOT NULL AUTO_INCREMENT, /*댓글번호*/
  `cmt_content` varchar(200) NOT NULL, /*댓글 내용*/
  `cmt_user_id` varchar(45) NOT NULL, /*댓글 작성자*/
  `cmt_password` varchar(45) NOT NULL, /*댓글 비밀번호*/
  `cmt_create_date` datetime NOT NULL, /*댓글 작성일*/
  `cmt_ip` int(11) NOT NULL, /*댓글 등록한 아이피*/
  `cmt_del` int(11) DEFAULT NULL, /*댓글 삭제여부 삭제:1 존재:0*/ 
  `cmt_parent` int(11) NOT NULL, /*부모글*/
  `delete_flag` INT(2),
  PRIMARY KEY (`cmt_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;