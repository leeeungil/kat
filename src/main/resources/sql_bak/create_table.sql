DROP TABLE BOARD;
CREATE TABLE BOARD (
  `board_no` int(11) NOT NULL,
  `board_title` varchar(200) DEFAULT NULL,
  `board_content` varchar(2000) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `user_id` varchar(200) DEFAULT NULL,
  `writer_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `board_reply` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`board_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE FILE;
CREATE TABLE FILE (
  `file_no` int(11) NOT NULL AUTO_INCREMENT,
  `file_seat` int(11) NOT NULL,
  `file_seatphoto` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `seat_status` varchar(50) NOT NULL,
  `reservation_id` varchar(50) NOT NULL,
  `delete_seat` varchar(50) NOT NULL,
  `recenttime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`file_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE MASTER;
CREATE TABLE MASTER (
  `master_no` int(11) NOT NULL AUTO_INCREMENT,
  `master_id` varchar(45) NOT NULL,
  `master_pw` varchar(45) NOT NULL,
  `regdate` datetime NOT NULL,
  `user_id` varchar(200) NOT NULL,
  PRIMARY KEY (`master_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE NOTICE;
CREATE TABLE NOTICE (
  `notice_no` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(200) NOT NULL,
  `notice_content` varchar(2000) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL,
  PRIMARY KEY (`notice_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE RESERVATION;
CREATE TABLE RESERVATION (
  `file_no` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_id` varchar(100) NOT NULL,
  `reservation_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reservation_phone` varchar(45) NOT NULL,
  PRIMARY KEY (`file_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE SHOP_PHOTO;
CREATE TABLE SHOP_PHOTO (
  `photo_no` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `file_shopphoto` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`photo_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE USER_RESERVATION;
CREATE TABLE USER_RESERVATION (
  `shop_id` varchar(45) NOT NULL,
  `file_no` int(11) NOT NULL,
  `file_seat` int(11) NOT NULL,
  `shop_re_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` varchar(45) NOT NULL,
  `shop_name` varchar(45) NOT NULL,
  `shop_phone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


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
	PRIMARY KEY (`COUNTRY_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE MENU_CITY;
CREATE TABLE MENU_CITY (
  `CITY_NO` int(11) NOT NULL AUTO_INCREMENT,
  `CITY` varchar(50) NOT NULL,
  `COUNTRY_NO` INT(11) NOT NULL,
  `DELETE_FLAG` INT(2),
  PRIMARY KEY (`CITY_NO`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE PRODUCT_REVIEW;
CREATE TABLE PRODUCT_REVIEW (
  `review_no` int(11) NOT NULL AUTO_INCREMENT,
  `review_title` varchar(200) DEFAULT NULL,
  `review_content` varchar(2000) NOT NULL,
  `create_date` datetime NOT NULL,
  `user_id` varchar(200) NOT NULL,
  `writer_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `business_number` int(11) DEFAULT NULL,
  `review_point` int(11) NOT NULL,
  PRIMARY KEY (`review_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE product;
CREATE TABLE product (
  `product_no` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(200) NOT NULL,
  `cost` int(11) NOT NULL,
  `catagory` varchar(50) NOT NULL,
  `business_number` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `menu_photo_file` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `continent` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  PRIMARY KEY (`product_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

DROP TABLE BUSINESS;
CREATE TABLE BUSINESS (
  `member_no` varchar(100) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `business_phone` varchar(100) DEFAULT NULL,
  `business_number` varchar(100) DEFAULT NULL,
  `com_delete_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_no`)
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
  `level` varchar(100) DEFAULT NULL,
  `delete_flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_no`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;