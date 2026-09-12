{{ 
    config( tags ='contains_pii')
}}

select
 *
from 
{{ source('data_sources','users') }}