-- Write your PostgreSQL query statement below
SELECT s.user_id, ROUND(1.0*COALESCE(SUM((action = 'confirmed') :: int), 0)/COUNT(*), 2) AS confirmation_rate
FROM Signups AS s LEFT JOIN Confirmations AS c ON s.user_id=c.user_id
GROUP BY s.user_id;

-- G1_DIkshay_23bcs11096_session3

