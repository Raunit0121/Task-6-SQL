# 🧠 SQL Subqueries & Nested Queries

A practical SQL project demonstrating *subqueries* inside SELECT, WHERE, and FROM clauses using a sample e-commerce database (Customers & Orders). Learn to use both *scalar* and *correlated* subqueries with real use cases.

---

## 🎯 Objective

- Use subqueries in SELECT, WHERE, and FROM clauses
- Practice scalar and correlated subqueries
- Master IN, EXISTS, and = with nested logic

---

## 🛠 Tools Used

- *DB Browser for SQLite*
- *MySQL Workbench*

---

## 📁 Tables Used

- Customers – Customer information
- Orders – Product orders per customer

---

## 🔍 Subquery Examples

### ✅ Subquery in SELECT (Scalar)

sql
SELECT CustomerName,
  (SELECT COUNT(*) 
   FROM Orders 
   WHERE Orders.CustomerID = Customers.CustomerID) AS OrderCount
FROM Customers;


---

### 🔍 Subquery in WHERE (IN)

sql
SELECT CustomerName
FROM Customers
WHERE CustomerID IN (
  SELECT CustomerID FROM Orders WHERE Product = 'Laptop'
);


---

### 🔁 Correlated Subquery with EXISTS

sql
SELECT CustomerName
FROM Customers C
WHERE EXISTS (
  SELECT 1 FROM Orders O 
  WHERE O.CustomerID = C.CustomerID AND O.Product = 'Keyboard'
);


---

### 🧾 Subquery in FROM (Derived Table)

sql
SELECT CustomerID, TotalOrders
FROM (
  SELECT CustomerID, COUNT(*) AS TotalOrders
  FROM Orders
  GROUP BY CustomerID
) AS OrderSummary
WHERE TotalOrders >= 2;


---

## 🖼 Screenshots

### 📸 2. Scalar Subquery Output
![Scalar Subquery](https://github.com/9A-Ayush/task-6-sql-sub-queries/blob/main/ss/1.png)

### 📸 2. Subquery in WHERE (IN)
![Subquery in WHERE (IN)](https://github.com/9A-Ayush/task-6-sql-sub-queries/blob/main/ss/2.png)

### 📸 3. EXISTS Clause Output
![EXISTS Subquery](https://github.com/9A-Ayush/task-6-sql-sub-queries/blob/main/ss/3.png)

### 📸 4. Subquery in FROM
![FROM Subquery](https://github.com/9A-Ayush/task-6-sql-sub-queries/blob/main/ss/4.png)

---

## 🧠 Outcome

✅ Advanced SQL query logic mastery using nested subqueries in various clauses.


---

## 📬 Contact

Drop a ⭐ if this helped, and feel free to connect for collaboration!
