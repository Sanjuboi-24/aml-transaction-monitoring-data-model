# AML Transaction Monitoring Data Model

This project demonstrates an end-to-end Financial Crime Risk Management (FCRM) AML Transaction Monitoring system using conceptual, logical, and physical data modeling techniques.

## Business Flow
Customer → Account → Transaction → Alert → Case → Investigator

## Key Features
- Banking AML Data Models (Customer, Account, Transaction, Alert, Case)
- Star Schema for Risk Analytics
- Python-based AML Alert Rule Engine
- Synthetic Transaction Data Generator
- PostgreSQL/MySQL Compatible SQL Scripts

## AML Rules Implemented
- Large Transaction Detection (> $10,000)
- High-Risk Country Monitoring
- Rule-Based Risk Scoring

## Technologies
- SQL (PostgreSQL / MySQL)
- Python (Pandas)
- Dimensional Modeling
- Data Warehousing
- FCRM & AML Compliance

## How to Run
1. Execute `create_tables.sql`
2. Insert sample data using `insert_sample_data.sql`
3. Generate transactions:
4. Generate AML alerts:


## Use Cases
- Transaction Monitoring Systems
- Regulatory Reporting
- Risk & Compliance Dashboards
- Fraud Detection Systems

This project is designed for Data Modeller / AML Data Engineer / FCRM Analyst roles.
