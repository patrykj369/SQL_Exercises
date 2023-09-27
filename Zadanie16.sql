--Zadanie 16
-- Usuń z tabeli Wypożyczenia wpisy czytelnika o id = 20, książek autora 'Bolesław Prus'

DELETE W
FROM Wypozyczenia W
LEFT JOIN Ksiazki K ON W.KsiazkaID = K.KsiazkaID
WHERE W.CzytelnikID = 20 AND K.Autor = 'Boleslaw Prus'
