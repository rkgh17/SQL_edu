/*
������

-��������� : +, -, * (asterisk), /, || (���ڿ� ���Ῥ����)
-�񱳿�����
-��������
*/
select 3+5 from dual;
select 3-5 from dual;
select 3*5 from dual;
select 3/5 from dual;

select salary from employees;
select salary, salary*1.1 from employees;
select emp_name,salary from employees where salary*2>20000;
select '['||emp_name||']'
from employees;

/*
SELECT
select �÷���1,....,�÷���n from ���̺��1,.....,���̺��n;
ex)
select * from student; / *student ���̺��� ��� �÷��� ���� �о �����޶�
*/
