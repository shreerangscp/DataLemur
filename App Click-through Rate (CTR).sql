with cte as 
(
    select app_id,
        count(case when event_type = 'impression' then 1 else null end) as impression_count,
        count(case when event_type = 'click' then 1 else null end) as click_count
    from events where to_char(timestamp, 'YYYY') = '2022'
    group by app_id
    order by app_id
)
select app_id, round(click_count*100.0/impression_count,2)
from cte;