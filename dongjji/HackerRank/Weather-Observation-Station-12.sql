-- https://www.hackerrank.com/challenges/weather-observation-station-12/problem?isFullScreen=true

select distinct city from station
where 
    substr(city, 1, 1) not in ('a', 'e', 'i', 'o', 'u')
    and
    substr(city, char_length(city), 1) not in ('a', 'e', 'i', 'o', 'u')