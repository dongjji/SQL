-- https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

select sum(POPULATION) from city
where city.COUNTRYCODE in (
    select CODE from country where continent = 'Asia'
);