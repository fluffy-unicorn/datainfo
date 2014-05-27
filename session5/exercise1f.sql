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
FOREIGN KEY(isbn) REFERENCES Boek(isbn) ON UPDATE CASCADE);

CREATE FUNCTION DeleteExemplaar() RETURNS TRIGGER AS $DeleteExemplaar$
BEGIN
DELETE FROM Exemplaar WHERE Exemplaar.isbn = OLD.isbn;
END;
$DeleteExemplaar$ LANGUAGE plpgsql;

UPDATE TRIGGER DeleteExemplaar
BEFORE DELETE ON Boek 
FOR EACH ROW
EXECUTE PROCEDURE DeleteExemplaar();