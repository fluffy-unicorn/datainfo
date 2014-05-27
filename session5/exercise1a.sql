CREATE TABLE Boek (
isbn int,
titel varchar(100),
auteur varchar(100),
PRIMARY KEY(isbn)
);
CREATE TABLE Exemplaar (
isbn int,
volgnummer int,
gewicht int,
kast varchar(5),
PRIMARY KEY(volgnummer),
FOREIGN KEY(isbn) REFERENCES Boek(isbn) ON UPDATE CASCADE ON DELETE CASCADE);
