SELECT
    date_date,
    paid_source,
    campaign_key,
    campgn_name as campaign_name,
    cast(ads_cost as float64) as ads_cost,
    impression,
    click
FROM `gz_raw_data.raw_gz_criteo`
