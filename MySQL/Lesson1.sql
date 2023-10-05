use bulavka;
show tables;
select * from cars;
create table users
(
    id int not null auto_increment primary key,
    name varchar(255) not null,
    age int not null,
    gender varchar(6) not null
        #primary key (id)
);
insert into users values (null,'max',15,'male');
select * from users;
select id, gender from users;
select * from users where name='max';
select * from users where age=30;
select * from users where age!=30;
select * from users where age between 20 and 30;
select * from users where age not between 20 and 30;
select * from users where name like 'o%';
select * from users where name like '%o%';
select * from users where name like '%a';

select * from users where age >25;
select * from users where age <25;
select * from users where age >=25;
select * from users where age <=25;

select * from users where age in (25,30,15,1,35);
select * from users where age=18 or age=30;

select * from users where age=18 or (age=25 and name='nazar');

select * from users where length(name)>4;
select * from users where length(name)<4;

select * from users;
select * from users order by id desc;
select * from users order by id;
select * from users order by name desc;

select * from users;
select * from users limit 5;
select * from users limit 5 offset 5;
select * from users limit 5 offset 10;
select * from users where age<30 order by age limit 2;
select * from users where age<30 order by age limit 2 offset 2;

select * from users order by age desc limit 1;
select max(age) as maxAge from users;
select min(age) as minAge from users;
select avg(age) as avgAge from users;
select sum(age) as sumAge from users;
select count(*) as countAge from users;

select * from cars;
select count(*), model from cars where year>2020 group by model;
select sum(price) from cars where year>2020 group by model;
select count(*), model from cars where year>2020 group by model;
select count(*), model from cars group by model;