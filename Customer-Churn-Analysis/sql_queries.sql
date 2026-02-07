-- ============================================
-- Customer Churn Analysis - SQL Queries
-- ============================================

-- 1️⃣ Overall churn rate
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_percent
FROM churn;

-- 2️⃣ Churn rate by Contract Type
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_percent
FROM churn
GROUP BY Contract
ORDER BY churn_rate_percent DESC;

-- 3️⃣ Churn rate by Payment Method
SELECT 
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_percent
FROM churn
GROUP BY PaymentMethod
ORDER BY churn_rate_percent DESC;

-- 4️⃣ Average Monthly Charges by Churn
SELECT 
    Churn,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM churn
GROUP BY Churn;

-- 5️⃣ Revenue lost due to churned customers
SELECT 
    ROUND(SUM(MonthlyCharges * tenure), 2) AS estimated_revenue_lost
FROM churn
WHERE Churn = 'Yes';

-- 6️⃣ Impact of Tech Support on churn
SELECT 
    TechSupport,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
    ROUND(100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate_percent
FROM churn
GROUP BY TechSupport
ORDER BY churn_rate_percent DESC;

-- 7️⃣ High value customers at risk (tenure > 12 months & high charges)
SELECT 
    customerID,
    tenure,
    MonthlyCharges,
    (MonthlyCharges * tenure) AS CustomerValue
FROM churn
WHERE Churn = 'Yes'
AND tenure > 12
ORDER BY CustomerValue DESC;
