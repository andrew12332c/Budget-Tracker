-- Insert sample accounts
INSERT INTO Accounts (account_id, account_name) VALUES
(1, 'Savings'),
(2, 'Checking');

-- Insert sample categories
INSERT INTO Categories (category_id, category_name) VALUES
(1, 'Groceries'),
(2, 'Utilities'),
(3, 'Entertainment');

-- Insert sample transactions
INSERT INTO Transactions (transaction_id, date, amount, category_id, account_id, description) VALUES
(1, '2023-01-01', 50.00, 1, 1, 'Grocery shopping'),
(2, '2023-01-02', 100.00, 2, 2, 'Electricity bill'),
(3, '2023-01-03', 25.00, 3, 1, 'Movie night');
