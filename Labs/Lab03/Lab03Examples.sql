use movies;

SELECT NAME
FROM movie JOIN MOVIEEXEC ON PRODUCERC# = CERT#
WHERE TITLE = 'Star Wars';

SELECT NAME
FROM MOVIEEXEC
WHERE CERT# = (SELECT PRODUCERC# FROM MOVIE WHERE TITLE = 'Star Wars'); -- резултатът от подзаявката трябва да е точно 1 (не 0, или > 1)

/*

Нека R, S са заявки.

EXISTS R -- Връща Истина, ако има резултат в R

S IN R -- Връща Истина, ако S е в R

S > ALL R -- Връща Истина, ако S е по- голям от всички стойности в R

S > ANY R -- Връща Истина, ако S е по- голям поне от една стойност в R

S <> ALL R -- Връща Истина, ако S е различно от всички стойности в R

Отрицанието става с NOT пред израза, за IN е NOT IN

*/

/*

Корелативна подзаявка -> Подзаявка, в която има зависимост от заявката, в която участва съответната подзавка.

Не можем да ползваме корелативна подзаявка във FROM

*/

/* TOP {n} -> взима n-тия ред  */

-- Примери за подзаявки в SELECT:

SELECT TITLE, LENGTH, (SELECT TOP 1 LENGTH
							FROM movie
								ORDER BY LENGTH DESC) - LENGTH AS diff
FROM MOVIE;

SELECT name, (SELECT TOP 1 LENGTH
				FROM movie m
					WHERE m.PRODUCERC# = me.CERT#
						ORDER BY LENGTH DESC) AS prodmaxl
FROM MOVIEEXEC me;
