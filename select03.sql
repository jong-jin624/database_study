단일행 함수

select * from dual;
dual : 더미 데이터 들어있는 임시 테이블

select INITCAP('abc') from dual;
select ename, INITCAP(ename) from emp;

select name, LOWER(name), UPPER(name)
from student;

select name, LENGTH(name)
from student;

select
    LENGTH('abcdefdo'), LENGTHB('abcdefdo'),
    LENGTH('한글'), LENGTHB('한글')
from dual;

select *
from emp
where LENGTH(ename) >= 5;

select '아침' || '점심', CONCAT('아침', '점심')
from dual;

select 
    '아침' || '점심' || '저녁',
    CONCAT( CONCAT('아침', '점심'), '저녁')
from dual;

--SUBSTR(대상값/컬럼명, 시작지점, 자릿수)
select
    SUBSTR('abcdefg', 1, 3),
    SUBSTR('abcdefg', 3, 5),
    SUBSTR('abcdefg', -4, 2),
    SUBSTR('abcdefg', -3, 3)
from dual;

--INSTR 대상값 컬럼명, 찾는값

select 
    INSTR('2025-06-05 10:22:45', '-'),
    INSTR('2025-06-05 10:22:45', ':'),
    INSTR('2025-06-05 10:22:45', '-', 6),
    INSTR('2025-06-05 10:22:45', '-', 1, 2)
from dual;

select 
    tel,
    INSTR(tel, ')'),
    INSTR(tel, '-')
from student;

select
    LPAD('문자', 10, '-'),
    RPAD('13kd', 8, '*'),
    LPAD(5, 2, 0),
    LPAD(5, 3, 0),
    LPAD(75, 2, 0)
from dual;

select
    '*' || LTRIM(' abcd ') || '*',
    RTRIM(' abcd '),
    TRIM(' abcd '),
    LTRIM('**abcd**', '*'),
    RTRIM('**abcd**', '*')
from dual;

--문자바꾸기
select
    REPLACE('abcde', 'c', '/')
from dual;

select
    birthday,
    REPLACE(birthday, '/', '$')
from student;

select
    ROUND(1.123),
    ROUND(1.78),
    ROUND(1.78, 1),
    ROUND(1.786485, 3),
    ROUND(1.786485, 0),
    ROUND(3489.786485, -1),
    TRUNC(1.3556),
    TRUNC(1.3556, 2),
    MOD(15, 4),
    CEIL(123.123),
    FLOOR(123.123),
    POWER(6, 3)
from dual;

select
    rownum,
    CEIL(rownum/3) 그룹번호,
    CEIL(rownum/4) 팀번호,
    empno,
    ename
from emp;

--날짜

select
    SYSDATE,
    SYSTIMESTAMP,
    MONTHS_BETWEEN('2024-01-05', '2024-03-05'),
    MONTHS_BETWEEN('2024-11-05', '2024-06-20')
from dual;

select
    ADD_MONTHS(SYSDATE, 3),
    ADD_MONTHS(SYSDATE, 6),
    ADD_MONTHS(SYSDATE, -7),
    LAST_DAY(SYSDATE),
    NEXT_DAY(SYSDATE, '수'),
    NEXT_DAY(SYSDATE, '토')
from dual;

select 
    SYSDATE,
    ROUND(SYSDATE), -- 오후 12시 (하루기준 절반) 지나면 오늘날짜 + 1됨
    TRUNC(SYSDATE),
    TRUNC(SYSDATE, 'YY'),
    TRUNC(SYSDATE, 'MM'),
    TRUNC(SYSDATE, 'DD'),
    ADD_MONTHS(SYSDATE, 1),
    SYSDATE +3,
    SYSDATE +7,
    LAST_DAY(SYSDATE)+1,
    TRUNC(ADD_MONTHS(SYSDATE, 1), 'MM'),
    LAST_DAY(ADD_MONTHS(SYSDATE, -1)),
    TRUNC(SYSDATE, 'MM')-1
from dual;