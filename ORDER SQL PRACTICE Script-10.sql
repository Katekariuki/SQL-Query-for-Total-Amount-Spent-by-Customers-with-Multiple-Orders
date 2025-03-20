create schema SQL_Assignment;

create table SQL_ASSIGNMENT.Orders (
Order_ID int primary key,
Customer_ID int,
Order_Date date,
Total_Amount dec (10,2)
);
insert into SQL_ASSIGNMENT.Orders(order_ID,customer_ID,Order_Date,Total_Amount)
values
(1,101,'2023-01-05',200),
(2,102,'2023-01-07',150.00),
(3,101,'2023-01-10',300.00),
(4,103,'2023-01-15',450.00),
(5,102,'2023-01-20',100.00),
(6,101,'2023-01-25',250.00);

---using where 

select sum(total_amount) as  Total_spent ,Customer_id,Count(order_id) as Total_Orders
from sql_assignment.orders 
where customer_id in (101,102)
group by 2
order by total_spent desc;

-- Using Having
select customer_id,COUNT(order_ID) as Total_orders,sum(total_amount) as Total_Amount_Spent
from SQL_ASSIGNMENT.Orders
group by customer_id
Having COUNT(order_ID)>1
order by Total_Amount_Spent desc;

select*from sql_assignment.Orders










