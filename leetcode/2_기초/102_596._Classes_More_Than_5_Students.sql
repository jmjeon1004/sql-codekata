-- 596. Classes More Than 5 Students
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/classes-with-at-least-5-students/
-- 작성자: 전재민
-- 작성일: 2026. 07. 21. 20:39:35

SELECT class
FROM Courses
GROUP BY class
HAVING count(student) > 5
