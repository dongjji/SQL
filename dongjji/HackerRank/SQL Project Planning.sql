-- https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=true

select s.start_date, e.end_date from (
    select start_date, row_number() over (order by start_date desc) as num from projects
    where start_date not in (select end_date from projects)
) as s
join (
    select end_date, row_number() over (order by start_date desc) as num2 from projects
    where end_date not in (select start_date from projects)    
) as e on s.num = e.num2
order by datediff(s.start_date, e.end_date) desc, s.start_date;