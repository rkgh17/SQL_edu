/*
������

-��������� : +, -, * (asterisk), /, || (���ڿ� ���Ῥ����)
-�񱳿����� : =, !=, <>, <, >=, <=m ISNULL, is not null
-�������� : and, or, not
���տ����� : union/union all, intersect, minus : ������(�ߺ�����), ������, ������
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

select salary from employees;
select * from employees where salary is not null;
select emp_name, salary, hire_date from employees where salary<5000 and hire_date< '05/01/01';


/*
SELECT
select �÷���1,....,�÷���n from ���̺��1,.....,���̺��n;
ex)
select * from student; / *student ���̺��� ��� �÷��� ���� �о �����޶�
*/
