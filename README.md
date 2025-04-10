# Task 3: SQL for Data Analysis

## Internship - Data Analyst

This project is part of the internship program and demonstrates SQL skills for data analysis using a sample e-commerce database.

### Objectives:
- Use SQL to extract and analyze data from a structured database.
- Apply SELECT, JOINs, GROUP BY, subqueries, views, and indexing techniques.

---

## Dataset
A mock **E-commerce SQL Database** was created using SQLite. It contains:
- `customers`
- `orders`
- `order_items`
- `products`

---

## SQL Features Demonstrated

- Basic queries with `SELECT`, `WHERE`, `ORDER BY`
- Aggregate functions: `SUM`, `AVG`
- `GROUP BY` clauses
- `INNER`, `LEFT`, and emulated `RIGHT` JOINs
- Subqueries for complex filtering
- Views for reusability and abstraction
- Query optimization with indexes

---

## Files

- `task3_sql_queries.sql`: Contains all the SQL queries for the task.
- `query_output_total_spent.png`: Screenshot of output from a query calculating total spend by each customer.

---

SELECT AVG(total_spend) FROM (...) GROUP BY user_id`
4. **Subqueries**: A query nested inside another query.
5. **Optimizing queries**: Use indexes, avoid `SELECT *`, and minimize joins on large tables.
6. **Views in SQL**: Virtual tables based on SQL queries.
7. **Handling NULLs**: Use `IS NULL`, `COALESCE()`, or `IFNULL()` functions.

---

