SELECT DISTINCT name FROM Person p 
JOIN Writes w ON p.pid = w.pid -- where movie id doesnot exist in directs  ;
;