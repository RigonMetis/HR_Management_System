CREATE DATABASE hr_database;

use hr_database;

CREATE TABLE regions (
    region_id INT(10) AUTO_INCREMENT,
    region_name VARCHAR(25) DEFAULT NULL,
    PRIMARY KEY (region_id)
);


CREATE TABLE countries (
    country_id CHAR(3),
    country_name VARCHAR(40) DEFAULT NULL,
    region_id INT(10) NOT NULL,
    PRIMARY KEY (country_id),
    FOREIGN KEY (region_id)
        REFERENCES regions (region_id)
        ON DELETE CASCADE
);


CREATE TABLE departments (
    department_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL
);


CREATE TABLE employees (
    employee_id INT(11) NOT NULL,
    first_name VARCHAR(20) DEFAULT NULL,
    last_name VARCHAR(25) NOT NULL,
    email_id VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20) DEFAULT NULL,
    country_id CHAR(3) NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(8 , 2 ) NOT NULL,
    manager_id INT(11) DEFAULT NULL,
    department_id INT(11) DEFAULT NULL,
    PRIMARY KEY (employee_id),
    UNIQUE KEY (email_id),
    FOREIGN KEY (country_id)
        REFERENCES countries (country_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (department_id)
        REFERENCES departments (department_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (manager_id)
        REFERENCES employees (employee_id)
);


