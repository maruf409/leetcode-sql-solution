						solution-1

SELECT a.activity_date, COUNT(user_id)
FROM (
	SELECT activity_date,user_id
	FROM S_leetcode.Activity
	GROUP BY activity_date,user_id
	HAVING  (activity_date >= '2019-06-28') AND (activity_date < '2019-08-25')
) AS a
GROUP BY a.activity_date


						solution-2

select abc.activity_date,count(abc.user_id)
from (SELECT distinct activity_date,user_id FROM test.test2) as abc
group by activity_date order by 1

						solution-3

SELECT activity_date, user_id INTO #temp
FROM S_leetcode.Activity
GROUP BY activity_date, user_id
GO
SELECT *
FROM #temp

SELECT activity_date, COUNT(activity_date)
FROM #temp
GROUP BY activity_date
