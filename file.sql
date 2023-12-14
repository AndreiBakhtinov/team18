/* В рамках БД "песочница" напишите след/запросы:
  Вывести название и стоимость товаров от 20 EUR.*/

SELECT
ProductName,
Price
FROM [Products]
WHERE
		Price >= 20