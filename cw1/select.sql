SELECT * 
FROM Cars 
WHERE IsSold = FALSE 
ORDER BY DateReceived DESC 
LIMIT 10;

SELECT Model, COUNT(*) as SoldCarsCount 
FROM Cars 
WHERE IsSold = TRUE 
GROUP BY Model 
ORDER BY SoldCarsCount DESC;

