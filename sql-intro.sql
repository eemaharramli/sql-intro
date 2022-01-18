create database codeAcademy
use codeAcademy
create table employees(
    id int primary key not null ,
    first_name nvarchar(20) not null ,
    last_name nvarchar(40) not null ,
    age int not null ,
    salary float not null ,
    position nvarchar(50) not null
)

insert into employees values (1, 'Elnur', 'Maharramli', 28, 1111, 'it specialist'),
                             (2, 'Akif', 'Talibov', 35, 2222, 'middle it specialist'),
                             (3, 'Madat', 'Nazaraliyev', 31, 3333, 'middle it specialist')

select *
from employees;

-- 1. ortalama maash

select avg(salary)
from employees;

-- 2. ortalama maashdan chox olanlar

select *
from employees
where salary > (select avg(salary) from employees);

-- 3. max maash

select max(salary)
from employees;

-- 4. min maash

select min(salary)
from employees