/*
������

-��������� : +, -, * (asterisk), /, || (���ڿ� ���Ῥ����)
-�񱳿����� : =, !=, <>, <, >=, <=m ISNULL, is not null
-�������� : and, or, not
-���տ����� : union/union all, intersect, minus : ������(�ߺ�����), ������, ������
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
CASE
: SELECT �ȿ��� ���(WHERE���� ��� ����)

CASE WHEN ����1 THEN ��1 WHEN ����2 THEN ��2 ........ ELSE ��Ÿ �� END
*/

/*
SELECT
select �÷���1,....,�÷���n from ���̺��1,.....,���̺��n;
ex)
select * from student; / *student ���̺��� ��� �÷��� ���� �о �����޶�

�÷��� AS ALIASNAME
*/
select * from employees;
select employee_id,emp_name,salary from employees where salary>=5000 and salary<10000;
select employee_id,emp_name,salary from employees where salary BETWEEN 5000 and 9999;
select emp_name,manager_id from employees;
select emp_name,manager_id from employees where manager_id is null;
select emp_name, manager_id from employees where manager_id = '100';

COMMIT;

SELECT EMPLOYEE_ID AS EID, SALARY, 
    CASE  WHEN SALARY<=5000 THEN '    C' 
            WHEN SALARY>=5000 AND SALARY<=10000 THEN '    B' 
            ELSE '    A' END AS GRADE
    FROM EMPLOYEES; -- MYSQL�� AS�ʿ����

CREATE TABLE STS AS
SELECT EMPLOYEE_ID AS EID, EMP_NAME AS ENAME, SALARY FROM EMPLOYEES;
SELECT * FROM STS;

SELECT SALARY FROM EMPLOYEES WHERE NOT SALARY>10000;
select emp_name, salary from employees where salary between 5800 and 7000;

select emp_name, salary from employees where salary in (3000,4000,5000,6000,7000);
select emp_name, salary from employees where salary=any (3000,4000,5000,6000,7000);
select emp_name, salary from employees where salary=some (3000,4000,5000,6000,7000); -- �� ���� ���� ���

select emp_name from employees order by emp_name;
select emp_name from employees where emp_name like 'John%';
select emp_name from employees where emp_name like '%son %';
select emp_name from employees where emp_name like '% S%';


/*
LIKE    % : 0�� �̻��� ����
         _ : 1�� ���� ����
*/
select emp_name from employees where (emp_name like '%y%' OR emp_name like '%Y%');
select emp_name from employees where REGEXP_LIKE(emp_name, 'Y|y'); -- ���Ʒ� ����