--Zadanie 12
--Wstaw w opis książki 'Wypożyczona' jeśli ktoś aktualnie ma ją wypożyczoną.

UPDATE Ksiazki
SET Opis = 'Wypożyczona'
WHERE KsiazkaID IN (SELECT KsiazkaID FROM Wypozyczenia)
