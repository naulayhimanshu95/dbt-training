with 

source as (

    select * from {{ source('globalmart', 'orders') }}

),

renamed as (

    select
        orderid,
        orderdate,
        shipdate,
        shipmode,
        customerid,
        productid,
        ordercostprice,
        ordersellingprice

    from source

)

select * from renamed