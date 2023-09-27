--Zadanie 1
--Wyświetl imiona i nazwiska czytelników, rok urodzenia i posortuj ich alfabetycznie po nazwisku.
SELECT Imie, Nazwisko, YEAR(DataUrodzenia)
FROM Czytelnicy 
ORDER BY Nazwisko