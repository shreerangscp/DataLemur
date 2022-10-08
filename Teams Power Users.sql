select sender_id, count(*) as count_messages from messages
where to_char(sent_date, 'YYYY-MM') = '2022-08'
group by sender_id
order by 2 desc
limit 2;