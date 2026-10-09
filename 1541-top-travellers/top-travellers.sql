Select u.name as name, coalesce(sum(r.distance),0) as travelled_distance
FROM users u
Left join Rides r
On u.id = r.user_id
group by u.id, u.name
order by travelled_distance desc, u.name