/* Exercise03 */

/* 1. */
SELECT CLASS, COUNTRY
FROM ships.dbo.CLASSES
WHERE NUMGUNS < 10;

/* 2. */
SELECT NAME AS shipName
FROM ships.dbo.SHIPS
WHERE LAUNCHED < 1918;

/* 3. */
SELECT SHIP, BATTLE
FROM ships.dbo.OUTCOMES
WHERE RESULT = 'sunk';

/* 4. */
SELECT NAME
FROM ships.dbo.SHIPS
WHERE NAME = CLASS;

/* 5. */
SELECT NAME
FROM ships.dbo.SHIPS
WHERE NAME LIKE 'R%';

/* 6. */
SELECT NAME
FROM ships.dbo.SHIPS
WHERE NAME LIKE '% %';