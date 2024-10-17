select distinct customers.customer_name, customers.country as countries from customers join transactions on customers.country = transactions.billing_country
