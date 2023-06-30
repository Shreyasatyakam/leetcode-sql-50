SELECT
  ROUND(COUNT(DISTINCT player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM
  Activity
WHERE (player_id,DATE_SUB(event_date,INTERVAL 1 DAY)) 
in
(
    select player_id,min(event_date) as first_login from activity group by player_id
)
