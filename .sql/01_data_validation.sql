
SELECT top 10 *
FROM dbo."Sales";


-- Total number of rows
SELECT COUNT(*) AS Total_Rows
FROM dbo.Sales;


-- Check for NULL values
SELECT
    COUNT(*) AS Total_Rows,
    COUNT(Order_ID) AS Order_ID_Count,
    COUNT(Order_Date) AS Order_Date_Count,
    COUNT(Product) AS Product_Count,
    COUNT(Category) AS Category_Count,
    COUNT(Quantity) AS Quantity_Count,
    COUNT(Unit_Price) AS Unit_Price_Count,
    COUNT(City) AS City_Count,
    COUNT(Payment_Method) AS Payment_Method_Count
FROM dbo.Sales;


-- Check for invalid quantity or price
SELECT *
FROM dbo.Sales
WHERE Quantity <= 0
   OR Unit_Price <= 0;