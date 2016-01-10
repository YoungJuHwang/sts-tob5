
CREATE USER 'TOB'@'%' IDENTIFIED BY 'HANBIT0717';


CREATE TABLE ADMIN(
	ID VARCHAR(20),
	CONSTRAINT ADMIN_PK PRIMARY KEY(ID),
	PASSWORD VARCHAR(20)
);

CREATE TABLE ACCOUNT(
	ACCOUNT_NUM VARCHAR(30),
	CONSTRAINT ACCOUNT_PK PRIMARY KEY(ACCOUNT_NUM),
	TOTAL INT,
	ID VARCHAR(20),
	CONSTRAINT ACCOUNT_FK FOREIGN KEY(ID) REFERENCES ADMIN(ID)
);

CREATE TABLE MEMBER(
	USERID VARCHAR(20),
	CONSTRAINT MEMBER_PK PRIMARY KEY(USERID),
	PASSWORD VARCHAR(20) NOT NULL,
	NAME VARCHAR(20),
	BIRTH VARCHAR(20),
	GENDER VARCHAR(10),
	EMAIL VARCHAR(50),
	PHONE VARCHAR(30),
	ADDR VARCHAR(30),
	PROFILE VARCHAR(30)
);
	
CREATE TABLE CATEGORY(
	CATEGORY_ID VARCHAR(20),
	CONSTRAINT CATEGORY_PK PRIMARY KEY(CATEGORY_ID),
	CATEGORY_NAME VARCHAR(20)
);

CREATE TABLE GENRE(
	GENRE_ID VARCHAR(20),
	CONSTRAINT GENRE_PK PRIMARY KEY(GENRE_ID),
	GENRE_NAME VARCHAR(20),
	CATEGORY_ID VARCHAR(20) NOT NULL,
	CONSTRAINT GENRE_FK FOREIGN KEY(CATEGORY_ID) REFERENCES CATEGORY(CATEGORY_ID)
);

CREATE TABLE OPTION2(
	OPTION_ID VARCHAR(20),
	CONSTRAINT OPTION2_PK PRIMARY KEY(OPTION_ID),
	OPTION_NAME VARCHAR(20)
);

CREATE TABLE STOCK(
	STOCK_SEQ VARCHAR(20),
	CONSTRAINT STOCK_PK PRIMARY KEY(STOCK_SEQ),
	COUNT VARCHAR(20)
);

CREATE TABLE BOOK(
	BOOK_ID VARCHAR(20),
	CONSTRAINT BOOK_PK PRIMARY KEY(BOOK_ID),
	BOOK_NAME VARCHAR(40),
	PRICE VARCHAR(20),
	WRITER VARCHAR(20),
	GRADE VARCHAR(20),
	STOCK_SEQ VARCHAR(20),
	CONSTRAINT BOOK_FK_STOCK FOREIGN KEY(STOCK_SEQ) REFERENCES STOCK(STOCK_SEQ),
	OPTION_ID VARCHAR(20),
	CONSTRAINT BOOK_FK_OPTION2 FOREIGN KEY(OPTION_ID) REFERENCES OPTION2(OPTION_ID),
	GENRE_ID VARCHAR(20),
	CONSTRAINT BOOK_FK_GENRE FOREIGN KEY(GENRE_ID) REFERENCES GENRE(GENRE_ID)
);

CREATE TABLE PURCHASE(
	PUR_NUM VARCHAR(30),
	CONSTRAINT PURCHASE_PK PRIMARY KEY(PUR_NUM),
	SUM INT,
	ACCOUNT_NUM VARCHAR(30),
	CONSTRAINT PURCHASE_FK_ACCOUNT FOREIGN KEY(ACCOUNT_NUM) REFERENCES ACCOUNT(ACCOUNT_NUM),
	USERID VARCHAR(20),
	CONSTRAINT PURCHASE_FK_MEMBER FOREIGN KEY(USERID) REFERENCES MEMBER(USERID),
	BOOK_ID VARCHAR(20),
	CONSTRAINT PURCHASE_FK_BOOK FOREIGN KEY(BOOK_ID) REFERENCES BOOK(BOOK_ID)
);

CREATE TABLE CART(
	CART_NUM VARCHAR(30),
	CONSTRAINT CART_PK PRIMARY KEY(CART_NUM),
	CART_TODAY VARCHAR(30),
	BOOK_ID VARCHAR(20),
	CONSTRAINT CART_FK_BOOK FOREIGN KEY(BOOK_ID) REFERENCES BOOK(BOOK_ID),
	USERID VARCHAR(20),
	CONSTRAINT CART_FK_MEMBER FOREIGN KEY(USERID) REFERENCES MEMBER(USERID),
	COUNT INT
);

CREATE TABLE EVENT(
	EVENT_ID VARCHAR(40),
	CONSTRAINT EVENT_PK PRIMARY KEY(EVENT_ID),
	EVENT_NAME VARCHAR(40),
	FORM_DT VARCHAR(30),
	TO_DT VARCHAR(30),
	PROFILE VARCHAR(30)
);

CREATE TABLE REPLY(
	REPLY_SEQ INT,
	CONSTRAINT REPLY_PK PRIMARY KEY(REPLY_SEQ),
	COMMENT VARCHAR(1000),
	WRITER VARCHAR(50),
	REG_DATE VARCHAR(20),
	CONSTRAINT REPLY_FK_EVENT FOREIGN KEY(REG_DATE) REFERENCES EVENT(EVENT_ID),
	THUMNAIL VARCHAR(50)
);


INSERT INTO ADMIN VALUES('AD','AD');

INSERT INTO ACCOUNT VALUES('20151101','180000',null);
INSERT INTO ACCOUNT VALUES('20151102','220000',null);
INSERT INTO ACCOUNT VALUES('20151103','354000',null);
INSERT INTO ACCOUNT VALUES('20151104','180000',null);
INSERT INTO ACCOUNT VALUES('20151105','273000',null);
INSERT INTO ACCOUNT VALUES('20151106','930000',null);
INSERT INTO ACCOUNT VALUES('20151107','450000',null);
INSERT INTO ACCOUNT VALUES('20151108','530000',null);
INSERT INTO ACCOUNT VALUES('20151109','710000',null);
INSERT INTO ACCOUNT VALUES('20151110','390000',null);

INSERT INTO MEMBER VALUES('a','a','hong','1991.07.17','남','pheonix0717@naver,com','010-4278-4789','서울시 광진구 화양동','default.png');
INSERT INTO MEMBER VALUES('b','b','hwang','2000.01.11','남','ssun9900@naver,com','010-1234-1549','서울시 강남구 역삼동','default.png');
INSERT INTO MEMBER VALUES('c','c','young','1897.09.20','여','asdfbva@naver,com','010-4200-1234','서울시 구로구 xx동','default.png');
INSERT INTO MEMBER VALUES('d','d','admin','1120.11.11','남','snh3n@naver,com','010-4175-0910','서울시 강북구 yy동','default.png');
INSERT INTO MEMBER VALUES('e','e','e','1991.10.13','남','snd21@naver,com','010-2486-1022','서울시 강서구 pp동','default.png');
INSERT INTO MEMBER VALUES('f','f','f','1990.07.11','남','af23f1@naver,com','010-7210-1242','서울시 관악구 gg동','default.png');
INSERT INTO MEMBER VALUES('g','g','g','1989.01.21','여','adsf1v@naver,com','010-1120-9651','서울시 영등포구 cc동','default.png');
INSERT INTO MEMBER VALUES('h','h','h','1996.12.25','여','12d1v@naver,com','010-5977-7721','서울시 동대문구 ad동','default.png');
INSERT INTO MEMBER VALUES('i','i','i','1993.03.06','여','5je5j@naver,com','010-0865-0450','서울시 동작구 xx동','default.png');
INSERT INTO MEMBER VALUES('j','j','j','1992.06.30','남','65hegsa@naver,com','010-1076-0910','서울시 중랑구 yx동','default.png');

INSERT INTO PURCHASE VALUES('20151101-0001','20000',null,null,null);
INSERT INTO PURCHASE VALUES('20151101-0002','20000',null,null,null);
INSERT INTO PURCHASE VALUES('20151101-0003','40000',null,null,null);
INSERT INTO PURCHASE VALUES('20151101-0004','10000',null,null,null);
INSERT INTO PURCHASE VALUES('20151102-0001','50000',null,null,null);

INSERT INTO CATEGORY VALUES('domestic','국내도서');
INSERT INTO CATEGORY VALUES('abroad','해외도서');
INSERT INTO CATEGORY VALUES('ebook','전자책');
INSERT INTO CATEGORY VALUES('old','중고책');
INSERT INTO CATEGORY VALUES('new','신간');

INSERT INTO GENRE VALUES('fiction','소설','domestic');
INSERT INTO GENRE VALUES('essay','수필','abroad');
INSERT INTO GENRE VALUES('it','공학','domestic');
INSERT INTO GENRE VALUES('classic','고전','ebook');
INSERT INTO GENRE VALUES('poem','시','new');
INSERT INTO GENRE VALUES('manage','경영','new');
INSERT INTO GENRE VALUES('self','자기계발','new');
INSERT INTO GENRE VALUES('humanism','인문','old');
INSERT INTO GENRE VALUES('history','역사','old');
INSERT INTO GENRE VALUES('faith','종교','old');
INSERT INTO GENRE VALUES('art','예술','old');
INSERT INTO GENRE VALUES('child','어린이','domestic');
INSERT INTO GENRE VALUES('cartoon','만화','domestic');
INSERT INTO GENRE VALUES('baby','아동','abroad');
INSERT INTO GENRE VALUES('adult','성인','abroad');
INSERT INTO GENRE VALUES('cham','참고서','ebook');
INSERT INTO GENRE VALUES('computer','컴퓨터','new');
INSERT INTO GENRE VALUES('summary','도서요약','new');
INSERT INTO GENRE VALUES('comedy','코메디','abroad');
INSERT INTO GENRE VALUES('musical','뮤지컬','domestic');
INSERT INTO GENRE VALUES('sf','SF','ebook');
INSERT INTO GENRE VALUES('movie','영화','ebook');
INSERT INTO GENRE VALUES('horror','공포','ebook');

INSERT INTO OPTION2 VALUES('md',null);
INSERT INTO OPTION2 VALUES('free',null);
INSERT INTO OPTION2 VALUES('var',null);
INSERT INTO OPTION2 VALUES('foo',null);

INSERT INTO STOCK VALUES('1','1');
INSERT INTO STOCK VALUES('2','2');
INSERT INTO STOCK VALUES('3','3');
INSERT INTO STOCK VALUES('4','4');
INSERT INTO STOCK VALUES('5','5');
INSERT INTO STOCK VALUES('6','6');
INSERT INTO STOCK VALUES('7','7');
INSERT INTO STOCK VALUES('8','8');
INSERT INTO STOCK VALUES('9','9');


INSERT INTO BOOK VALUES('java','자바의 정석','15000','저자1','5.7',null,null,null);
INSERT INTO BOOK VALUES('html','HTML의 정석','30000','저자2','9.7',null,null,null);
INSERT INTO BOOK VALUES('jsp','JSP의 정석','19000','저자3','5.9',null,null,null);
INSERT INTO BOOK VALUES('cc','C언어의 정석','25000','저자4','7.7',null,null,null);
INSERT INTO BOOK VALUES('math','수학의 정석','20000','저자6','8.6',null,null,null);


INSERT INTO CART VALUES('20151101-0001','20151101',null,null,'1');
INSERT INTO CART VALUES('20151101-0002','20151101',null,null,'1');
INSERT INTO CART VALUES('20151101-0003','20151101',null,null,'2');
INSERT INTO CART VALUES('20151101-0004','20151101',null,null,'3');
INSERT INTO CART VALUES('20151102-0001','20151102',null,null,'3');
INSERT INTO CART VALUES('20151102-0002','20151102',null,null,'3');
INSERT INTO CART VALUES('20151102-0003','20151102',null,null,'3');
INSERT INTO CART VALUES('20151102-0004','20151102',null,null,'3');


INSERT INTO EVENT VALUES('best','2015년 베스트셀러전','2015/12/30','2016/01/31','E001.jpg');
INSERT INTO EVENT VALUES('chance','[외서] 01월 BIG CHANCE! 10% 쿠폰 추가 증정','2016/01/01','2016/01/31','E002.jpg');
INSERT INTO EVENT VALUES('soft','소프트 스킬 리뷰어 이벤트','2016/01/01','2016/01/31','E003.jpg');
INSERT INTO EVENT VALUES('tech','응답하라!! 재테크','2016/01/01','2016/02/29','E004.jpg');
INSERT INTO EVENT VALUES('gichul','공무원기출 완전 공략','2016/01/01','2016/01/31','E005.jpg');
INSERT INTO EVENT VALUES('hackers','해커스 외국어 브랜드','2016/01/01','2016/01/31','E006.jpg');
INSERT INTO EVENT VALUES('topik','2016 TOPIK! 한방에 끝내자!','2016/01/01','2016/01/31','E007.jpg');
INSERT INTO EVENT VALUES('songgok','[특별 기획] 송곳과 한국 사회','2015/01/01','2016/01/31','E008.jpg');
INSERT INTO EVENT VALUES('bookreport','<소년과재규어>독후감상문대회 이벤트','2015/01/01','2016/01/31','E009.jpg');
INSERT INTO EVENT VALUES('facebook','마크 저커버그 A Year of Books','2016/01/01','2016/01/31','E010.jpg');
INSERT INTO EVENT VALUES('project','531 프로젝트 완간 기념 이벤트','2016/01/01','2016/01/31','E011.jpg');
INSERT INTO EVENT VALUES('publish','<시작의힘> 출간 이벤트','2016/01/01','2016/01/31','E0012.jpg');
INSERT INTO EVENT VALUES('highschool','EBS 고등 방학 교재! 무료배송 + 정가제 최대 할인 보장','2016/01/01','2016/01/31','E0013.jpg');
INSERT INTO EVENT VALUES('cat','<상상고양이> 출간 이벤트','2016/01/01','2016/01/31','E0014.jpg');
INSERT INTO EVENT VALUES('comments','<사는게 참 좋다> 한줄평 이벤트','2016/01/01','2016/01/31','E0015.jpg');
INSERT INTO EVENT VALUES('markrecommend','[교보 외서] 2015년 마크 주커버그 추천 도서','2016/01/01','2016/01/31','E0016.jpg');






INSERT INTO BOOK VALUES('1','책a','11000','저자a','8.3','1',null,null);
INSERT INTO BOOK VALUES('2','책b','12000','저자b','8.3','7',null,null);
INSERT INTO BOOK VALUES('3','책c','13000','저자c','8.3','4',null,null);
INSERT INTO BOOK VALUES('4','책d','14000','저자d','8.3','5',null,null);
INSERT INTO BOOK VALUES('5','책e','15000','저자e','8.3','7',null,null);
INSERT INTO BOOK VALUES('6','책f','16000','저자f','8.3','9',null,null);
INSERT INTO BOOK VALUES('7','책g','17000','저자g','8.3','3',null,null);
INSERT INTO BOOK VALUES('8','책h','18000','저자h','8.3','6',null,null);
INSERT INTO BOOK VALUES('9','책i','19000','저자i','8.3','1',null,null);


INSERT INTO CART VALUES('a-a','a','1','a','1');
INSERT INTO CART VALUES('b-b','b','2','a','1');
INSERT INTO CART VALUES('c-c','c','3','b','1');
INSERT INTO CART VALUES('d-d','d','4','b','1');
INSERT INTO CART VALUES('e-e','e','5','c','1');
INSERT INTO CART VALUES('f-f','f','6','c','1');
INSERT INTO CART VALUES('g-g','g','7','d','1');
INSERT INTO CART VALUES('h-h','h','8','d','1');
INSERT INTO CART VALUES('20160111-0007','20160112','1','a','1');
INSERT INTO CART VALUES('20160111-0008','20160111','2','a','1');
INSERT INTO CART VALUES('20160111-0009','20160111','3','b','1');
COMMIT;
