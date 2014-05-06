SELECT DISTINCT a.pid FROM Acts a JOIN Movie m 
ON m.mid = a.mid AND m.name = 'Back to the Future';