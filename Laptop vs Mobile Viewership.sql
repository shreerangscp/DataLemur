select count(case when device_type in ('laptop') then 1 else null end) as laptop_views,
    	count(case when device_type in ('phone','tablet') then 1 else null end) as mobile_views
from viewership;