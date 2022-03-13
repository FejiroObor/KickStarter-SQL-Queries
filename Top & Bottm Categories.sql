SELECT ct.id as 'Category ID' ,ct.name as 'Category', avg(c.backers) as Backers, avg(c.pledged) as Pledges
FROM campaign as c
INNER JOIN sub_category as sb
ON c.sub_category_id = sb.id
INNER JOIN category as ct
ON ct.id = sb.category_id
GROUP BY ct.id
ORDER BY Backers DESC  /*order by Pledges or Backers, ASC or DESC*/