-- https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true

select company_code as code, founder as name, 
    (
        select count(distinct lm.lead_manager_code) from lead_manager as lm 
        where c.company_code = lm.company_code 
    ),
    (
        select count(distinct sm.senior_manager_code) from senior_manager as sm 
        where c.company_code = sm.company_code 
    ),
    (
        select count(distinct m.manager_code) from manager as m 
        where c.company_code = m.company_code 
    ),
    (
        select count(distinct em.employee_code) from employee as em 
        where c.company_code = em.company_code
    )
from company as c
order by code;