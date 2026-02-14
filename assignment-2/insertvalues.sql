USE library_db;

-- Libraries
INSERT INTO Library VALUES
(1, 'SIBM Library', 'Pune'),
(2, 'SIT Library', 'Pune'),
(3, 'SITMN Library', 'Nagpur'),
(4, 'SSBS Library', 'Delhi');

-- Books
INSERT INTO Book VALUES
(101, 'DBMS Fundamentals', 'Shruti', 'Pragati Book Store', 450, 10, 1),
(102, 'Operating Systems', 'Shivam Kapoor', 'Tech Publications', 600, 7, 2),
(103, 'Data Structures', 'Shruti', 'Pragati Book Store', 550, 3, 1),
(104, 'Computer Networks', 'Amit Sharma', 'Pearson', 700, 8, 3),
(105, 'Java Programming', 'Shivam Kapoor', 'Pragati Book Store', 650, 4, 2),
(106, 'SQL Basics', 'Riya Verma', 'Oxford', 300, 12, 4);

-- Students
INSERT INTO Student VALUES
(1, 'Satish', 'SIT'),
(2, 'Rahul', 'SIBM'),
(3, 'Amit', 'SSBS'),
(4, 'Priya', 'SIT'),
(5, 'Neha', 'SSBS');

-- Sellers
INSERT INTO Seller VALUES
(1, 'ABC Books', 'Pune'),
(2, 'XYZ Publishers', 'Mumbai'),
(3, 'Pragati Distributor', 'Pune');

-- Purchases
INSERT INTO Purchase VALUES
(1, 101, 1, 2, '2020-01-15', 5, 2250),
(2, 102, 2, 2, '2020-03-10', 3, 1800),
(3, 103, 3, 1, '2020-05-20', 4, 2200),
(4, 104, 1, 3, '2010-02-12', 2, 1400),
(5, 105, 3, 2, '2020-06-18', 3, 1950);

-- Issues
INSERT INTO Issue VALUES
(1, 101, 1, '2020-01-10'),
(2, 102, 2, '2020-03-15'),
(3, 103, 3, '2010-02-20'),
(4, 105, 1, '2020-04-25'),
(5, 106, 5, '2020-06-05');
