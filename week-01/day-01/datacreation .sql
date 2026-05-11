SELECT * FROM Employee;

SELECT name, salary FROM Employee;

SELECT * FROM Employee WHERE age > 30;

SELECT name FROM Department;

SELECT * FROM Employee WHERE department_id = 1;

SELECT * FROM Employee WHERE name LIKE 'J%';

SELECT * FROM Employee ORDER BY salary ASC;
INSERT INTO Employee (emp_id, name, age, salary, department_id, hire_date) VALUES
(8, 'Frank White', 32, 48000.00, NULL, '2021-07-10'),  
(9, 'Grace Kelly', 27, 65000.00, 1, '2018-11-13'),
(10, 'Hannah Lee', 30, 53000.00, 4, '2020-02-25');
INSERT INTO Project (project_id, name, department_id) VALUES
(8, 'Project Theta', 1),
(9, 'Project Iota', NULL);  -- Project without a department
SELECT * FROM Department WHERE name = 'IT';
select * from Employee where name like '%e';
SELECT * FROM Employee WHERE name LIKE '%a%';
SELECT * FROM Employee WHERE length(name)=9;
SELECT * FROM Employee WHERE name LIKE '_o%';
SELECT * FROM Employee WHERE year(hire_date) = 2020;
SELECT * FROM Employee WHERE month(hire_date) =1;
SELECT * FROM Employee WHERE year(hire_date)<2019;
SELECT * FROM Employee WHERE hire_date>'2021-03-01';
SELECT * FROM Employee WHERE Year(hire_date) >= Year(CURRENT_DATE) - 2;
SELECT sum(salary) as TOTAL_SALARY FROM Employee;
SELECT avg(salary) as AVG_SALARY FROM Employee;
SELECT min(salary) as MIN_SALARY FROM Employee;
SELECT Count(*) as NUMBER_OF_EMPLOYEES FROM Employee GROUP BY department_id;
SELECT avg(salary) From Employee GROUP BY department_id;
SELECT sum(salary) From Employee GROUP BY department_id;
SELECT avg(age) From Employee GROUP BY department_id;
SELECT max(salary) FROM Employee GROUP BY department_id;
SELECT d.name FROM Department d 
JOIN Employee e ON d.department_id = e.department_id
GROUP BY d.name HAVING COUNT(e.emp_id) > 1;
SELECT d.name FROM Department d JOIN Employee e ON d.department_id=e.department_id GROUP BY d.name Having avg(e.salary)>=55000;
SELECT d.name FROM Department d JOIN Employee e ON d.department_id=e.department_id GROUP BY d.name Having avg(e.salary)<100000;
SELECT d.name FROM Department d JOIN Employee e ON d.department_id=e.department_id GROUP BY d.name Having avg(e.salary)>=70000;
SELECT name FROM Employee ORDER BY salary ASC;
SELECT name FROM Employee ORDER BY age ASC;
SELECT name FROM Employee ORDER BY hire_date ASC;
SELECT e.name, d.name AS dept_name, e.salary
FROM Employee e
JOIN Department d ON e.department_id = d.department_id
ORDER BY d.name ASC, e.salary ASC;
SELECT d.name ,sum(e.salary) as total_payroll FROM Employee e 
JOIN Department d ON e.department_id=d.department_id 
GROUP BY d.name ORDER BY total_payroll,d.name;  
