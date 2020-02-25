with watched_show as
(select series_title, mpid, min(first_date) as first_date from 
 (select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201911" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201912" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_202001" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_202002" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201911" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201912" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_202001" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_202002" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201911" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201912" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_202001" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_202002" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201911" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201912" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_202001" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_202002" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201911" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201912" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_202001" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_202002" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201911" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201912" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_202001" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2 union all
    select show as series_title, mparticle_id as mpid, min(event_date_pst_nbcent_calc) as first_date from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_202002" where brand='Telemundo'and event_name_lowercase='video start' group by 1,2                                                                
 ) group by 1,2
),

page_load as
(
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201911" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_201912" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_202001" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."TELEMUNDO_CUSTOM_EVENT_202002" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201911" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_201912" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_202001" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."BRAVO_CUSTOM_EVENT_202002" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201911" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_201912" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_202001" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."E_CUSTOM_EVENT_202002" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201911" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_201912" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_202001" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."OXYGEN_CUSTOM_EVENT_202002" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201911" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_201912" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_202001" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."SYFY_CUSTOM_EVENT_202002" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201911" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_201912" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_202001" where event_name = 'Home Load' group by 1,2 union all
  select mparticle_id as mpid,event_date_pst_nbcent_calc as home_load_date,count(event_date_pst_nbcent_calc) as page_load_count from "WALDO_PROD"."MPARTICLE"."USA_CUSTOM_EVENT_202002" where event_name = 'Home Load' group by 1,2
)
 
select week, sum(page_load_count)/count(distinct mpid) as avg_load
from (select a.mpid, week(a.home_load_date) as week, min(b.first_date), sum(a.page_load_count) as page_load_count
from page_load a
inner join watched_show b on (a.mpid=b.mpid)
group by 1,2) group by 1
;
