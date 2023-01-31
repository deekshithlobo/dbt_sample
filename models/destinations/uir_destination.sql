{{ config (materialized = 'incremental') 
}}
    with
 src_fic as (
    select * from {{ ref ('src_fic') }}
)
,
src_clc as (
    select * from {{ ref ('src_clc')}}
),
final as(
select * from src_fic
union all
select * from src_clc)

select * from final 
{% if is_incremental() %}

  where concat(acc_no,load_ts) not in ( select concat(acc_no,load_ts)  from {{ this }})

{% endif %}
