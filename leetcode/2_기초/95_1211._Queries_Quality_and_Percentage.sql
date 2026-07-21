-- 1211. Queries Quality and Percentage
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/queries-quality-and-percentage/
-- 작성자: 전재민
-- 작성일: 2026. 07. 21. 12:20:51

SELECT
    query_name,
    round(avg(rating/position),2) AS quality,
    round(sum(if(rating<3,1,0))/count(rating)*100,2) AS poor_query_percentage
FROM Queries
GROUP BY query_name
