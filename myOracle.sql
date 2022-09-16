SELECT EMP_NAME , SUBSTR(TO_CHAR(HIRE_DATE,'yyyy-mm-dd'),1,4) FROM EMPLOYEES;
-- 입사연도별 인원수 -TO_CHAR, SUBSTR, GROUP BY

SELECT SUBSTR(TO_CHAR(HIRE_DATE,'yyyy-mm-dd'),1,4) 입사년도, COUNT(*) 인원수
FROM EMPLOYEES 
group by SUBSTR(TO_CHAR(HIRE_DATE,'yyyy-mm-dd'),1,4)
ORDER BY 입사년도;

DECLARE
    VS_HIRE VARCHAR2(100);
    VS_CNT NUMBER;
    CURSOR C1
    IS
        SELECT *
        FROM(
            SELECT SUBSTR(TO_CHAR(HIRE_DATE,'yyyy-mm-dd'),1,4) AS 입사년도, COUNT(*) AS 인원수
            FROM EMPLOYEES 
            group by SUBSTR(TO_CHAR(HIRE_DATE,'yyyy-mm-dd'),1,4)
            )
        ORDER BY 입사년도;
BEGIN
    OPEN C1;
    LOOP
        FETCH C1 INTO VS_HIRE, VS_CNT;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('입사년도 : ['||VS_HIRE||'] 인원수 : ['||VS_CNT||']');
    END LOOP;
    CLOSE C1;
END;
/

--FOR
DECLARE
    VS_HIRE VARCHAR2(100);
    VS_CNT NUMBER;
    CURSOR C1
    IS
        SELECT *
        FROM(
            SELECT SUBSTR(TO_CHAR(HIRE_DATE,'yyyy-mm-dd'),1,4) AS 입사년도, COUNT(*) AS 인원수
            FROM EMPLOYEES 
            group by SUBSTR(TO_CHAR(HIRE_DATE,'yyyy-mm-dd'),1,4)
            )
        ORDER BY 입사년도;
BEGIN
    FOR REC IN C1
    LOOP
        DBMS_OUTPUT.PUT_LINE('입사년도 : ['||REC.입사년도||'] 인원수 : ['||REC.인원수||']');
    END LOOP;
END;
/


DECLARE
BEGIN
    FOR REC IN (SELECT *
                    FROM (
                        SELECT SUBSTR(TO_CHAR(HIRE_DATE,'yyyy-mm-dd'),1,4) AS 입사년도, COUNT(*) AS 인원수
                        FROM EMPLOYEES 
                        group by SUBSTR(TO_CHAR(HIRE_DATE,'yyyy-mm-dd'),1,4))
                    ORDER BY 입사년도)
    LOOP
        DBMS_OUTPUT.PUT_LINE('입사년도 : ['||REC.입사년도||'] 인원수 : ['||REC.인원수||']');
    END LOOP;
END;
/