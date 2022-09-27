with skills_cte as 
(
    select candidate_id, count(*) as cnt_skill
    from candidates
    where skill in ('Python', 'Tableau', 'PostgreSQL')
    group by candidate_id
)
select candidate_id from skills_cte where cnt_skill >= 3
order by candidate_id;