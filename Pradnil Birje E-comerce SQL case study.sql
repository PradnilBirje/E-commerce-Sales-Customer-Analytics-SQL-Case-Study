#E-Commerce SQL Case Study
create database shop;
use shop;

create table customer(customer_id int primary key, full_name varchar(40), city varchar(20),
state varchar(25), signup_date date);
describe customer;

INSERT INTO Customer VALUES
(1,'Amit Sharma','Mumbai','Maharashtra','2022-01-05'),
(2,'Priya Patel','Ahmedabad','Gujarat','2022-02-10'),
(3,'Rohan Verma','Delhi','Delhi','2022-03-01'),
(4,'Sneha Rao','Bengaluru','Karnataka','2022-05-11'),
(5,'Vikas Singh','Lucknow','UP','2022-06-21'),
(6,'Kiran Nair','Kochi','Kerala','2022-08-02'),
(7,'Neha Shah','Surat','Gujarat','2022-04-18'),
(8,'Harsh Jain','Indore','MP','2022-04-20'),
(9,'Anjali Desai','Pune','Maharashtra','2022-09-15'),
(10,'Manish Gupta','Jaipur','Rajasthan','2022-03-29'),
(11,'Kavita Iyer','Chennai','Tamil Nadu','2021-12-12'),
(12,'Raj Malhotra','Delhi','Delhi','2022-10-09'),
(13,'Isha Khanna','Mumbai','Maharashtra','2023-01-10'),
(14,'Sanjay Mehta','Nagpur','Maharashtra','2022-02-14'),
(15,'Divya Kumar','Patna','Bihar','2022-11-11'),
(16,'Rahul Jain','Delhi','Delhi','2022-06-22'),
(17,'Pooja Ghosh','Kolkata','WB','2022-07-13'),
(18,'Sameer Khan','Bhopal','MP','2022-04-28'),
(19,'Monika Yadav','Agra','UP','2022-05-07'),
(20,'Aakash Roy','Kolkata','WB','2022-03-02'),
(21,'Farhan Ali','Hyderabad','Telangana','2023-01-20'),
(22,'Tina Dsouza','Mangalore','Karnataka','2022-12-12'),
(23,'Shubham S','Nashik','Maharashtra','2022-09-09'),
(24,'Meera Joshi','Pune','Maharashtra','2021-11-21'),
(25,'Dev Patel','Surat','Gujarat','2022-04-16'),
(26,'Arjun Singh','Mohali','Punjab','2022-02-25'),
(27,'Ritika Arora','Delhi','Delhi','2022-06-06'),
(28,'Nitin Kumar','Pune','Maharashtra','2021-07-19'),
(29,'Payal Thakur','Shimla','HP','2022-10-08'),
(30,'Vishal Rana','Dehradun','Uttarakhand','2022-11-02'),
(31,'Ankit Tiwari','Lucknow','UP','2023-01-15'),
(32,'Deepika K','Chennai','Tamil Nadu','2022-12-22'),
(33,'Suresh R','Hyderabad','Telangana','2022-09-17'),
(34,'Nandini S','Bengaluru','Karnataka','2022-03-14'),
(35,'Ravi Teja','Vizag','AP','2022-09-01'),
(36,'Rohit Shetty','Mumbai','Maharashtra','2021-12-01'),
(37,'Anu George','Kochi','Kerala','2022-02-18'),
(38,'Gaurav Kumar','Patna','Bihar','2022-05-16'),
(39,'Simran K','Chandigarh','Punjab','2022-08-11'),
(40,'Kartik Aryan','Delhi','Delhi','2022-09-21'),
(41,'Jay Shah','Mumbai','Maharashtra','2022-10-25'),
(42,'Roshni M','Indore','MP','2022-11-17'),
(43,'Manoj S','Chennai','Tamil Nadu','2023-02-11'),
(44,'Pallavi D','Kolkata','WB','2023-01-08'),
(45,'Harshal K','Pune','Maharashtra','2022-06-06'),
(46,'Leena Fernandes','Goa','Goa','2021-10-09'),
(47,'Ravi Kumar','Delhi','Delhi','2022-03-30'),
(48,'Komal S','Jaipur','Rajasthan','2022-04-17'),
(49,'Abhishek Jain','Ahmedabad','Gujarat','2022-07-21'),
(50,'Zoya Khan','Hyderabad','Telangana','2022-11-27');

select * from customer;

create table Products(product_id int primary key, product_name varchar(100), category varchar(30),
price decimal(10,2), cost_price decimal(10,2));
describe Products;

INSERT INTO Products VALUES
(1,'Samsung Galaxy M12','Electronics',12000,9000),
(2,'iPhone 11 Case','Accessories',699,250),
(3,'Boat Earbuds 141','Electronics',1999,1200),
(4,'HP Mouse Wireless','Electronics',899,500),
(5,'Lenovo Laptop Bag','Accessories',1499,700),

(6,'Nike Running Shoes','Fashion',3299,1800),
(7,'Levis Jeans','Fashion',2599,1200),
(8,'Puma T-shirt','Fashion',999,350),
(9,'Women Handbag','Fashion',1899,900),
(10,'Winter Jacket','Fashion',3499,1800),

(11,'Steel Water Bottle','Home',499,150),
(12,'Dinner Plate Set','Home',1499,700),
(13,'Table Lamp','Home',799,300),
(14,'Wall Clock','Home',599,200),
(15,'Pillow Set','Home',999,350),

(16,'Face Wash','Beauty',199,70),
(17,'Shampoo','Beauty',299,120),
(18,'Perfume','Beauty',799,350),
(19,'Hair Dryer','Beauty',1299,700),
(20,'Body Lotion','Beauty',349,130),

(21,'Football','Sports',699,250),
(22,'Cricket Bat','Sports',1299,700),
(23,'Skipping Rope','Sports',299,100),
(24,'Yoga Mat','Sports',899,250),
(25,'Badminton Racket','Sports',999,350);

select * from Products;

create table Orders(order_id int primary key, customer_id int, order_date date,
order_status varchar(70),
foreign key (customer_id) references customer(customer_id));

describe orders;

create table Orderitems(order_item_id int primary key, 
order_id int,
product_id int, 
quantity int, 
unit_price decimal(10,2),
discount decimal(10,2),
foreign key (order_id) references Orders(order_id),
foreign key (product_id) references Products(product_id));

describe Orderitems;

INSERT INTO Orders VALUES
(1, 12, '2022-01-05', 'Delivered'),
(2, 3, '2022-01-07', 'Delivered'),
(3, 25, '2022-01-10', 'Cancelled'),
(4, 7, '2022-01-12', 'Delivered'),
(5, 14, '2022-01-15', 'Returned'),

(6, 19, '2022-01-18', 'Delivered'),
(7, 21, '2022-01-20', 'Delivered'),
(8, 33, '2022-01-22', 'Delivered'),
(9, 45, '2022-01-25', 'Delivered'),
(10, 17, '2022-01-27', 'Cancelled'),

(11, 4, '2022-02-01', 'Delivered'),
(12, 6, '2022-02-03', 'Delivered'),
(13, 10, '2022-02-05', 'Delivered'),
(14, 41, '2022-02-07', 'Delivered'),
(15, 28, '2022-02-10', 'Delivered'),

(16, 49, '2022-02-12', 'Returned'),
(17, 50, '2022-02-14', 'Delivered'),
(18, 29, '2022-02-17', 'Delivered'),
(19, 5, '2022-02-18', 'Cancelled'),
(20, 8, '2022-02-20', 'Delivered'),

(21, 22, '2022-03-01', 'Delivered'),
(22, 13, '2022-03-03', 'Delivered'),
(23, 42, '2022-03-06', 'Delivered'),
(24, 23, '2022-03-07', 'Cancelled'),
(25, 15, '2022-03-09', 'Delivered'),

(26, 1, '2022-03-11', 'Delivered'),
(27, 2, '2022-03-13', 'Delivered'),
(28, 3, '2022-03-15', 'Delivered'),
(29, 4, '2022-03-17', 'Delivered'),
(30, 6, '2022-03-18', 'Delivered'),

(31, 7, '2022-03-20', 'Returned'),
(32, 9, '2022-03-22', 'Delivered'),
(33, 11, '2022-03-25', 'Delivered'),
(34, 12, '2022-03-26', 'Delivered'),
(35, 18, '2022-03-28', 'Delivered'),

(36, 20, '2022-03-29', 'Delivered'),
(37, 24, '2022-03-30', 'Cancelled'),
(38, 26, '2022-04-01', 'Delivered'),
(39, 27, '2022-04-03', 'Delivered'),
(40, 30, '2022-04-05', 'Delivered'),

(41, 31, '2022-04-07', 'Delivered'),
(42, 32, '2022-04-08', 'Delivered'),
(43, 34, '2022-04-10', 'Cancelled'),
(44, 36, '2022-04-11', 'Delivered'),
(45, 37, '2022-04-13', 'Delivered'),

(46, 38, '2022-04-14', 'Delivered'),
(47, 39, '2022-04-16', 'Returned'),
(48, 40, '2022-04-17', 'Delivered'),
(49, 43, '2022-04-19', 'Delivered'),
(50, 44, '2022-04-20', 'Delivered');

select * from Orders;

INSERT INTO Orders VALUES
(51, 45, '2022-04-22', 'Delivered'),
(52, 46, '2022-04-23', 'Delivered'),
(53, 47, '2022-04-25', 'Cancelled'),
(54, 48, '2022-04-27', 'Delivered'),
(55, 49, '2022-04-28', 'Delivered'),

(56, 50, '2022-04-30', 'Delivered'),
(57, 1, '2022-05-02', 'Delivered'),
(58, 2, '2022-05-04', 'Delivered'),
(59, 3, '2022-05-06', 'Returned'),
(60, 5, '2022-05-07', 'Delivered'),

(61, 6, '2022-05-09', 'Delivered'),
(62, 7, '2022-05-10', 'Delivered'),
(63, 8, '2022-05-12', 'Cancelled'),
(64, 9, '2022-05-13', 'Delivered'),
(65, 10, '2022-05-14', 'Returned'),

(66, 11, '2022-05-16', 'Delivered'),
(67, 12, '2022-05-18', 'Delivered'),
(68, 13, '2022-05-20', 'Delivered'),
(69, 14, '2022-05-22', 'Delivered'),
(70, 15, '2022-05-24', 'Delivered'),

(71, 16, '2022-05-25', 'Cancelled'),
(72, 17, '2022-05-27', 'Delivered'),
(73, 18, '2022-05-29', 'Delivered'),
(74, 19, '2022-06-01', 'Delivered'),
(75, 20, '2022-06-03', 'Delivered'),

(76, 21, '2022-06-04', 'Delivered'),
(77, 22, '2022-06-06', 'Cancelled'),
(78, 23, '2022-06-08', 'Delivered'),
(79, 24, '2022-06-10', 'Delivered'),
(80, 25, '2022-06-12', 'Delivered'),

(81, 26, '2022-06-13', 'Delivered'),
(82, 27, '2022-06-14', 'Delivered'),
(83, 28, '2022-06-16', 'Delivered'),
(84, 29, '2022-06-18', 'Returned'),
(85, 30, '2022-06-19', 'Delivered'),

(86, 31, '2022-06-21', 'Delivered'),
(87, 32, '2022-06-22', 'Cancelled'),
(88, 33, '2022-06-24', 'Delivered'),
(89, 34, '2022-06-26', 'Delivered'),
(90, 35, '2022-06-27', 'Delivered'),

(91, 36, '2022-06-29', 'Returned'),
(92, 37, '2022-07-01', 'Delivered'),
(93, 38, '2022-07-02', 'Delivered'),
(94, 39, '2022-07-04', 'Delivered'),
(95, 40, '2022-07-05', 'Delivered'),

(96, 41, '2022-07-07', 'Delivered'),
(97, 42, '2022-07-08', 'Cancelled'),
(98, 43, '2022-07-09', 'Delivered'),
(99, 44, '2022-07-11', 'Delivered'),
(100, 45, '2022-07-12', 'Delivered');

select * from Orders;

INSERT INTO Orders VALUES
(101, 46, '2022-07-14', 'Delivered'),
(102, 47, '2022-07-15', 'Delivered'),
(103, 48, '2022-07-17', 'Returned'),
(104, 49, '2022-07-18', 'Delivered'),
(105, 50, '2022-07-20', 'Delivered'),

(106, 1, '2022-07-22', 'Delivered'),
(107, 2, '2022-07-24', 'Cancelled'),
(108, 3, '2022-07-25', 'Delivered'),
(109, 4, '2022-07-27', 'Delivered'),
(110, 5, '2022-07-28', 'Delivered'),

(111, 6, '2022-07-30', 'Delivered'),
(112, 7, '2022-08-01', 'Delivered'),
(113, 8, '2022-08-03', 'Returned'),
(114, 9, '2022-08-04', 'Delivered'),
(115, 10, '2022-08-05', 'Delivered'),

(116, 11, '2022-08-07', 'Cancelled'),
(117, 12, '2022-08-09', 'Delivered'),
(118, 13, '2022-08-10', 'Delivered'),
(119, 14, '2022-08-12', 'Delivered'),
(120, 15, '2022-08-13', 'Delivered'),

(121, 16, '2022-08-15', 'Delivered'),
(122, 17, '2022-08-16', 'Delivered'),
(123, 18, '2022-08-18', 'Returned'),
(124, 19, '2022-08-19', 'Delivered'),
(125, 20, '2022-08-21', 'Delivered'),

(126, 21, '2022-08-22', 'Delivered'),
(127, 22, '2022-08-24', 'Cancelled'),
(128, 23, '2022-08-25', 'Delivered'),
(129, 24, '2022-08-27', 'Delivered'),
(130, 25, '2022-08-29', 'Delivered'),

(131, 26, '2022-09-01', 'Delivered'),
(132, 27, '2022-09-02', 'Delivered'),
(133, 28, '2022-09-03', 'Delivered'),
(134, 29, '2022-09-05', 'Cancelled'),
(135, 30, '2022-09-06', 'Delivered'),

(136, 31, '2022-09-08', 'Delivered'),
(137, 32, '2022-09-09', 'Delivered'),
(138, 33, '2022-09-11', 'Returned'),
(139, 34, '2022-09-12', 'Delivered'),
(140, 35, '2022-09-14', 'Delivered'),

(141, 36, '2022-09-15', 'Delivered'),
(142, 37, '2022-09-17', 'Delivered'),
(143, 38, '2022-09-18', 'Delivered'),
(144, 39, '2022-09-19', 'Delivered'),
(145, 40, '2022-09-21', 'Delivered'),

(146, 41, '2022-09-23', 'Returned'),
(147, 42, '2022-09-24', 'Delivered'),
(148, 43, '2022-09-26', 'Delivered'),
(149, 44, '2022-09-27', 'Cancelled'),
(150, 45, '2022-09-29', 'Delivered');

select * from Orders;

INSERT INTO OrderItems VALUES
(1, 1, 1, 1, 699.99, 0),
(2, 1, 4, 2, 15.99, 2.00),
(3, 2, 3, 1, 199.99, 10.00),
(4, 2, 5, 1, 49.99, 0),
(5, 3, 2, 1, 999.99, 50.00),

(6, 3, 6, 3, 5.99, 1.00),
(7, 4, 7, 1, 89.99, 5.00),
(8, 4, 10, 2, 25.99, 0),
(9, 5, 8, 1, 35.99, 3.00),
(10, 5, 15, 2, 22.99, 0),

(11, 6, 12, 1, 349.99, 20.00),
(12, 6, 16, 1, 12.99, 0),
(13, 7, 9, 1, 129.99, 15.00),
(14, 7, 14, 2, 8.99, 0),
(15, 8, 11, 1, 149.99, 8.00),

(16, 8, 19, 1, 12.99, 0),
(17, 9, 13, 2, 15.99, 0),
(18, 9, 20, 1, 9.99, 1.00),
(19, 10, 17, 1, 39.99, 5.00),
(20, 10, 25, 1, 14.99, 0),

(21, 11, 18, 1, 199.99, 20.00),
(22, 11, 22, 2, 10.99, 1.00),
(23, 12, 21, 1, 129.99, 10.00),
(24, 12, 24, 1, 5.99, 0),
(25, 13, 23, 1, 15.99, 0),

(26, 13, 2, 1, 999.99, 70.00),
(27, 14, 6, 4, 5.99, 0),
(28, 14, 5, 1, 49.99, 3.00),
(29, 15, 1, 1, 699.99, 25.00),
(30, 15, 9, 1, 129.99, 10.00),

(31, 16, 7, 1, 89.99, 0),
(32, 16, 10, 1, 25.99, 2.00),
(33, 17, 12, 1, 349.99, 15.00),
(34, 17, 14, 3, 8.99, 0),
(35, 18, 3, 1, 199.99, 0),

(36, 18, 11, 1, 149.99, 5.00),
(37, 19, 13, 1, 15.99, 0),
(38, 19, 18, 1, 199.99, 25.00),
(39, 20, 21, 1, 129.99, 10.00),
(40, 20, 25, 1, 14.99, 0);

select * from Orderitems;

INSERT INTO OrderItems VALUES
(41, 21, 2, 1, 999.99, 40.00),
(42, 21, 6, 2, 5.99, 0),
(43, 22, 7, 1, 89.99, 5.00),
(44, 22, 10, 1, 25.99, 2.00),
(45, 23, 8, 1, 35.99, 3.00),

(46, 23, 15, 2, 22.99, 0),
(47, 24, 11, 1, 149.99, 12.00),
(48, 24, 19, 1, 12.99, 0),
(49, 25, 13, 1, 15.99, 0),
(50, 25, 20, 1, 9.99, 1.00),

(51, 26, 17, 1, 39.99, 0),
(52, 26, 25, 1, 14.99, 0),
(53, 27, 18, 1, 199.99, 18.00),
(54, 27, 22, 3, 10.99, 2.00),
(55, 28, 21, 1, 129.99, 5.00),

(56, 28, 24, 2, 5.99, 0),
(57, 29, 23, 1, 15.99, 0),
(58, 29, 1, 1, 699.99, 20.00),
(59, 30, 3, 1, 199.99, 10.00),
(60, 30, 5, 1, 49.99, 0),

(61, 31, 12, 1, 349.99, 15.00),
(62, 31, 14, 1, 8.99, 0),
(63, 32, 9, 1, 129.99, 8.00),
(64, 32, 16, 1, 12.99, 0),
(65, 33, 7, 1, 89.99, 5.00),

(66, 33, 10, 2, 25.99, 2.00),
(67, 34, 6, 3, 5.99, 0),
(68, 34, 15, 2, 22.99, 1.00),
(69, 35, 2, 1, 999.99, 50.00),
(70, 35, 11, 1, 149.99, 0),

(71, 36, 8, 1, 35.99, 0),
(72, 36, 19, 1, 12.99, 0),
(73, 37, 13, 1, 15.99, 0),
(74, 37, 20, 1, 9.99, 0),
(75, 38, 17, 1, 39.99, 5.00),

(76, 38, 24, 1, 5.99, 0),
(77, 39, 21, 1, 129.99, 12.00),
(78, 39, 22, 2, 10.99, 0),
(79, 40, 23, 1, 15.99, 0),
(80, 40, 9, 1, 129.99, 10.00);

select * from Orderitems;

INSERT INTO OrderItems VALUES
(81, 41, 1, 1, 699.99, 10.00),
(82, 41, 14, 2, 8.99, 0),
(83, 42, 2, 1, 999.99, 80.00),
(84, 42, 6, 3, 5.99, 0),
(85, 43, 7, 1, 89.99, 0),

(86, 43, 10, 1, 25.99, 3.00),
(87, 44, 12, 1, 349.99, 20.00),
(88, 44, 19, 1, 12.99, 0),
(89, 45, 8, 1, 35.99, 2.00),
(90, 45, 15, 2, 22.99, 0),

(91, 46, 11, 1, 149.99, 5.00),
(92, 46, 20, 1, 9.99, 1.00),
(93, 47, 18, 1, 199.99, 15.00),
(94, 47, 22, 2, 10.99, 0),
(95, 48, 21, 1, 129.99, 12.00),

(96, 48, 24, 1, 5.99, 0),
(97, 49, 23, 1, 15.99, 0),
(98, 49, 3, 1, 199.99, 10.00),
(99, 50, 17, 1, 39.99, 0),
(100, 50, 25, 1, 14.99, 1.00),

(101, 51, 9, 1, 129.99, 10.00),
(102, 51, 14, 2, 8.99, 0),
(103, 52, 7, 1, 89.99, 5.00),
(104, 52, 10, 1, 25.99, 0),
(105, 53, 12, 1, 349.99, 15.00),

(106, 53, 16, 1, 12.99, 0),
(107, 54, 8, 1, 35.99, 3.00),
(108, 54, 15, 1, 22.99, 0),
(109, 55, 2, 1, 999.99, 60.00),
(110, 55, 11, 1, 149.99, 5.00),

(111, 56, 13, 1, 15.99, 0),
(112, 56, 24, 2, 5.99, 0),
(113, 57, 3, 1, 199.99, 0),
(114, 57, 19, 1, 12.99, 0),
(115, 58, 1, 1, 699.99, 5.00),

(116, 58, 20, 1, 9.99, 1.00),
(117, 59, 18, 1, 199.99, 25.00),
(118, 59, 22, 3, 10.99, 2.00),
(119, 60, 21, 1, 129.99, 10.00),
(120, 60, 16, 1, 12.99, 0);

select * from Orderitems;

INSERT INTO OrderItems VALUES
(121, 61, 7, 1, 89.99, 5.00),
(122, 61, 10, 1, 25.99, 2.00),
(123, 62, 12, 1, 349.99, 20.00),
(124, 62, 14, 2, 8.99, 0),
(125, 63, 9, 1, 129.99, 8.00),

(126, 63, 16, 1, 12.99, 0),
(127, 64, 3, 1, 199.99, 10.00),
(128, 64, 15, 1, 22.99, 0),
(129, 65, 2, 1, 999.99, 70.00),
(130, 65, 11, 1, 149.99, 0),

(131, 66, 8, 1, 35.99, 0),
(132, 66, 24, 1, 5.99, 0),
(133, 67, 18, 1, 199.99, 18.00),
(134, 67, 22, 2, 10.99, 1.00),
(135, 68, 21, 1, 129.99, 5.00),

(136, 68, 19, 1, 12.99, 0),
(137, 69, 1, 1, 699.99, 25.00),
(138, 69, 14, 2, 8.99, 0),
(139, 70, 6, 3, 5.99, 0),
(140, 70, 23, 1, 15.99, 1.00),

(141, 71, 7, 1, 89.99, 0),
(142, 71, 16, 1, 12.99, 0),
(143, 72, 3, 1, 199.99, 0),
(144, 72, 20, 1, 9.99, 0),
(145, 73, 8, 1, 35.99, 2.00),

(146, 73, 24, 2, 5.99, 0),
(147, 74, 11, 1, 149.99, 15.00),
(148, 74, 22, 2, 10.99, 0),
(149, 75, 2, 1, 999.99, 50.00),
(150, 75, 14, 2, 8.99, 0),

(151, 76, 17, 1, 39.99, 5.00),
(152, 76, 25, 1, 14.99, 0),
(153, 77, 7, 1, 89.99, 5.00),
(154, 77, 19, 1, 12.99, 0),
(155, 78, 12, 1, 349.99, 20.00),

(156, 78, 23, 1, 15.99, 0),
(157, 79, 18, 1, 199.99, 25.00),
(158, 79, 16, 1, 12.99, 0),
(159, 80, 3, 1, 199.99, 10.00),
(160, 80, 10, 1, 25.99, 0);

select * from Orderitems;

Create table Returns(return_id int primary key, order_id int, return_date date, reason varchar(90),
foreign key (order_id) references Orders(order_id));

describe Returns;

INSERT INTO Returns (return_id, order_id, return_date, reason)
VALUES
(1, 5, '2025-01-05', 'Damaged product'),
(2, 12, '2025-01-08', 'Wrong size'),
(3, 18, '2025-01-10', 'Late delivery'),
(4, 27, '2025-01-12', 'Defective item'),
(5, 33, '2025-01-14', 'Quality not as expected'),
(6, 45, '2025-01-15', 'Changed mind'),
(7, 56, '2025-01-17', 'Product not as described'),
(8, 72, '2025-01-19', 'Wrong item delivered'),
(9, 89, '2025-01-20', 'Packaging damaged'),
(10, 104, '2025-01-22', 'Received late');

select * from Returns;

use shop;

#Problems
#Customer & Sales Analysis

#List the names of all customers who placed at least one order.
Select c.full_name from customer c join Orders o 
on c.customer_id=o.customer_id group by c.full_name;

#Find the total number of orders placed in January 2025.
select count(order_id)"Total no of order" from orders where order_date between "2022-01-01" and "2022-02-01";

#Display product name and price for all products priced above ₹500.
select product_name, price from products where price>500;

#Show the total quantity sold for each product.
select product_id, sum(quantity)"Total quantity" from orderitems group by product_id;

#Retrieve the top 5 products by number of times they appear in OrderItems.
SELECT p.product_name,
       COUNT(oi.order_item_id) AS total_times_ordered
FROM OrderItems oi
JOIN Products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_times_ordered DESC
LIMIT 5;

#Find the monthly revenue for May 2022 by summing (quantity × unit_price – discount) for all orders.
select o.order_date, sum(oi.quantity*oi.unit_price - oi.discount) As monthly_revenue
FROM orders o join orderitems oi ON o.order_id = oi.order_id
where order_date between "2022-04-30" and "2022-06-01";

#Show the list of customers who have placed more than 3 orders.
select c.full_name, count(o.order_id) As total_orders
FROM customer c join orders o ON c.customer_id = o.customer_id
Group by c.full_name
Having count(o.order_id)>3
ORDER BY total_orders DESC; 

#Insert a new product entry and immediately verify if it appears in the Products table.
insert into products values(26,'Thermas','utensils',2500,50);
select * from products;

#Update the status of all orders older than 6 months to “Archived”.
UPDATE Orders
SET order_status = 'Archived'
WHERE order_date < DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

select * from orders;

set sql_safe_updates = 0;

#Create a view named top_categories_2025 that shows the top 3 product categories by revenue in 2025.
CREATE VIEW top_categories_2025 AS
SELECT 
    p.category AS category_name,
    SUM(oi.quantity * oi.unit_price - oi.discount) AS total_revenue
FROM Orders o
JOIN OrderItems oi 
    ON o.order_id = oi.order_id
JOIN Products p 
    ON oi.product_id = p.product_id
WHERE YEAR(o.order_date) = 2022
GROUP BY p.category
ORDER BY total_revenue DESC
LIMIT 3;

SELECT * FROM top_categories_2025;

#Identify the top 10 customers by lifetime spending and compute each customer’s percentage contribution to total revenue.
WITH customer_spend AS (
    SELECT 
        c.customer_id,
        c.customer_name,
        SUM(oi.quantity * oi.unit_price - oi.discount) AS total_spent
    FROM Customers c
    JOIN Orders o
        ON c.customer_id = o.customer_id
    JOIN OrderItems oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_id, c.customer_name
),
total_revenue AS (
    SELECT SUM(total_spent) AS grand_total
    FROM customer_spend
)
SELECT 
    cs.customer_name,
    cs.total_spent,
    ROUND((cs.total_spent / tr.grand_total) * 100, 2) AS contribution_percentage
FROM customer_spend cs
JOIN total_revenue tr
LIMIT 10;

#Create a summary table daily_sales_summary and insert aggregated revenue for each day from the Orders and OrderItems tables.
create table daily_summary_sales(summary_date date,
total_revenue decimal(12, 2),
total_orders int,
primary key (summary_date));

select * from daily_summary_sales;

INSERT INTO daily_summary_sales (summary_date, total_revenue, total_orders)
SELECT 
    DATE(o.order_date) AS summary_date,
    SUM(oi.quantity * oi.unit_price - oi.discount) AS total_revenue,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM Orders o
JOIN OrderItems oi 
    ON o.order_id = oi.order_id
GROUP BY DATE(o.order_date);

#Add a new column profit_margin to OrderItems and populate it using unit_price, discount, and product cost (from Products).
alter table orderitems
add column profit_margin decimal(10,4);

select * from orderitems;

update orderitems oi
join products p on oi.product_id=p.product_id
set oi.profit_margin = 
Round(
	 (oi.unit_price - p.cost_price - oi.discount) / oi.unit_price,
4
);

#Create an index on Orders(order_date) and show query improvement using EXPLAIN for a monthly sales report.
CREATE INDEX idx_orders_order_date 
ON Orders(order_date);

EXPLAIN
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    COUNT(*) AS total_orders
FROM Orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m');

#Find products whose return rate is higher than the overall average return rate, using window functions or category-wise comparison.
WITH product_stats AS (
    SELECT 
        p.product_id,
        p.product_name,
        COUNT(oi.order_id) AS total_orders,
        COUNT(r.return_id) AS returned_orders,
        (COUNT(r.return_id) / COUNT(oi.order_id)) AS return_rate
    FROM Products p
    JOIN OrderItems oi 
        ON p.product_id = oi.product_id
    JOIN Orders o 
        ON oi.order_id = o.order_id
    LEFT JOIN Returns r
        ON o.order_id = r.order_id
    GROUP BY p.product_id, p.product_name
),
avg_rate AS (
    SELECT AVG(return_rate) AS avg_return_rate
    FROM product_stats
)
SELECT 
    ps.product_name,
    ps.total_orders,
    ps.returned_orders,
    ROUND(ps.return_rate * 100, 2) AS return_rate_pct
FROM product_stats ps
JOIN avg_rate ar
WHERE ps.return_rate > ar.avg_return_rate
ORDER BY ps.return_rate DESC;





 




