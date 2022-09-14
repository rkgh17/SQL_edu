/*
function : 반환값이 있는 모듈
procedure : 반환값이 없는 모듈
package : 함수와 프로시저를 모아놓은 모듈

PLSQL의 구성요소
변수 / 상수 / 연산자 / DML / PRAGMA / 라벨

변수
변수명 데이터타입 := 초기값/표현식;
변수명 테이블명.컬럼명%TYPE := 초기값;

PLSQL 코드블럭:
DECLARE : 변수선언
~~;
BEGIN : 실행
~~;
END;
/

dbms_output.put_line(변수);
*/

DECLARE
    vi_num number;
BEGIN
    VI_NUM := 100;
    DBMS_OUTPUT.PUT_LINE(VI_NUM);
END;
/

-- 2 + 5
DECLARE
    A NUMBER;
    B NUMBER;
BEGIN
    A:=2;
    B:=5;
    DBMS_OUTPUT.PUT_LINE(A+B);
END;
/

SET SERVEROUTPUT ON;
SET TIMING ON;
DECLARE
    VI_NUM NUMBER;
BEGIN
    VI_NUM:= 3+5;
    DBMS_OUTPUT.PUT_LINE(VI_NUM);
END;
/