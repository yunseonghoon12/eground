DROP TABLE IF EXISTS `cash`;

CREATE TABLE `cash` (
	`cno`	NUMBER	NOT NULL,
	`time`	DATE	NOT NULL,
	`plusminus`	NUMBER	NOT NULL,
	`uid`	VARCHAR2(100)	NOT NULL
);

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
	`uid`	VARCHAR2(100)	NOT NULL,
	`pw`	VARCHAR2(20)	NOT NULL,
	`name`	VARCHAR2(20)	NOT NULL,
	`gender`	VARCHAR2(1)	NOT NULL,
	`phone`	NUMBER	NOT NULL,
	`birthday`	DATE	NOT NULL,
	`type`	NUMBER	NOT NULL,
	`signindate`	DATE	NOT NULL,
	`frating`	NUMBER	NOT NULL,
	`manner`	NUMBER	NOT NULL,
	`photo`	VARCHAR2(1000)	NOT NULL,
	`cash`	NUMBER	NOT NULL,
	`brating`	NUMBER	NOT NULL,
	`dropped`	VARCHAR2(1)	NOT NULL,
	`dropday`	DATE	NULL
);

DROP TABLE IF EXISTS `match`;

CREATE TABLE `match` (
	`mno`	NUMBER	NOT NULL,
	`time`	DATE	NOT NULL	COMMENT '경기 시작시간',
	`price`	NUMBER	NOT NULL,
	`gender`	VARCHAR2(2)	NOT NULL,
	`state`	NUMBER	NOT NULL	DEFAULT 0	COMMENT '0 = 경기전 1 = 1팀승리 2 = 2팀승리 3 = 무승부 4 = 취소된 매치',
	`shoes`	BOOLEAN	NOT NULL,
	`sno`	NUMBER	NOT NULL
);

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
	`rno`	NUMBER	NOT NULL,
	`time`	TIMESTAMP	NOT NULL,
	`team`	NUMBER	NOT NULL	DEFAULT 0	COMMENT '0 = 시작전 1= 1팀 2 = 2팀',
	`rating`	NUMBER	NOT NULL	DEFAULT 0	COMMENT '피드백 전 = 0 / 피드백 후 = + or -',
	`manner`	NUMBER	NOT NULL	DEFAULT 0	COMMENT '피드백 전 = 0 / 피드백 후 = + or -',
	`uid`	VARCHAR2(100)	NOT NULL,
	`mno`	NUMBER	NOT NULL
);

DROP TABLE IF EXISTS `stadium`;

CREATE TABLE `stadium` (
	`sno`	NUMBER	NOT NULL,
	`category`	VARCHAR2(1))	NOT NULL	COMMENT 'B = 농구 / F = 축구',
	`name`	VARCHAR2(100)	NOT NULL,
	`capacity`	NUMBER	NOT NULL,
	`address`	VARCHAR2(100)	NOT NULL,
	`do`	VARCHAR2(20)	NOT NULL,
	`si`	VARCHAR2(20)	NOT NULL,
	`h`	NUMBER	NOT NULL,
	`w`	NUMBER	NOT NULL,
	`shower`	BOOLEAN	NOT NULL,
	`parking`	BOOLEAN	NOT NULL,
	`wear`	BOOLEAN	NOT NULL,
	`shoes`	BOOLEAN	NOT NULL,
	`photo`	VARCHAR2(1000)	NULL,
	`start`	DATE	NOT NULL,
	`end`	DATE	NOT NULL
);

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
	`pno`	NUMBER	NOT NULL,
	`title`	VARCHAR2(100)	NOT NULL,
	`content`	VARCHAR2(1000)	NOT NULL,
	`time`	TIMESTAMP	NOT NULL,
	`category`	VARCHAR2(100)	NOT NULL,
	`click`	NUMBER	NOT NULL,
	`uid`	VARCHAR2(100)	NOT NULL
);

DROP TABLE IF EXISTS `recomment`;

CREATE TABLE `recomment` (
	`rno`	NUMBER	NOT NULL,
	`content`	VARCHAR2(1000)	NOT NULL,
	`time`	DATE	NOT NULL,
	`pno`	NUMBER	NOT NULL,
	`uid`	VARCHAR2(100)	NOT NULL
);

DROP TABLE IF EXISTS `like`;

CREATE TABLE `like` (
	`lno`	NUMBER	NOT NULL,
	`uid`	VARCHAR2(100)	NOT NULL,
	`pno`	NUMBER	NOT NULL,
	`time`	DATE	NOT NULL
);

ALTER TABLE `cash` ADD CONSTRAINT `PK_CASH` PRIMARY KEY (
	`cno`
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
	`uid`
);

ALTER TABLE `match` ADD CONSTRAINT `PK_MATCH` PRIMARY KEY (
	`mno`
);

ALTER TABLE `booking` ADD CONSTRAINT `PK_BOOKING` PRIMARY KEY (
	`rno`
);

ALTER TABLE `stadium` ADD CONSTRAINT `PK_STADIUM` PRIMARY KEY (
	`sno`
);

ALTER TABLE `post` ADD CONSTRAINT `PK_POST` PRIMARY KEY (
	`pno`
);

ALTER TABLE `recomment` ADD CONSTRAINT `PK_RECOMMENT` PRIMARY KEY (
	`rno`
);

ALTER TABLE `like` ADD CONSTRAINT `PK_LIKE` PRIMARY KEY (
	`lno`
);

ALTER TABLE `cash` ADD CONSTRAINT `FK_user_TO_cash_1` FOREIGN KEY (
	`uid`
)
REFERENCES `user` (
	`uid`
);

ALTER TABLE `match` ADD CONSTRAINT `FK_stadium_TO_match_1` FOREIGN KEY (
	`sno`
)
REFERENCES `stadium` (
	`sno`
);

ALTER TABLE `booking` ADD CONSTRAINT `FK_user_TO_booking_1` FOREIGN KEY (
	`uid`
)
REFERENCES `user` (
	`uid`
);

ALTER TABLE `booking` ADD CONSTRAINT `FK_match_TO_booking_1` FOREIGN KEY (
	`mno`
)
REFERENCES `match` (
	`mno`
);

ALTER TABLE `post` ADD CONSTRAINT `FK_user_TO_post_1` FOREIGN KEY (
	`uid`
)
REFERENCES `user` (
	`uid`
);

ALTER TABLE `recomment` ADD CONSTRAINT `FK_post_TO_recomment_1` FOREIGN KEY (
	`pno`
)
REFERENCES `post` (
	`pno`
);

ALTER TABLE `recomment` ADD CONSTRAINT `FK_user_TO_recomment_1` FOREIGN KEY (
	`uid`
)
REFERENCES `user` (
	`uid`
);

ALTER TABLE `like` ADD CONSTRAINT `FK_user_TO_like_1` FOREIGN KEY (
	`uid`
)
REFERENCES `user` (
	`uid`
);

ALTER TABLE `like` ADD CONSTRAINT `FK_post_TO_like_1` FOREIGN KEY (
	`pno`
)
REFERENCES `post` (
	`pno`
);

