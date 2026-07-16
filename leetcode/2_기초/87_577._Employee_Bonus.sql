-- 577. Employee Bonus
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/employee-bonus/
-- 작성자: 전재민
-- 작성일: 2026. 07. 16. 20:12:02

SELECT
    e.name,
    b.bonus
FROM Employee as e
LEFT JOIN Bonus as b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus is null
