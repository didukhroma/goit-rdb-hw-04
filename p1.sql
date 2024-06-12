
-- schema author_idbooks_ibfk_1
drop schema if exists LibraryManagement;
create schema LibraryManagement ; 

use LibraryManagement;

-- authors
create table  authors(
author_id int auto_increment primary key,
author_name varchar(255)
);

-- genres
create table  genres(
genre_id int auto_increment primary key,
genre_name varchar(255)
);

-- books
create table  books(
book_id int auto_increment primary key,
title varchar(255),
publication_year year,
author_id int,
 foreign key (author_id) references authors(author_id),
 genre_id int,
 foreign key(genre_id) references genres(genre_id)
);

-- users
create table  users(
user_id int auto_increment primary key,
username varchar(255),
email varchar(255)
);

-- borrowed_books 
create table  borrowed_books(
borrow_id int auto_increment primary key,
book_id int,
foreign key (book_id) references books(book_id),
user_id int,
foreign key (user_id) references users(user_id),
borrow_date date,
return_date date
);



