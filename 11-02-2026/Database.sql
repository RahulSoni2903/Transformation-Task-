

---------- Transformation Projects And Given Task --------------------------

CREATE DATABASE Transformation;
USE Transformation;

USE Transformation;
SELECT * FROM Final_Dataverse;
DROP TABLE Final_Dataverse;

----- Set Retrive Data For 
SELECT OrderId,Customername into final_name from Final_Dataverse;

DROP TABLE final_name;
SELECT * FROM final_name;

DROP TABLE final_name;

SELECT * FROM Correct_Name ORDER BY OrderId;
SELECT * FROM Final_Dataverse;
SELECT DISTINCT ProductCode FROM Final_Dataverse;  -- For Distinct Product Code 
SELECT * FROM Correct_Name;
-------- Apply Joins on OLEDB Source and Retrive this At that place

---- 1st Dim Table Which Is having Customer_id , Customer_Name , City All Are Mention In this[Dim_Cust_Masters] ---
SELECT City,Customer_Name,COUNT(Customer_Name) FROM [Dim_Cust_Masters] GROUP BY City,Customer_Name order by City;

SELECT * FROM [Dim_Cust_Masters];
-------- 2nd Dim_Product Table WHich Name is Dim_Product_Master----------------- Which is Use for bettre
select ProductCode , Category , COUNT(Category) FROM Dim_Product_Master
GROUP BY ProductCode , Category;

SELECT * FROM Dim_Customer_Master;
SELECT * FROM Dim_Product_Master;

----- Fact_Sales_Clean and Sales Rejected ---
 
SELECT * FROM Fact_Sales_Clean;

--------   JOins 
SELECT DISTINCT o.OrderId,o.OrderDate,c.Correct_Name,o.ProductCode,o.Quantity,o.Amount,c._Similarity_Customername,  d.city, p.ProductID,p.category
FROM Final_Dataverse o JOIN Correct_Name c 
ON o.OrderId=c.OrderId 
JOIN Dim_Customer_Master d ON d.CustomerName = c.Correct_Name
JOIN Dim_Product_Master p ON p.ProductCode=o.ProductCode 
ORDER BY o.OrderDate;

SELECT * FROM Fact_Sales_Clean;     ------------- Important Final Table
SELECT * FROM Sales_Reject;

SELECT * FROM Fact_Sales_Clean Order by OrderDate;

SELECT * FROM Sales_Agg;  --- (Sales Group by City(East,West))

SELECT * FROM Rank_B_Sales;

--- Total Order Based on Dat 
SELECT OrderDate , COUNT(*) AS TotalOrders_East_A_W FROM Fact_Sales_Clean GROUP BY OrderDate;

SELECT COALESCE(LEFT(OrderId,1),'All Region') AS City , COALESCE(OrderDate,'Sum_Of_Date') AS OrderDate, COunt(*) AS Total_Product FROM Fact_Sales_Clean Group by ROLLUP(LEFT(OrderID,1),OrderDate) ;
------------ Final TABLES ---------------

SELECT * FROM Final_Dataverse;   --- Data Featch From CSVs
SELECT * FROM Correct_Name;      --- Correct a Name Using Fuzzy Grouping  Clean Table is Store at Raw Data at location
-- Dimensional Tabes
SELECT * FROM Dim_Customer_Master;  -- Dim Customer Table
SELECT * FROM Dim_Product_Master;   -- Dim Product Table
--- Selected and Rejected Tables
SELECT * FROM  Fact_Sales_Clean;    -- Clean Selected Data
SELECT * FROM Sales_Reject;
--- Sales Summary Tables  
SELECT * FROM Sales_Agg;
SELECT * FROM Rank_B_Sales; -- Using Script Component
SELECT * FROM Sales_Based_On_Date;    --- it Use all Data With Rejected  If We not Use Reject then 23 Data is Available 
SELECT * FROM [ROLLUP Task];    -- Same like ABove 

