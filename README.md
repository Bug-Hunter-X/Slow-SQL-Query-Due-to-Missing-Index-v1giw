# Slow SQL Query Due to Missing Index

This repository demonstrates a common performance issue in SQL queries: using a `WHERE` clause on an unindexed column.  The `bug.sql` file contains a query that can be significantly slow on large datasets due to the lack of an index on the `department_id` column.  The `solution.sql` file provides a solution by adding an index to improve query performance.

## Problem

The provided SQL query attempts to filter employee records based on `department_id` and `salary`. Without an index on `department_id`, the database is forced to perform a full table scan, which is very inefficient for large tables. This results in slow query execution times and poor application performance.

## Solution

The solution is to add an index to the `department_id` column. This allows the database to quickly locate relevant rows without scanning the entire table. This dramatically improves query performance. 