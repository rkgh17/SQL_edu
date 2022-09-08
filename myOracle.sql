/* 집합연산자
*/

create table exp_goods (
country varchar2(10),seq number,goods varchar2(80)
);
insert into exp_goods values('한국',1,'원유제외석유류');
insert into exp_goods values('한국',2,'자동차');
insert into exp_goods values('한국',3,'전자집적회로');
insert into exp_goods values('한국',4,'선박');
insert into exp_goods values('한국',5,'LCD');
insert into exp_goods values('한국',6,'자동차부품');
insert into exp_goods values('한국',7,'휴대전화');
insert into exp_goods values('한국',8,'환식탄화수소');
insert into exp_goods values('한국',9,'무선송신기디스플레이부속품');
insert into exp_goods values('한국',10,'철또는비합금강');

create table exp_goods_japan (
country varchar2(10),seq number,goods varchar2(80)
);
select * from exp_goods_japan;
insert all into exp_goods_japan values ('일본','1','자동차') 
into exp_goods_japan values ('일본','2','자동차부품')
into exp_goods_japan values ('일본','3','전자집적회로')
into exp_goods_japan values ('일본','4','선박')
into exp_goods_japan values ('일본','5','반도체웨이퍼')
into exp_goods_japan values ('일본','6','화물차')
into exp_goods_japan values ('일본','7','원유제외석유류')
into exp_goods_japan values ('일본','8','건설기계')
into exp_goods_japan values ('일본','9','다이오드트랜지스터')
into exp_goods_japan values ('일본','10','기계류')
select * from dual;


select * from exp_goods_korea;
select * from exp_goods_japan;
