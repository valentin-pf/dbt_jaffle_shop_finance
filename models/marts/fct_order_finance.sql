select
  order_id,
  customer_id,
  ordered_date,
  order_total,
  tax_paid,
  cast(order_total - tax_paid as numeric) as net_revenue
from {{ ref('spielwiese', 'fct_orders') }}
