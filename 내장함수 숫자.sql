--BUITIN FUNCTION ����

--ABS(����) : ���밪

SELECT ABS(-33.14) FROM DUAL;
SELECT * FROM EMPLOYEES WHERE ABS(SALARY) > 3000;

-- CEIL(n) : n�� ���ų� ���� ū ������ ��ȯ. ū ������ ���� ���� ���� ã��

-- FLOOR(n) : n���� �۰ų� ���� ū ������ ��ȯ. ���� ���� �� ���� ū ���� ã��

/* ROUND(n, i) : n�� �Ҽ�������(i+1)��°���� �ݿø�. i�� ��������
                    i�� ������ �Ҽ��� �������� ���� i��°���� �ݿø�*/

-- TRUNC(n1, n2) : �Ҽ��� n2�ڸ����� ������ �ڸ�

-- POWER(n) : ���� .ex)
SELECT POWER(2,3) FROM DUAL;

-- SQUT(n) : ������
SELECT SQRT(4) FROM DUAL;

/*MOD()/REMAINDER() : ������
REMAINDER�� �������� �� �޶� �Ⱦ���
*/
SELECT MOD(19,4), REMAINDER(19,4) FROM DUAL;

