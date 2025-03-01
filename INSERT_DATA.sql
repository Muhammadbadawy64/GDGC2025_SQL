USE social_media;
USE Online_Shopping;
INSERT INTO Users (userName, Email, Gender, DOB)
VALUES 
('Ali', 'ali@example.com', 'Male', '1990-05-15'),
('Sara', 'sara@example.com', 'Female', '1995-08-20');

INSERT INTO Posts (content, isPublic, UserID)
VALUES 
('This is my first post!', 1, 1),
('This is a private post.', 0, 2);

INSERT INTO Comment (content, UserID, postID)
VALUES 
('Great post!', 2, 1),
('Nice!', 1, 2);    

INSERT INTO Interaction (Type, UserID, postID)
VALUES 
('Like', 1, 1), 
('Share', 2, 2); 

INSERT INTO User_Post (UserID, postID)
VALUES 
(1, 1), 
(2, 2);  


INSERT INTO Customer (Name, PhoneNumber, Address, Email)
VALUES 
('Ali Ahmed', '0123456789', 'Cairo, Egypt', 'ali.ahmed@example.com'),
('Sara Mohamed', '0111222333', 'Alexandria, Egypt', 'sara.mohamed@example.com');

INSERT INTO Product (name, category, Description, price)
VALUES 
('Laptop', 'Electronics', 'High-performance laptop with 16GB RAM and 512GB SSD', 1200.00),
('Smartphone', 'Electronics', 'Latest smartphone with 128GB storage and 48MP camera', 800.00);

INSERT INTO Suppliers (contactInfo, name)
VALUES 
('contact@techsuppliers.com', 'Tech Suppliers'),
('info@homegoods.com', 'Home Goods Ltd');

INSERT INTO Orderss (totalAmount, CustID, status)
VALUES 
(1200.00, 1, 'pending'),
(800.00, 2, 'shipped');

INSERT INTO OrderDetail (orderID, productID, quantity, price)
VALUES 
(1, 1, 1, 1200.00),  
(2, 2, 1, 800.00);   

INSERT INTO Order_Product (orderID, productID)
VALUES 
(1, 1), 
(2, 2);  

INSERT INTO Supplier_Product (SupplierID, productID)
VALUES 
(1, 1), 
(2, 2);  
