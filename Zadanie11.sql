--Zadanie 11
--Wyświetl wszystkie dane książek, które nigdy nie zostały wypożyczone

SELECT * FROM Ksiazki
WHERE KsiazkaID NOT IN(SELECT KsiazkaID FROM Wypozyczenia)