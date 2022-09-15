/* PLSQL PROCEDURE

CREATE OR REPLACE PROCEDURE 프로시저명
    (매개변수1 [IN | OUT | IN OUT] 데이터타입 [:= 디폴트 값], 
    매개변수2 [IN | OUT | IN OUT] 데이터타입 [:= 디폴트 값], ...)
IS
    변수, 상수 등 선언
BEGIN
     실행부
     [RETURN]
[EXCEPTION 예외처리부]
END [프로시저이름];
/

실행방법
SQLPLUS / SQL DEVELOPER 안에서
EXECUTE 프로시저명; <- 실행

삭제방법
DROP PROCEDURE 프로시저명;

*
funtion/procedure 이름(a number, b narchar2 :='', c number:=0)
이름(10,'x',4)
이름(10) == 이름(10,'',0)
이름(10,'x') == 이름(10,'x',0)
이름(10, , 4) 불가 -> 맨 뒷거만 생략가능
*/

-- 입력 : 부서코드. | 출력 : 부서명, 부서인원수, 월급합계
CREATE OR REPLACE PROCEDURE getSum(DID DEPARTMENTS.DEPARTMENT_ID%TYPE)
IS
    strDname DEPARTMENTS.DEPARTMENT_NAME%TYPE := '';
    total_sal number := 0;
    howmany number := 0;
BEGIN
    SELECT DEPARTMENT_NAME
    INTO strDname
    FROM DEPARTMENTS
    WHERE DEPARTMENT_ID = DID;

    SELECT SUM(SALARY), COUNT(*)
    INTO total_sal, howmany
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID=DID
    GROUP BY DEPARTMENT_ID;
    dbms_output.put_line('부서명 ['||strDname||'], 총급여 ['||total_sal||'], 총인원수 ['||howmany||']');
END;
/

EXECUTE getSum(90);

select * from user_source where type='PROCEDURE';