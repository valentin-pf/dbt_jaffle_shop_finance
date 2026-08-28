select
  date_trunc(ordered_date, month) as revenue_month,
  cast(sum(net_revenue) as numeric) as net_revenue,
  cast(count(*) as int64) as order_count
from {{ ref('fct_order_finance') }}
group by 1
