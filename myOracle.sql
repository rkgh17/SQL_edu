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