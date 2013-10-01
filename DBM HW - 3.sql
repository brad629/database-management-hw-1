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
Select Distinct 
Orders.pid

From 
Orders

Where
Orders.aid in
	(Select 
	Orders.aid

	From 
	Orders

	Where 
	Orders.cid in
		(Select
		customers.cid

		From
		Customers

		Where
		Customers.city = 'Kyoto'))
		
--Question 4.
Select Distinct 
O1.pid

From 
orders O1,
orders O2,
customers C

Where
C.city = 'Kyoto'
And 
O2.cid = C.cid
And 
O1.aid = O2.aid
order by
O1.pid

--Question 5.
Select
customers.name,
customers.cid

from 
customers

where
customers.cid not in 
	(select 
	orders.cid
	from
	orders
	where
	orders.cid = orders.cid)
	
--Question 6. 































