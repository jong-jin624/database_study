select * from student;

--퀴즈1
select name || '''s' ID,'ID : ' || id "AND", weight||'KG' WEIGHT from student;

select * from emp;

--퀴즈2
select ename NAME,'('||job||')' "AND", ename JOB ,''''||job||'''' " " from emp;

--퀴즈3
select ename || '''s' NAME, 'sal is' "AND", '$' || Sal Sal from emp;