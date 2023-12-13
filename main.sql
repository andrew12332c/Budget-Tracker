CREATE TABLE Accounts (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(50) NOT NULL
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

CREATE TABLE Transactions (
    transaction_id INT PRIMARY KEY,
    date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    category_id INT,
    account_id INT,
    description VARCHAR(255),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (account_id) REFERENCES Accounts(account_id)
);
