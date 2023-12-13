-- Define variables
DECLARE @AccountTableName NVARCHAR(50) = 'Accounts';
DECLARE @CategoryTableName NVARCHAR(50) = 'Categories';
DECLARE @TransactionsTableName NVARCHAR(50) = 'Transactions';

-- Create Accounts table
CREATE TABLE @AccountTableName (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(50) NOT NULL
);

-- Create Categories table
CREATE TABLE @CategoryTableName (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

-- Create Transactions table
CREATE TABLE @TransactionsTableName (
    transaction_id INT PRIMARY KEY,
    date DATE NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    category_id INT,
    account_id INT,
    description VARCHAR(255),
    FOREIGN KEY (category_id) REFERENCES @CategoryTableName(category_id),
    FOREIGN KEY (account_id) REFERENCES @AccountTableName(account_id)
);
