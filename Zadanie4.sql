--Zadanie 4
--Zlicz ile jest książek o danym tytule, danego autora

SELECT COUNT(Autor), Tytul, Autor
FROM Ksiazki
GROUP BY Tytul, Autor
