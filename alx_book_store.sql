CREATE DATABASE IF NOT EXISTS alx_book_store;
use alx_book_store;

create table Books(
    book_id (Primary Key)
    title VARCHAR(130)
    author_id (Foreign Key)
    price DOUBLE
    publication_date DATE
)

create table Authors(
    author_id (Primary Key)
    author_name VARCHAR(215)
)

create table Customers(
    customer_id (Primary Key)
    customer_name VARCHAR(215)
    email VARCHAR(215)
    address TEXT
)

create table Orders(
    order_id (Primary Key)
    customer_id (Foreign Key referencing Customers(customer_id))
    order_date DATE
)

create table Order_Details(
        orderdetailid (Primary Key)
    order_id (Foreign Key referencing Orders(order_id))
    book_id (Foreign Key referencing Books(book_id))
    quantity DOUBLE
)