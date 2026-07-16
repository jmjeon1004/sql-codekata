-- 1075. Project Employees I
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/project-employees-i/
-- 작성자: 전재민
-- 작성일: 2026. 07. 16. 20:15:54

SELECT
    p.project_id,
    round(avg(e.experience_years),2) as average_years
FROM Project as p
JOIN Employee as e
ON p.employee_id=e.employee_id
GROUP BY p.project_id
