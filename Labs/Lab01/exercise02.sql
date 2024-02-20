/* Exercise 02 */

/* 1. */
SELECT model, speed AS MGz, hd AS GB
FROM pc.dbo.pc
WHERE price < 1200;

/* 2. */
SELECT DISTINCT maker
FROM pc.dbo.product
WHERE type = 'Printer';

/* 3. */
SELECT model, ram, screen
FROM pc.dbo.laptop
WHERE price > 1000;

/* 4. */
SELECT *
FROM pc.dbo.printer
WHERE color = 'y';

/* 5. */
SELECT model, speed, hd
FROM pc.dbo.pc
WHERE (cd = '12x' OR cd = '16x') AND price < 2000;
