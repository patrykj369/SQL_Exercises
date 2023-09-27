--Zadanie 10
/*Wyświetl listę aktualnie wypożyczonych książek przez czytelników: imię i nazwisko czytelnika,
tytuł, autor, data wypożyczenia i liczba dni ile trzymana jest książka */
SELECT Czytelnicy.Imie, Czytelnicy.Nazwisko, Ksiazki.Tytul, Ksiazki.Autor, Wypozyczenia.DataWypozyczenia, DATEDIFF(day, DataWypozyczenia, GETDATE()) as 'Dni od wypozyczenia'
FROM Wypozyczenia
LEFT JOIN Czytelnicy ON Wypozyczenia.CzytelnikID = Czytelnicy.CzytelnikID
LEFT JOIN Ksiazki ON Wypozyczenia.KsiazkaID = Ksiazki.KsiazkaID
WHERE DataOddania IS NULL
GROUP BY Czytelnicy.Imie, Czytelnicy.Nazwisko, Ksiazki.Tytul, Ksiazki.Autor, Wypozyczenia.DataWypozyczenia


