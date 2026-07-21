{{
    config(
    tags = ['comercial']
    )
}}


with orders as (
    select
        order_id
        ,customer_id
        ,employee_id
        ,order_date
        ,required_date
        ,shipped_date
        ,ship_via
        ,freight
        ,ship_name
        ,ship_address
        ,ship_city
        ,ship_region
        ,ship_postal_code
        ,ship_country
        , case 
            when shipped_date is null then 'Pendente'
            else 'Enviado'
        end as status_envio
    from {{source('northwind', 'orders')}} -- Buscando a tabela diretamente de source, assim já existe testes diretamente na tabela de origem.
)
select 
    *
from orders