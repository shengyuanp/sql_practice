/*
https://www.hackerrank.com/challenges/interviews/problem?isFullScreen=true
*/
with sumcte as (
select cont.context_id
,sum(total_submissions) as total_subs
,sum(total_accepted_submissions) as total_acc 
,sum(total_views) as total_views 
,sum(total_unique_views) as total_unique_views
from contests cont 
inner join colleges coll on cont.contest_id=coll.contest_id
inner join challenges cha on coll.college_id=cha.college_id
inner join view_stats view on cha.challenge_id=view.challenge_id
inner join submission_stats sub on cha.challenge_id=sub.challenge_id
)
select * from sumcte limit 10;