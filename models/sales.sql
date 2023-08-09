{{ config(schema='transaction') }}

WITH 

  sales AS (SELECT * FROM {{ref('stg_sales')}})

  ,product AS (SELECT * FROM {{ref('stg_product')}})

SELECT
  s.date_date
  ### Key ###
  ,s.orders_id
  ,s.products_id
  ###########
	-- qty --
	,s.qty
  -- turnover --
  ,s.turnover
  -- cost --
  ,p.purchase_price
	,ROUND(s.qty*purchase_price,2) AS purchase_cost
	-- margin --
    ,{{margin('s.turnover', 's.qty * p.purchase_price')}} AS product_margin
    ,{{ margin_percent('s.turnover', 's.qty * p.purchase_price') }} as margin_percent
FROM sales s
INNER JOIN product p USING (products_id)