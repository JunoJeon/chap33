
-- 수치 ==> 문자열
select to_char(123),
       to_char(123, '00000'),
       --5자리 확보 남는자리 0으로 채움
       to_char(123, '99999'),
       --5자리 확보 남는자리 공백
       to_char(12345, '99,999'),
       --5자리 확보 남는자리 공백 숫자에 콤마
       to_char(12345, 'L99,999')
       --5자리 확보 남는자리 공백 숫자사이 콤마 원화추가
    from dual;
    
-- 날짜 ==> 문자열
select sysdate,
        to_char(sysdate, 'yyyy/mm/dd hh.mi.ss')
    from dual;

-- 문자열 ==> 수치
select to_number('1234'),
       to_number('1234')
    from dual;
    
-- 수치 ==> 날짜
select to_date(20000830),
       to_char(to_date(20000830), 'yyyy/mm/dd')
    from dual;
    
-- 문자열 ==> 날짜
select to_date('2010/10/15'),
       to_date('2010 10 15'),
       to_date('2010-10-15'),
       to_date('20101015'),
       to_date('2010 1 15')
    from dual;
    
select to_date('2023/06/29'),
       to_date('2023/06/29')+100
    from dual;

select sysdate,
       sysdate +100,
       to_char(sysdate -100, 'yyyy-mm-dd'),
       to_char(sysdate -100, 'yyyy-mm-dd day hh'),
       to_char(sysdate -100, 'yyyy-mm-dd dy hh24')
    from dual;
    
select *
    from emp
-- where hiredate = '20070402'
-- where hiredate = to_date('20070402');
   where hiredate >= to_date('20070402');
   
select ename, trunc(sysdate - hiredate)
    from emp;
    
--
-- 날짜 + 수치 => 날짜
-- 날짜 - 수치 => 날짜
-- 날짜 - 날짜 => 일(수치)
-- 관계 연산자 =, !=, >, >=, <, <=
-- 닐찌 관계연산자 날짜