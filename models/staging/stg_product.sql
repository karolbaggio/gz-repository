SELECT 
    p.products_id,
    cast(p.purchSE_PRICE as FLOAT64) as purchase_price
FROM `gz_raw_data.raw_gz_product` p