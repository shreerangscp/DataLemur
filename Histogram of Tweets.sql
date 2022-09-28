with cte as 
(
  select user_id, count(*) as tweet_count from tweets
  where to_char(tweet_date,'YYYY') = '2022'
  group by user_id
)
select tweet_count as tweet_bucket, count(*) as users_num
from cte
group by tweet_count;