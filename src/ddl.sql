--SQL(Structual Query Language) -14개
--1. DQL(Data Query Language)
-- - select

--2. DML(Data Manipulation Language)
-- - insert
-- - update
-- - delete

--CRUD
-- - create     (insert)
-- - retrieve   (select)
-- - update     (update)
-- - delete     (delete)

--3. DDL(Data Definition language)
-- - create
-- - alter
-- - drop
-- - trunc
-- - rename

--4. TCL(Transaction Control Language)
-- - commit
-- - rollback
-- - savepont

--5. DCL(Date Control Language)
-- - grant
-- - revoke


create table alpha_random(
    line number(2)
);

desc alpha_random;
 -- 테이블 컬럼 조회

drop table alpha_random;

alter table alpha_random 
 add (col number(2));

alter table alpha_random 
modify (col number(10) not null);

alter table alpha_random 
drop column line;

select * from salgrade;



