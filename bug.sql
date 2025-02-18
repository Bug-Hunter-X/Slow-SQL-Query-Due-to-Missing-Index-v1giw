```sql
SELECT * FROM employees WHERE department_id = '123' AND salary > 100000;
```
This query might return unexpected results if the `department_id` column is not indexed.  Without an index, the database will perform a full table scan, which is slow for large tables.  If the table has millions of records, the query could take a very long time to execute, leading to performance issues and application timeouts.