SELECT p.pid FROM Person p
WHERE EXIST(
	SELECT * FROM Acts a
	WHERE a.pid = p.pid
	AND EXIST (
		SELECT * FROM Movie m
		WHERE m.mid = a.mid
		AND m.name = 'Back to the Future'
	)
);