CREATE TABLE Bestelling (
isbn int,
aantal int,
FOREIGN KEY(isbn) REFERENCES Boek(isbn) 
ON UPDATE CASCADE ON DELETE CASCADE);

CREATE FUNCTION UpdateBestelling RETURNS TRIGGER AS $UpdateBestelling$
BEGIN
INSERT INTO Bestelling VALUES (NEW.isbn, 1) WHERE NOT EXISTS(SELECT author FROM Boek WHERE author = NEW.author)
END;
$UpdateBestelling$ LANGUAGE plpgsql;

UPDATE TRIGGER UpdateBestelling
BEFORE CREATE ON Boek 
FOR EACH ROW
EXECUTE PROCEDURE UpdateBestelling();