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

SELECT SUM(salary) as total_payable_salary from employees;

/*
7. Query to get minimum and maximum salary of employees.
*/

SELECT MAX(salary), MIN(salary) from employees;

/*
8. Query to get average salary and number of employees in employee table.
*/

SELECT AVG(salary), COUNT(*) as total_employee from employees;

/*
9. Query to get the number of employees working with the company
*/

SELECT COUNT(*) from employees;

/*
10. 
*/