-- https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true

select hi, n, cc from (
    select h.hacker_id as hi, h.name as n, count(c.challenge_id) as cc from hackers h
    join challenges c on h.hacker_id = c.hacker_id
    group by h.hacker_id, h.name
) as t3
where cc in (
    select ct from (
        select cnt as ct, count(cnt) as cnt2 from (
            select h.hacker_id, h.name, count(c.challenge_id) as cnt from hackers h
            join challenges c on h.hacker_id = c.hacker_id
            group by h.hacker_id, h.name
            order by count(c.challenge_id) desc
        ) as t1
        group by cnt
    ) as t2
    where cnt2 = 1
) or cc in (
    select max(cnt) from (
        select distinct count(c.challenge_id) as cnt from hackers h
        join challenges c on h.hacker_id = c.hacker_id
        group by h.hacker_id, h.name 
    ) as t5
)
order by cc desc, hi;