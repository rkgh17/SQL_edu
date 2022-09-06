create table student(
name varchar2(32),
mobile varchar2(12)
);
insert into student values('John','77778888');
insert into student values('James','44445555');
insert into student values('Jacob','23235656');
select * from student;
delete from student where name='Jacob';
update student set mobile='33335555' where name = 'James';

create table member(name char(12), gender char(1));
select * from member;
insert into member values('John','M');
insert into member values('Johanson','F');
SELECT '['||NAME||']' FROM MEMBER; 
/*���ڿ�CHARŸ�� : ������ ���̰� �ִ���̺��� ������ �������� ��ĭ���� ä���. -> �����͸� ����. 
������ ������ VARCHAR2 : �ִ���̺��� �۰�, �����ͱ��̸�ŭ�� �Ҵ�.
MySQL�� VARCHAR*/
DROP TABLE MEMBER;

create table member(name varchar2(12), gender char(1));
select * from member;
insert into member values('John','M');
insert into member values('Johanson','F');
SELECT '['||NAME||']' FROM MEMBER; 

DROP TABLE MEMBER;
create table member(m_id number(5/*��ü ����(�Ҽ��� ����)*/,2/*�Ҽ��� ���ϱ���*/), name varchar2(12), gender char(1));
insert into member values(1,'John','M');
insert into member values(100000,'John','M'); --error
select * from member;

DROP TABLE MEMBER;
create table member(m_id number, name varchar2(12), gender char(1));
insert into member values(1,'John','M');
insert into member values(100000,'John','M');
select * from member;

DROP TABLE MEMBER;
create table member(m_id decimal, name varchar2(12), gender char(1));
insert into member values(1,'John','M');
insert into member values(100000,'John','M');
select * from member;


/*
��¥
date
timestamp
*/
DROP TABLE MEMBER;
create table member(m_id decimal, name varchar2(12), gender char(1), created date, ts timestamp);
insert into member values(1,'John','M',sysdate,systimestamp);
insert into member values(100000,'Johanson','F',sysdate,systimestamp);
select * from member;

drop table student;
create table student(
name varchar2(12), gender char(1), birthday varchar2(8), mobile varchar2(20), region varchar2(20)
);
select * from student;

drop table student;
create table student(
name varchar2(12), mobile varchar2(20)
);
insert into student values('Jane',null);
insert into student values(null,null);
insert into student values('James','null');
insert into student (name) values('Jacob'); -- insert���� �Ǵٸ� ǥ��
select * from student;

--�������� constraints
-- not null
drop table student;
create table student(
name varchar2(12) not null, mobile varchar2(20)
);
insert into student values('Jane',null);
insert into student values(null,null); -- error. name�� not null�̶� ���������� ���������Ƿ�
select * from student;

--unique
drop table student;
create table student(
name varchar2(12) not null, mobile varchar2(20) unique
);
insert into student values('Jane',null);
insert into student values(null,null); -- error
insert into student values('James','null');
insert into student (name) values('Jacob'); -- unique �� ��󿡼� null�� ���ܵ�.
insert into student (name,mobile) values('Jacob','44445555');
insert into student (name,mobile) values('Johanson','44445555'); -- Jacob�� mobile�� ����. unique ����

--default
drop table student;
create table student(
name varchar2(12) not null, now date default sysdate
);
select * from student;
insert into student values('John','22/09/09');
insert into student(name) values('James'); -- date�� �ƹ��͵� �ȳ־�����, default�� sysdate�� �����߱� ������ ����

drop table student;
create table student(
name varchar2(12) not null, gender char(1) default 'F'
);
insert into student values('John','M');
insert into student(name) values('John');
select * from student;