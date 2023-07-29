CREATE TABLE Item(
	Item_ID INT NOT NULL UNIQUE PRIMARY KEY,
	Item_code VARCHAR UNIQUE,
	Item_name VARCHAR,
	Item_price INT);
	
CREATE TABLE Store(
	Store_ID INT NOT NULL UNIQUE PRIMARY KEY,
	Store_code VARCHAR UNIQUE,
	Store_name VARCHAR,
	City VARCHAR,
	Region VARCHAR);

CREATE TABLE Staff(
	Staff_ID INT NOT NULL UNIQUE PRIMARY KEY,
	Staff_name VARCHAR,
	Age INT,
	Gender CHAR,
	Date_join DATE);

CREATE TABLE Customer(
	Customer_ID INT NOT NULL UNIQUE PRIMARY KEY,
	Customer_name VARCHAR,
	Age INT,
	Gender CHAR,
	Occupation VARCHAR);

CREATE TABLE Promotion(
	Promotion_ID INT NOT NULL UNIQUE PRIMARY KEY,
	Promotion_name VARCHAR,
	Start_date DATE,
	End_date DATE,
	Discount_rate FLOAT);

CREATE TABLE Sales (
	Sales_ID INT NOT NULL UNIQUE PRIMARY KEY,
	Item_ID INT,
	Store_ID INT,
	Staff_ID INT,
	Customer_ID INT,
	Promotion_ID INT,
	Date_transaction DATE,
	Quantity_sold INT,
	Revenue INT,
	CONSTRAINT fk_item FOREIGN KEY(Item_ID) REFERENCES Item(Item_ID),
	CONSTRAINT fk_store FOREIGN KEY(Store_ID) REFERENCES Store(Store_ID),
	CONSTRAINT fk_staff FOREIGN KEY(Staff_ID) REFERENCES Staff(Staff_ID),
	CONSTRAINT fk_customer FOREIGN KEY(Customer_ID) REFERENCES Customer(Customer_ID),
	CONSTRAINT fk_promotion FOREIGN KEY(Promotion_ID) REFERENCES Promotion(Promotion_ID)
);