USE hr_database;

SHOW TABLES;

/* 
1. Query to display the names (first_name, last_name) using alias name "First Name" and "Last Name" from employee table. 
*/

SELECT 
    first_name AS 'First Name', last_name AS 'Last Name'
FROM
    employees;

/*
2. Query to get unique department id from employee table.
*/

SELECT DISTINCT
    department_id
FROM
    employees;

/*
3. Query to get all employee details from employee table order by first name descending.
*/

SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

/*
4. Query to get the names, salary, PF of all employees (PF is calulated as 15% of salary).  
*/

SELECT 
    first_name, last_name, salary, 0.15 * salary AS PF
FROM
    employees;

/*
5. Query to get employee_id, names, salary in ascending order of salary.
*/

SELECT 
    employee_id, first_name, last_name, salary
FROM
    employees
ORDER BY salary;

/*
6. Query to get the total salary payable to employees.
*/

SELECT 
    SUM(salary) AS total_payable_salary
FROM
    employees;

/*
7. Query to get minimum and maximum salary of employees.
*/

SELECT 
    MAX(salary), MIN(salary)
FROM
    employees;

/*
8. Query to get average salary and number of employees in employee table.
*/

SELECT 
    AVG(salary), COUNT(*) AS total_employee
FROM
    employees;

/*
9. Query to get the number of employees working with the company.
*/

SELECT 
    COUNT(*) AS 'Number of Employees'
FROM
    employees;

/*
10. Query to get all first name of employee in upper case.
*/

SELECT 
    UPPER(first_name)
FROM
    employees;

/*
11. Query to get the first 3 characters of first name from employee table.
*/

SELECT 
    SUBSTRING(first_name, 1, 3)
FROM
    employees;

/*
12. Query to calculate 171*358+789
*/

SELECT 171 * 358 + 789 AS result;

/*
13. Query to get the full name of the employee.
*/

SELECT 
    CONCAT(first_name, ' ', last_name) AS 'Employee Name'
FROM
    employees;

/*
14. Query to get first name from employee table after removing white spaces.
*/

SELECT 
    TRIM(first_name)
FROM
    employees;
    
/*
15. Query to get the length of full name with first name and last name.
*/

SELECT 
    first_name,
    last_name,
    LENGTH(first_name) + LENGTH(last_name) AS 'length of names'
FROM
    employees;

/*
16. Query to check if first_name field of employees table contain numbers.
*/

SELECT 
    *
FROM
    employees
WHERE
    first_name REGEXP '[0-9]';

/*
17. Query to select first 10 records from employees table.
*/

SELECT 
    *
FROM
    employees
LIMIT 10;

/*
18. Query to get monthly salary (round 2 decimal places) of employee. Assume salary field as Annual salary.
*/

SELECT 
    CONCAT(first_name, ' ', last_name) AS 'Employee Name',
    ROUND(salary / 12, 2) AS 'Monthly Salary'
FROM
    employees;

/*
19. Query to get the name and salary of employee whose salary is not in range $10,000 through $15,000.
*/

SELECT 
    CONCAT(first_name, ' ', last_name) 'Employee Name', salary
FROM
    employees
WHERE
    salary NOT BETWEEN 10000 AND 15000;

/*
20. Query to get the name and department id of all employees in department 7 or 9 or 10 in ascending order. 
*/

SELECT 
    first_name, last_name, department_id
FROM
    employees
WHERE
    department_id IN (7 , 9, 10)
ORDER BY department_id ASC;

/*
21. Query to get name, salary and department id where salary in between 10000 through 15000 and department id 9 or 10. 
*/

SELECT 
    first_name, last_name, salary, department_id
FROM
    employees
WHERE
    salary BETWEEN 10000 AND 15000
        AND department_id IN (9 , 10);

/*
22. Query to get the name and hire_date of all employees who where hired in 1997.
*/

SELECT 
    first_name, last_name, hire_date
FROM
    employees
WHERE
    YEAR(hire_date) = 1997;

/*
23. Query to get the first_name of all employees who have both 'b' and 'c' in their first_name. (Pattern Matching)
*/

SELECT 
    first_name
FROM
    employees
WHERE
    first_name LIKE '%b%'
        AND first_name LIKE '%c%';

/*
24. Query to get the last name of employees whose last_names have exactly 6 characters.
*/

SELECT 
    last_name
FROM
    employees
WHERE
    last_name LIKE '______';

/*
25. Query to get the last name of employee havine 'e' as 3rd character.
*/

SELECT 
    last_name
FROM
    employees
WHERE
    last_name LIKE '__e%';