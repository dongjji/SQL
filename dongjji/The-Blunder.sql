-- https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true

select ceiling(
    avg(salary) 
    - 
    (select avg(cast(replace(salary, '0', '') as unsigned)) from employees)
) from employees;