CREATE TABLE Cars (
    CarID INT PRIMARY KEY,
    Model VARCHAR(100) NOT NULL,
    Year INT CHECK (Year > 1900 AND Year <= EXTRACT(YEAR FROM CURRENT_DATE)),
    Price DECIMAL(20, 2) CHECK (Price > 0),
    DateReceived TIMESTAMP NOT NULL,
    Color VARCHAR(50) NOT NULL,
    IsSold BOOLEAN DEFAULT FALSE
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Phone VARCHAR(15) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Address TEXT NOT NULL,
    DateOfBirth DATE NOT NULL
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CarID INT,
    CustomerID INT,
    SaleDate TIMESTAMP NOT NULL,
    FinalPrice DECIMAL(20, 2) CHECK (FinalPrice >= 0),
    FOREIGN KEY (CarID) REFERENCES Cars(CarID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Cars (CarID, Model, Year, Price, DateReceived, Color, IsSold)
VALUES 
(1, 'Toyota Corolla', 2022, 20000, '2023-01-01 10:00:00', 'Blue', FALSE),
(2, 'Honda Civic', 2021, 18500, '2023-01-10 14:00:00', 'Red', TRUE),
(3, 'Ford Focus', 2023, 21000, '2023-02-01 09:00:00', 'White', FALSE),
(4, 'Chevrolet Cruze', 2022, 19500, '2023-01-15 15:30:00', 'Black', TRUE),
(5, 'Mazda 3', 2023, 22000, '2023-02-05 11:00:00', 'Silver', FALSE);

INSERT INTO Customers (CustomerID, FirstName, LastName, Phone, Email, Address, DateOfBirth)
VALUES 
(1, 'John', 'Doe', '+12345678901', 'john.doe@email.com', '123 Main St, City', '1990-05-01'),
(2, 'Jane', 'Smith', '+12345678902', 'jane.smith@email.com', '456 Elm St, City', '1985-10-15'),
(3, 'Robert', 'Brown', '+12345678903', 'robert.brown@email.com', '789 Maple St, City', '1992-03-10'),
(4, 'Linda', 'Johnson', '+12345678904', 'linda.johnson@email.com', '101 Pine St, City', '1988-07-20'),
(5, 'Michael', 'Wilson', '+12345678905', 'michael.wilson@email.com', '202 Oak St, City', '1995-11-30');

INSERT INTO Sales (SaleID, CarID, CustomerID, SaleDate, FinalPrice)
VALUES 
(1, 2, 1, '2023-02-01 15:00:00', 18000),
(2, 4, 3, '2023-02-10 12:30:00', 19000),
(3, 3, 2, '2023-02-15 16:00:00', 20500),
(4, 1, 5, '2023-02-20 14:15:00', 19500),
(5, 5, 4, '2023-02-25 11:45:00', 21500);

