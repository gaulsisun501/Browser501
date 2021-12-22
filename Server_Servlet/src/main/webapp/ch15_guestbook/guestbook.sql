--446
--	교재(MySQL) => Oracle
create table guestbook_message(
	messge_id int not null primary key,
	guest_name varchar2(50) not null,
	password varchar2(10) not null,
	message long not null
);

-- auto_increament(mysql) => sequence(oracle)

Create sequence message_id_seq;