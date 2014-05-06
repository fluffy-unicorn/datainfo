SELECT a.pid FROM Acts a 
WHERE a.pid = p.pid AND EXISTS (
SELECT * FROM Movie m 
WHERE m.mid = a.mid AND m.name = 'Back to the Future'
)
);