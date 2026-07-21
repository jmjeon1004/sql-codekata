-- 2356. Number of Unique Subjects Taught by Each Teacher
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/
-- 작성자: 전재민
-- 작성일: 2026. 07. 21. 20:26:00

SELECT
    teacher_id,
    count(distinct subject_id) as cnt
FROM Teacher
GROUP BY teacher_id
