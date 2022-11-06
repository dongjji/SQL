-- https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

select 
    *
from (
    select s.name as name , g.grade as grade, s.marks as marks from students as s
    left join grades as g on g.Min_Mark <= s.marks and s.marks <= g.Max_Mark
) as t
where t.grade >= 8
order by t.grade desc, t.name;

select 
    NULL,
    t.grade,
    t.marks
from (
    select s.name as name , g.grade as grade, s.marks as marks from students as s
    left join grades as g on g.Min_Mark <= s.marks and s.marks <= g.Max_Mark
) as t
where t.grade < 8
order by t.grade desc, t.marks;
