SELECT T.DateOfSale AS 'Date of sale', T.SeatNumber AS 'Seat', T.FlightId, P.FirstName + ' ' + P.LastName AS 'Passenger name', P.Phone, P.Email
FROM Ticket T, Passenger P
WHERE T.PassengerId = P.Id
ORDER BY [Date of sale] DESC;

SELECT TOP (5) [DateOfSale] AS 'Date of sale'
      ,[SeatNumber] AS 'Seat'
      ,[PassengerId]
      ,[FlightId]
FROM [AirTransportDb].[dbo].[Ticket]
ORDER BY [DateOfSale] DESC;

SELECT TOP(3) P.FirstName + ' ' + P.LastName AS 'Name of passenger', COUNT(T.Id) AS 'Number of flights'
FROM Ticket T, Passenger P
WHERE T.PassengerId = P.Id
GROUP BY P.FirstName, P.LastName
ORDER BY [Number of flights] DESC;