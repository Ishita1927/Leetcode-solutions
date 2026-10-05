SELECT d.name as Department, e.name as Employee, e.salary as salary
FROM Employee e
LEFT JOIN  Department d
ON e.departmentId = d.id
WHERE e.salary = (select MAX(salary) From employee where departmentId = e.departmentId);
