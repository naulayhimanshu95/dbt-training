select 
--from raw order
o.orderid,
o.orderdate,
o.shipdate,
o.shipmode,
o.ordersellingprice,
o.ordercostprice,
o.ordersellingprice-o.ordercostprice AS Profit,
--from raw customer
c.customername,
c.segment,
c.country,
--from raw product
p.category,
p.productname,
p.subcategory
FROM
    {{ ref('raw_order') }} as o 
LEFT JOIN
    {{ ref('raw_customer') }} As c
ON o.customerid=c.customerid
LEFT JOIN
    {{ ref('raw_product') }} as p
ON o.productid=p.productid