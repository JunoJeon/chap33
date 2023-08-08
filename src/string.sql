select substr('대한민국 만세', 6, 2),
       substr('대한민국 만세', 3, 2)       
    from  dual;

select ename, substr(ename, 2)
    from emp;
    
select instr('대한민국 만세', '민국'),
       instr('대한민국 만세', '만세')     
    from  dual;
    
select lpad('대한민국 만세', 20, '#'),
       rpad('대한민국 만세', 20, '#')
    from dual;
