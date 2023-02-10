-- https://school.programmers.co.kr/learn/courses/30/lessons/157340

SELECT 
    t2.CAR_ID, 
    CASE
        WHEN SUM(t2.A) >= 1 THEN '대여중'
        ELSE '대여 가능'
    END AS 'AVAILABILITY'
FROM (
    SELECT
        t.CAR_ID,
        CASE
            WHEN  DATE_FORMAT(t.START_DATE, '%Y-%m-%d') <= DATE('2022-10-16')
                AND DATE_FORMAT(t.END_DATE, '%Y-%m-%d') >= DATE ('2022-10-16')
            THEN
                1
            ELSE
                0
        END AS 'A'
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY AS t
) AS t2
GROUP BY t2.CAR_ID
ORDER BY t2.CAR_ID DESC;

    