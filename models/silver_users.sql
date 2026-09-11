select
id,
created_at,
name,
email,
city,
state,
year(birth_date) as birth_year,
source as source_channel
from
{{ ref('bronze_users')}}