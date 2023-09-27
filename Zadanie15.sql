--Zadanie 15
--Usuń wiersze z tabeli Ksiazki, które w opisie mają wpis 'Utylizacja'

DELETE FROM Ksiazki
WHERE Opis LIKE 'Utylizacja'