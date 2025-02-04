-- Run the following query to select all device information from the machines table:
SELECT *
FROM machines;

-- Run the following query to select only the device_id and email_client columns from the machines table. Replace X with device_id and Y with email_client:
SELECT device_id, email_client FROM machines;

SELECT device_id, operating_system, OS_patch_date FROM machines;

SELECT event_id, country FROM log_in_attempts;

SELECT username, login_date, login_time FROM log_in_attempts;

SELECT * FROM log_in_attempts;

SELECT *
FROM log_in_attempts
ORDER BY login_date;

SELECT * 
FROM log_in_attempts
ORDER BY login_date, login_time;

SELECT device_id, operating_system
FROM machines 
WHERE operating_system = 'OS 2';

SELECT * 
FROM employees 
WHERE department = 'Finance';

SELECT * FROM employees WHERE office = 'South-109';
SELECT * FROM employees WHERE office LIKE 'South%';

SELECT * 
FROM log_in_attempts 
WHERE login_date > '2022-05-09';
#Complete the SQL query to retrieve data for login attempts made after '2022-05-09'
  
SELECT *
FROM log_in_attempts
WHERE login_date BETWEEN '2022-05-09' AND '2022-05-11';
-- How many login attempts were made between 2022-05-09 and 2022-05-11?
  
SELECT *
FROM log_in_attempts WHERE login_time < '07:00:00';

SELECT *
FROM log_in_attempts WHERE login_time BETWEEN '06:00:00' AND '07:00:00';

SELECT EVENT_ID, username, login_date
FROM log_in_attempts WHERE event_id >= 100;

SELECT EVENT_ID, username, login_date
FROM log_in_attempts WHERE event_id BETWEEN 100 AND 150;

SELECT *
FROM log_in_attempts
WHERE login_time > '18:00' AND success = 1;         -- (1 is TRUE Boolean)
  
SELECT *
FROM log_in_attempts 
WHERE login_time > '18:00' AND success = 0;         -- (0 is FALSE Boolean)
  
SELECT *
FROM log_in_attempts
WHERE login_date = '2022-05-08' OR login_date = '2022-05-09';

SELECT *
FROM log_in_attempts
WHERE NOT country LIKE 'MEX%';

-- Your team is updating employee machines, and you need to obtain the information about employees in the 'Marketing' department who are located in all offices in the East building (such as 'East-170' or 'East-320').
SELECT *
FROM employees
WHERE department = 'Marketing' AND office LIKE 'East-%';

SELECT *
FROM employees
WHERE department = 'Finance' OR department = 'Sales';

-- Show all employees who are not part of the IT dept
SELECT *
FROM employees
WHERE NOT department = 'Information Technology';

-- INNER JOIN:
  
SELECT *
FROM employees
INNER JOIN log_in_attempts ON employees.username = log_in_attempts.username;
