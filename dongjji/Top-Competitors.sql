-- https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

select h.hacker_id, h.name from hackers as h
    join submissions as s on h.hacker_id = s.hacker_id
    join challenges as c on s.challenge_id = c.challenge_id
    join difficulty as d on c.difficulty_level = d.difficulty_level and s.score = d.score
group by h.hacker_id, h.name
having count(c.challenge_id) > 1
order by count(c.challenge_id) desc, h.hacker_id;