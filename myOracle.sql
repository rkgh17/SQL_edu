-- BUILTIN FUNTION NULL

/* ★NVL(컬럼명, n) : 컬럼값이 NULL아니면, 그 칼럼값 출력 
                                   컬럼값이 NULL이면, n 출력. 이때 n은 컬럼의 데이터형식을 따라야 함
*/

SELECT EMP_NAME, MANAGER_ID FROM EMPLOYEES;
SELECT EMP_NAME, NVL(MANAGER_ID, '0') FROM EMPLOYEES;

/* NVL2(컬럼명, n1, n2) : 칼럼값이 NULL이면 n1
                                          NULL이면 n2
*/
SELECT EMP_NAME,MANAGER_ID, NVL2(MANAGER_ID, manager_id, '0') FROM EMPLOYEES;
SELECT EMP_NAME,MANAGER_ID, NVL2(MANAGER_ID, 1, '0') FROM EMPLOYEES;
SELECT EMP_NAME, COMMISSION_PCT FROM EMPLOYEES;

-- COALESCE : NULL이 아닌 첫 번째 표현식을 반환
