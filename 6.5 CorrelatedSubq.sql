-- Q Select employees whose salary is above the average in their office

-- sub code:
-- for each employee
-- calculate the avg salary for employee.office
-- return the employee if salary > avg salary
SELECT * FROM sql_hr.employees e
WHERE salary > (
		SELECT AVG(salary)
        FROM employees
        WHERE office_id = e.office_id
	);