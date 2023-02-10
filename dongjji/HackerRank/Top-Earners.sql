-- https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

select 
    max(months * salary),
    count(*) 
from employee 
where (months * salary) = (select max(months * salary) from employee);