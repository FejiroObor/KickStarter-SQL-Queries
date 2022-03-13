SELECT c.id, c.name, c.sub_category_id, sb.name as 'Sub Category', ct.id, ct.name as 'Main Category',
c.country_id, co.name as 'country',
c.launched, c.deadline, c.goal,
 c.pledged, c.backers, c.outcome
FROM campaign as c
JOIN country as co
ON c.country_id = co.id
JOIN sub_category as sb
ON c.sub_category_id = sb.id
JOIN category as ct
ON ct.id = sb.category_id
ORDER BY c.id ASC  /*order by Pledges or Backers, ASC or DESC*/