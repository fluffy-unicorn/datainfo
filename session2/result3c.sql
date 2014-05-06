SELECT DISTINCT name FROM Person p 
JOIN Writes w ON p.pid = w.pid 
WHERE w.mid NOT IN (SELECT d.mid FROM Directs d);