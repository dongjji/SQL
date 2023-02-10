-- https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true

with ordered_table as (
    select x, y, row_number() over (order by x, y) as num from functions
)
select distinct ot1.x, ot1.y from ordered_table as ot1
join ordered_table as ot2 
on ot1.num != ot2.num 
    and ot1.x = ot2.y 
    and ot1.y = ot2.x
    and ot1.x <= ot1.y;