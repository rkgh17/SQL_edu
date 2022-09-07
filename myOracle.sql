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
*/
drop table newstd;
create table newstd(mid number(2) not null, name varchar2(12));
select * from newstd;
insert into newstd values(1,'John');
insert into newstd values(2,'James');
insert into newstd values(3,'Johanson');


/*
SELECT
select �÷���1,....,�÷���n from ���̺��1,.....,���̺��n;
ex)
select * from student; / *student ���̺��� ��� �÷��� ���� �о �����޶�
*/
