-- 1633. Percentage of Users Attended a Contest
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/percentage-of-users-attended-a-contest/
-- 작성자: 전재민
-- 작성일: 2026. 07. 16. 20:40:43

SELECT
    contest_id,
    round(count(user_id)/(select count(*) from users)*100,2) as percentage
FROM Register
GROUP BY contest_id
ORDER BY
    percentage desc,
    contest_id asc;
