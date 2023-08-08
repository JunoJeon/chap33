
select '12' + 10
    from dept;
    
select '12' + 10,
       '12' - 10,
       '12' || 10,
       '12' * 10,
       '12' / 10
    from dual;
    
select floor(10.5), floor(-10.5)
    from dual;
    
select ceil(10.5), ceil(-10.5)
    from dual;
    
select round(10.5), round(-10.5)
    from dual;
    
select trunc(10.5), trunc(-10.5)
    from dual;
    
select power(2, 3), power(10, 3)
    from dual;
    
select mod(10, 3), mod(20, 3)
    from dual;
    
select round(88.7654), round(88.7654, 2), round(88.7654, -1)
    from dual;
    
select trunc(88.7654), trunc(88.7654, 2), trunc(88.7654, -1)
    from dual;
    
select trunc(dbms_random.value()*100)
    from dual;
    
select 10/3, trunc(10/3)
    from dual;
    
select *
    from country
--    where lower(name) like '%korea%';
    where upper(name) like '%KOREA%';

select length('가'), lengthb('가')
    from dual;

select length('가A'), lengthb('가A')
    from dual;
    
select name, length(name), lengthb(name)
    from country;