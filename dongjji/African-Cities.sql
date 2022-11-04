-- https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

select name from city
where countrycode in (
    select code from country where continent = 'Africa'
);