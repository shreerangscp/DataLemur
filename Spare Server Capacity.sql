select a.dc_id as datacenter_id, (a.mc - a.md) as spare_capacity
from 
(
  select dc.datacenter_id as dc_id, 
      monthly_capacity as mc, sum(monthly_demand) as md
  from datacenters dc, customers c, forecasted_demand fd
  where dc.datacenter_id = fd.datacenter_id
  and fd.customer_id = c.customer_id
  group by dc.datacenter_id, monthly_capacity
  order by dc.datacenter_id
) a;