SELECT c.country_id, co.name as 'country', sum(c.goal) as Goals,sum(c.pledged) as Pledges, sum(c.backers) as Backed
FROM campaign as c
JOIN country as co
ON c.country_id = co.id
GROUP BY c.country_id
ORDER BY Backed DESC /* order by Pledged or Backed */

