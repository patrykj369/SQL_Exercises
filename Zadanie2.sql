--Zadanie 2
--Wyświetl nazwiska czytelników mających więcej niż 50 lat, których imiona zaczynają się na literę B

SELECT Nazwisko
FROM Czytelnicy
WHERE (2023 - YEAR(DataUrodzenia)) > 50 AND Imie LIKE 'B%'