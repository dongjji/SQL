-- https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true

select mn from (
    select 
        c.id, 
        (
            select s.name from friends as f
            join students as s on f.id = s.id and c.id = f.id
        ) as mn,
        (
            select p.salary from friends as f
            join packages as p on f.id = p.id and c.id = f.id
        ) as ms ,
        (
            select s.name from friends as f
            join students as s on f.friend_id = s.id and f.friend_id = c.friend_id
        ) as fn,
        (
            select p.salary from friends as f
            join packages as p on f.friend_id = p.id and c.friend_id = f.friend_id
        ) as fs
    from friends as c
) as t
where ms < fs
order by fs;


/* 
  다른 사람 정답 분석
  Inner Join을 사용하면 쉽게 풀리는 문제
 */

SELECT S.Name as name
FROM Friends as F
     INNER JOIN
     Students as S
     ON F.ID = S.ID
     INNER JOIN
     Packages as P
     ON P.ID = S.ID
     INNER JOIN
     Packages as P1
     ON P1.ID = F.Friend_ID
WHERE (P.Salary < P1.Salary)
ORDER BY P1.Salary ;