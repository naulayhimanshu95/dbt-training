select 
    productid,
    productname,
    category,
    subcategory,
    sum(Profit)as Profit
FROM
    {{ ref('stg_orders') }}
group by 
    productid,
    productname,
    category,
    subcategory