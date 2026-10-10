with returns as (
    select *
    from {{ ref('bronze_returns') }}
),
products as (
    select product_sk, category
    
    from {{ ref('bronze_product') }}
),
joined_query as (
select r.returned_qty, r.sales_id, r.product_sk, p.category
from returns r
join products p on r.product_sk = p.product_sk
)
select category, sum(returned_qty) as total_returns
from joined_query group by category order by total_returns desc