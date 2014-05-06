SELECT p.name, min(m.year) AS year FROM Person p
JOIN Directs d ON p.pid = d.pid
JOIN Movie m ON d.mid = m.mid
JOIN Genre g ON m.mid = g.mid
WHERE g.genre = 'Action'
GROUP BY p.pid
HAVING COUNT(*) >= 2

;