-- 1. Which institute libraries are located in pune city?
SELECT lname, area 
FROM ILibrary 
WHERE city = 'Pune';

-- 2. To which institute CS department belongs to?
SELECT d.deptname, i.lname 
FROM DEPARTMENT d 
JOIN ILibrary i ON d.lid = i.Lid 
WHERE d.deptname = 'Computer Science';

-- 3. Find all books whose price is between 800 to 12000?
SELECT Bname, Price 
FROM BOOKS 
WHERE Price BETWEEN 800 AND 12000;

-- 4. Find employees whose salaries are not greater than 50,000
SELECT empname, salary 
FROM Employee 
WHERE salary <= 50000;

-- 5. Find sellers whose name ends with "ta"
SELECT slname, city 
FROM SELLER 
WHERE slname LIKE '%ta';

-- 6. Find institute libraries where area information is missing
SELECT lname, city 
FROM ILibrary 
WHERE area IS NULL;

-- 7. Find staff members whose name doesn't start with "A"
SELECT stname, email 
FROM STAFF 
WHERE stname NOT LIKE 'A%';

-- 8. Find SIU libraries with institute libraries in Bangalore
SELECT s.lname 
FROM SIULIBRARY s 
WHERE EXISTS (
    SELECT 1 FROM ILibrary i 
    WHERE i.slid = s.Slid AND i.city = 'Bangalore'
);

-- 9. Which students belong to civil department?
SELECT s.Sname, s.email, d.deptname 
FROM STUDENT s 
JOIN DEPARTMENT d ON s.deptid = d.Deptid 
WHERE d.deptname = 'Civil Engineering';

-- 10. Find books written by "shruti" and published by "Mcgraw hill"
SELECT b.Bname, a.Aname, p.Pname 
FROM BOOKS b
JOIN Writes w ON b.Bid = w.Bid
JOIN AUTHOR a ON w.Aid = a.Aid
JOIN PUBLISHER p ON w.pid = p.Pid
WHERE a.Aname = 'shruti' AND p.Pname = 'Mcgraw hill';
