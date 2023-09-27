--Zadanie 17
--Wyświetl id i nr telefonu czytelników, którzy mają przeterminowanych co najmniej 5 książek, przy założeniu, że książki przeterminowują się po miesiącu.

SELECT Wypozyczenia.CzytelnikID, Telefon
FROM Czytelnicy
LEFT JOIN Wypozyczenia ON Czytelnicy.CzytelnikID = Wypozyczenia.CzytelnikID
WHERE DataOddania IS NOT NULL
GROUP BY Wypozyczenia.CzytelnikID, Telefon
HAVING COUNT(DATEDIFF(month, DataWypozyczenia, DataOddania)) >=5
