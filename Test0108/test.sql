CREATE TABLE member(
id varchar2(6) PRIMARY KEY,
name varchar2(12) not null,
code varchar2(12) not null
)
drop table member
drop table depart
CREATE TABLE depart(
code varchar2(4) not null,
dname varchar2(12) not null
)

insert into member values('d01','kim','com');
insert into member values('d02', 'lee','com');
insert into member values('d03', 'choi','han');
insert into member values('d04', 'park','han');

insert into depart values('com', '컴퓨터');
insert into depart values('com', '컴퓨터');
insert into depart values('han', '국어');
insert into depart values('han', '국어');
commit

select * from member
select * from depart

select m.M_NO, m.M_name, d.D_code, d.d_name from member m, depart d 
where m.D_code = d.D_code; 
