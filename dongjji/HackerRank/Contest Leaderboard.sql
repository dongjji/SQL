-- https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true

select hi, n, sum(tot) from (
    select h.hacker_id as hi, h.name as n, max(s.score) as tot from hackers as h
    join submissions as s on h.hacker_id = s.hacker_id
    group by h.hacker_id, h.name, s.challenge_id
    order by tot desc, h.hacker_id
) as t
group by hi, n
having sum(tot) != 0
order by sum(tot) desc, hi;