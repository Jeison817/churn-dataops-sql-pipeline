-- Churn Rate
SELECT 
    Churn,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM churn_data) AS churn_rate
FROM churn_data
GROUP BY Churn;



-- Revenue perdido por churn
SELECT 
    SUM(MonthlyCharges) AS revenue_perdido
FROM churn_data
WHERE Churn = 'Yes';


-- Revenue retenido
SELECT 
    SUM(MonthlyCharges) AS revenue_retenido
FROM churn_data
WHERE Churn = 'No';


-- Tenure promedio por churn
SELECT 
    Churn,
    AVG(Tenure) AS promedio_tiempo_cliente
FROM churn_data
GROUP BY Churn;

-- Churn por método de pago
SELECT 
    PaymentMethod,
    Churn,
    COUNT(*) AS total
FROM churn_data
GROUP BY PaymentMethod, Churn
ORDER BY PaymentMethod;
