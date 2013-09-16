database-management-hw-1
========================
--Brad Huntington
--home work 1
--9/15/13

--Question 1.
Select *
From Customers;


--Question 2.
Select
Agents.name, Agents.city

From
Agents

Where
Agents.name='Smith';


--Question 3.
Select
Products.pid, Products.name, Products.quantity 

From 
Products

Where
Products.priceusd > 1.25


--Question 4.
Select 
Orders.ordno, Orders.aid 

From 
Orders


--Question 5.
Select 
Customers.name, Customers.city

From 
Customers

Where
Customers.city != 'Dallas'


--Question 6.
Select 
Agents.name

From 
Agents

Where
Agents.city = 'New York' Or Agents.city = 'Newark'


--Question 7.
Select *

From 
Products

Where
Products.city != 'New york'
 And
 Products.city != 'Newark' 
 And 
 Products.priceusd <= 1.00

--Question 8.
Select *

From 
Orders

Where
Orders.mon = 'mar' Or Orders.mon = 'jan'


--Question 9.
Select *

From 
Orders

Where
Orders.mon = 'feb' And Orders.dollars < 100.00
-- there are no orders less than 100$ in the month of febuary.

--Question 10.
Select *

From 
Orders

Where
Orders.cid = 'c005'
-- the customer c005 does not exist in orders. 
