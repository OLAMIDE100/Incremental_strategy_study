  
select 
    * , current_time() as added_time
from {{ source('google_sheets', 'test') }}

where date is not null
    