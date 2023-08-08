desc dept;

select * from dept01;

insert into dept01 values (10, '개발부', '부산');

rollback;

drop table dept01;

insert into dept 
    (dname, loc, deptno) 
    values ('개발부', '부산', 50);
    
create table dept01 (
    deptno number(2) primary key,
    dname  varchar2(20 char) not null,
    loc    varchar2(20 char) default '춘천'
    );

insert into dept01
(dname,loc,deptno)
values
('영업부','광주',20);

select  * from emp;