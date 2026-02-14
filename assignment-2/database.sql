-- Create Database
CREATE DATABASE library_db;

-- Use database
USE library_db;

-- Library table
CREATE TABLE Library (
    library_id INT PRIMARY KEY,
    library_name VARCHAR(50),
    location VARCHAR(50)
);

-- Book table
CREATE TABLE Book (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(100),
    cost DECIMAL(10,2),
    copies INT,
    library_id INT,
    FOREIGN KEY (library_id) REFERENCES Library(library_id)
);

-- Student table
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    institute VARCHAR(50)
);

-- Seller table
CREATE TABLE Seller (
    seller_id INT PRIMARY KEY,
    seller_name VARCHAR(50),
    city VARCHAR(50)
);

-- Purchase table
CREATE TABLE Purchase (
    purchase_id INT PRIMARY KEY,
    book_id INT,
    seller_id INT,
    library_id INT,
    purchase_date DATE,
    quantity INT,
    total_cost DECIMAL(10,2),
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (seller_id) REFERENCES Seller(seller_id),
    FOREIGN KEY (library_id) REFERENCES Library(library_id)
);

-- Issue table
CREATE TABLE Issue (
    issue_id INT PRIMARY KEY,
    book_id INT,
    student_id INT,
    issue_date DATE,
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (student_id) REFERENCES Student(student_id)
);
