/*
연산자

-산술연산자 : +, -, * (asterisk), /, || (문자열 연결연산자)
-비교연산자
-논리연산자
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
select 컬럼명1,....,컬럼명n from 테이블명1,.....,테이블명n;
ex)
select * from student; / *student 테이블의 모든 컬럼과 값을 읽어서 보여달라
*/
