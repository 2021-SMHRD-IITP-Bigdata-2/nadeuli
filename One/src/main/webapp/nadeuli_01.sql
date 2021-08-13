create sequence mem_num
start with 1
increment by 1;

--�������
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
--�������
CREATE TABLE city (
   city_name varchar2(20) NOT NULL,
   c_introduce varchar2(100),
   c_img varchar2(1000),
   constraint city_pk primary key(city_name)
);


select * from CITY

-- ��ȸ���� ��� �ؾ��ϳ�...?
create table community(
	commu_no number(10) not null constraint commu_pk primary key,
	title varchar2(50) not null,
	contents varchar2(500) not null,
	commu_date date not null,
	img_rink varchar2(500) null,
	city_name varchar2(20) not null,
	email varchar2(50) not null,
	cnt number(10),
	constraint commu_city_fk foreign key(city_name) references city(city_name),
	constraint commu_email_fk foreign key(email) references members(email)
);

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MM-DD'

commit
drop table community



delete from COMMUNITY where commu_no = 1;

insert into COMMUNITY
values(comm_num.nextval,'������ ���ַ� �������.','���̿����� ���־��',To_Char(sysdate,'yyyymmdd'),null,'���ֱ�����','test1',0);
	-- insert into community values(comm_seq.nextval, 'test','1','�׽�Ʈ�Դϴ�.',sysdate);
	
insert into community values(comm_num.nextval,'����','����',To_Char(sysdate,'yyyymmdd'),null,?,?,0)
insert into community values(comm_num.nextval,'����','����',to_char(sysdate,'yyyy.mm.dd'),null,'������','test1',0)
select * from community

alter table community modify commu_date varchar(20)

delete from community where city_name = '���ֱ�����' 

select * from community


--�������
create table member_trip(
	email varchar2(50) NOT NULL,
	city_name varchar2(20) not null,
	constraint trip_city_fk foreign key(city_name) references city(city_name),
	constraint trip_email_fk foreign key(email) references members(email)
)

select * from member_trip

--�������
create table sns_data(
	city_name varchar2(20) not null,
	tags varchar2(2000) not null,
	s_date varchar2(50) not null,
	constraint sns_city_fk foreign key(city_name) references city(city_name)
)

select * from sns_data

drop table sns_data

create table comments (
	comment_no number(10) not null constraint comm_pk primary key,
	commu_no number(10) not null,
	comment_text varchar2(50) not null,
	email varchar2(50) NOT NULL,
	comment_date date not null,
	constraint comm_kf foreign key(commu_no) references community(commu_no),
	constraint comm_email_fk foreign key(email) references members(email)
)

insert into comments values(,?,?,?,?)

select * from comments

drop table comments

-- �������
create table place (
	city_name varchar2(20) not null,
	p_name varchar2(50) not null constraint place_pk primary key,
	p_address varchar2(100) not null,
	p_tel varchar2(50),
	p_url varchar2(300),
	p_img varchar2(500) not null,
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
	d_img varchar2(1000),
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

desc user_table

drop sequence comm_num


create sequence comm_num
start with 1
increment by 1

select * from community
	
update community set cnt = 1 where commu_no = 3

update community set cnt = (select cnt from community where commu_no= 3 )+1 where commu_no = 3

select * from domitory

select count(*) from community

select count(*) from community where title = '����'

drop table domitory
select * from domitory
select
	
Select * from domitory where city_name = '���ֱ�����' and d_name like '%�Ѽ�%' and d_type = 'ȣ��'
Select * from domitory where city_name = ? and d_type = 'ȣ��' and d_name like '%�Ѽ�%'
	
alter table sns_data
drop column city_number

select * from restaurant
select * from restaurant

select * from place

create sequence commu_no
start with 1
increment by 1;

insert into comments values(commu_no.nextval,3,'�����׿�','test1',sysdate)

update place set p_name='���걸 ���ο��� ģȯ�� ķ����' where p_tel = '010 3275 3450'

select count(*) from comments where commu_no = 43;

select manager_id ,count(*) as count
from employees
where manager_id like '1%' or manager_id like '2%'
group by manager_id
order by count desc
/

select * from city

select c_introduce from city where city_name = '���ֱ�����'

select city_name, count(*) as count from sns_data where tags like '%����%' or tags like '%����%' group by city_name order by count desc

select city_name, count(*) as count from sns_data where tags like '% %' group by city_name order by count desc

select * from place

alter table place
rename column place_name to city_name

alter table city
drop column wdc


select * from place where city_name ='������';

select * from place

alter table city
add city_no number(10)

update city set wdc = 'https://drive.google.com/file/d/1VA-EZ09pURVKSS4P5iSlxiwBxIgB5yLV/view?usp=sharing' where city_name like'%����%'

update city set wdc = 'https://drive.google.com/file/d/1IJlakBtPYvrdUwszQjjcpyVsIbqS1sR1/view?usp=sharing' where city_name like'%����%'
update city set wdc = 'https://drive.google.com/file/d/16_m48ehTZBp5vKuietozQJ7yN3mK9QhK/view?usp=sharing' where city_name like'%�%'
update city set wdc = 'https://drive.google.com/file/d/1xZtOAIsK9q4aQ0YtxXC8SSP5V7xTdRWl/view?usp=sharing' where city_name like'%����%'
update city set wdc = 'https://drive.google.com/file/d/1WR9vliulC7ZQ6l-9Z8HX0iSIv-Xcc10a/view?usp=sharing' where city_name like'%����%'
update city set wdc = 'https://drive.google.com/file/d/1rRnvwTKR8MKPeVn0RCQGdkxAuFgvCLHg/view?usp=sharing' where city_name like'%����%'
update city set wdc = 'https://drive.google.com/file/d/1TmPzS_Xr1inkwO5lXLVWMFBds7c3YsM-/view?usp=sharing' where city_name like'%����%'
update city set wdc = 'https://drive.google.com/file/d/1QToeKYRnjA3C7gMgMBzwOmtZ5-If35iv/view?usp=sharing' where city_name like'%���%'
update city set wdc = 'https://drive.google.com/file/d/1Q8sCc7YW_-_XH623Y5BwtogtuEy05t_w/view?usp=sharing' where city_name like'%����%';
update city set wdc = 'https://drive.google.com/file/d/1W4BL92eYtLHSkfcEsTNoG7jO-Ouxk_VV/view?usp=sharing' where city_name like'%����%';
update city set wdc = 'https://drive.google.com/file/d/1Ykuct0QV2JzGAGIoDUGVvanHtzB5Q_-q/view?usp=sharing' where city_name like'%����%';
update city set wdc = 'https://drive.google.com/file/d/1pliF4St4fNyr4x1DiSy0jjrf2F4OXm2E/view?usp=sharing' where city_name like'%��õ%';
update city set wdc = 'https://drive.google.com/file/d/17EN2Ta1ytApOArm15Vk4z6ejFKjN1is_/view?usp=sharing' where city_name like'%�ž�%';
update city set wdc = 'https://drive.google.com/file/d/1kwwnVH8j2Cm0hKXkf9wYV3gyx559VMt8/view?usp=sharing' where city_name like'%����%';
update city set wdc = 'https://drive.google.com/file/d/1Rgg2mEI3-8FK799qyORjM9J-TO3aVbJe/view?usp=sharing' where city_name like'%����%';
update city set wdc = 'https://drive.google.com/file/d/1AB2L52UzHf9zTviyqd9Fa3Xtd80Eg84D/view?usp=sharing' where city_name like'%�ϵ�%';
update city set wdc = 'https://drive.google.com/file/d/1Vbz8sqSIyJTI_eni-6CWRDAlYGT7NMfT/view?usp=sharing' where city_name like'%�强%';
update city set wdc = 'https://drive.google.com/file/d/1fBMTkpZhr9MW4S4tJUyfOZRkV_Gx45Di/view?usp=sharing' where city_name like'%����%';
update city set wdc = 'https://drive.google.com/file/d/103wBiMfkaUcgyBhnhKeCFz6rcM893Kmj/view?usp=sharing' where city_name like'%����%';
update city set wdc = 'https://drive.google.com/file/d/19F3YSxtcyoP5Hg7Mb4YUNkyC7MZBZdD6/view?usp=sharing' where city_name like'%����%';
update city set wdc = 'https://drive.google.com/file/d/1Plc7Urcv3sbdoVQWQUyBSCF_NX6CsJbp/view?usp=sharing' where city_name like'%�س�%';
update city set wdc = 'https://drive.google.com/file/d/1Upd6fB9-lAzcpsLtp1q_H28dIvs04RyB/view?usp=sharing' where city_name like'%ȭ��%';

select * from city

select * from city

update city set c_introduce = '�ٵ����� ������ �ڿ������ �ڶ��ϴ� ��' where city_name ='�žȱ�'

select * from city

update city set city_no = 23 where city_name ='�žȱ�';
select * from city;








