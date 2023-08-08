

select nvl(null, 100),
       nvl(99, 100)
    from dual;
    
select nvl2(null, 100, 200),
       nvl2(99, 100, 200)
    from dual;
    
select nullif(100, 100),
       nullif(100, 200) 
    from dual;
    
select coalesce(null, null, 99, null, 100)
    from dual; -- 널이아닌 최초값이 나옴
    
select empno,  ename, deptno
    from emp;
    
select * from dept;

select empno, ename,
       decode(deptno, 10, '경리부',
                     20, '인사부',
                     30, '영업부',
                     '전산부') as 부서,
                     gender,
        decode(gender, 'F', '여성',
                       'M', '남성') as 성별
    from emp;

select empno, ename, sal
    from emp;
    
select empno, ename, sal,
       case when sal >= 500 then '상'
            when sal >= 300 and sal < 500 then '중'
            else '하'
        end as 급여등급
    from emp;