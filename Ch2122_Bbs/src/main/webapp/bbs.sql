--ch21:591,Oracle
--bbs/bbs
create user bbs IDENTIFIED BY bbs;
GRANT CONNECT,resource TO bbs;
GRANT CREATE VIEW,CREATE SYNONYM TO bbs;

create table member(
	memberid varchar2(50) primary key,
	name varchar2(50) not null,
	password varchar2(10) not null,
	regdate date not null
); 