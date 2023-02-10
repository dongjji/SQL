-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true

select w.id, p.age, w.coins_needed, w.power
from wands as w
    join wands_property as p on w.code = p.code
where p.is_evil = 0 and
    (w.power, p.age, w.coins_needed) in (
        select wt.power, pt.age, min(wt.coins_needed)
        from wands as wt
            join wands_property as pt on wt.code = pt.code
        where pt.is_evil = 0
        group by pt.age, wt.power
    )
order by w.power desc, p.age desc;