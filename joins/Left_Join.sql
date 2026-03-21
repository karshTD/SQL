-- LEFT JOIN
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;

-- Result: All employees, NULL for unmatched departments
-- John Doe - IT
-- Jane Smith - HR
-- Bob Johnson - IT
-- Alice Brown - Finance
-- Charlie Wilson - NULL (no department)
