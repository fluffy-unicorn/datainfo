SELECT XMLELEMENT(NAME "films", XMLAGG(XMLELEMENT))
FROM (
	SELECT 
		XMLELEMENT(NAME "film",
			XMLELEMENT(NAME "naam", m.name), 
			XMLELEMENT(NAME "jaar", m.year), 
			XMLELEMENT(NAME "rating", m.rating),
				XMLAGG(
					XMLELEMENT(NAME "acteur",
						XMLELEMENT(NAME "rol", a.role), 
						XMLELEMENT(NAME "persoon", p.name)
						)
					)
			) 
	FROM movie m 
	JOIN acts a 
	ON a.mid = m.mid
	JOIN person p
	ON a.pid = p.pid
	GROUP BY m.mid) AS XMLELEMENT;