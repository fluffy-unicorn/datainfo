SELECT p.name, COUNT(*) FROM Person p 
JOIN Acts a ON p.pid = a.pid
JOIN Movie m ON m.mid = a.mid
--where rating > 9.0
GROUP BY p.pid
HAVING COUNT(*) >= 4;