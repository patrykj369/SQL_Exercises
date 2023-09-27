--Zadanie 19
/*Wyświetl imię i nazwisko (w jednej kolumnie imię „spacja” nazwisko) czytelnika oraz datę
ostatniej jego wizyty w bibliotece. Jeśli ktoś nic jeszcze nie wypożyczył też ma się pojawić w
wynikach. */

SELECT DISTINCT CONCAT(Imie,' ', Nazwisko), MAX(Wypozyczenia.DataWypozyczenia)
FROM Wypozyczenia
FULL JOIN Czytelnicy ON Wypozyczenia.CzytelnikID = Czytelnicy.CzytelnikID 
GROUP BY CONCAT(Imie,' ', Nazwisko)

