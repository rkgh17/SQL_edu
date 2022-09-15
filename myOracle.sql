/* 트랜잭션
Transaction 시작(암묵적)
- SQLPlus / SQL Developer 실행시
- COMMIT/ROLLBACK 실행후

Transaction 종룍(암묵적)
- SQLPlus / SQL Developer 종료(자동 COMMIT실행)
- SQLPlus / SQL Developer 비정상 종료 (ROLLBAKC)
=> 정전, 윈도우 비정상종료

Transaction에 포함되지 않는 SQL문
: DDL (CREATE / DROP / ALTER / TRANCATE / GRANT / REVOKE)

ROLLBACK
: COMMIT된 상황으로 되돌아감.

SAVEPOINT 레이블
ROLLBACK [to 레이블];
*/

/* 예외처리

DECLARE
BEGIN
    실행문;
    EXCEPTION 
    WHEN 예외종류 THEN
        예외처리 구문;
    ...
    WHEN OTHERS THEN 
        예외처리 구문N;

*/