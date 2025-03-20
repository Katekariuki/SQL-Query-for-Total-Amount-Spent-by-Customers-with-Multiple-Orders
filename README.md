# SQL-Query-for-Total-Amount-Spent-by-Customers-with-Multiple-Orders
---
# Objective
The goal of this task was to write an SQL query that retrieves and analyzes customer spending data from the Orders table. Specifically, the query identifies customers who have placed more than one order and calculates their total spending and order count. The results are sorted in descending order of total spending.

---
Implementation Details
Selecting Relevant Columns

The query retrieves three key pieces of information:
- CustomerID: Identifies the customer.
- TotalAmountSpent: The sum of all order amounts for that customer.
- TotalOrders: The number of orders placed by the customer.
- Filtering Customers with Multiple Orders

The **HAVING** clause ensures that only customers with more than one order are included in the results.
Grouping Data by Customer

The **GROUP BY** clause aggregates the total amount spent and the number of orders per customer.
Sorting Results

The **ORDER BY** clause sorts the results in descending order based on TotalAmountSpent, ensuring that the highest-spending customers appear first.
