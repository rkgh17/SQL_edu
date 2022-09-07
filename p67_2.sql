/*
CRUD

drop table : schema+data�� ���ư�
truncate table : data�� ���ư�
*/
select table_name from user_tables; -- ������ ���� ���̺� ����Ʈ

/*
UPDATE(ORACLE)
1. ���̺�� ���� : rename ���̺�� to �ٲ����̺��

2. (��Ű��)�÷� ����
    �÷��̸� �߰� : ALTER TABLE ���̺�� ADD /�߰��� �÷� Ÿ��/
    �÷� ���� : ALTER TABLE ���̺�� DROP COLUMN /������ �÷���/
    �÷��̸� ���� : ALTER TABLE ���̺�� RENAME COLUMN �÷��� TO ���÷��� - Ÿ���� �״��
    �÷�Ÿ�� ���� : ALTER TABLE ���̺�� MODIFY �����÷��� /�ٲܵ�����Ÿ��/
    

UPDATE(MySQL)
MySQL�� �÷� �̸�/Ÿ��/���� ������ ORACLE���� ����
    �÷� ���� : ALTER TABLE ���̺�� CHANGE �÷��� /���÷��� ��Ÿ�� ������/
    ex) alter table std change mobile phone varchar(12) -> mobile�÷��� varchar(12)�� phone���� �ٲ�
        alter table std change mobile phone phone char(24) -> �÷� ����
*/

CREATE TABLE STUDENT(
NAME VARCHAR2(12),
GENDER CHAR(1)
);
RENAME STUDENT TO STD;
select * from std;