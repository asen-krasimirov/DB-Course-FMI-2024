use movies;

SELECT NAME
FROM movie JOIN MOVIEEXEC ON PRODUCERC# = CERT#
WHERE TITLE = 'Star Wars';

SELECT NAME
FROM MOVIEEXEC
WHERE CERT# = (SELECT PRODUCERC# FROM MOVIE WHERE TITLE = 'Star Wars'); -- ���������� �� ����������� ������ �� � ����� 1 (�� 0, ��� > 1)

/*

���� R, S �� ������.

EXISTS R -- ����� ������, ��� ��� �������� � R

S IN R -- ����� ������, ��� S � � R

S > ALL R -- ����� ������, ��� S � ��- ����� �� ������ ��������� � R

S > ANY R -- ����� ������, ��� S � ��- ����� ���� �� ���� �������� � R

S <> ALL R -- ����� ������, ��� S � �������� �� ������ ��������� � R

����������� ����� � NOT ���� ������, �� IN � NOT IN

*/

/*

����������� ��������� -> ���������, � ����� ��� ���������� �� ��������, � ����� ������� ����������� ��������.

�� ����� �� �������� ����������� ��������� ��� FROM

*/

/* TOP {n} -> ����� n-��� ���  */

-- ������� �� ��������� � SELECT:

SELECT TITLE, LENGTH, (SELECT TOP 1 LENGTH
							FROM movie
								ORDER BY LENGTH DESC) - LENGTH AS diff
FROM MOVIE;

SELECT name, (SELECT TOP 1 LENGTH
				FROM movie m
					WHERE m.PRODUCERC# = me.CERT#
						ORDER BY LENGTH DESC) AS prodmaxl
FROM MOVIEEXEC me;
