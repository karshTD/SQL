USE library_db;

-- 1. Cheapest book in SIBM library
SELECT MIN(cost)
FROM Book
JOIN Library ON Book.library_id = Library.library_id
WHERE library_name = 'SIBM Library';


-- 2. Library with costliest book
SELECT library_name
FROM Library
JOIN Book ON Library.library_id = Book.library_id
WHERE cost = (SELECT MAX(cost) FROM Book);


-- 3. Number of students from SIT who issued books
SELECT COUNT(DISTINCT student_id)
FROM Issue
JOIN Student ON Issue.student_id = Student.student_id
WHERE institute = 'SIT';


-- 4. Average cost of books in SITMN library
SELECT AVG(cost)
FROM Book
JOIN Library ON Book.library_id = Library.library_id
WHERE library_name = 'SITMN Library';


-- 5. Total cost of purchases made by SIT from Jan to June
SELECT SUM(total_cost)
FROM Purchase
JOIN Library ON Purchase.library_id = Library.library_id
WHERE library_name = 'SIT Library'
AND MONTH(purchase_date) BETWEEN 1 AND 6;


-- 6. Number of books written by Shruti
SELECT COUNT(*)
FROM Book
WHERE author = 'Shruti';


-- 7. Costliest book published by Pragati Book Store
SELECT MAX(cost)
FROM Book
WHERE publisher = 'Pragati Book Store';


-- 8. Total copies of books in SIT library
SELECT SUM(copies)
FROM Book
JOIN Library ON Book.library_id = Library.library_id
WHERE library_name = 'SIT Library';


-- 9. Average cost of books written by Shivam Kapoor
SELECT AVG(cost)
FROM Book
WHERE author = 'Shivam Kapoor';


-- 10. Number of books sold by sellers in Pune
SELECT COUNT(*)
FROM Purchase
JOIN Seller ON Purchase.seller_id = Seller.seller_id
WHERE city = 'Pune';


-- 11. Student names in capital from SSBS
SELECT UPPER(student_name)
FROM Student
WHERE institute = 'SSBS';


-- 12. Add 2 months to issue date of book written by Shivam Kapoor
SELECT ADD_MONTHS(issue_date, 2)
FROM Issue
JOIN Book ON Issue.book_id = Book.book_id
WHERE author = 'Shivam Kapoor';


-- 13. Last day of month when Satish issued book
SELECT LAST_DAY(issue_date)
FROM Issue
JOIN Student ON Issue.student_id = Student.student_id
WHERE student_name = 'Satish';


-- 14. Books issued from Jan to March in 2010 and 2020
SELECT COUNT(*)
FROM Issue
WHERE MONTH(issue_date) BETWEEN 1 AND 3
AND YEAR(issue_date) IN (2010, 2020);


-- 15. Books with copies less than 5 in SIBM library
SELECT COUNT(*)
FROM Book
JOIN Library ON Book.library_id = Library.library_id
WHERE copies < 5
AND library_name = 'SIBM Library';
