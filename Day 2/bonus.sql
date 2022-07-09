# Write your MySQL query statement below
# select employee_id,  
# (case 
#  when employee_id %2!=0 
# and  name not like 'M%' then  salary else 0 end)
#  as ' bonus' from Employees 
 
 # select employee_id,salary as bonus from Employees where Employees.employee_id%2!=0 and Employees.name not like "M%" and
 # (select employee_id,0 as bonus from Employees where Employees.employee_id%2=0 and Employees.name like "M%" )
 SELECT 
    employee_id,  
    (CASE WHEN (employee_id % 2 != 0 AND name NOT LIKE 'M%') THEN salary 
          ELSE 0 
    END) as bonus
FROM 
    Employees
ORDER BY
    employee_id;