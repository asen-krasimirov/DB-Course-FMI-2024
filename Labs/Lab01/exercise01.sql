/* Exercise 01 */

/* 1. */
SELECT ADDRESS
FROM movies.dbo.STUDIO
WHERE NAME = 'Disney';

/* 2. */
SELECT BIRTHDATE
FROM movies.dbo.MOVIESTAR
WHERE NAME = 'Jack Nicholson';

/* 3. */
SELECT STARNAME
FROM movies.dbo.STARSIN
WHERE MOVIEYEAR = 1980 OR MOVIETITLE LIKE '%Knight%';

/* 4. */
SELECT NAME
FROM movies.dbo.MOVIEEXEC
WHERE NETWORTH > 10000000;

/* 5. */
SELECT NAME
FROM movies.dbo.MOVIESTAR
WHERE GENDER = 'M' OR ADDRESS = 'Perfect Rd.';
