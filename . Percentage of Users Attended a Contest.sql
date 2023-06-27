
select r.contest_id,round(
  (count(r.contest_id)/(select count(u.user_id) from Users u)*100),2) as percentage from Register r
group by r.contest_id order by percentage desc,r.contest_id asc; 

