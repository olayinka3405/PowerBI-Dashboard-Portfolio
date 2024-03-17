USE SuperStoreProject

SELECT * FROM [dbo].[Orders$]

SELECT * FROM [dbo].[People$]

SELECT * FROM [dbo].[Returns$]


SELECT P.Person, ROUND(SUM(O.Sales), 2) AS "Total Sales", ROUND(SUM(O.Quantity), 2) AS "Total Qty", ROUND(SUM(O.Discount), 2) AS "Total Discount", ROUND(SUM(O.Profit), 2) AS "Total Profit"
FROM [dbo].[Orders$] AS O
LEFT JOIN [dbo].[People$] AS P ON O.Region = P.Region
LEFT JOIN [dbo].[Returns$] AS R ON O.[Order ID] = R.[Order ID]
GROUP BY P.Person
ORDER BY "Total Profit"