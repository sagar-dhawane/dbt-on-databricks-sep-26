{{ 
    config(
        materialized = 'incremental'
    )
}}


select
*
from 
{{ source('data_sources','orders_incremental')}}

{% if is_incremental() %}
where created_at> (select coalesce(max(created_at),'1999-01-01') from {{this}})
{% endif %}