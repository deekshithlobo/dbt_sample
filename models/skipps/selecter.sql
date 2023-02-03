select *,  '{{var('name')}}' as name from RAW.JAFFLE_SHOP.uir_destination
where mis_date > '{{ var( 'fm_date')}}'