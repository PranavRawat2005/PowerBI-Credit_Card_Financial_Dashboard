-- SQL Query to create and import data from csv files:

-- 0. Created a database 'ccdb' or 'credit card database'

create database ccdb;

-- 1. Created cc_detail table

CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

-- 2. Created cc_detail table

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);


-- 3. Changed the date format in the csv file to "yyyy-mm-dd",so that date is in correct format for MySQL.Fixed the date format in MS Excel.

-- 4. Imported csv data into SQL using table data import wizard

-- 5. Standardized the 'selfemployeed' cells in cust_detail table to 'self employed'.This ensures that there are no grammatical mistakes.

UPDATE cust_detail
SET Customer_Job = REPLACE(Customer_Job, 'Selfemployeed', 'Self employed')
WHERE Customer_Job LIKE 'Selfemployeed';

-- 6. Connected our database to power BI desktop
-- 7. As it is a weekly report, we'll add this week's data to the database and refresh the power bi report to update our dashboard.








 