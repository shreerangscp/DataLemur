with cte as 
(
  select profile_id, pp.name, pp.followers as p_fol, 
  company_id, cp.followers as c_fol
  from personal_profiles pp, company_pages cp
  where pp.employer_id = cp.company_id
)
select profile_id from cte
where p_fol > c_fol
order by profile_id;