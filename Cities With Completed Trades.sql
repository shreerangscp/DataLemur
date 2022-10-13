select city, count(*) as total_orders
from trades t, users u
where t.user_id = u.user_id and status = 'Completed'
group by city
order by 2 desc
limit 3;