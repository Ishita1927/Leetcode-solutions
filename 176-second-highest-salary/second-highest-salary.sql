SELECT MAX(salary) AS SecondHighestSalary
from Employee
WHERE salary NOT IN (select MAX(Salary) from employee)
