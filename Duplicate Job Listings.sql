select count(*) as duplicate_companies
from 
(
  select company_id, title, description, count(*)
  from job_listings
  group by company_id, title, description
  having count(*) > 1
) a;