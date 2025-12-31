select grade, COUNT(*), AVG(height)
from student
group by studno;

select *
from student;

select grade, AVG(height)
from student
group by grade;

1) 급여 2000 이상 직원 부서별 평균급여
select  deptno, AVG(sal)
from emp
where sal >= 2000
group by deptno;

2) 부서별 평균급여가 2000 이상인 부서별 평균 급여
select  deptno, AVG(sal)
from emp
group by deptno
having AVG(sal) >= 2000;

하생 각 학년별 평균 몸무게
65키로 이상

select grade, AVG(weight)
from student
group by grade
having AVG(weight) >= 65;

4학년 제외 평균몸무게

select grade, AVG(weight)
from student
where grade != 4
group by grade
having AVG(weight) >= 65;

select * 
from emp;