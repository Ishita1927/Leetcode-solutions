SELECT *
FROM cinema
WHERE id IN ('1', '3', '5', '7', '9')
AND description <> 'boring'
ORDER BY rating DESC;
