-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT COUNT(Loans.PatronID) as NumberLoans, Patrons.FirstName FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
GROUP BY Patrons.FirstName ORDER BY NumberLoans ASC LIMIT 15;