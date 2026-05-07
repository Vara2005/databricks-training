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
