/*
VIEW
������ ������ select���� �ݺ������� ���� ��, ���ŷο��� �ٿ��ֱ� ���ؼ�

create or replace view ��� as select ����;
���� >    �÷���1,.....�÷���n
            where ���ǹ�

drop view ���;
*/
select emp_name, salary from employees; 
create or replace view worker as select emp_name, salary from employees;
select * from worker;
drop view worker;
select view_name from user_views; -- ����ڰ� ���� ��

/*
INDEX
DATA�� �˻��ӵ��� ������ �ϱ� ���� ���

create [unique][or replace] index �ε����� on ���̺��(�÷�1,......�÷�n);
drop index �ε�����
*/
create unique index ndx_name on student(name);
select * from user_indexes; --���� �ȳ���
select index_name from user_indexes;

/*
SYNONYM 
�����Ͱ�ü�� ���� �ٿ��ֱ�

create [or replace] synonym ���� for ���̺�;
drop synonym ����;
*/

/*
SEQUENCE
�Ϸù�ȣ �ڵ� ������(number generator)

CREATE SEQUENCE ��������
START WITH ���ۼ���
INCREMENT BY ��������
(NO)MINVALUE / MINVALUE �ּڰ�
(NO)MAXVALUE / MAXVALUE �ִ밪
(NO)CYCLE / CYCLE


��������.nextval -> ��������ȣ ����
select ��������.currval from dual -> ������ ������ ��ȣ Ȯ��
*/
drop table newstd;
create table newstd(mid number(2) not null, name varchar2(12));
select * from newstd;
insert into newstd values(1,'John');
insert into newstd values(2,'James');
insert into newstd values(3,'Johanson');

drop table newstd;
create table newstd(mid number(2) not null, name varchar2(12));
create sequence seq_mid start with 1 increment by 1;
drop sequence seq_mid;
insert into newstd values(seq_mid.nextval, 'John');
insert into newstd values(seq_mid.nextval, 'James');
insert into newstd values(seq_mid.nextval, 'Johanson');
insert into newstd values(seq_mid.nextval, 'Jane');
select * from newstd;
select seq_mid.currval from dual;

CREATE SEQUENCE S1 START WITH 10 INCREMENT BY -2 MAXVALUE 10;
SELECT S1.NEXTVAL FROM DUAL; -- �̰͸� �ĵ� ��������

/*
SELECT
select �÷���1,....,�÷���n from ���̺��1,.....,���̺��n;
ex)
select * from student; / *student ���̺��� ��� �÷��� ���� �о �����޶�
*/
