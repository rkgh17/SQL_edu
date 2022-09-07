/*
INSERT
insert into ���̺�� values(��1, ��2, ��3....);

���ϴ� �÷��� ������ �ֱ�
insert into ���̺��(�÷���1, ...�÷���n) values(��1, .... ��n);

MySQL�� ��� �� ���� ��� �� ����
insert into ���̺�� set �÷���1=��1, ...... �÷���n=��n;
*/
create table student(
name varchar2(12) not null,
gender char(1) default 'F', 
birthday char(8) default '00000000', 
mobile varchar2(12), 
area varchar2(20), 
english number(3) default 0, 
math number(3) default 0, 
korean number(3) default 0);
select * from student;
insert into student values('Ȳ����', 'M','19961001','01055554444','����','100','100','100');
insert into student values('Ȳ����', 'F','19941001','01066664444','����','100','100','100');

insert into student (name, gender, birthday, mobile, area) values('����','M','19960101','01011112222','����');
insert into student (name, birthday, mobile, area) values('������','19960101','01022221111','����');

/*
DELETE
delete from ���̺�� where ���ǹ�[�÷��� �񱳿����� ��]
ex) delete from student where name='John';
*/

delete from student where name='Ȳ����';
select * from student;
delete from student; --���̺� �� ��ü����>����

/*
UPDATE
update ���̺�� set �÷���1=��1, ...... �÷���n=��n where ���ǹ�[�÷��� �񱳿����� ��]
ex) update student set mobile='00000000' where name = 'John';

null���϶�
where �÷��� IS NULL;
where �÷��� IS NOT NULL;
*/
update student set mobile='00000000', area='���' where name = '����';
update student set math=100; -- mathe���� �� ��ü 100
select * from student;
