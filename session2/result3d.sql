SELECT DISTINCT name FROM Person p 
JOIN Writes w ON p.pid = w.pid -- where all movie ids do not exist in directs  ;
;