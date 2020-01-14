create table dapart(
did varchar2(6) primary key,
dname varchar2(21) not null
)

insert into depart values ('d001', '영문학과')
insert into deaprt values ('d002', '기계')
insert into dapart values ('d003', '법학과')
commit

drop table dapart cascade constraints


CREATE TABLE member (
id varchar2(6) PRIMARY KEY,
name varchar2(12) not null,
did varchar2(6),
age number(3),
constraint check_member_age_200_down check(age<200),
constraint fk_member_did_depart_did foreign key(did) references depart(did)
)

insert into member (id, name, did, age) value ('m001', 'kim', null, 22);

insert into member (id, name, did, age) value ('m002', lee , 'd001', 33);

drop table member



CREATE TABLE member(
id varchar2(6) PRIMARY KEY,
name varchar2(12) not null,
age number(3) default 0,
constraint check_member_age_200_down check(age<200)
)

insert into member (id, name, age) values('m001', 'aaa', 1)
insert into member (id, name, age) values('m002', 'bbb', 2)
insert into member (id, name, age) values('m003', 'ccc', 3)
insert into member (id, name, age) values('m004', 'ddd', 4)
insert into member (id, name, age) values('m005', 'eee', 5)
insert into member (id, name, age) values('m006', 'fff', 6)
insert into member (id, name, age) values('m007', 'ggg', 7)
insert into member (id, name, age) values('m008', 'hhh', 8)
insert into member (id, name, age) values('m009', 'iii', 9)
insert into member (id, name, age) values('m010', 'jjj', 10)

insert into member(id,,name) values('m002','lee')
select age from member where id = 'm002'


drop table member

drop table member


alter table member add unique(id)
insert into member(id, name, age) values('m001','kim',21)
insert into member(id,name,age) values('m001','lee',11)
alter table member drop unique (id)
alter table member modify name not null 
insert into member(id, age) values('m003',33)

alter table member add constraint default_age_0 

alter table member add constraint check_age_200_down check(age<200)
insert into member values('m001','kim',150)

alter table member drop constraint check_age_200_down



alter table member add job varchar2(12)
alter table member modify job varchar2(24)
alter table member rename column job to work
alter table member drop column work


drop table student
drop table member


CREATE TABLE member(
id varchar2(6),
name varchar2(12),
age number(3)
)

