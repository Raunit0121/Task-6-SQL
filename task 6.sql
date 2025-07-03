SELECT CustomerName,
  (SELECT COUNT(*) 
   FROM Orders 
   WHERE Orders.CustomerID = Customers.CustomerID) AS OrderCount
FROM Customers;

SELECT CustomerName
FROM Customers
WHERE CustomerID IN (
  SELECT CustomerID FROM Orders WHERE Product = 'Laptop'
);

SELECT CustomerName
FROM Customers C
WHERE EXISTS (
  SELECT 1 FROM Orders O 
  WHERE O.CustomerID = C.CustomerID AND O.Product = 'Keyboard'
);

SELECT CustomerID, TotalOrders
FROM (
  SELECT CustomerID, COUNT(*) AS TotalOrders
  FROM Orders
  GROUP BY CustomerID
) AS OrderSummary
WHERE TotalOrders >= 2;

