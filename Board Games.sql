SELECT sub_category_id, avg(goal), avg(pledged), avg(backers) FROM campaign
WHERE sub_category_id = '14'
GROUP BY sub_category_id