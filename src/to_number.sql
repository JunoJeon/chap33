

select '12,345',
       '12345' + 100,
       to_number('12,345', '00,999')+100
    from dual;
    
select ename, hiredate,
       trunc(sysdate - hiredate),
       trunc(months_between(sysdate, hiredate)),
       trunc(months_between(sysdate, hiredate)/12) as year,
       mod(trunc(months_between(sysdate, hiredate)), 12) as month
    from emp;
    

select to_char(add_months(sysdate, 100), 'yyyy/mm/dd')
    from dual;
    
select next_day(sysdate, '월') -- 도래하는 날을 구하는 함수
    from dual;
    
select last_day(sysdate) -- 달의 마지막일 구하는 함수
    from dual;
    
select last_day('2023/02/02'),
       last_day('2024/02/02'),
       last_day(sysdate)- sysdate
    from dual;
    
select to_char(round(sysdate, 'hh'), 'yyyy/mm/dd hh24:mi:ss'),
       to_char(trunc(sysdate, 'hh'), 'yyyy/mm/dd hh24:mi:ss'),
       to_char(sysdate, 'mm/dd hh24:mi:ss')
    from dual;
    
select to_date('0001/01/01'),
       to_char(to_date('0001/01/01'), 'day')
    from dual;
    
select to_char(sysdate, 'yyyy/mm/dd dy hh24:mi:ss'),
       to_char(trunc(sysdate), 'yyyy/mm/dd dy hh24:mi:ss')
    from dual;