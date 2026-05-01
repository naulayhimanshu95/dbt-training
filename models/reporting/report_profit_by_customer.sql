select 
    customerid,
    segment,
    country,
sum(Profit) AS profit
from   
    {{ ref('stg_orders') }}
GROUP BY 
    customerid,
    segment,
    country