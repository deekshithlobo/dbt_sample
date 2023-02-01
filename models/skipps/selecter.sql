{{
    config(materialized = 'table')
}}

select
{% for i in range(11) %}
   current_date(),
{% endfor %}
'a'as col