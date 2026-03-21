
# SQL JOINs - Quick Reference

## Sample Tables

**employees** (emp_id, emp_name, dept_id)  
**departments** (dept_id, dept_name)

---

## 1. INNER JOIN
Returns only matching records from both tables.

```sql
SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

