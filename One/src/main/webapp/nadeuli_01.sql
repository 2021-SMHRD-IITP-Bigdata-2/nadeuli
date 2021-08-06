create sequence mem_num
start with 1
increment by 1;

CREATE TABLE members (
   email varchar2(50) NOT NULL,
   pw varchar2(50) NOT NULL,
   name varchar2(50) not NULL,
   tel varchar2(50) not NULL,
   nickname varchar2(50) not NULL,
   constraint members_pk primary key(email)
);

select * from MEMBERS

select email from members where email='test1'

CREATE TABLE city (
   city_name varchar2(20) NOT NULL,
   c_introduce varchar2(100),
   c_img varchar2(1000),
   constraint city_pk primary key(city_name)
);


select * from CITY

create table community(
	commu_no number(10) not null constraint commu_pk primary key,
	title varchar2(50) not null,
	contents varchar2(500) not null,
	commu_date date not null,
	img_rink varchar2(500) null,
	city_name varchar2(20) not null,
	email varchar2(50) not null,
	constraint commu_city_fk foreign key(city_name) references city(city_name),
	constraint commu_email_fk foreign key(email) references members(email)
);

	-- insert into community values(comm_seq.nextval, 'test','1','테스트입니다.',sysdate);

select * from community

create table member_trip(
	email varchar2(50) NOT NULL,
	city_name varchar2(20) not null,
	constraint trip_city_fk foreign key(city_name) references city(city_name),
	constraint trip_email_fk foreign key(email) references members(email)
)

select * from member_trip

create table sns_data(
	data_number number(10) not null constraint sns_pk primary key,
	city_name varchar2(20) not null,
	tags varchar2(500) not null,
	sns_date varchar2(10) not null,
	constraint sns_city_fk foreign key(city_name) references city(city_name)
)

select * from sns_data

create table comments (
	comment_no number(10) not null constraint comm_pk primary key,
	commu_no number(10) not null,
	comment_text varchar2(50) not null,
	constraint comm_kf foreign key(commu_no) references community(commu_no)
)

select from comments

create table place (
	p_name varchar2(10) not null constraint place_pk primary key,
	p_address varchar2(20) not null,
	p_tel varchar2(20),
	p_introduce varchar2(20) not null,
	p_img varchar2(500) not null,
	city_name varchar2(20) not null,
	constraint p_fk foreign key(city_name) references city(city_name)
)

select * from place

create table domitory (
	d_name varchar2(50) not null constraint d_pk primary key,
	city_name varchar2(20) not null,
	d_address varchar2(100) not null,
	d_tel varchar2(20),
	d_type varchar2(20) not null,
	d_url varchar2(100),
	constraint d_fk foreign key(city_name) references city(city_name)
)

select * from domitory

create table restaurant(
	r_number number(10) not null constraint r_pk primary key,
	city_name varchar2(20) not null,
	r_name varchar2(100) not null,
	r_address varchar2(100) not null,
	r_tel varchar2(20),
	r_type varchar2(30) not null,
	constraint r_fk foreign key(city_name) references city(city_name)
)


commit

create table corona(
	c_date varchar2(10) not null constraint c_pk primary key,
	city_name varchar2(20) not null,
	confirmed_number number(5) not null,
)


drop table domitory


drop table members