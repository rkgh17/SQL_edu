/*
VIEW
복잡한 조건의 select문이 반복적으로 사용될 때, 번거로움을 줄여주기 위해서

create or replace view 뷰명 as select 문장;
문장 >    컬럼명1,.....컬럼명n
            where 조건문

drop view 뷰명;
*/
select emp_name, salary from employees; 
create or replace view worker as select emp_name, salary from employees;
select * from worker;
drop view worker;
select view_name from user_views; -- 사용자가 만든 뷰

/*
INDEX
DATA의 검색속도를 빠르게 하기 위해 사용

create [unique][or replace] index 인덱스명 on 테이블명(컬럼1,......컬럼n);
drop index 인덱스명
*/
create unique index ndx_name on student(name);




/*
SELECT
select 컬럼명1,....,컬럼명n from 테이블명1,.....,테이블명n;
ex)
select * from student; / *student 테이블의 모든 컬럼과 값을 읽어서 보여달라
*/
