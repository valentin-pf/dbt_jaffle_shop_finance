select
  customer_id,
  cast(sum(net_revenue) as numeric) as lifetime_revenue,
  cast(count(*) as int64) as order_count,
  min(ordered_date) as first_order_date,
  max(ordered_date) as last_order_date
from {{ ref('fct_order_finance') }}
group by 1
