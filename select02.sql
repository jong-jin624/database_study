집합 연산자
UNION 합집합 (합치고 중복제거)
UNION ALL 합집합 (전부다 합치기 중복제거 X)
INTERSECT 교집합
MINUS 차집합

* 조건(제약)
    1. 컬럼 갯수 동일
    2. 컬럼 데이터형(타입) 동일
    3. 컬럼명은 달라도 상관없음
    
SELECT *
FROM STUDENT
WHERE deptno1 in(101,102);

select *
from student
where deptno1 = 101
UNION ALL
select *
from student
where deptno1 = 102
and height > 170;

select studno 식별번호, name 이름, deptno1 학과, tel 연락처
from student
where deptno1 = 101
UNION ALL
select profno, name, deptno, null --'연락처'
from professor
where deptno = 101;

select * from professor;
