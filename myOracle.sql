/* PLSQL 사용자 정의 함수

CREATE OR REPLACE FUNTION 함수명(매개변수1 데이터타입, 매개변수 2 데이터타입, ...)
RETURN (반환값의) 데이터타입;
IS[AS]
    변수, 상수 등 선언
BEGIN
     실행부
     RETURN 반환값;
[EXCEPTION 예외처리부]
END [함수이름];

*/

CREATE OR REPLACE FUNCTION showLevel(sal employees.salary%type)
return varchar2
is
    str varchar2(80);
begin
    if sal between 1 and 3000 then
        str:='하위';
    elsif sal between 3001 and 6000 then
        str:='중위';
    elsif sal between 6001 and 10000 then
        str:='상위';
    else
        str:='최상위';
    end if;
    return str;
end;
/
select emp_name, salary, showlevel(salary) from employees;