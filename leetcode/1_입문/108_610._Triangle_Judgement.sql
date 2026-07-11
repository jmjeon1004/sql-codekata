-- 610. Triangle Judgement
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/triangle-judgement/
-- 작성자: 전재민
-- 작성일: 2026. 07. 11. 15:25:30

SELECT
    x,
    y,
    z,
    case
        when x+y>z and x+z>y and y+z>x then 'Yes'
        else 'No'
    end as triangle
FROM Triangle
