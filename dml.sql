-- Get Users  
SELECT * FROM Users ; 
GO

-- Get User orders 
SELECT * FROM [dbo].[Users] as u 
 INNER JOIN Orders as o
   ON o.uid  = u.id
INNER JOIN Products as p
  INNER JOIN Orders ON Orders.pid  = p.id
GO
