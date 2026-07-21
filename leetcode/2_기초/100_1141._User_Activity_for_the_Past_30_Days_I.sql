-- 1141. User Activity for the Past 30 Days I
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/
-- 작성자: 전재민
-- 작성일: 2026. 07. 21. 20:36:47

SELECT
    activity_date as day,
    count(distinct user_id) as active_users
FROM Activity
WHERE activity_date between '2019-06-28' and '2019-07-27'
GROUP BY activity_date
