with cte as 
(
    select distinct user_id,
        (first_value(post_date) over (partition by user_id order by post_date))::date as first_post,
        (first_value(post_date) over (partition by user_id order by post_date desc))::date as last_post
    from posts
    where to_char(post_date,'YYYY') = '2021'
)
select user_id, last_post - first_post
from cte
where (last_post - first_post) > 0;