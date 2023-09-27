--Zadanie 9
--Wyświetl tytuły książek, których rok wydania jest pomiędzy 2000 - 2005 roku i których jest w zbiorze więcej niż 10
SELECT Tytul 
FROM Ksiazki
WHERE RokWydania >= '2000' AND RokWydania <= '2005'
GROUP BY Tytul
HAVING COUNT(Tytul) > 10