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
/*문자열CHAR타입 : 데이터 길이가 최대길이보다 작으면 나머지를 빈칸으로 채운다. -> 데이터를 낭비. 
가변형 변수인 VARCHAR2 : 최대길이보다 작게, 데이터길이만큼만 할당.
MySQL은 VARCHAR*/
DROP TABLE MEMBER;

create table member(name varchar2(12), gender char(1));
select * from member;
insert into member values('John','M');
insert into member values('Johanson','F');
SELECT '['||NAME||']' FROM MEMBER; 

DROP TABLE MEMBER;
create table member(m_id number(5/*전체 길이(소숫점 포함)*/,2/*소수점 이하길이*/), name varchar2(12), gender char(1));
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
날짜
date
timestamp
*/