with first_seen as (select series, events_product, event_date as first_seen_date from (select series, event_date, events_product, row_number() over (partition by series order by event_date asc) as first_seen_date from (
  
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.e_custom_event_202001 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.e_custom_event_201912 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.e_custom_event_201911 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.e_custom_event_201910 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.e_custom_event_201909 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.e_custom_event_201908 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.e_custom_event_201907 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.e_custom_event_201906 where (event_name_lowercase='video start') union all

select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.bravo_custom_event_202001 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.bravo_custom_event_201912 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.bravo_custom_event_201911 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.bravo_custom_event_201910 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.bravo_custom_event_201909 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.bravo_custom_event_201908 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.bravo_custom_event_201907 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.bravo_custom_event_201906 where (event_name_lowercase='video start') union all
  
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.oxygen_custom_event_202001 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.oxygen_custom_event_201912 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.oxygen_custom_event_201911 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.oxygen_custom_event_201910 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.oxygen_custom_event_201909 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.oxygen_custom_event_201908 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.oxygen_custom_event_201907 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.oxygen_custom_event_201906 where (event_name_lowercase='video start') union all
  
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.syfy_custom_event_202001 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.syfy_custom_event_201912 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.syfy_custom_event_201911 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.syfy_custom_event_201910 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.syfy_custom_event_201909 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.syfy_custom_event_201908 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.syfy_custom_event_201907 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.syfy_custom_event_201906 where (event_name_lowercase='video start') union all
  
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.telemundo_custom_event_202001 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.telemundo_custom_event_201912 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.telemundo_custom_event_201911 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.telemundo_custom_event_201910 where (event_name_lowercase='video start') union all
//select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.telemundo_custom_event_201909 where (event_name_lowercase='video start') union all
//select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.telemundo_custom_event_201908 where (event_name_lowercase='video start') union all
//select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.telemundo_custom_event_201907 where (event_name_lowercase='video start') union all
//select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.telemundo_custom_event_201906 where (event_name_lowercase='video start') union all
//  
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.usa_custom_event_202001 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.usa_custom_event_201912 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.usa_custom_event_201911 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.usa_custom_event_201910 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.usa_custom_event_201909 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.usa_custom_event_201908 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.usa_custom_event_201907 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.usa_custom_event_201906 where (event_name_lowercase='video start') union all
  
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.custom_event_202001 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.custom_event_201912 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.custom_event_201911 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.custom_event_201910 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.custom_event_201909 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.custom_event_201908 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.custom_event_201907 where (event_name_lowercase='video start') union all
select show as series, events_product, event_date_pst_nbcent_calc as event_date from waldo_prod.mparticle.custom_event_201906 where (event_name_lowercase='video start')
)) where first_seen_date=1),

shows as (
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_202001 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_201912 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_201911 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_201910 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_201909 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_201908 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_201907 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_201906 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all

(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.bravo_custom_event_202001 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.bravo_custom_event_201912 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.bravo_custom_event_201911 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.bravo_custom_event_201910 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.bravo_custom_event_201909 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.bravo_custom_event_201908 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.bravo_custom_event_201907 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.bravo_custom_event_201906 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
  
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.oxygen_custom_event_202001 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.oxygen_custom_event_201912 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.oxygen_custom_event_201911 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.oxygen_custom_event_201910 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.oxygen_custom_event_201909 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.oxygen_custom_event_201908 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.oxygen_custom_event_201907 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.oxygen_custom_event_201906 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
  
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.syfy_custom_event_202001 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.syfy_custom_event_201912 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.syfy_custom_event_201911 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.syfy_custom_event_201910 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.syfy_custom_event_201909 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.syfy_custom_event_201908 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.syfy_custom_event_201907 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.syfy_custom_event_201906 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 

(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.telemundo_custom_event_202001 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.telemundo_custom_event_201912 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.telemundo_custom_event_201911 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.telemundo_custom_event_201910 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
//(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_201909 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
//(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_201908 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
//(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_201907 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
//(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.e_custom_event_201906 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
//  
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.usa_custom_event_202001 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.usa_custom_event_201912 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.usa_custom_event_201911 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.usa_custom_event_201910 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.usa_custom_event_201909 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.usa_custom_event_201908 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.usa_custom_event_201907 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.usa_custom_event_201906 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
  
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.custom_event_202001 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.custom_event_201912 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all 
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.custom_event_201911 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.custom_event_201910 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.custom_event_201909 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.custom_event_201908 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.custom_event_201907 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3) union all
(select a.show as series, a.events_product, year(a.event_date_pst_nbcent_calc) as year, week(a.event_date_pst_nbcent_calc) as week,  b.first_seen_date, count(*) as vid_starts, count(distinct a.mparticle_id) as watched_users from waldo_prod.mparticle.custom_event_201906 a left join first_seen b on (a.show=b.series) where (event_name_lowercase='video start') group by 1,2,3,4,5 order by 1,2,3)

)

--select * from shows;

select upper(series) as series
, sum(watched_users) as total_uniques
, min(first_seen_date) as first_watch_date
, round(((datediff(day, min(first_seen_date), '2020-01-31')/7)+.142857),2)   as weeks_watched_aired --need to add a day when doing diff calc
, sum(vid_starts)                                                   as total_starts
, round(sum(vid_starts)/
    ((datediff(day, min(first_seen_date), '2020-01-31')/7)+.142857),2) as all_avg_weekly
, round(avg(vid_starts),2)                                          as active_avg_weekly
, round(median(vid_starts),2)                                       as median
, round(min(vid_starts),2)                                          as minimum
, max(vid_starts)                                                   as maximum
, mode(vid_starts)                                                  as mode
, round(stddev(vid_starts),2)                                       as stdev
, round(sum(watched_users)/
    ((datediff(day, min(first_seen_date), '2020-01-31')/7)+.142857),2) as users_watched_avg_weekly
, sum(case when vid_starts between 0 and 1000 then watched_users end) as "1000"
, sum(case when vid_starts between 1001 and 2000 then watched_users end) as "2000"
, sum(case when vid_starts between 2001 and 3000 then watched_users end) as "3000"
, sum(case when vid_starts between 3001 and 4000 then watched_users end) as "4000"
, sum(case when vid_starts between 4001 and 5000 then watched_users end) as "5000"
, sum(case when vid_starts between 5001 and 6000 then watched_users end) as "6000"
, sum(case when vid_starts between 6001 and 7000 then watched_users end) as "7000"
, sum(case when vid_starts between 7001 and 8000 then watched_users end) as "8000"
, sum(case when vid_starts between 8001 and 9000 then watched_users end) as "9000"
, sum(case when vid_starts between 9001 and 10000 then watched_users end) as "10000"
, sum(case when vid_starts between 10001 and 11000 then watched_users end) as "11000"
, sum(case when vid_starts between 11001 and 12000 then watched_users end) as "12000"
, sum(case when vid_starts between 12001 and 13000 then watched_users end) as "13000"
, sum(case when vid_starts between 13001 and 14000 then watched_users end) as "14000"
, sum(case when vid_starts between 14001 and 15000 then watched_users end) as "15000"
, sum(case when vid_starts between 15001 and 16000 then watched_users end) as "16000"
, sum(case when vid_starts between 16001 and 17000 then watched_users end) as "17000"
, sum(case when vid_starts between 17001 and 18000 then watched_users end) as "18000"
, sum(case when vid_starts between 18001 and 19000 then watched_users end) as "19000"
, sum(case when vid_starts between 19001 and 20000 then watched_users end) as "20000"
, sum(case when vid_starts between 20001 and 30000 then watched_users end) as "30000"
, sum(case when vid_starts between 30001 and 40000 then watched_users end) as "40000"
, sum(case when vid_starts between 40001 and 50000 then watched_users end) as "50000"
, sum(case when vid_starts between 50001 and 60000 then watched_users end) as "60000"
, sum(case when vid_starts between 60001 and 70000 then watched_users end) as "70000"
, sum(case when vid_starts between 70001 and 80000 then watched_users end) as "80000"
, sum(case when vid_starts between 80001 and 90000 then watched_users end) as "90000"
, sum(case when vid_starts between 90001 and 100000 then watched_users end) as "100000"
, sum(case when vid_starts >100000 then watched_users end) as "100000_more"
from shows a
group by 1 order by 4 desc
;

select upper(show) as series, count(distinct mpid) as unique_mpids, sum(weekly_watch) as total_watches, avg(weekly_watch) as avg_weekly_watches_per_user
from (
    select mparticle_id as mpid, show, week(event_date_pst_nbcent_calc) as weeknum, count(event_date_pst_nbcent_calc) as weekly_watch
    from waldo_prod.mparticle.e_custom_event_202001
    where event_name_lowercase='video start')
    group by 1,2,3
  ) group by 1
;

