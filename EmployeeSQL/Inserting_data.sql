COPY "Departments"
FROM 'C:/Users/tutuw/Desktop/Boot_camp/sql-challenge/EmployeeSQL/data/Department.csv'
DELIMITER '|'
CSV HEADER;

COPY "Dept_emp"
FROM 'C:/Users/tutuw/Desktop/Boot_camp/sql-challenge/EmployeeSQL/data/Dept_emp.csv'
DELIMITER '|'
CSV HEADER;

COPY "Dept_manager"
FROM 'C:/Users/tutuw/Desktop/Boot_camp/sql-challenge/EmployeeSQL/data/Dept_manager.csv'
DELIMITER '|'
CSV HEADER;

ALTER DATABASE "Employees" SET datestyle TO 'ISO, MDY';
COPY "Employees"
FROM 'C:/Users/tutuw/Desktop/Boot_camp/sql-challenge/EmployeeSQL/data/Employees.csv'
DELIMITER '|'
CSV HEADER;

COPY "Salaries"
FROM 'C:/Users/tutuw/Desktop/Boot_camp/sql-challenge/EmployeeSQL/data/Salaries.csv'
DELIMITER '|'
CSV HEADER;

COPY "Title"
FROM 'C:/Users/tutuw/Desktop/Boot_camp/sql-challenge/EmployeeSQL/data/Title.csv'
DELIMITER '|'
CSV HEADER;