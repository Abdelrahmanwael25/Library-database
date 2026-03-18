CREATE DATABASE Library112;
GO
USE Library112;
GO





CREATE TABLE Book(
    book_id     int IDENTITY(1,1) PRIMARY KEY,
    book_Name   varchar(150) not null,
    Author      varchar(100) not null,
    Pages       int  NULL CHECK (Pages > 0),
    price       int
);

CREATE TABLE Customers(
    customers_Id       int IDENTITY(1,1) PRIMARY KEY,
    customers_Name     varchar(100) not null,
    Phone              varchar(30),
    Address            varchar(200)
);

CREATE TABLE Category(
    Type    varchar(50) not null,
    BookId  int not null,
    PRIMARY KEY (Type, BookId),
    FOREIGN KEY (BookId) references Book(book_id) ON DELETE CASCADE
);

CREATE TABLE Store(
    store_id        int IDENTITY(1,1) PRIMARY KEY,
    store_Name      varchar(100) not null,
    Phone           varchar(30)
);

CREATE TABLE Employees(
    employee_id      int IDENTITY(1,1) PRIMARY KEY,
    employee_Name    varchar(100) not null,
    Phone            varchar(30),
    Address          varchar(200),
    StoreId          int not null,

    FOREIGN KEY (StoreId) references Store(store_id)
);

CREATE TABLE Borrow(
    CustomerId   int not null,
    BookId       int not null,
    FromDate     datetime2(0) not null DEFAULT SYSUTCDATETIME(),
    ToDate       datetime2(0) not null,
    PRIMARY KEY (CustomerId, BookId, FromDate),
    FOREIGN KEY (CustomerId) references Customers(customers_Id ),
    FOREIGN KEY (BookId) references Book(book_id)
);


use Library2DB


insert into Book (book_Name, Author, Pages, price)
values ('Children of Gebelawi','Naguib Mahfouz',535 , 120);
insert into Book (book_Name, Author, Pages, price)
values ('The whims of fate','Naguib Mahfouz',215 , 100);
insert into Book (book_Name, Author, Pages, price)
values ('Rhodopis','Naguib Mahfouz',240 , 60);
insert into Book (book_Name, Author, Pages, price)
values ('Tayba struggle','Naguib Mahfouz',263 , 85);
insert into Book (book_Name, Author, Pages, price)
values ('Chatter on the Nile','Naguib Mahfouz',201 , 100);
insert into Book (book_Name, Author, Pages, price)
values ('Fear Novel 1','Osama Al-Muslim',286 , 75);
insert into Book (book_Name, Author, Pages, price)
values ('Arabian Orchards Novel','Osama Al-Muslim',536 , 115);
insert into Book (book_Name, Author, Pages, price)
values ('Queen of the Cranes','Osama Al-Muslim',511 , 95);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 1','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 2','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 3','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 4','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 5','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 6','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 7','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 8','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 9','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 10','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 11','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 12','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 13','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 14','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 15','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 16','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 17','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 18','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 19','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 20','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 21','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 22','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 23','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 24','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 25','Nabil Farouk',120 , 20);
insert into Book (book_Name, Author, Pages, price)
values ('The Impossible Man 26','Nabil Farouk',120 , 20);
insert into Customers (customers_Name,Phone,Address)
values ('Tarek Ibrahiem','01110040511','shobra');
insert into Customers (customers_Name,Phone,Address)
values ('Islam Yasser','01205474968','elsharabia');
insert into Customers (customers_Name,Phone,Address)
values ('Abdulrahman Wael','01146770600','giza');
insert into Customers (customers_Name,Phone,Address)
values ('Ahmed Shaaban','01123180891','shobra');
insert into Customers (customers_Name,Phone,Address)
values ('Omar ahmed','01246778988','giza');
insert into Customers (customers_Name,Phone,Address)
values ('mohamed soliman','01131040511','shobra');
insert into Customers (customers_Name,Phone,Address)
values ('omar ibrahim','01115550511','shobra elkema');
insert into Customers (customers_Name,Phone,Address)
values ('akrm elshamy','01110042221','october');
insert into Customers (customers_Name,Phone,Address)
values ('yassin mohamed','01222040511','eltagmo3');
insert into Customers (customers_Name,Phone,Address)
values ('ali emam','01110011111','october');
insert into Customers (customers_Name,Phone,Address)
values ('mohamed ehab','01117770511','elharam');
insert into Customers (customers_Name,Phone,Address)
values ('nour hany','01112123511','elgezera');
insert into store (store_Name,Phone)
values ('salah salem branch','01325546');     
insert into store (store_Name,Phone)
values ('madent nasr branch','01234567777');       
insert into Employees (employee_Name,Phone,Address,StoreId)
values ('ahmed','01245632100','giza',1);
insert into Employees (employee_Name,Phone,Address,StoreId)
values ('omar','01123117005','alexandria',2);
insert into Category (Type,BookId)
values ('fear',1);
insert into Category (Type,BookId)
values ('action',2);
insert into Category (Type,BookId)
values ('classic',3);

select*from Book;
select*from Customers;
select*from Category;
select*from Store;
select*from Employees;

insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (1, 1, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (2, 2, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (3, 3, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (4, 4, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (5, 6, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (6, 5, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (7, 4, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (8, 2, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (9, 7, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (10, 12, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (11, 13, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (8, 14, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (1, 15, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (2, 16, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (3, 17, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (9, 18, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (7, 19, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (3, 20, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (9, 21, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (8, 22, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (5, 23, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (11, 24, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (6, 25, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (1, 26, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (10, 27, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (2, 28, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (9, 29, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (11, 30, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (1, 31, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (2, 34, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (9, 20, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (10, 12, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (1, 24, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (4, 14, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (6, 9, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (11, 10, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (3, 11, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (10, 14, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (2, 12, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (1, 15, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (7, 16, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (9, 14, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (8, 18, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (10, 19, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (11, 31, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (6, 31, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (1, 31, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (2, 16, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (4, 9, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (8, 10, '2025-11-01', '2025-11-10');
insert into Borrow (CustomerId,BookId,FromDate,ToDate)
values (1, 11, '2025-11-01', '2025-11-10');


select b.book_id,b.book_Name,count(br.BookId) as Borrow_Count
from Book b
left join Borrow br
on b.book_id = br.BookId
group by b.book_id, b.book_Name
order by Borrow_Count desc;

select Address,count(customers_Id) as Customers_Count
from Customers
group by Address
order by Customers_Count desc;

select c.customers_Id,c.customers_Name,count(br.BookId) as Borrow_Count
from Customers c
left join Borrow br
on c.customers_Id = br.CustomerId
group by c.customers_Id,c.customers_Name
having COUNT(br.BookId) = 2
order by c.customers_Name;

Select avg(b.price * 1.0) as Avg_Borrowed_Book_Price
from Borrow br
join Book b
on br.BookId = b.book_id;


