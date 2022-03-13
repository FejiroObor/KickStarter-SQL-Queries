SELECT c.sub_category_id, sb.name as 'Sub Category', avg(c.backers) as Backers, avg(c.pledged) as Pledges
FROM campaign as c
JOIN sub_category as sb
ON c.sub_category_id = sb.id
GROUP BY c.sub_category_id
ORDER BY Backers DESC  /*order by Pledges or Backers, ASC or DESC */