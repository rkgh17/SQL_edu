/* GROUP BY / HAVING

GROUP BY : 특정값을 가진 컬럼끼리 묵는다.
               ☆집계함수와 같이 써야함.

HAVING : GROUP BY의 결과에 집계함수의 조건을 추가.
*/
SELECT JOB_ID, COUNT(*) FROM EMPLOYEES 
GROUP BY JOB_ID;

SELECT JOB_ID, COUNT(*), SUM(SALARY) FROM EMPLOYEES 
GROUP BY JOB_ID;
-- SELECT GU_NAME, SUM(*) FROM SEOUL_CITIZN GROUP BY GU_NAME;

-- 매니저 사번별 부하직원 숫자
SELECT MANAGER_ID AS M_ID,  COUNT(*) AS 부하직원 FROM EMPLOYEES 
GROUP BY MANAGER_ID ORDER BY M_ID ;

--월급별 직원숫자
SELECT SALARY, COUNT(*) FROM employees 
GROUP BY SALARY ORDER BY SALARY;

-- 부서코드별 월급합계
SELECT DEPARTMENT_ID AS 부서코드, SUM(SALARY) AS 합계 FROM EMPLOYEES 
GROUP BY DEPARTMENT_ID ORDER BY 부서코드;

--HAVING
SELECT * FROM employees;
SELECT MANAGER_ID AS M_ID,  COUNT(*) AS 부하직원 FROM EMPLOYEES 
GROUP BY MANAGER_ID 
HAVING COUNT(*)>1 ORDER BY M_ID ;

SELECT MANAGER_ID AS M_ID,  COUNT(*) AS 부하직원0 FROM EMPLOYEES  WHERE MANAGER_ID>12 
GROUP BY MANAGER_ID 
HAVING COUNT(*)=8 ORDER BY M_ID ;