-- 1378. Replace Employee ID With The Unique Identifier
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/
-- 작성자: 전재민
-- 작성일: 2026. 07. 16. 15:52:38

SELECT
    eu.unique_id,
    name
FROM Employees as e
LEFT JOIN EmployeeUNI as eu
ON e.id = eu.id;
