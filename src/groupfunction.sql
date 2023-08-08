select count(*) -- 그룹함수의 특징으로 null은 제외하고 처리한다.
from country;

select count(*), count(comm), count(empno)
from emp;

select count(*),count(population), sum(population), round(avg(population)),
trunc(stddev(population)), trunc(variance(population))
from country;

select avg(sal)
from emp;

select deptno,round(avg(sal))
from emp
group by deptno; --group by를 사용하면 그룹 함수만 사용해야 한다.

select distinct continent
from country;

select *
from country;

select continent,sum(population) as total,trunc(avg(population))
from country 
group by continent
having count(*)>=30 -- 조건에 만족하는 결과만을 출력해줌(그룹함수에 사용됨)
order by total desc;

select distinct continent, region
from country;

select continent,
       region, 
       count(*) as cnt,
       trunc(avg(population)) as avg
  from country
group by continent, region
having continent ='Asia'
order by continent, avg desc;

select continent,
       region, 
       count(*) as cnt,
       trunc(avg(population)) as avg
  from country
  where continent ='Asia'
group by continent, region
order by continent, avg desc;

-- from > where > group by > having > select > order by
-- 위 순서대로 명령이 실행된다.

select population as popu
from country
--where popu >=10000;
order by popu desc;

select sum(sal), sum(comm)
from emp;

select deptno, max(sal), min(sal)
from emp
group by deptno
order by deptno asc;