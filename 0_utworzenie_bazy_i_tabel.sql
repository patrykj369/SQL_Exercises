CREATE DATABASE biblioteka;

USE biblioteka

CREATE TABLE Czytelnicy(
	CzytelnikID INT IDENTITY PRIMARY KEY,
	Imie VARCHAR(30) NOT NULL,
	Nazwisko VARCHAR(50) NOT NULL,
	DataUrodzenia DATE NOT NULL,
	Telefon CHAR(9) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Uwagi TEXT
);

CREATE TABLE Ksiazki(
	KsiazkaID INT IDENTITY PRIMARY KEY,
	Tytul VARCHAR(100),
	Autor VARCHAR(100),
	RokWydania CHAR(4), 
	Opis TEXT
);

CREATE TABLE Wypozyczenia(
	WypozyczenieID INT IDENTITY PRIMARY KEY,
	CzytelnikID INT FOREIGN KEY REFERENCES Czytelnicy(CzytelnikID),
	KsiazkaID INT FOREIGN KEY REFERENCES Ksiazki(KsiazkaID),
	DataWypozyczenia DATE NOT NULL,
	DataOddania Date,
);

