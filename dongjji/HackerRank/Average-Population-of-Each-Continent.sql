-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true

select ct.continent, floor(avg(c.population)) from city as c
inner join country as ct on c.countrycode = ct.code
group by ct.continent;