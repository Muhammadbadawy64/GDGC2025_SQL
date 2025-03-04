use Shop_Database

select * 
from Customers , Orders
-- 1
select *
from Customers CROSS JOIN Orders;

-- 2
select Orders.OrderID, Customers.Name 
from Orders
inner join Customers on Orders.CustomerID = Customers.CustomerID

--3
select Customers.Name, Orders.OrderID
from Customers
left join  Orders on Customers.CustomerID = Orders.CustomerID

--4
select  Orders.OrderID, Customers.Name 
from Orders
left join  Customers on Orders.CustomerID = Customers.CustomerID

--5
select Orders.OrderID, Customers.Name
from Orders
full join Customers on Orders.OrderID = Customers.CustomerID


--6 I finds answer in 
/*https://www.atlassian.com/data/sql/how-to-find-duplicate-values-in-a-sql-table */

select Customers.Name , count(*)
from Customers
group by Customers.Name 
having count(*) > 1

-- 7
create table products (
	ProductID int  primary key, 
	ProductName NVARCHAR(100),
	ProductDate DATETIME DEFAULT GETUTCDATE()
)

INSERT INTO products(ProductID, ProductName, ProductDate)
VALUES 
('1', 'keyboard', '2025-02-15'),
('2', 'Laptop', '2025-02-20');

select Orders.OrderID, Customers.Name, products.productName
from Orders
inner join Customers on Orders.CustomerID = Customers.CustomerID
inner join products on Orders.OrderID = products.productID

--8
select Orders.OrderID, Customers.Name, Orders.Amount
from Orders
inner join Customers ON Orders.CustomerID = Customers.CustomerID
where Orders.Amount > 500;

--9 
select Customers.Name
from Customers
left join Orders on Customers.CustomerID = Orders.CustomerID
where Orders.OrderID is null;

-- 10

select Customers.Name, count(Orders.OrderID) as OrderCount
from Customers
left join Orders on Customers.CustomerID = Orders.CustomerID
group by Customers.Name;


-- 11
select Customers.Name, sum(Orders.Amount) as TotalAmount
from Customers
left join Orders on Customers.CustomerID = Orders.CustomerID
group by  Customers.Name;


-- 12
update Orders
set Amount = Amount * 1.10
where CustomerID = (select CustomerID from Customers where Name = 'John Doe');


-- 13
delete from Orders
where CustomerID not in (select CustomerID from Customers);

