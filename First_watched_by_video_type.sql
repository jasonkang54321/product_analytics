--# of users where first video watched is by either FEP, live stream, and short film
select '201911' as month, * from (
    select vid_type, series_title, product, brand, user_profile, user_signin_type, count(distinct mpid) as mpid_count
    from (select
          mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type as video_type, show as series_title  
          , upper(events_product) as product, brand as brand, user_profile as user_profile, user_sign_in_type as user_signin_type
          , case when (linear_duration>0 or event_name_lowercase = 'linear start' /*remove if not in event_name */ or video_type='linear start') then 'Live Stream'
                 when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type
          , row_number() over (partition by mparticle_id, event_name order by cast(event_date_pst_nbcent_calc as date) asc) as watched_rank
          from "WALDO_PROD"."MPARTICLE"."CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start') --checking if its in event name
          order by 2) a
    where a.watched_rank=1 group by 1,2,3,4,5,6
union all
    select vid_type, series_title, product, brand, user_profile, user_signin_type, count(distinct mpid) as mpid_count
    from (select
          mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type as video_type, show as series_title  
          , upper(events_product) as product, brand as brand, user_profile as user_profile, user_sign_in_type as user_signin_type
          , case when (linear_duration>0 or event_name_lowercase = 'linear start' /*remove if not in event_name */ or video_type='linear start') then 'Live Stream'
                 when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type
          , row_number() over (partition by mparticle_id, event_name order by cast(event_date_pst_nbcent_calc as date) asc) as watched_rank
          from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start') --checking if its in event name
          order by 2) a
    where a.watched_rank=1 group by 1,2,3,4,5,6
union all
    select vid_type, series_title, product, brand, user_profile, user_signin_type, count(distinct mpid) as mpid_count
    from (select
          mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type as video_type, show as series_title  
          , upper(events_product) as product, brand as brand, user_profile as user_profile, user_sign_in_type as user_signin_type
          , case when (linear_duration>0 or event_name_lowercase = 'linear start' /*remove if not in event_name */ or video_type='linear start') then 'Live Stream'
                 when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type
          , row_number() over (partition by mparticle_id, event_name order by cast(event_date_pst_nbcent_calc as date) asc) as watched_rank
          from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start') --checking if its in event name
          order by 2) a
    where a.watched_rank=1 group by 1,2,3,4,5,6
union all
    select vid_type, series_title, product, brand, user_profile, user_signin_type, count(distinct mpid) as mpid_count
    from (select
          mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type as video_type, show as series_title  
          , upper(events_product) as product, brand as brand, user_profile as user_profile, user_sign_in_type as user_signin_type
          , case when (linear_duration>0 or event_name_lowercase = 'linear start' /*remove if not in event_name */ or video_type='linear start') then 'Live Stream'
                 when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type
          , row_number() over (partition by mparticle_id, event_name order by cast(event_date_pst_nbcent_calc as date) asc) as watched_rank
          from "WALDO_PROD"."MPARTICLE"."KCS_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start') --checking if its in event name
          order by 2) a
    where a.watched_rank=1 group by 1,2,3,4,5,6
union all
    select vid_type, series_title, product, brand, user_profile, user_signin_type, count(distinct mpid) as mpid_count
    from (select
          mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type as video_type, show as series_title  
          , upper(events_product) as product, brand as brand, user_profile as user_profile, user_sign_in_type as user_signin_type
          , case when (linear_duration>0 or event_name_lowercase = 'linear start' /*remove if not in event_name */ or video_type='linear start') then 'Live Stream'
                 when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type
          , row_number() over (partition by mparticle_id, event_name order by cast(event_date_pst_nbcent_calc as date) asc) as watched_rank
          from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start') --checking if its in event name
          order by 2) a
    where a.watched_rank=1 group by 1,2,3,4,5,6
union all
    select vid_type, series_title, product, brand, user_profile, user_signin_type, count(distinct mpid) as mpid_count
    from (select
          mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type as video_type, show as series_title  
          , upper(events_product) as product, brand as brand, user_profile as user_profile, user_sign_in_type as user_signin_type
          , case when (linear_duration>0 or event_name_lowercase = 'linear start' /*remove if not in event_name */ or video_type='linear start') then 'Live Stream'
                 when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type
          , row_number() over (partition by mparticle_id, event_name order by cast(event_date_pst_nbcent_calc as date) asc) as watched_rank
          from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start') --checking if its in event name
          order by 2) a
    where a.watched_rank=1 group by 1,2,3,4,5,6
union all
    select vid_type, series_title, product, brand, user_profile, user_signin_type, count(distinct mpid) as mpid_count
    from (select
          mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type as video_type, show as series_title  
          , upper(events_product) as product, brand as brand, user_profile as user_profile, user_sign_in_type as user_signin_type
          , case when (linear_duration>0 or event_name_lowercase = 'linear start' /*remove if not in event_name */ or video_type='linear start') then 'Live Stream'
                 when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type
          , row_number() over (partition by mparticle_id, event_name order by cast(event_date_pst_nbcent_calc as date) asc) as watched_rank
          from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start') --checking if its in event name
          order by 2) a
    where a.watched_rank=1 group by 1,2,3,4,5,6
union all
    select vid_type, series_title, product, brand, user_profile, user_signin_type, count(distinct mpid) as mpid_count
    from (select
          mparticle_id as mpid, cast(event_date_pst_nbcent_calc as date) as event_date, event_name as en, video_type as video_type, show as series_title  
          , upper(events_product) as product, brand as brand, user_profile as user_profile, user_sign_in_type as user_signin_type
          , case when (linear_duration>0 or event_name_lowercase = 'linear start' /*remove if not in event_name */ or video_type='linear start') then 'Live Stream'
                 when video_type='Full Episode' then 'FEP' else 'Short Film' end as vid_type
          , row_number() over (partition by mparticle_id, event_name order by cast(event_date_pst_nbcent_calc as date) asc) as watched_rank
          from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201911" where event_name_lowercase in ('video start', 'linear start') --checking if its in event name
          order by 2) a
    where a.watched_rank=1 group by 1,2,3,4,5,6
)
;