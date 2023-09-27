--Zadanie 13
--Uzupełnij kolumnę DataOddania bieżącą datą, dla wypożyczonych książek autora 'Henryk Sienkiewicz' u czytelnika o id = 99

UPDATE W
SET W.DataOddania = GETDATE()
FROM Wypozyczenia W
LEFT JOIN Ksiazki ON W.KsiazkaID = Ksiazki.KsiazkaID
WHERE W.CzytelnikID = 99 AND Ksiazki.Autor = 'Henryk Sienkiewicz'

