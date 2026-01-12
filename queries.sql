CREATE TABLE sales_data (
    order_id SERIAL PRIMARY KEY,
    order_date DATE,
    customer_name VARCHAR(100),
    product VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price NUMERIC(10,2),
    region VARCHAR(50),
    total_amount NUMERIC(10,2)
);
INSERT INTO sales_data (order_date, customer_name, product, category, quantity, price, region, total_amount) VALUES
('2025-01-05','Amit Kumar','Laptop','Electronics',1,55000,'North',55000),
('2025-01-10','Neha Sharma','Mobile','Electronics',2,18000,'East',36000),
('2025-02-12','Rahul Verma','Headphones','Accessories',3,2000,'West',6000),
('2025-02-15','Pooja Singh','Tablet','Electronics',1,25000,'South',25000),
('2025-03-01','Arjun Mehta','Keyboard','Accessories',4,1500,'North',6000),
('2025-03-05','Simran Kaur','Laptop','Electronics',1,60000,'West',60000),
('2025-03-10','Ravi Patel','Mouse','Accessories',5,800,'East',4000),
('2025-04-02','Kiran Rao','Mobile','Electronics',1,20000,'South',20000);


SELECT 
    TO_CHAR(order_date, 'Month') AS month,
    SUM(total_amount) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY total_sales DESC;

SELECT 
    product,
    SUM(total_amount) AS total_revenue
FROM sales_data
GROUP BY product
ORDER BY total_revenue DESC;


SELECT 
    region,
    SUM(total_amount) AS region_sales
FROM sales_data
GROUP BY region
ORDER BY region_sales DESC;

SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    product,
    SUM(total_amount) AS sales
FROM sales_data
GROUP BY month, product
ORDER BY month, sales DESC;


SELECT product, SUM(total_amount) AS total_revenue
FROM sales_data
GROUP BY product
ORDER BY total_revenue DESC;



SELECT 
    TO_CHAR(order_date, 'YYYY-MM') AS month,
    SUM(total_amount) AS total_sales
FROM sales_data
GROUP BY month
ORDER BY month;

SELECT region, SUM(total_amount) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;




