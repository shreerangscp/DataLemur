select user_id from emails e, texts t 
where e.email_id = t.email_id
and action_date::date = (signup_date::date +interval '1 day');