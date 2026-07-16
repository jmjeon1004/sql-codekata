-- 1661. Average Time of Process per Machine
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/average-time-of-process-per-machine/
-- 작성자: 전재민
-- 작성일: 2026. 07. 16. 19:59:22

SELECT
    a.machine_id,
FROM (
    SELECT *
    FROM Activity
    WHERE activity_type = 'start') a
JOIN (
    SELECT *
    FROM ACTIVITY
    WHERE activity_type = 'end') b
ON a.machine_id=b.machine_id
    round(avg(b.timestamp-a.timestamp),3) as processing_time
GROUP BY a.machine_id
