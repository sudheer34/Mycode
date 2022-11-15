CREATE TABLE customer (
	Customer_ID INT,
	NAME VARCHAR(255),
	Email VARCHAR(255),
	Address VARCHAR(255),
	PRIMARY KEY (Customer_ID)
);

CREATE TABLE product (
	Product_ID INT,
	NAME VARCHAR(255),
	price BIGINT,
	PRIMARY KEY (Product_ID)
);

CREATE TABLE stock (
	Stock_ID INT,
	Product_ID INT,
	Available_Quantity BIGINT,
	PRIMARY KEY (Stock_ID),
	FOREIGN KEY (Product_ID) REFERENCES product(Product_ID)
);

CREATE TABLE sales (
	Sales_ID INT,
	Product_ID INT,
	Customer_ID INT,
	Quantity BIGINT,
	Total_amount BIGINT,
	PRIMARY KEY (Sales_ID),
	FOREIGN KEY (Product_ID) REFERENCES product(Product_ID),
	FOREIGN KEY (Customer_ID) REFERENCES customer(Customer_ID)
);

CREATE TABLE payment (
	Payment_ID INT,
	Sales_ID INT,
	Payment_method VARCHAR(255),
	PRIMARY KEY (Payment_ID),
	FOREIGN KEY (Sales_ID) REFERENCES sales(Sales_ID)
);