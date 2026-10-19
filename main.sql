SELECT DISTINCT department 
FROM employees 
WHERE salary > 50000 
  AND employee_name LIKE 'J%' 
ORDER BY department DESC;