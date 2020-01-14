drop table member
drop table depart

select * table member
select * table depart

CREATE TABLE member (
id varchar2(6) PRIMARY KEY,
name varchar2(12) not null,

did varchar2(6),
age number(3)
)

insert into member values ('m001', 'kim', 'd001', 22)
insert into member values ('m002', 'lee', 'd002', 33)
commit

CREATE TABLE depart(
did varchar2(6) PRIMARY KEY,
dname varchar2(21) not null
)

insert into depart values ('d001', '영문학과');
insert into depart values ('d002', '기계');
insert into dapart values ('d003', '법학과');
commit

select m.id, m.name, d.did, d.dname from MEMBER m, DEPART d
where m.did = d.did

select m.id, m.name, m.age, d.did, d.dname
from MEMBER m inner join DEPART d
on m.did = d.did

select m.id, m.name, m.age, d.did, d.dname
from MEMBER m inner join DEPART d
on m.did = d.did
where m.name = 'lee'

select * from MEMBER m natural join DEPART d 

select * from MEMBER m , DAPART d
on (m.did = d.did)

select * from MEMBER m join DEPART d
using(did,did)

--member table의 외래키 컬럼명과 depart table의 주키 컬럼명이 다를때..
--select * from
--MEMBER m natural join DEPART d
--on (m.did = d.did)

--컬럼명은 같음..컬럼의 크기가 다를 때..
--select * from
--MEMBER m join DEPART d
--using(did)

select * from MEMBER m left outer join DEPART d
on m.did = d.did

select * from DEPART d right outer join MEMBER m
on m.did = d.did

select * from DEPART d full outer join member m 
on m.did = d.did

--select 문의 결과는 또 다른 테이블... select id from(select * from member) 서브퀄? 서브쿼리?
--발음 존나 좆같네

--오라클에는 rownum이라고 하는 가상 컬럼이 존재합니다.

select rownum rnum, m.id
from DEPART d full outer join MEMBER m
on m.did = d.did order by m.id desc

===========================================================
select sysdate from dual 

select floor (MONTHS_BETWEEN(SYSDATE, '1990-02-01')/12) from dual

CREATE TABLE member3(
ID VARCHAR2(6) PRIMARY KEY,
NAME VARCHAR2(12) NOT NULL,
BIRTH DATE not null
)

insert into member3 values ('m0201', 'kim', '1990-02-01')
commit

select (TO_CHAR(sysdate, 'yyyy') - TO_CHAR(BIRTH, 'yyyy'))+1 from member3


==================================================================================================================

select * from DEPART    -- 물리적테이블

create or replace view v_depart   --가상의 테이블 논리적 테이블 
as
select * from depart 

select * from v_depart

insert into v_depart values ('d004','아프라카어')

drop view v_depart

create or replace view v_depart as
select * from depart
with read only

insert into v_depart values('d005','서번어')

CREATE or replace view v_depart
as
select * from DEPART
where dname != '법학과'
with check option 

update v_depart set did = 'd001' where did = 't001'
update v_depart set dname = '서번어학과' where did = 'd001'

select * from MEMBER

create index idx_member_name_did
on member(name, did)

create index idx_member_name
on MEMBER(name)

create table bank (
	id varchar(6) primary key,
	balance number(4) default 0
)

insert into bank values ('b001', 1000);
insert into bank values ('b002', 0);
commit

select * from bank

update bank set balance = 1000 where id = 'b002'
commit





drop table bank
