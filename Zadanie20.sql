--Zadanie20
--Wyświetl ile średnio książek w każdym miesiącu było wypożyczanych przez czytelnika(kolumny: miesiąc w formacie YYYY-MM, średnia)

--Wypożyczone książki w danym miesiącu w rozbiciu na poszczególnych pracowników
SELECT CzytelnikID, COUNT(KsiazkaID) as 'Średnia', SUBSTRING(CAST(DataWypozyczenia as varchar), 1, 7) AS 'Miesiąc'
FROM Wypozyczenia
GROUP BY CzytelnikID, SUBSTRING(CAST(DataWypozyczenia as varchar), 1, 7)

--Wypożyczone książki w danym miesiącu przez wszystkich użytkowników
SELECT COUNT(KsiazkaID) as 'Średnia', SUBSTRING(CAST(DataWypozyczenia as varchar), 1, 7) AS 'Miesiąc'
FROM Wypozyczenia
GROUP BY SUBSTRING(CAST(DataWypozyczenia as varchar), 1, 7)