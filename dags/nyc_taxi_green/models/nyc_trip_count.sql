with new_york_taxis as (
       select * from nyctlc
   ),
   final as (
     SELECT
       vendorID,
       CAST(lpepPickupDatetime AS DATE) AS trip_date,
       COUNT(*) AS trip_count
     FROM
         [nyc_taxi_sample].[dbo].[nyctlc]
     GROUP BY
         vendorID,
         CAST(lpepPickupDatetime AS DATE)
   
   )
   select top 5 * 
   from final
   