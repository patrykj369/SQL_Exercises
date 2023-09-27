--Zadanie 7
--Wyświetl imię i nazwisko oraz liczbę aktualnie wypożyczonych książek przez danego czytelnika

SELECT Czytelnicy.Imie, Czytelnicy.Nazwisko, Count(KsiazkaID) AS Ilosc
FROM Wypozyczenia
LEFT JOIN Czytelnicy ON Wypozyczenia.CzytelnikID = Czytelnicy.CzytelnikID
WHERE Wypozyczenia.DataOddania IS NULL
GROUP BY Wypozyczenia.CzytelnikID, Czytelnicy.Nazwisko, Czytelnicy.Imie
