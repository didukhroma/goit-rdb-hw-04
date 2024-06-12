

-- filling tables
-- authors
insert into authors(author_name)
values ('George R. R. Martin'),('Tara Ellis');

-- genres
insert into genres(genre_name)
values('Epic fantasy'),('Science Fiction & Fantasy');

-- books
insert into books(title,publication_year,author_id,genre_id)
values('A song of Ice and Fire',1996,1,1),('The Fallen',2023,2,2);

-- users
insert into users(username,email) 
values('John Doe','doe@test.com'),('Paul Unknown','unknown@test.com');

-- borrowed_books
insert into borrowed_books(book_id,user_id,borrow_date,return_date)
values(1,1,'2024-01-01','2024-08-01'),(2,2,'2024-02-02','2024-08-02');



