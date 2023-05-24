
{{ config(
    materialized='incremental'
)}}

select *
from {{ ref('scr_google_sheet') }}
where date > (select max(date) from {{ this }})

