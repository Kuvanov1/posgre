Select contact_name, customers.city  
FROM customers
INNER JOIN employees ON customers.city = employees.city;