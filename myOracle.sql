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




/*
SELECT
select �÷���1,....,�÷���n from ���̺��1,.....,���̺��n;
ex)
select * from student; / *student ���̺��� ��� �÷��� ���� �о �����޶�
*/
