SELECT outcome, SUM(goal) as Totalgoal 
FROM Testschema.campaign
GROUP BY Testschema.campaign.outcome


