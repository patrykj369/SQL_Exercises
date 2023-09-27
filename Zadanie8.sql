--Zadanie 8
--Wyświetl nazwiska 3 czytelników, którzy wypożyczyli najwięcej książek w 2018 roku.

SELECT TOP 3 Count(KsiazkaID) AS Ilosc, Czytelnicy.Nazwisko 
FROM Wypozyczenia
LEFT JOIN Czytelnicy ON Wypozyczenia.CzytelnikID = Czytelnicy.CzytelnikID
WHERE YEAR(DataWypozyczenia) = '2018'
GROUP BY Wypozyczenia.CzytelnikID, Czytelnicy.Nazwisko
ORDER BY Ilosc DESC


