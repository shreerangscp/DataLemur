with cte as 
(
  select account_id,
      sum(case when transaction_type = 'Deposit' then amount else null end) as deposit_sum,
      sum(case when transaction_type = 'Withdrawal' then amount else null end) as withdraw_sum
  from transactions
  group by account_id
)
select account_id, (deposit_sum - withdraw_sum) as final_balance from cte;