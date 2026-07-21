-- 1729. Find Followers Count
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/find-followers-count/
-- 작성자: 전재민
-- 작성일: 2026. 07. 21. 21:39:41

SELECT
    user_id,
    count(follower_id) as followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id asc;
