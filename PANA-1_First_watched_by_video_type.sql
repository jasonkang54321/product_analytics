--# of users where first video watched is by either FEP, live stream, and short film
--first visit field
--average vids watched; d14 d30 retention (ask logic from gabby)


select product, vid_type, series_title, user_profile, count(distinct mpid) as unique_mpids, avg(user_vid_count_by_day) as avg_vids_daily          
    from (select * from (  -- NBC Product
            select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from 
              (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
            union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
            union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
            union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
            union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
            union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
            ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' ) where watched_rank=1
       union all
          select * from (  -- BRAVO Product
            select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from 
              (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
            union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
            union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
            union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
            union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
            union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
            ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' ) where watched_rank=1 
        union all  
          select * from (  -- E Product
            select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from
              (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
            union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
            union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
            union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
            union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
            union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
            ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' ) where watched_rank=1 
        union all 
          select * from (  -- OXYGEN Product
            select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from
              (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
            union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
            union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
            union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
            union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
            union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
            ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' ) where watched_rank=1  
        union all  
          select * from (  -- SYFY Product
            select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from
              (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
            union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
            union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
            union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
            union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
            union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
            ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' ) where watched_rank=1       
        union all  
          select * from (  -- TELEMUNDO Product
            select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from
              (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
            union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
            union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
//            union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
//              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
//            union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
//              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
//            union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
//              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
            ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' ) where watched_rank=1 
        union all  
          select * from (  -- USA Product
            select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from
              (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
            union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
            union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
            union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
            union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
            union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
            ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' ) where watched_rank=1   ) group by 1,2,3,4
;










with total as
  (select * from (  -- NBC Product
      select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from 
        (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
         , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201912" 
         where event_name_lowercase in ('video start', 'linear start')
      union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
      union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
      union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
      union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
      union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
      ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' ) 
 union all
    select * from (  -- BRAVO Product
      select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from 
        (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
      union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
      union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
      union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
      union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
      union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
      ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' ) 
  union all  
    select * from (  -- E Product
      select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from
        (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
      union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
      union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
      union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
      union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
      union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
      ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' )
  union all 
    select * from (  -- OXYGEN Product
      select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from
        (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
      union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
      union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
      union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
      union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
      union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
      ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' )
  union all  
    select * from (  -- SYFY Product
      select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from
        (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
      union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
      union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
      union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
      union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
      union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
      ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' )
  union all  
    select * from (  -- TELEMUNDO Product
      select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from
        (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
      union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
      union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
//            union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
//              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
//            union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
//              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
//            union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
//              , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
      ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' )
  union all  
    select * from (  -- USA Product
      select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from
        (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201912" where event_name_lowercase in ('video start', 'linear start')
      union all select '201911' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start')
      union all select '201910' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201910" where event_name_lowercase in ('video start', 'linear start')
      union all select '201909' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201909" where event_name_lowercase in ('video start', 'linear start')
      union all select '201908' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201908" where event_name_lowercase in ('video start', 'linear start')
      union all select '201907' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
        , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
      from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
      ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' ) )


--top 3 series data by cohort
select *, row_number() over (partition by product, first_vid_type order by total desc) as top3
from (
  select product, first_vid_type, next_vid_type, series_title, sum(watched) as total
  from
    (select a.mpid as mpid
          , a.product as product
          , a.vid_type as first_vid_type      
          , b.vid_type as next_vid_type
          , b.series_title as series_title
          , count(b.event_date) as watched
        from
            (select * from total where watched_rank=1 and user_profile != 'Free') a --first watch video type
        left join total b on (a.mpid=b.mpid and b.user_profile != 'Free')
        group by 1,2,3,4,5
    ) group by 1,2,3,4
);

--overall summary data
select product, vid_type, count(distinct mpid) as unique_mpids, avg(avg_vids_week) as avg_vids_week, avg(avg_days_week) as avg_days_watched_week
from (
select a.mpid, a.product, a.vid_type, a.user_profile
, coalesce(sum(b.avg_vid_weekly), 1)/(max(datediff(day, a.event_date, '2019-12-31')+1)/7) as avg_vids_week
, sum(b.days_watched)/(max(datediff(day, a.event_date, '2019-12-31')+1)/7) as avg_days_week
from 
    (select * from total
    where watched_rank=1 --first video watched events
    ) a
left join   --average weekly by mpid table
      (select mpid, product, vid_type, user_profile, sum(weekly_starts) as avg_vid_weekly, sum(days_watched) as days_watched from
              (select mpid, weeknum, product, vid_type, user_profile, min(weekly_count) as weekly_starts, count(distinct event_date) as days_watched from total where daily_dedupe=1 group by 1,2,3,4,5 order by 1,2 
              ) group by 1,2,3,4
      ) b on (a.mpid=b.mpid and a.product=b.product and a.user_profile=b.user_profile)
group by 1,2,3,4
) where user_profile != 'Free' group by 1, 2
;



---top 3 vid count

//with total as 
//(select * from (  -- NBC Product
//  select *, row_number() over (partition by mpid order by event_date asc) as watched_rank, count(*) over (partition by mpid, event_date order by event_date) as user_vid_count_by_day from 
//    (select '201912' as month, mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type, show as series_title, upper(events_product) as product, brand, user_profile, user_sign_in_type, user_first_visit_date
//    , case when (event_name_lowercase = 'linear start' or video_type='linear start') then 'Live Stream' when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type 
//      , week(cast(event_date_pst_nbcent_calc as date) ) as weeknum, row_number() over (partition by mparticle_id, product, vid_type, user_profile, week(cast(event_date_pst_nbcent_calc as date) ) order by cast(event_date_pst_nbcent_calc as date) desc) as daily_dedupe 
//      , count(*) over (partition by mparticle_id, product, vid_type, user_profile, week(cast(event_date_pst_nbcent_calc as date) ) order by week(cast(event_date_pst_nbcent_calc as date)) desc) as weekly_count                      
//     from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201907" where event_name_lowercase in ('video start', 'linear start')
//
//  ) where month(user_first_visit_date) in ('7','8','9','10','11') and year(user_first_visit_date)='2019' )
//)         
//
////select product, vid_type, series_title, count(distinct mpid), top3
//
//--top 3 series data by cohort
//select *, row_number() over (partition by product, first_vid_type order by total desc) as top3
//from (
//  select product, first_vid_type, next_vid_type, series_title, sum(watched) as total
//  from
//    (select a.mpid as mpid
//          , a.product as product
//          , a.vid_type as first_vid_type      
//          , b.vid_type as next_vid_type
//          , b.series_title as series_title
//          , count(b.event_date) as watched
//        from
//            (select * from total where watched_rank=1 and user_profile != 'Free') a --first watch video type
//        left join total b on (a.mpid=b.mpid and b.user_profile != 'Free')
//        group by 1,2,3,4,5
//    ) group by 1,2,3,4
//);
