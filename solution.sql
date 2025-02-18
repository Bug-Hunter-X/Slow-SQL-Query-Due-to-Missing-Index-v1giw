```sql
-- Add an index to the department_id column
CREATE INDEX idx_department_id ON employees (department_id);

-- Now the query will be much faster
SELECT * FROM employees WHERE department_id = '123' AND salary > 100000;
```