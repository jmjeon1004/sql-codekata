-- 1068. Product Sales Analysis I
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/product-sales-analysis-i/
-- 작성자: 전재민
-- 작성일: 2026. 07. 16. 16:00:44

SELECT
FROM Sales as s
JOIN Product as p
    p.product_name,
    s.year,
    s.price
on s.product_id = p.product_id
