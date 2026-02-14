
# Assignment 4 – SQL Functions on Library Database

## Objective
This assignment focuses on using SQL functions to retrieve, analyze, and manipulate data from a Library Management Database. It covers aggregate functions, string functions, and date functions.

---

## SQL Concepts Used

### 1. Aggregate Functions

Aggregate functions operate on multiple rows and return a single value.

**MIN()** – Returns smallest value  
```sql
SELECT MIN(column_name) FROM table_name;
```

**MAX()** – Returns largest value  
```sql
SELECT MAX(column_name) FROM table_name;
```

**COUNT()** – Counts number of rows  
```sql
SELECT COUNT(column_name) FROM table_name;
```

**AVG()** – Returns average value  
```sql
SELECT AVG(column_name) FROM table_name;
```

**SUM()** – Returns total sum  
```sql
SELECT SUM(column_name) FROM table_name;
```

---

### 2. String Function

**UPPER()** – Converts text to uppercase  
```sql
SELECT UPPER(column_name) FROM table_name;
```

Used for formatting text output.

---

### 3. Date Functions

**ADD_MONTHS()** – Adds months to a date  
```sql
SELECT ADD_MONTHS(date_column, 2) FROM table_name;
```

**LAST_DAY()** – Returns last day of month  
```sql
SELECT LAST_DAY(date_column) FROM table_name;
```

**EXTRACT()** – Extracts month or year from date  
```sql
SELECT EXTRACT(MONTH FROM date_column) FROM table_name;
```

---

### 4. WHERE Clause

Filters records based on condition.

```sql
SELECT * FROM table_name
WHERE condition;
```

---

## Assignment Questions

1. Find the cheapest book of SIBM library  
2. Which library has the costliest book  
3. How many students from SIT issued the book  
4. Average cost of books in SITMN library  
5. Total cost of purchase made by SIT from January to June  
6. Number of books written by “Shruti”  
7. Costliest book published by “Pragati Book Store”  
8. Total copies of books in SIT  
9. Average cost of books written by “Shivam Kapoor”  
10. Number of books sold by seller living in Pune  
11. Print student names in capital who belong to SSBS  
12. Add two months to issue date of book written by “Shivam Kapoor”  
13. Last day of month when Satish issued book  
14. Number of books issued between Jan–Mar in 2010 and 2020  
15. Number of books with copies less than 5 in SIBM library  

---

## Learning Outcomes

- Use aggregate functions (MIN, MAX, COUNT, AVG, SUM)  
- Use string function (UPPER)  
- Use date functions (ADD_MONTHS, LAST_DAY, EXTRACT)  
- Filter and analyze database records using SQL  

---
