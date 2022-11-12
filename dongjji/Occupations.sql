-- https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true

with t as (
    select name, 
            occupation, 
            row_number() over (partition by occupation order by name) as num
    from occupations
)
select  
    (select name from t where t.num = o.num and t.occupation = 'Doctor'),
    (select name from t where t.num = o.num and t.occupation = 'Professor'),
    (select name from t where t.num = o.num and t.occupation = 'Singer'),
    (select name from t where t.num = o.num and t.occupation = 'Actor')
from t as o
group by o.num;