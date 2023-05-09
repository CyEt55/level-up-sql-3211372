-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

SELECT Loans.DueDate, Books.Title, Patrons.FirstName, Patrons.Email FROM Loans 
JOIN Patrons ON Loans.PatronID = Patrons.PatronID 
JOIN Books ON Loans.BookID = Books.BookID
WHERE ReturnedDate IS NULL AND DueDate = '2022-07-13';