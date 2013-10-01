--Brad Huntington
--Database Management
--10/1/13


--Question 1.
Select 
agents.city

From
Agents

Where
aid in 
	(select
	Orders.aid
	From 
	Orders
	Where
	orders.cid ='c002')

--Question 2.
Select 
A.city

From
Agents A, orders O

Where
A.aid = O.aid
And
O.cid = 'c002'

--Question 3.































