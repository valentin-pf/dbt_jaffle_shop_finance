select
  customer_id,
  cast(sum(net_revenue) as numeric) as total_revenue,
  cast(count(*) as int64) as order_count
from {{ ref('fct_order_finance') }}
group by 1
