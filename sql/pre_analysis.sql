USE supply_chain;

CREATE TABLE supply_chain (
    order_id INT,
    market VARCHAR(50),
    order_country VARCHAR(100),
    category_name VARCHAR(100),
    customer_segment VARCHAR(50),
    shipping_mode VARCHAR(50),
    sales DECIMAL(15,2),
    profit DECIMAL(15,2),
    late_delivery_risk INT,
    shipping_days INT
);

SHOW COLUMNS FROM supply_chain;

CREATE TABLE supply_chain_data (
    Type VARCHAR(50),

    Days_for_shipping_real INT,

    Days_for_shipment_scheduled INT,

    Benefit_per_order DECIMAL(12,2),

    Sales_per_customer DECIMAL(12,2),

    Delivery_Status VARCHAR(50),

    Late_delivery_risk TINYINT,

    Category_Id INT,

    Category_Name VARCHAR(100),

    Customer_City VARCHAR(100),

    Customer_Country VARCHAR(100),

    Customer_Fname VARCHAR(100),

    Customer_Id INT,

    Customer_Lname VARCHAR(100),

    Customer_Segment VARCHAR(50),

    Customer_State VARCHAR(100),

    Customer_Street VARCHAR(255),

    Customer_Zipcode VARCHAR(20),

    Department_Id INT,

    Department_Name VARCHAR(100),

    Latitude DECIMAL(10,6),

    Longitude DECIMAL(10,6),

    Market VARCHAR(50),

    Order_City VARCHAR(100),

    Order_Country VARCHAR(100),

    Order_Customer_Id INT,

    Order_Date DATETIME,

    Order_Id INT,

    Order_Item_Cardprod_Id INT,

    Order_Item_Discount DECIMAL(10,2),

    Order_Item_Discount_Rate DECIMAL(10,4),

    Order_Item_Id INT,

    Order_Item_Product_Price DECIMAL(12,2),

    Order_Item_Profit_Ratio DECIMAL(10,4),

    Order_Item_Quantity INT,

    Sales DECIMAL(12,2),

    Order_Item_Total DECIMAL(12,2),

    Order_Profit_Per_Order DECIMAL(12,2),

    Order_Region VARCHAR(100),

    Order_State VARCHAR(100),

    Order_Status VARCHAR(50),

    Product_Card_Id INT,

    Product_Category_Id INT,

    Product_Name VARCHAR(255),

    Product_Price DECIMAL(12,2),

    Product_Status INT,

    Shipping_Date DATETIME,

    Shipping_Mode VARCHAR(50)
);

CREATE VIEW order_performance AS
SELECT
    Order_Id,
    Market,
    Category_Name,
    Customer_Segment,
    Sales,
    Order_Profit_Per_Order,
    Shipping_Mode,
    Late_delivery_risk
    
FROM supply_chain_data;

SELECT COUNT(*)
FROM supply_chain_data;

SELECT MIN(Order_Id), MAX(Order_Id)
FROM supply_chain_data;

SELECT *
FROM supply_chain_data
LIMIT 5;

SHOW VARIABLES LIKE 'secure_file_priv';

TRUNCATE TABLE supply_chain_data;

SHOW DATABASES;

SELECT COUNT(*) FROM supply_chain_data;

SELECT COUNT(*) AS total_rows
FROM supply_chain_data;

SELECT
    COUNT(DISTINCT Order_Id) AS orders,
    COUNT(DISTINCT Customer_Id) AS customers
FROM supply_chain_data;

SELECT
    ROUND(SUM(Sales),2) AS revenue,
    ROUND(SUM(Order_Profit_Per_Order),2) AS profit
FROM supply_chain_data;