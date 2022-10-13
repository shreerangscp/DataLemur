with cte as
(
    select count(case when review_stars in (4,5) then 1 else null end) as top_rated_business,
          count(*) as business_count
    from reviews
)
select cte.top_rated_business, 
    (cte.top_rated_business*100/cte.business_count) as top_rated_pct
from cte;