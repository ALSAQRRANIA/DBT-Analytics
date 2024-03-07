SELECT 
    products_id, 
    date_date, 
    orders_id,
    revenue, 
    quantity, 
    CAST(purchSE_PRICE AS FLOAT64), 
    ROUND(s.quantity*CAST(p.purchSE_PRICE AS FLOAT64),2) AS purchase_cost,
    s.revenue - ROUND(s.quantity*CAST(p.purchSE_PRICE AS FLOAT64),2) AS margin
    FROM {{ref("stg_raw__sales")}} s
    LEFT JOIN {{ref("stg_raw__product")}} p USING (products_id)


    
    