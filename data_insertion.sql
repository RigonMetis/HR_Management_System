use hr_database;

-- Data for the regions table

INSERT INTO regions(region_id,region_name) VALUES (1,'Asia');
INSERT INTO regions(region_id,region_name) VALUES (2,'Americas');
INSERT INTO regions(region_id,region_name) VALUES (3,'Europe');
INSERT INTO regions(region_id,region_name) VALUES (4,'Other');

SELECT 
    *
FROM
    regions;

-- Data for the countries table

 INSERT INTO countries(country_id,country_name,region_id) VALUES 
 ('IND','India',1),
 ('ARG','Argentina',2),
 ('AUS','Australia',4),
 ('BEL','Belgium',3),
 ('BRA','Brazil',2),
 ('CAN','Canada',2),
 ('CHE','Switzerland',3),
 ('CHN','China',1),
 ('DEU','Germany',3),
 ('EGY','Egypt',4),
 ('FRA','France',3),
 ('DNK','Denmark',3),
 ('HKG','HongKong',1),
 ('KOR','South Korea',1),
 ('ITA','Italy',3),
 ('JPN','Japan',1),
 ('ZAF','South Africa',4),
 ('ESP','Spain',3),
 ('RUS','Russia',1),
 ('NLD','Netherlands',3),
 ('SGP','Singapore',1),
 ('GBR','United Kingdom',3),
 ('USA','United States of America',2),
 ('ARE','United Arab Emirates',1);

SELECT 
    *
FROM
    countries;

-- Data for the departments table

INSERT INTO departments(department_id,department_name) VALUES 
(1,'Administration'),
(2,'Marketing'),
(3,'Data Science'),
(4,'Purchasing'),
(5,'Human Resources'),
(6,'Shipping'),
(7,'IT'),
(8,'Public Relations'),
(9,'Sales'),
(10,'Executive'),
(11,'Finance'),
(12,'Accounting');

SELECT 
    *
FROM
    departments;

-- Data for the employees table

INSERT INTO employees(employee_id,first_name,last_name,email_id,phone_number,hire_date,country_id,salary,manager_id,department_id) VALUES 
(100,'Steven','King','steven.king@sqltutorial.org','515.123.4567','1987-06-17','USA',24000.00,NULL,9),
(101,'Neena','Kochhar','neena.kochhar@sqltutorial.org','515.123.4568','1989-09-21','IND',17000.00,100,9),
(102,'Lex','De Haan','lex.de haan@sqltutorial.org','515.123.4569','1993-01-13','DNK',17000.00,100,9),
(103,'Alexander','Hunold','alexander.hunold@sqltutorial.org','590.423.4567','1990-01-03','CAN',9000.00,102,6),
(104,'Bruce','Ernst','bruce.ernst@sqltutorial.org','590.423.4568','1991-05-21','GBR',6000.00,103,6),
(105,'David','Austin','david.austin@sqltutorial.org','590.423.4569','1997-06-25','AUS',4800.00,103,6),
(106,'Vikash','Deva','vikash.deva@sqltutorial.org','590.423.4560','1998-02-05','IND',4800.00,103,6),
(107,'Diana','Lorentz','diana.lorentz@sqltutorial.org','590.423.5567','1999-02-07','USA',4200.00,103,6),
(108,'Nancy','Greenberg','nancy.greenberg@sqltutorial.org','515.124.4569','1994-08-17','ESP',12000.00,101,10),
(109,'Daniel','Faviet','daniel.faviet@sqltutorial.org','515.124.4169','1994-08-16','ITA',9000.00,108,10),
(110,'John','Chen','john.chen@sqltutorial.org','515.124.4269','1997-09-28','CHN',8200.00,108,10),
(111,'Ismael','Sciarra','ismael.sciarra@sqltutorial.org','515.124.4369','1997-09-30','ARE',7700.00,108,10),
(112,'Jose Manuel','Urman','jose manuel.urman@sqltutorial.org','515.124.4469','1998-03-07','ITA',7800.00,108,10),
(113,'Luis','Popp','luis.popp@sqltutorial.org','515.124.4567','1999-12-07','CHE',6900.00,108,10),
(114,'Den','Raphaely','den.raphaely@sqltutorial.org','515.127.4561','1994-12-07','SGP',11000.00,100,3),
(115,'Alexander','Khoo','alexander.khoo@sqltutorial.org','515.127.4562','1995-05-18','GBR',3100.00,114,3),
(116,'Shelli','Baida','shelli.baida@sqltutorial.org','515.127.4563','1997-12-24','GBR',2900.00,114,3),
(117,'Sigal','Tobias','sigal.tobias@sqltutorial.org','515.127.4564','1997-07-24','GBR',2800.00,114,3),
(118,'Guy','Himuro','guy.himuro@sqltutorial.org','515.127.4565','1998-11-15','GBR',2600.00,114,3),
(119,'Karen','Colmenares','karen.colmenares@sqltutorial.org','515.127.4566','1999-08-10','GBR',2500.00,114,3),
(120,'Matthew','Weiss','matthew.weiss@sqltutorial.org','650.123.1234','1996-07-18','SGP',8000.00,100,5),
(121,'Adam','Fripp','adam.fripp@sqltutorial.org','650.123.2234','1997-04-10','SGP',8200.00,100,5),
(122,'Payam','Kaufling','payam.kaufling@sqltutorial.org','650.123.3234','1995-05-01','ESP',7900.00,100,12),
(123,'Shanta','Vollman','shanta.vollman@sqltutorial.org','650.123.4234','1997-10-10','CHE',6500.00,100,5),
(126,'Irene','Mikkilineni','irene.mikkilineni@sqltutorial.org','650.124.1224','1998-09-28','ITA',2700.00,120,5),
(145,'John','Russell','john.russell@sqltutorial.org',NULL,'1996-10-01','FRA',14000.00,100,8),
(146,'Karen','Partners','karen.partners@sqltutorial.org',NULL,'1997-01-05','FRA',13500.00,100,8),
(176,'Jonathon','Taylor','jonathon.taylor@sqltutorial.org',NULL,'1998-03-24','USA',8600.00,100,8),
(177,'Jack','Livingston','jack.livingston@sqltutorial.org',NULL,'1998-04-23','USA',8400.00,100,8),
(178,'Kimberely','Grant','kimberely.grant@sqltutorial.org',NULL,'1999-05-24','USA',7000.00,100,8),
(179,'Charles','Johnson','charles.johnson@sqltutorial.org',NULL,'2000-01-04','USA',6200.00,100,8),
(192,'Sarah','Bell','sarah.bell@sqltutorial.org','650.501.1876','1996-02-04','CAN',4000.00,123,5),
(193,'Britney','Everett','britney.everett@sqltutorial.org','650.501.2876','1997-03-03','CAN',3900.00,123,5),
(200,'Jennifer','Whalen','jennifer.whalen@sqltutorial.org','515.123.4444','1987-09-17','ZAF',4400.00,101,1),
(201,'Michael','Hartstein','michael.hartstein@sqltutorial.org','515.123.5555','1996-02-17','CHE',13000.00,100,12),
(202,'Park','Shuk','park.shuk@sqltutorial.org','603.123.6666','1997-08-17','KOR',6000.00,201,2),
(203,'Susan','Kaya','susan.kaya@sqltutorial.org','515.123.7777','1994-06-07','JPN',6500.00,101,4),
(204,'Lee','Dong','lee.dong@sqltutorial.org','515.123.8888','1994-06-07','HKG',10000.00,101,7),
(205,'Shelley','Higgins','shelley.higgins@sqltutorial.org','515.123.8080','1994-06-07','NLD',12000.00,101,11),
(206,'William','Gietz','william.gietz@sqltutorial.org','515.123.8181','1994-06-07','ZAF',8300.00,205,11);

SELECT 
    *
FROM
    employees;