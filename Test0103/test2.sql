drop table member2

create table member2(
id varchar2(6) primary key,
name varchar2(12) not null,
age number(3) default 0,
constraint check_member2_age_200_down check (age < 200)
)

insert into member2 values('p001','a',1);
insert into member2 values('p002','b',2);
insert into member2 values('p003','c',3);
insert into member2 values('p004','d',4);
insert into member2 values('p005','e',5);
insert into member2 values('p006','f',6);
insert into member2 values('p006','f',6);
insert into member2 values('p007','g',7);
insert into member2 values('p008','h',8);
insert into member2 values('p009','i',9);
insert into member2 values('p010','j',10);
commit

--1.member2 테이블에 있는 모든 데이터 가져오기 모든컬럼도!
select * from member2

--2. member2 테이블에 있는 모든 데이터를 가져오기 단 id,name 만
select id,name from member2

--3.member2 테이블에 있는 특정 조건의 데이터를 가져오기 단 모든 컬럼 조건은 age > 5
select * from member2 where age>5

--4.member2 테이블에 있는 특정 조건의 데이터 가져오기 단 id와 age 컬럼만 가져온다 조건은 id> m003
select id, age from member2 where id > 'p003'

--5. 컬럼에 별명 지어주기
select id 계정 ,age as 나이 from member2

--6. 한국인들의 모든 성씨를 조회하려 합니다.
insert into member2 values ('p012','a',44)
commit
select distinct name  from member2

--6.  레코드 정렬.
select id,name,age as 나이 from member2 order by age desc
--desc 내림차순 asc 오름차순
--나이가 점점 작아지게
select id, name, age from member2 order by age asc

--7. member2 테이블의 모든 회원의 레코드를 name 내림차순으로 정렬 하시오 
select * from member2 order by name desc

select * from member2 where age = 2
select * from member2 where age > 2
select * from member2 where age < 2
select * from member2 where age != 2 

select * from member2 where name = 'a'

select * from member where did is null
--member 테이블에서 did가 null이 아닌 레코드 조회하기
SELECT * from member where didi is not null

select * from member2 where age > 2 and age < 7
select * from member2 where age = 4 or age = 7
select * from member2 where age >= 2 and age <=7
select * from member2 where age between 2 and 7

--9. 조건이 온전하지 않는 레코드 찾기
-- _:글자 한자인데 뭔지 모름.
-- %: 글자를 의마함.. 한 글일수도 있고 여러 글자일 수도 있음.
select * from member2 where id like '%1%'

select * from member2 where id like '___2'

--id 중에서 3번째 글자가 0인 레코드 찾기
select * from member2 where id like '__0_'

select id, name, age, dname from member natural join depart
