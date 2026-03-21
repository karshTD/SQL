-- RIGHT JOIN
SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;

-- Result: All departments, NULL for unmatched employees
-- John Doe - IT
-- Bob Johnson - IT
-- Jane Smith - HR
-- Alice Brown - Finance
-- NULL - Marketing (no employees)
