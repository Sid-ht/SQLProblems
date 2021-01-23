select d.name as Department, e1.name as Employee , e1.salary from Employee e1, Department d where
d.id = e1.DepartmentId and 3 > (select count(distinct e2.salary) from employee e2 where e2.salary > e1.salary and e1.DepartmentId = e2.DepartmentId);
