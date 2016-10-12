CREATE TABLE `user_info` (
  `USER_ID` varchar(20) NOT NULL,
  `USER_NAME` varchar(10) NOT NULL,
  `USER_EMAIL` varchar(70) DEFAULT NULL,
  `USER_PASSWORD` varchar(20) NOT NULL,
  `USER_PHONE` varchar(11) DEFAULT NULL,
  `USER_CHARACTER` varchar(20) DEFAULT NULL,
  `USER_GROUP` int(1) DEFAULT NULL,
  `USER_AUTHORITY` int(2) DEFAULT '1' COMMENT '1:user <<<< 99: admin',
  `AGREE_YN` int(1) NOT NULL COMMENT '1: yes',
  `USER_PROFILE_IMG_IDX` int(11) DEFAULT NULL,
  `DEL_YN` varchar(1) DEFAULT 'N',
  `REG_DT` datetime NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `save_money` (
  `SAVE_MONEY_IDX` int(11) NOT NULL AUTO_INCREMENT,
  `YEAR` int(2) NOT NULL,
  `MONTH` int(2) NOT NULL,
  `SAVE_MONEY` int(10) NOT NULL COMMENT '수입금액',
  `SAVE_CONTENT` varchar(20) NOT NULL COMMENT '비고',
  `DEL_YN` varchar(1) DEFAULT 'N' COMMENT '삭제유무',
  `REG_DT` datetime NOT NULL COMMENT '등록일자',
  `REG_ID` varchar(20) NOT NULL COMMENT '등록자ID',
  `MOD_DT` datetime NOT NULL COMMENT '수정일자',
  `MOD_ID` varchar(20) NOT NULL COMMENT '수정자ID',
  PRIMARY KEY (`SAVE_MONEY_IDX`,`YEAR`,`MONTH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `payment_status` (
  `PAYMENT_STATUS_IDX` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` varchar(20) NOT NULL,
  `PAYMENT_YN` varchar(20) NOT NULL COMMENT '납부유/무',
  `MEMO` varchar(20) NOT NULL COMMENT '비고',
  `DEL_YN` varchar(1) DEFAULT 'N' COMMENT '삭제유무',
  `REG_DT` datetime NOT NULL COMMENT '등록일자',
  `REG_ID` varchar(20) NOT NULL COMMENT '등록자ID',
  `MOD_DT` datetime NOT NULL COMMENT '수정일자',
  `MOD_ID` varchar(20) NOT NULL COMMENT '수정자ID',
  PRIMARY KEY (`PAYMENT_STATUS_IDX`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `member_money` (
  `YEAR` int(2) NOT NULL,
  `MONTH` int(2) NOT NULL,
  `BEFORE_MONEY` int(10) NOT NULL COMMENT '이월금액',
  `SAVE_MONEY` int(10) NOT NULL COMMENT '수입금액',
  `EXPENSE_MONEY` int(10) NOT NULL COMMENT '지출금액',
  `MEMBER_MONEY` int(10) NOT NULL COMMENT '남은잔고',
  `MEMO` varchar(250) DEFAULT NULL COMMENT '메모',
  `DEL_YN` varchar(1) DEFAULT 'N' COMMENT '삭제유무',
  `REG_DT` datetime NOT NULL COMMENT '등록일자',
  `REG_ID` varchar(20) NOT NULL COMMENT '등록자ID',
  `MOD_DT` datetime NOT NULL COMMENT '수정일자',
  `MOD_ID` varchar(20) NOT NULL COMMENT '수정자ID',
  PRIMARY KEY (`YEAR`,`MONTH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `expense_money` (
  `EXPENSE_MONEY_IDX` int(11) NOT NULL AUTO_INCREMENT,
  `YEAR` int(2) NOT NULL,
  `MONTH` int(2) NOT NULL,
  `EXPENSE_MONEY` int(10) NOT NULL COMMENT '납부유/무',
  `EXPENSE_CONTENT` varchar(100) NOT NULL,
  `DEL_YN` varchar(1) DEFAULT 'N' COMMENT '삭제유무',
  `REG_DT` datetime NOT NULL COMMENT '등록일자',
  `REG_ID` varchar(20) NOT NULL COMMENT '등록자ID',
  `MOD_DT` datetime NOT NULL COMMENT '수정일자',
  `MOD_ID` varchar(20) NOT NULL COMMENT '수정자ID',
  PRIMARY KEY (`EXPENSE_MONEY_IDX`,`YEAR`,`MONTH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO user_info (USER_ID, USER_NAME, USER_EMAIL, USER_PASSWORD, USER_PHONE, USER_CHARACTER, USER_GENDER, USER_AUTHORITY, AGREE_YN, USER_PROFILE_IMG_IDX, DEL_YN, REG_DT) VALUES
('master', '마스터', 'master@unsan.com', 'rlaqkq1wnf', NULL, NULL, NULL, 99, 1, NULL, 'N', '2016-09-11 오전 12:00:00'), 
('user01', '김장섭', NULL, 'user01!', NULL, NULL, NULL, 1, 1, NULL, 'N', '2016-09-11 오전 12:00:00'), 
('user02', '김재기', NULL, 'user02!', NULL, NULL, NULL, 1, 1, NULL, 'N', '2016-09-11 오전 12:00:00'), 
('user03', '김우섭', NULL, 'user03!', NULL, NULL, NULL, 1, 1, NULL, 'N', '2016-09-11 오전 12:00:00'), 
('user04', '김종언', NULL, 'user04!', NULL, NULL, NULL, 1, 1, NULL, 'N', '2016-09-11 오전 12:00:00'), 
('user05', '김재민', NULL, 'user05!', NULL, NULL, NULL, 1, 1, NULL, 'N', '2016-09-11 오전 12:00:00'), 
('user06', '김재원', NULL, 'user06!', NULL, NULL, NULL, 1, 1, NULL, 'N', '2016-09-11 오전 12:00:00'), 
('user07', '김재철', NULL, 'user07!', NULL, NULL, NULL, 1, 1, NULL, 'N', '2016-09-11 오전 12:00:00'), 
('user08', '조재훈', NULL, 'user08!', NULL, NULL, NULL, 1, 1, NULL, 'n', '2016-10-05 오전 12:00:00')
