-- Brad Huntington
-- SQL	Queries	2
-- 9/22/13
--Question 1
Select 
Agents.city 

From 
Agents

Where aid in 
( Select 
	Orders.aid
	
	From 
	Orders

	Where cid = 'c002')
	
--Question 2
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
		
--Question 3
Select 
Customers.name, 
Customers.cid

From 
customers

Where
customers.cid not in
	(Select 
	Orders.cid

	From
	Orders

	Where
	Orders.aid = 'a03')


--Question 4
Select 
Customers.cid,
Customers.name

From
Customers

Where Customers.cid in
	(Select
	Orders.cid

	From
	Orders

	Where 
	Orders.pid = 'p01' or Orders.pid = 'p07' )
	
--Question 5
Select distinct
Orders.pid

From 
Orders

Where 
Orders.cid in
	(Select 
	Orders.cid

	From 
	Orders

	Where
	Orders.aid = 'a03')

--Question 6
Select
Customers.name,
Customers.discount

From
Customers

Where 
Customers.cid in
	(Select
	Orders.cid

	From 
	Orders

	Where
	Orders.aid in
	(Select
	Agents.aid

	From
	Agents

	Where
	Agents.city = 'Dallas' or Agents.city = 'Duluth'))
	
--Question 7

		
	























		
