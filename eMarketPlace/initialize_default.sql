ALTER TABLE TRANSACTION DROP CONSTRAINT PK_TRANSACTION;

DROP TABLE TRANSACTION;

ALTER TABLE PRODUCT DROP CONSTRAINT PK_PRODUCT;

DROP TABLE PRODUCT;

ALTER TABLE DELIVERY_COMPANY DROP CONSTRAINT PK_DELIVERY_COMPANY;

DROP TABLE DELIVERY_COMPANY;

ALTER TABLE CATEGORY DROP CONSTRAINT PK_CATEGORY;

DROP TABLE CATEGORY;

ALTER TABLE USERS DROP CONSTRAINT PK_USERS;

DROP TABLE USERS;

ALTER TABLE CODE DROP CONSTRAINT PK_CODE;

DROP TABLE CODE;


DROP SEQUENCE EMPSEQUENCE;

CREATE TABLE CODE ( 
	CODE_TYPE CHAR(3) NOT NULL,
	CODE CHAR(3) NOT NULL,
	CODE_NAME VARCHAR2(20) NOT NULL,
	CODE_DESC VARCHAR2(100),
	REG_ID VARCHAR2(20),
	REG_DATE DATE
)
;

ALTER TABLE CODE ADD CONSTRAINT PK_CODE 
	PRIMARY KEY (CODE_TYPE, CODE)
;

CREATE TABLE USERS ( 
	USER_ID VARCHAR2(20) NOT NULL,
	USER_NAME VARCHAR2(50) NOT NULL,
	PASSWORD VARCHAR2(10) NOT NULL,
	ROLE VARCHAR2(5),
	SSN VARCHAR2(13),
	SL_YN CHAR(1),
	BIRTH_DAY VARCHAR2(8),
	AGE NUMBER(3),
	CELL_PHONE VARCHAR2(14),
	ADDR VARCHAR2(100),
	EMAIL VARCHAR2(50),
	EMAIL_YN CHAR(1),
	IMAGE_FILE VARCHAR2(100),
	REG_DATE DATE
)
;

ALTER TABLE USERS ADD CONSTRAINT PK_USERS
	PRIMARY KEY (USER_ID)
;

CREATE TABLE CATEGORY ( 
	CATEGORY_NO VARCHAR2(16) NOT NULL,
	CATEGORY_NAME VARCHAR2(50) NOT NULL,
	CATEGORY_DESC VARCHAR2(100),
	USE_YN CHAR(1),
	REG_ID VARCHAR2(20),
	REG_DATE DATE,
	MODIFY_ID VARCHAR2(20),
	MODIFY_DATE DATE
)
;

ALTER TABLE CATEGORY ADD CONSTRAINT PK_CATEGORY 
	PRIMARY KEY (CATEGORY_NO)
;

CREATE TABLE DELIVERY_COMPANY ( 
	DLVY_COMP_NO VARCHAR2(16) NOT NULL,
	DLVY_COMP_NAME VARCHAR2(50) NOT NULL,
	BUSINESS_NO VARCHAR2(10),
	DLVY_COMP_DESC VARCHAR2(100),
	USE_YN CHAR(1),
	REG_ID VARCHAR2(20),
	REG_DATE DATE,
	MODIFY_ID VARCHAR2(20),
	MODIFY_DATE DATE
)
;

ALTER TABLE DELIVERY_COMPANY ADD CONSTRAINT PK_DELIVERY_COMPANY 
	PRIMARY KEY (DLVY_COMP_NO)
;

CREATE TABLE PRODUCT ( 
	PROD_NO VARCHAR2(16) NOT NULL,
	PROD_NAME VARCHAR2(100) NOT NULL,
	SELLER_ID VARCHAR2(20),
	CATEGORY_NO VARCHAR2(16),
	PROD_DETAIL VARCHAR2(200),
	MANUFACTURE_DAY VARCHAR2(8),
	AS_YN CHAR(1),
	SELL_QUANTITY NUMBER(5),
	SELL_AMOUNT NUMBER(10),
	IMAGE_FILE VARCHAR2(100),
	TRAN_STATUS_CODE CHAR(3),
	REG_DATE DATE
)
;

ALTER TABLE PRODUCT ADD CONSTRAINT PK_PRODUCT 
	PRIMARY KEY (PROD_NO)
;

CREATE TABLE TRANSACTION ( 
	TRAN_NO VARCHAR(20) NOT NULL,
	PROD_NO VARCHAR2(16),
	SELLER_ID VARCHAR2(20),
	BUYER_ID VARCHAR2(20),
	RECEIPT_YN CHAR(1),
	PAYMENT_OPTION CHAR(3),
	RECEIVER_ID VARCHAR2(20),
	RECEIVER_PHONE VARCHAR2(14),
	DLVY_EXPECT_DAY VARCHAR2(8),
	DLVY_ADDR VARCHAR2(100),
	DLVY_COMP_NO VARCHAR2(16),
	DLVY_REQUEST VARCHAR2(100),
	TRAN_STATUS_CODE CHAR(3),
	ORDER_DATE DATE,
	DLVY_DATE DATE
)
;



CREATE TABLE IDS(
	TABLE_NAME VARCHAR2(20),
	NEXT_ID NUMBER(5)
)
;




ALTER TABLE TRANSACTION ADD CONSTRAINT PK_TRANSACTION 
	PRIMARY KEY (TRAN_NO)
;


CREATE SEQUENCE EMPSEQUENCE INCREMENT BY 1 START WITH 100 MAXVALUE 99999
;


insert into CODE values ('000','A01','휴대폰 국번 코드',null,'test',null);
insert into CODE values ('000','A02','이메일 종류 코드',null,'test',null);
insert into CODE values ('000','A03','거래상태 코드',null,'test',null);
insert into CODE values ('000','A04','결제방식 코드',null,'test',null);
insert into CODE values ('A01','010','010',null,'test',null);
insert into CODE values ('A01','011','011',null,'test',null);
insert into CODE values ('A01','016','016',null,'test',null);
insert into CODE values ('A01','017','017',null,'test',null);
insert into CODE values ('A01','018','018',null,'test',null);
insert into CODE values ('A01','019','019',null,'test',null);
insert into CODE values ('A02','001','naver.com',null,'test',null);
insert into CODE values ('A02','002','chol.com',null,'test',null);
insert into CODE values ('A02','003','dreamwiz.com',null,'test',null);
insert into CODE values ('A02','004','empal.com',null,'test',null);
insert into CODE values ('A02','005','freechal.com',null,'test',null);
insert into CODE values ('A02','006','google.com',null,'test',null);
insert into CODE values ('A02','007','hanafos.com',null,'test',null);
insert into CODE values ('A02','008','hanmail.net',null,'test',null);
insert into CODE values ('A02','009','hanmir.com',null,'test',null);
insert into CODE values ('A02','010','hitel.net',null,'test',null);
insert into CODE values ('A02','011','hotmail.com',null,'test',null);
insert into CODE values ('A02','012','korea.com',null,'test',null);
insert into CODE values ('A02','013','lycos.co.kr',null,'test',null);
insert into CODE values ('A02','014','nate.com',null,'test',null);
insert into CODE values ('A02','015','netian.com',null,'test',null);
insert into CODE values ('A02','016','yahoo.co.kr',null,'test',null);
insert into CODE values ('A03','001','상품등록',null,'test',null);
insert into CODE values ('A03','002','주문접수',null,'test',null);
insert into CODE values ('A03','003','배송완료',null,'test',null);
insert into CODE values ('A04','001','신용카드결제',null,'test',null);
insert into CODE values ('A04','002','무통장입금',null,'test',null);
insert into CODE values ('A04','003','핸드폰',null,'test',null);
insert into CODE values ('A04','004','포인트',null,'test',null);


INSERT INTO USERS ( USER_ID, USER_NAME, PASSWORD, ROLE, SSN, SL_YN, BIRTH_DAY, AGE, CELL_PHONE, ADDR, EMAIL, EMAIL_YN, IMAGE_FILE, REG_DATE ) 
           VALUES ( 'kd.hong', '홍길동', 'test123', 'user', '8806041227717', 'Y', '19880604', 22, '010-1234-4491', '경기도 성남시 분당구 구미동', 'kd.hong@gmail.com', 'Y', 'EMP-USER-00012.jpg',  TO_Date( '03/10/2008 02:40:48 오후', 'MM/DD/YYYY HH:MI:SS AM')); 
INSERT INTO USERS ( USER_ID, USER_NAME, PASSWORD, ROLE, SSN, SL_YN, BIRTH_DAY, AGE, CELL_PHONE, ADDR, EMAIL, EMAIL_YN, IMAGE_FILE, REG_DATE ) 
           VALUES ( 'any.lee', '이애니', 'test123', 'user', NULL, 'Y', NULL, NULL, NULL, NULL, 'any.lee@dreamwiz.com', 'Y', 'EMP-USER-00015.jpg',  TO_Date( '03/10/2008 03:10:52 오후', 'MM/DD/YYYY HH:MI:SS AM')); 
INSERT INTO USERS ( USER_ID, USER_NAME, PASSWORD, ROLE, SSN, SL_YN, BIRTH_DAY, AGE, CELL_PHONE, ADDR, EMAIL, EMAIL_YN, IMAGE_FILE, REG_DATE ) 
           VALUES ( 'test', 'test', 'test123', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL); 

insert into CATEGORY values ('CATEGORY-00001','전자제품','전자 제품 카테고리','Y',null,to_date('2007/02/09 13:34:04', 'YYYY/MM/DD HH24:MI:SS'), null,to_date('2007/02/14 18:43:21', 'YYYY/MM/DD HH24:MI:SS'));
insert into CATEGORY values ('CATEGORY-00002','스포츠용품',null,'Y',null,to_date('2007/02/14 08:34:18', 'YYYY/MM/DD HH24:MI:SS'), null,to_date('2007/02/14 08:34:18', 'YYYY/MM/DD HH24:MI:SS'));
insert into CATEGORY values ('CATEGORY-00003','가전제품',null,'Y',null,to_date('2007/02/14 10:30:13', 'YYYY/MM/DD HH24:MI:SS'), null,to_date('2007/02/14 10:30:13', 'YYYY/MM/DD HH24:MI:SS'));
insert into CATEGORY values ('CATEGORY-00004','생활용품','생활용품 카테고리 입니다.','Y',null,to_date('2007/02/14 20:51:04', 'YYYY/MM/DD HH24:MI:SS'), null,to_date('2007/02/14 20:51:04', 'YYYY/MM/DD HH24:MI:SS'));
insert into CATEGORY values ('CATEGORY-00005','식품','식품 카테고리입니다. ','Y',null,to_date('2007/02/09 09:47:22', 'YYYY/MM/DD HH24:MI:SS'), null,to_date('2007/02/14 21:52:06', 'YYYY/MM/DD HH24:MI:SS'));


insert into DELIVERY_COMPANY values ('DLVYCOMP-00030','로진택배','4421093456','하루만에 배송 보장하는 회사','Y','test',to_date('2007/02/08 17:12:38', 'YYYY/MM/DD HH24:MI:SS'), 'test',to_date('2007/02/08 17:12:38', 'YYYY/MM/DD HH24:MI:SS'));
insert into DELIVERY_COMPANY values ('DLVYCOMP-00031','현더택배','0123456789','최고의 배송을 약속합니다.','Y',null,to_date('2007/02/09 09:38:50', 'YYYY/MM/DD HH24:MI:SS'), null,to_date('2007/02/09 09:38:50', 'YYYY/MM/DD HH24:MI:SS'));
insert into DELIVERY_COMPANY values ('DLVYCOMP-00032','메가배송','1234567890','하루 배송을 책임집니다.','Y',null,to_date('2007/02/09 09:39:23', 'YYYY/MM/DD HH24:MI:SS'), 'test',to_date('2007/02/15 17:49:02', 'YYYY/MM/DD HH24:MI:SS'));
insert into DELIVERY_COMPANY values ('DLVYCOMP-00033','삼송택배','2223334447','삼송 택배 좋아!!','Y',null,to_date('2007/02/09 09:45:40', 'YYYY/MM/DD HH24:MI:SS'), null,to_date('2007/02/09 10:13:40', 'YYYY/MM/DD HH24:MI:SS'));
insert into DELIVERY_COMPANY values ('DLVYCOMP-00034','한마음배송','8738383728','사용하지 않는 배송업체입니다.','N',null,to_date('2007/02/09 09:55:58', 'YYYY/MM/DD HH24:MI:SS'), null,to_date('2007/02/09 09:55:58', 'YYYY/MM/DD HH24:MI:SS'));
insert into DELIVERY_COMPANY values ('DLVYCOMP-00035','HTT택배','4753947593','국제 특송 전문 업체','Y',null,to_date('2007/02/09 09:57:24', 'YYYY/MM/DD HH24:MI:SS'), 'test',to_date('2007/02/15 17:44:57', 'YYYY/MM/DD HH24:MI:SS'));
insert into DELIVERY_COMPANY values ('DLVYCOMP-00036','국제배송','7777777777','7일 배송 주장','Y',null,to_date('2007/02/09 10:06:39', 'YYYY/MM/DD HH24:MI:SS'), 'any.lee',to_date('2007/02/15 19:35:53', 'YYYY/MM/DD HH24:MI:SS'));


insert into PRODUCT values ('PRODUCT-00010','vaio vgn FS70B','any.lee','CATEGORY-00001','소니 바이오 노트북 신동품!','20050214','N',1, 2000000, 'AHlbAAAAtBqyWAAA.jpg','002',to_date('2007/02/14 11:27:27', 'YYYY/MM/DD HH24:MI:SS'));
insert into PRODUCT values ('PRODUCT-00011','자전거','any.lee','CATEGORY-00002','자전거 좋아요~','20030214','Y',1, 10000, 'AHlbAAAAvetFNwAA.jpg','002',to_date('2007/02/14 10:48:43', 'YYYY/MM/DD HH24:MI:SS'));
insert into PRODUCT values ('PRODUCT-00012','보르도','any.lee','CATEGORY-00003','최고 디자인 신품','20070201','Y',1, 1170000, 'AHlbAAAAvewfegAB.jpg','001',to_date('2007/02/14 10:49:39', 'YYYY/MM/DD HH24:MI:SS'));
insert into PRODUCT values ('PRODUCT-00013','보드세트','any.lee','CATEGORY-00002','신동품. 한시즌 밖에 안썼습니다. 눈물을 머금고 내놓음 ㅠ.ㅠ','20060217','N',1, 200000, 'AHlbAAAAve1WwgAC.jpg','001',to_date('2007/02/14 10:50:58', 'YYYY/MM/DD HH24:MI:SS'));
insert into PRODUCT values ('PRODUCT-00014','인라인','any.lee','CATEGORY-00002','좋아욥','20061219','Y',2, 20000, 'AHlbAAAAve37LwAD.jpg','001',to_date('2007/02/14 10:51:40', 'YYYY/MM/DD HH24:MI:SS'));
insert into PRODUCT values ('PRODUCT-00015','삼성센스 2G','test','CATEGORY-00001','sens 메모리 2Giga','20070221','Y',1, 800000, 'AHlbAAAAtBqyWAAA.jpg','003',to_date('2007/02/14 18:46:58', 'YYYY/MM/DD HH24:MI:SS'));
insert into PRODUCT values ('PRODUCT-00016','연꽃','test','CATEGORY-00004','정원을 가꿔보세요','20070222','Y',5, 232300, 'AHlbAAAAtDPSiQAA.jpg','001',to_date('2007/02/15 17:39:01', 'YYYY/MM/DD HH24:MI:SS'));
insert into PRODUCT values ('PRODUCT-00017','삼성센스','test','CATEGORY-00001','노트북','20070212','Y',1, 600000, 'AHlbAAAAug1vsgAA.jpg','003',to_date('2007/02/12 13:04:31', 'YYYY/MM/DD HH24:MI:SS'));


insert into TRANSACTION values ('TRANSACT-00040','PRODUCT-00010','any.lee','test','Y','002','test',null,'20070211','경기도 성남시 분당구 구미동 삼성SDS 제2사옥','DLVYCOMP-00030','급배송','002',to_date('2007/02/15 00:00:00', 'YYYY/MM/DD HH24:MI:SS'), null);
insert into TRANSACTION values ('TRANSACT-00041','PRODUCT-00011','any.lee','test','Y','001','test',null,'20070313','삼성SDS 제2사옥','DLVYCOMP-00031','요청','002',to_date('2007/02/15 00:00:00', 'YYYY/MM/DD HH24:MI:SS'), null);
insert into TRANSACTION values ('TRANSACT-00042','PRODUCT-00015','test','any.lee','N','002','any.lee','010-4711-6158','20070224','경기도 용인시 풍덕천동','DLVYCOMP-00033','보내주세요. 감사합니다.','003',to_date('2007/02/15 16:12:20', 'YYYY/MM/DD HH24:MI:SS'), to_date('2007/02/18 00:00:00', 'YYYY/MM/DD HH24:MI:SS'));
insert into TRANSACTION values ('TRANSACT-00043','PRODUCT-00017','test','any.lee','N','002','any.lee','010-4711-6158','20070222','경기도 성남시 분당구','DLVYCOMP-00031','포장해서 보내주세요','003',to_date('2007/02/15 17:00:51', 'YYYY/MM/DD HH24:MI:SS'), to_date('2007/02/18 00:00:00', 'YYYY/MM/DD HH24:MI:SS'));


INSERT INTO IDS ( TABLE_NAME, NEXT_ID ) VALUES ( 
'DELIVERY_COMPANY', 1); 
INSERT INTO IDS ( TABLE_NAME, NEXT_ID ) VALUES ( 
'CATEGORY', 1); 
INSERT INTO IDS ( TABLE_NAME, NEXT_ID ) VALUES ( 
'PRODUCT', 1); 
INSERT INTO IDS ( TABLE_NAME, NEXT_ID ) VALUES ( 
'TRANSACTION', 1); 
INSERT INTO IDS ( TABLE_NAME, NEXT_ID ) VALUES ( 
'USERS', 1); 
INSERT INTO IDS ( TABLE_NAME, NEXT_ID ) VALUES ( 
'TEST', 1); 
COMMIT;

