CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_year INT
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY ,
    title VARCHAR(150) NOT NULL,
    genre VARCHAR(50),
    published_year INT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    join_date DATE 
);

CREATE TABLE BorrowRecords (
    borrow_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    borrow_date DATE,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
SELECT * FROM authors;
SELECT * FROM Books;
SELECT * FROM Members;
SELECT * FROM BorrowRecords;



/* in this schema the Authors Stores author details.
 the Books Stores book details with a link to its author.
 the Members Stores member details.
and the BorrowRecords Tracks borrowing transactions linking books and members.*/
