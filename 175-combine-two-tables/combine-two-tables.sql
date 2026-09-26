SELECT 
p.firstName,
p.Lastname,
a.City,
a.State
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId