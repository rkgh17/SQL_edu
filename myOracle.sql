--JOIN

/*
INNER JOIN

EQUI 동등조인 : =
SEMI 세미조인 : <,> /IN, BETWEEN
ANTI 안티조인 : !=
SELF 셀프조인 : 같은 테이블을 조인
*/

-- EQUI JOIN
SELECT EMPLOYEE_ID,EMP_NAME,DEPARTMENT_ID FROM EMPLOYEES;
SELECT * FROM DEPARTMENTS;

SELECT EMPLOYEES.EMPLOYEE_ID, EMPLOYEES.EMP_NAME, DEPARTMENTS.DEPARTMENT_NAME
FROM EMPLOYEES, DEPARTMENTS
WHERE EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

SELECT a.EMPLOYEE_ID, a.EMP_NAME, b.DEPARTMENT_NAME, b.DEPARTMENT_ID
FROM EMPLOYEES a, DEPARTMENTS b
WHERE a.DEPARTMENT_ID = b.DEPARTMENT_ID;


/*사번, 이름, 직위명*/
SELECT A.EMPLOYEE_ID EID , A.EMP_NAME ENAME , b.job_title
FROM EMPLOYEES A, JOBS B
WHERE A.JOB_ID = B.JOB_ID;

--3중조인
SELECT A.EMPLOYEE_ID EID , A.EMP_NAME ENAME , b.job_title 직위명, c.department_name 부서
FROM EMPLOYEES A, JOBS B, departments c
WHERE A.JOB_ID = B.JOB_ID and a.department_id=c.department_id
order by eid;

-- 제품명, 고객명, 판매방식, 판매직원, 판매일자
SELECT A.PROD_NAME 제품명, B.CUST_NAME 고객명, C.CHANNEL_DESC 판매방식, D.EMP_NAME 판매직원, E.SALES_DATE 판매날짜
FROM PRODUCTS A, CUSTOMERS B, CHANNELS C, EMPLOYEES D, sales E
WHERE A.PROD_ID = E.PROD_ID AND B.CUST_ID = E.CUST_ID AND C.CHANNEL_ID = e.channel_id AND D.EMPLOYEE_ID = e.employee_id;


-- SEMI JOIN
SELECT A.DEPARTMENT_ID, A.DEPARTMENT_NAME
FROM DEPARTMENTS A, EMPLOYEES B
WHERE A.DEPARTMENT_ID=B.DEPARTMENT_ID
AND B.SALARY>3000 -- 세미조인.
ORDER BY A.DEPARTMENT_NAME;

-- SELF JOIN
SELECT EMPLOYEE_ID, EMP_NAME, MANAGER_ID FROM EMPLOYEES; --이럴때 필요

SELECT A.EMPLOYEE_ID 사원ID, A.EMP_NAME 사원명, A.MANAGER_ID 상사ID, B.EMP_NAME 상사명
FROM EMPLOYEES A, EMPLOYEES B
WHERE A.MANAGER_ID = B.EMPLOYEE_ID
ORDER BY 사원ID;

/*부서코드, 부서명, 상위부서명*/
SELECT A.department_id 부서코드, A.DEPARTMENT_NAME 부서명, B.DEPARTMENT_NAME 상위부서명
FROM DEPARTMENTS A, DEPARTMENTS B
WHERE A.PARENT_ID = B.DEPARTMENT_ID
ORDER BY 부서코드;

/*
OUTER JOIN

LEFT OUTER
RIGHT OUTER
FULL OUTER
*/