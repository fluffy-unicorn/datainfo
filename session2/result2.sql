INSERT INTO F VALUES('ABC','EF',false,'Met ABC weet je EF een daardoor ook D');
INSERT INTO F VALUES('E','D',true,'E is geen superkey en E->D is niet triviaal');
INSERT INTO F VALUES('D','A',true,'D is geen superkey en D->A is niet triviaal');

INSERT INTO F1 VALUES('ABC','EF',false,'ABC is de superkey');
INSERT INTO F2 VALUES('E','D', false,'E is de superkey');

/* Werkwijze
De tabel R splitsen in ABCEF en ED, zodat E->D geen violatie meer is en D-> A weg is.
*/