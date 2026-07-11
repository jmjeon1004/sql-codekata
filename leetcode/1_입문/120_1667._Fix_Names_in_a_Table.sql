-- 1667. Fix Names in a Table
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/fix-names-in-a-table/
-- 작성자: 전재민
-- 작성일: 2026. 07. 11. 15:31:49

SELECT
    user_id,
    concat(
        upper(substring(name,1,1)),
    ) as name
FROM Users
        lower(substring(name,2))
ORDER BY user_id
