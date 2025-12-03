CREATE TABLE customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    date_of_birth DATE,
    ssn VARCHAR(20),
    nationality VARCHAR(50),
    kyc_status VARCHAR(20),
    risk_rating VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE accounts (
    account_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50),
    account_type VARCHAR(20),
    balance DECIMAL(12,2),
    status VARCHAR(20),
    opened_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE merchants (
    merchant_id VARCHAR(50) PRIMARY KEY,
    merchant_name VARCHAR(100),
    country VARCHAR(50),
    risk_category VARCHAR(20)
);

CREATE TABLE transactions (
    transaction_id VARCHAR(50) PRIMARY KEY,
    account_id VARCHAR(50),
    merchant_id VARCHAR(50),
    amount DECIMAL(12,2),
    currency VARCHAR(10),
    transaction_type VARCHAR(20),
    transaction_timestamp TIMESTAMP,
    country VARCHAR(50),
    channel VARCHAR(20),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id),
    FOREIGN KEY (merchant_id) REFERENCES merchants(merchant_id)
);

CREATE TABLE alerts (
    alert_id VARCHAR(50) PRIMARY KEY,
    transaction_id VARCHAR(50),
    alert_type VARCHAR(50),
    alert_status VARCHAR(20),
    generated_timestamp TIMESTAMP,
    risk_score INT,
    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id)
);

CREATE TABLE cases (
    case_id VARCHAR(50) PRIMARY KEY,
    alert_id VARCHAR(50),
    assigned_to VARCHAR(100),
    case_status VARCHAR(20),
    opened_date DATE,
    closed_date DATE,
    FOREIGN KEY (alert_id) REFERENCES alerts(alert_id)
);
