select extract(month from submit_date::date) as mth,
    product_id,
    round(avg(stars),2)
from reviews
group by mth, product_id
order by mth, product_id;