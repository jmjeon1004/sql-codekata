-- 197. Rising Temperature
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/rising-temperature/
-- 작성자: 전재민
-- 작성일: 2026. 07. 16. 19:31:27

SELECT a.id
FROM Weather as a
JOIN Weather as b
ON DATEDIFF(a.recordDate, b.recordDate) = 1
where a.temperature > b.temperature
