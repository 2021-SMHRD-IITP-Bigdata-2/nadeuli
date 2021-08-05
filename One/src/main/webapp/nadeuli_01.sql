create sequence mem_num
start with 1
increment by 1;

CREATE TABLE members (
   email varchar(50) NOT NULL,
   pw varchar(50) NOT NULL,
   name varchar(50) not NULL,
   tel varchar(50) not NULL,
   nickname varchar(50) not NULL,
   constraint members_pk primary key(email)
);

select * from MEMBERS


drop table members