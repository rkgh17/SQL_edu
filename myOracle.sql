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