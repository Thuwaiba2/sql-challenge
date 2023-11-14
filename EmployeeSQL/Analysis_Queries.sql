SELECT *
FROM "Employees";

SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Employees".sex, "Salaries".salary
FROM "Employees"
JOIN "Salaries" ON "Employees".emp_no = "Salaries".emp_no;

SELECT "Employees".first_name, "Employees".last_name, "Employees".hire_date
FROM "Employees"
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT * FROM "Dept_manager";

SELECT dm.emp_no, dm.dept_no, dept_name, last_name, first_name
FROM "Dept_manager" dm
JOIN "Employees" e ON dm.emp_no = e.emp_no
JOIN "Departments" d ON dm.dept_no = d.dept_no;

SELECT * FROM "Departments";
SELECT * FROM "Dept_emp";

SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name, "Departments".dept_no, "Departments".dept_name
FROM "Departments"
JOIN "Dept_emp" ON "Dept_emp".dept_no = "Departments".dept_no
JOIN "Employees" ON "Dept_emp".emp_no = "Employees".emp_no;

SELECT "Employees".first_name, "Employees".last_name, "Employees".sex
FROM "Employees"
WHERE "Employees".first_name = 'Hercules' AND "Employees".last_name LIKE 'B%';

SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name
FROM "Departments"
JOIN "Dept_emp" ON "Departments".dept_no = "Dept_emp".dept_no
JOIN "Employees" ON "Dept_emp".emp_no = "Employees".emp_no
WHERE "Departments".dept_name = 'Sales';

SELECT "Employees".emp_no, "Employees".last_name, "Employees".first_name,
"Departments".dept_name
FROM "Departments"
JOIN "Dept_emp" ON "Departments".dept_no = "Dept_emp".dept_no
JOIN "Employees" ON "Dept_emp".emp_no = "Employees".emp_no
WHERE "Departments".dept_name = 'Sales';

SELECT "Employees".last_name, COUNT(*) AS frequency
FROM "Employees"
GROUP BY "Employees".last_name
ORDER BY frequency DESC;
