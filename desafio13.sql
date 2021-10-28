SELECT p.productName AS 'Produto',
p.price AS 'Preço'
FROM w3schools.products AS p
WHERE p.ProductID IN (SELECT o.ProductID FROM w3schools.order_details AS o
WHERE o.Quantity > 80)
ORDER BY `Produto`;
