--Brad Huntington
--Database Management
--10/1/13
--10/6/13

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
Select
c.name,
c.cid

From
customers c

left Outer Join 
orders o

on 
o.cid= c.cid

Where 
o.cid is null

--Question 7.
Select distinct
a.name,
c.name

From 
agents a,
customers c,
orders o1,
orders o2

Where
a.aid=o1.aid
And
o1.aid=o2.aid
And
o2.cid=c.cid
And
c.city=a.city

--Question 8.
Select distinct
a.name,
c.name,
c.city

From 
agents a,
customers c

Where
c.city=a.city

--Question 9.
Select distinct
c.name,
c.city

From 
customers c,
products p

Where
c.city= 'Duluth'

--Question 10.
Select 
c.name, 
c.city
From 
customers c
Where 
c.city in 

	(Select 
	p.city 
	From 
	products p
	Group by 
	p.city
	Order by count(quantity) 
	desc limit 1)

--Question 11.
Select 
c.name, 
c.city
From 
customers c
Where 
c.city in 
	(Select 
	p.city 
	From 
	products p
	Group by 
	p.city
	Order by count(quantity) 
	desc limit 1
	)

--Question 12.
Select
p.name,
p.priceUSD

From 
products p

Group by
p.name,
p.priceUSD

having
 avg (p.priceUSD)
 >
 (Select 
   avg(p.priceUSD)
	
  From 
  products p
 ) 

--Question 13.
Select distinct
c.name,
o.pid,
o.dollars

From 
customers c,
orders o

Where
c.cid = o.cid

Order by
o.dollars desc

--Question 14. 
Select 
c.name,
Coalesce
(sum (o.dollars))

From 
customers c,
orders o

Group by
c.name

--Question 15.
Select distinct
c.name,
p.name,
a.name

From 
customers c,
products p,
agents a

Where
a.city = 'New York'

--Question 16.
Select 
o.dollars
From 
customers c,
products p,
orders o

Where
o.cid = c.cid
And
o.pid = p.pid
And   
((p.priceusd*o.qty)-(p.priceusd*o.qty)*(c.discount *.01))= o.dollars
order by
o.dollars

--Question 17.






























