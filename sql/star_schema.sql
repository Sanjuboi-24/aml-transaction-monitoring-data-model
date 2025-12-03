CREATE TABLE dim_customer (
    customer_key INT PRIMARY KEY,
    customer_id VARCHAR(50),
    full_name VARCHAR(200),
    nationality VARCHAR(50),
    risk_rating VARCHAR(20)
);

CREATE TABLE dim_account (
    account_key INT PRIMARY KEY,
    account_id VARCHAR(50),
    account_type VARCHAR(20)
);

CREATE TABLE dim_date (
    date_key INT PRIMARY KEY,
    full_date DATE,
    year INT,
    month INT,
    day INT
);

CREATE TABLE fact_transactions (
    transaction_id VARCHAR(50),
    customer_key INT,
    account_key INT,
    amount DECIMAL(12,2),
    risk_score INT,
    alert_flag BOOLEAN,
    date_key INT
);
