-- 1527. Patients With a Condition
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/patients-with-a-condition/
-- 작성자: 전재민
-- 작성일: 2026. 07. 11. 15:34:18

SELECT *
FROM Patients
WHERE conditions like 'DIAB1%' or conditions like '% DIAB1%'
