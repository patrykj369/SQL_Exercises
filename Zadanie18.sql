--Zadanie 18
--Wyświetl tytuł książki jaką ostatnio oddał czytelnik Jan Kowalski

SELECT TOP 1 Tytul
FROM Ksiazki 
RIGHT JOIN Wypozyczenia ON Ksiazki.KsiazkaID = Wypozyczenia.KsiazkaID
LEFT JOIN Czytelnicy ON Wypozyczenia.CzytelnikID = Czytelnicy.CzytelnikID
WHERE Czytelnicy.Imie = 'Jan' AND Czytelnicy.Nazwisko = 'Kowalski' AND DataOddania IS NOT NULL
ORDER BY Wypozyczenia.DataOddania DESC
