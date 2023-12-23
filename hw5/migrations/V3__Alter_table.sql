ALTER TABLE Authors
ALTER COLUMN FirstName TYPE VARCHAR(100),
ALTER COLUMN LastName TYPE VARCHAR(100);

ALTER TABLE Authors
ALTER COLUMN FirstName SET NOT NULL,
ALTER COLUMN LastName SET NOT NULL;

ALTER TABLE Categories
ALTER COLUMN CategoryName TYPE VARCHAR(100),
ALTER COLUMN CategoryName SET NOT NULL;

ALTER TABLE Books
ALTER COLUMN Title TYPE VARCHAR(255),
ALTER COLUMN Price TYPE DECIMAL(10, 2);

ALTER TABLE Books
ALTER COLUMN Title SET NOT NULL,
ALTER COLUMN Price SET NOT NULL;

ALTER TABLE Books
ADD CONSTRAINT check_price_positive CHECK (Price > 0);

ALTER TABLE Customers
ALTER COLUMN FirstName TYPE VARCHAR(100),
ALTER COLUMN LastName TYPE VARCHAR(100),
ALTER COLUMN Email TYPE VARCHAR(150),
ALTER COLUMN Phone TYPE VARCHAR(20);

ALTER TABLE Customers
ALTER COLUMN FirstName SET NOT NULL,
ALTER COLUMN LastName SET NOT NULL;

ALTER TABLE Customers
ADD CONSTRAINT email_unique UNIQUE (Email),
ADD CONSTRAINT phone_unique UNIQUE (Phone);

ALTER TABLE Orders
ALTER COLUMN Quantity TYPE INT,
ALTER COLUMN OrderDate TYPE DATE;

ALTER TABLE Orders
ALTER COLUMN Quantity SET DEFAULT 1,
ALTER COLUMN OrderDate SET NOT NULL;

ALTER TABLE Orders
ADD CONSTRAINT check_quantity_positive CHECK (Quantity > 0);