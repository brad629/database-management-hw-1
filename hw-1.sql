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
