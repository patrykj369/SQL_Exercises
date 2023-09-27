--Zadanie6
--Wyświetl autorów i liczbę ich unikalnych tytułów w zbiorze

SELECT Autor, COUNT(DISTINCT Tytul)
FROM Ksiazki
GROUP BY Autor 
