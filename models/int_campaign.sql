with 
    bing as (select * from {{ref('stg_bing')}}),
    criteo as (select * from {{ref('stg_criteo')}}),
    facebook as (select * from {{ref('stg_facebook')}}),
    adwords as (select * from {{ref('stg_adwords')}})

select * from bing
UNION ALL
select * from criteo
UNION ALL
select * from facebook
UNION ALL
select * from adwords
    