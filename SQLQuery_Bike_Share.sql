--USE Bootcamp1

with cte as (

Select * from [dbo].[bike_share_yr_0]
union
Select * from [dbo].[bike_share_yr_1]
)

Select 
[dteday],[season],C.[yr],[weekday],[hr],[rider_type],[riders],[price],[COGS], riders*price as revenue, riders*price-COGS as profit
from cte as C
Left Join [dbo].[cost_table] as CT
on C.yr = CT.yr
