with
 src_fic as (
    select * from {{ ref ('src_fic') }}
)
,
src_clc as (
    select * from {{ ref ('src_clc')}}
)
select * from src_fic
union all
select * from src_clc