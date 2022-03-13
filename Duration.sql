SELECT launched, deadline, DATEDIFF(deadline, launched) AS Duration, goal, pledged, backers
FROM Testschema.campaign; 
ORDER BY backers DESC