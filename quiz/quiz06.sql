--1.
emp 테이블에서 20 번 부서에 소속된 직원들의 이름과 3-4 번째
글자만 '-' 으로 변경해서 출력하세요 .
select
    ename,
    REPLACE(ename, SUBSTR(ename, 3, 2), '--') AS replace
--    SUBSTR(ename, 1, 2) || '--' || SUBSTR(ename, 5) replace
from emp
where deptno = 20;

--2.
Student 테이블에서 1전공(deptno1)이 101 번인 학생들의 이름과
주민등록번호를 출력하되 주민등록번호의 뒤 7자리는 ‘-’ 과 '/' 로 표시되게
출력하세요.
select
name,
REPLACE(jumin, SUBSTR(jumin, 7, 7), '-/-/-/-') 주민뒷자리숨김
from student;

--3,
Student 테이블에서 아래 그림과 같이 1 전공이 102 번인 학생들의 이름과 전화번호, 전화번호에서 국번 부분만 ‘*’ 처리하여 출력하세요.
단 모든 국번은 3자리로 간주합니다.
select
name,
tel,
--REPLACE(tel, SUBSTR(tel , INSTR(tel, ')')+1, 3), '***') AS replace

SUBSTR(tel, 1, INSTR(tel, ')'))
|| LPAD('*', (INSTR(tel, '-') - INSTR(tel, ')')-1),'*')
|| SUBSTR(tel, -5, 5)

--REGEXP_REPLACE(tel, '\d{3,4}', '****', 1, 1) AS replace_tel

--REGEXP_REPLACE(tel, '\d{3,4}', 
--               RPAD('*', LENGTH(REGEXP_SUBSTR(tel, '\d{3,4}')), '*')) AS replace_tel
from student;
--where deptno1 = 102;

--4.
Student 테이블에서 아래와 같이 deptno1 이
101 번인 학과 학생들의 이름과 전화번호와 전화번호에서
지역번호와 국번을 제외한 나머지 번호(끝 4자리 번호)를 * 로 표시해서 출력하세요.
select 
name,
tel,
REPLACE(tel , SUBSTR(tel , 9, 4), '****') AS replace
from student
where deptno1 = 101;