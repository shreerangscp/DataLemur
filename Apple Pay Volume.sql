select merchant_id, sum(transaction_amount)
from transactions
where (lower(payment_method) = 'apple pay')
group by merchant_id
union all
select distinct merchant_id, 0 from transactions 
where lower(payment_method) not in ('apple pay')
and merchant_id not in (select merchant_id from transactions 
                        where lower(payment_method) = 'apple pay')
order by 2 desc;