-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT * FROM Reservations INNER JOIN Customers ON Reservations.CustomerID = Customers.CustomerID 
WHERE Customers.LastName LIKE 'St%' AND Reservations.Date > '2022-06-14';