1. 조회하기 SELECT

SELECT 조회대상(컬럼명) FROM 테이블명;
* : 전체 ALL

테이블 구조 확인 (Describe)
DESC 테이블명;
desc emp;

select * from dept;
SELECT * FROM DEPT;

select * from fruit;
select * from LOAN;
select * from product;

select * from emp;
select job from emp;
select job, hiredate, mgr from emp;

desc product;

select
    job,
    hiredate,
    mgr
from emp;

select *
from emp;

--컬럼명 별도 지정 (별칭)
SELECT 컬럼명 AS "컬럼별칭",
       컬럼명 "컬럼별칭",
       컬럼명 컬럼별칭
FROM 테이블명;

select
    empno AS "사원번호",
    ename "사원명",
    job 직업,
    sal "급여 데이터"
from emp;

select EMPNO, 
       empno empnumber,
       empno employeeno,
       ename, 
       job 
from emp;

--조회데이터 리터럴 값 활용
select '문자', 123 from emp;
select * from emp;

select * from dept;
select '문자', 123 from dept;

select '문자', 123 from dual; --dual 임실테이블

select '문자확인' AS "문자컬럼별칭",
        123+333+444 숫자연산결과
from dual;

select dname, loc, '안녕하세요', 12345 from dept;
select '문자''작은따옴표' from dual;
select q'[이 안에다가 문자 " 문자 ' 이런식으로]' from dual;

--문자 이어 붙이기 ||
select '오늘' || '너무춥다' from dual;
select
    '부서번호'||deptno AS "부서번호",
    deptno,
    '부서번호에 500 더하면 : ' || (deptno + 500) "부서번호plus500"
from dept;

--DISTINCT 중복제거
select * from emp;
select DISTINCT job from emp;
select DISTINCT (job) from emp;

select deptno from emp;
select distinct(deptno) from emp;

select DISTINCT job, deptno from emp;
select DISTINCT (job), deptno from emp;

조건 WHERE 절
필터링, 원하는 조건에 따라 조회

SELECT *
from emp
WHERE sal > 2500;

SELECT ENAME
from emp
WHERE sal > 2500;

SELECT *
FROM emp
WHERE job = 'SALESMAN';

SELECT *
FROM emp
WHERE deptno = 10;

SELECT *
FROM emp
--WHERE deptno != 10; != <>
WHERE deptno <> 10;

select *
from student
--where weight >= 55 and weight <= 70;
where weight BETWEEN 55 AND 70;

select *
from student
--where grade >=1 and grade <=3;
--where grade between 1 and 3;
--where grade = 1 OR grade = 2 OR grade = 3;
--where grade <> 4;
where grade IN (1,2,3);

select *
from student -- 2학년 4학년만 조회
--where grade in (2,4);
--where grade=2 or grade=4;
--where grade != 3 and grade <>1;
where grade NOT IN (1,3);

LIKE 패턴 검색(문자)
    % : 0~n개 아무갯수
    _ : 그 위치에 한개
    
select *
from emp
--where ename LIKE '%M%';
--where ename LIKE 'M%';
--where ename LIKE '%N';
where ename LIKE '_M%'; -- SMITH
where ename LIKE '__M%'; -- JAMES

select *
from emp
--where comm is null;
where comm is not null;

날짜 비교
1221 > 1202 크면 미래 작으면 과거

select *
from emp --테이블 정보 팝업 설명 shift + f4
--where hiredate = '81/05/01';
where hiredate = '1981-05-01';

desc emp;

정렬 order by
단순 조회 -> 정렬을 명시하지 않으면 순서보장x

select *
from student
--order by name; --기본 ASC 오름차순
order by name desc;

학년 기준 내림차순 -> 이름 학년
select name, grade
from student
order by grade desc;

1,2,3학년 중 키순으로 내림차순 정보
select *
from student
where grade in(1,2,3)
order by grade, height desc;

select *
from student
where grade in(1,2,3)
order by height, grade desc;

select *
from student
--order by birthday;
--order by birthday asc;
order by birthday desc;
