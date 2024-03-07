/* Exercise 02. */

use pc;

-- 1.
SELECT DISTINCT maker
FROM product JOIN (SELECT model FROM pc WHERE speed > 500) as pc1
ON product.model = pc1.model;

SELECT maker
FROM product
WHERE model IN (SELECT model FROM pc WHERE speed > 500);

-- 2.
SELECT p1.code, p1.model, p1.price
FROM printer as p1 JOIN (SELECT TOP 1 code, model, price FROM printer) as p2
ON p1.price = p2.price;

-- 3.
SELECT *
FROM laptop
WHERE speed < ALL (SELECT speed FROM pc);

-- 4.
/*
SELECT model, price 
FROM laptop
WHERE price >= ALL (SELECT price FROM laptop)
UNION
SELECT model, price 
FROM pc
WHERE price >= ALL (SELECT price FROM pc)
UNION
SELECT model, price 
FROM printer
WHERE price >= ALL (SELECT price FROM printer)
*/

SELECT TOP 1 * FROM (
SELECT model, price FROM laptop
UNION
SELECT model, price FROM pc
UNION
SELECT model, price FROM printer
) result
ORDER BY result.price DESC;

-- 5.
SELECT TOP 1 product.maker
FROM printer JOIN product
ON printer.model = product.model
WHERE color = 'y'
ORDER BY price ASC;

-- 6.
SELECT product.maker
FROM pc JOIN product
ON pc.model = product.model
WHERE pc.ram = (SELECT TOP 1 ram FROM pc ORDER BY ram ASC)
AND pc.speed = (SELECT TOP 1 speed FROM (SELECT TOP 1 * FROM pc ORDER BY ram ASC) as lowRamPc ORDER BY lowRamPc.speed DESC);

