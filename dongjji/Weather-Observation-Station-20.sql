-- https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true

select round(LAT_N, 4) from (
    select LAT_N, row_number() over(order by LAT_N) as rn from station
) as r
where rn = (select ceil(count(LAT_N)/2) from station);