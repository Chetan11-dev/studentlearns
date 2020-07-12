--  Chris these are really tough ones
-- Orders user 
SELECT u.name , p.productName , p.price FROM Users  u 
 INNER JOIN Orders o 
    ON u.id = o.uid  
     INNER JOIN Products p 
    ON p.id = o.pid
    ORDER BY u.id  
GO 
-- Sellers order
SELECT * FROM Suppliers sp INNER JOIN (
    SELECT u.name ,tb.sid , tb.orderdate ,tb.price,tb.qty ,tb.productName FROM Users u INNER JOIN (
        SELECT * FROM (
            SELECT  o.uid , o.pid , s.orderdate ,s.qty FROM Orders  o  INNER JOIN Shipment s ON s.id = o.id
        ) t INNER JOIN Products p on   t.pid = p.id ) tb ON u.id =tb.uid 
) tbb on sp.id =tbb.sid;