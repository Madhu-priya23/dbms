 INSERT INTO Authors (AuthorID, FirstName, LastName) VALUES (1,
  2  'George', 'Orwell');

1 row created.

SQL> INSERT INTO Authors (AuthorID, FirstName, LastName) VALUES (2,
  2  'Aldous', 'Huxley');

1 row created.

SQL> INSERT INTO Authors (AuthorID, FirstName, LastName) VALUES (3, 'J.K.',
  2  'Rowling');

1 row created.

SQL> INSERT INTO Books (BookID, Title, Genre, PublicationYear) VALUES (1, '1984', 'Dystopian', 1949);

1 row created.

SQL> INSERT INTO Books (BookID, Title, Genre, PublicationYear) VALUES (2, 'Brave New
  2  World', 'Dystopian', 1932);

1 row created.

SQL> INSERT INTO Books (BookID, Title, Genre, PublicationYear) VALUES (3, 'Harry Potter
  2  and the Sorcerers Stone', 'Fantasy', 1997);

1 row created.

SQL> INSERT INTO BookAuthors (BookID, AuthorID) VALUES (1, 1);

1 row created.

SQL> INSERT INTO BookAuthors (BookID, AuthorID) VALUES (2, 2);

1 row created.

SQL> INSERT INTO BookAuthors (BookID, AuthorID) VALUES (3, 3);

1 row created.

SQL> INSERT INTO Borrowers (BorrowerID, FirstName, LastName, MembershipDate) VALUES
  2  (1, 'John', 'Doe', DATE '2023-01-01');

1 row created.

SQL> INSERT INTO Borrowers (BorrowerID, FirstName, LastName, MembershipDate) VALUES
  2  (2, 'Jane', 'Smith', DATE '2023-02-15');

1 row created.

SQL> INSERT INTO BorrowedBooks (BorrowerID, BookID, BorrowedDate, ReturnDate) VALUES
  2  (1, 1, DATE '2023-03-01', DATE '2023-03-15');

1 row created.

SQL> INSERT INTO BorrowedBooks (BorrowerID, BookID, BorrowedDate, ReturnDate) VALUES
  2  (2, 3, DATE '2023-03-05', DATE '2023-03-20');

1 row created.

SQL> select*from  Authors;

  AUTHORID FIRSTNAME
---------- --------------------------------------------------
LASTNAME
--------------------------------------------------
         1 George
Orwell

         2 Aldous
Huxley

         3 J.K.
Rowling


SQL> select*from  Books;

    BOOKID
----------
TITLE
--------------------------------------------------------------------------------
GENRE                                              PUBLICATIONYEAR
-------------------------------------------------- ---------------
         1
1984
Dystopian                                                     1949

         2
Brave New
World

    BOOKID
----------
TITLE
--------------------------------------------------------------------------------
GENRE                                              PUBLICATIONYEAR
-------------------------------------------------- ---------------
Dystopian                                                     1932

         3
Harry Potter
and the Sorcerers Stone
Fantasy                                                       1997


SQL> select*from   BookAuthors;

    BOOKID   AUTHORID
---------- ----------
         1          1
         2          2
         3          3

SQL> select*from   Borrowers;

BORROWERID FIRSTNAME
---------- --------------------------------------------------
LASTNAME                                           MEMBERSHI
-------------------------------------------------- ---------
         1 John
Doe                                                01-JAN-23

         2 Jane
Smith                                              15-FEB-23


SQL> select*from   BorrowedBooks;

BORROWERID     BOOKID BORROWEDD RETURNDAT
---------- ---------- --------- ---------
         1          1 01-MAR-23 15-MAR-23
         2          3 05-MAR-23 20-MAR-23
