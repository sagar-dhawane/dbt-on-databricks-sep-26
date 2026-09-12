select 
o.order_date,
p.product_name,
p.vendor,
u.name,
sum(o.Total_order_price) as total_sales
from
{{ ref('silver_orders')}} o 
left join
{{ ref('silver_products')}} p 
on o.product_id = p.id
left join 
{{ ref('silver_users')}} u 
on o.user_id = u.id

group by all