-- Basic INNER JOIN
SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

-- Result: Only employees with matching department IDs
-- John Doe - IT
-- Jane Smith - HR
-- Bob Johnson - IT
-- Alice Brown - Finance
-- Charlie Wilson excluded (no matching department)
