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

--1.member2 ���̺� �ִ� ��� ������ �������� ����÷���!
select * from member2

--2. member2 ���̺� �ִ� ��� �����͸� �������� �� id,name ��
select id,name from member2

--3.member2 ���̺� �ִ� Ư�� ������ �����͸� �������� �� ��� �÷� ������ age > 5
select * from member2 where age>5

--4.member2 ���̺� �ִ� Ư�� ������ ������ �������� �� id�� age �÷��� �����´� ������ id> m003
select id, age from member2 where id > 'p003'

--5. �÷��� ���� �����ֱ�
select id ���� ,age as ���� from member2

--6. �ѱ��ε��� ��� ������ ��ȸ�Ϸ� �մϴ�.
insert into member2 values ('p012','a',44)
commit
select distinct name  from member2

--6.  ���ڵ� ����.
select id,name,age as ���� from member2 order by age desc
--desc �������� asc ��������
--���̰� ���� �۾�����
select id, name, age from member2 order by age asc

--7. member2 ���̺��� ��� ȸ���� ���ڵ带 name ������������ ���� �Ͻÿ� 
select * from member2 order by name desc

select * from member2 where age = 2
select * from member2 where age > 2
select * from member2 where age < 2
select * from member2 where age != 2 

select * from member2 where name = 'a'

select * from member where did is null
--member ���̺��� did�� null�� �ƴ� ���ڵ� ��ȸ�ϱ�
SELECT * from member where didi is not null

select * from member2 where age > 2 and age < 7
select * from member2 where age = 4 or age = 7
select * from member2 where age >= 2 and age <=7
select * from member2 where age between 2 and 7

--9. ������ �������� �ʴ� ���ڵ� ã��
-- _:���� �����ε� ���� ��.
-- %: ���ڸ� �Ǹ���.. �� ���ϼ��� �ְ� ���� ������ ���� ����.
select * from member2 where id like '%1%'

select * from member2 where id like '___2'

--id �߿��� 3��° ���ڰ� 0�� ���ڵ� ã��
select * from member2 where id like '__0_'

select id, name, age, dname from member natural join depart
