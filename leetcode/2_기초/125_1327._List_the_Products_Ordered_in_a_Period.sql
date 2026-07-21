-- 1327. List the Products Ordered in a Period
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/list-the-products-ordered-in-a-period/
-- 작성자: 전재민
-- 작성일: 2026. 07. 21. 22:37:34

SELECT
FROM Products as p
JOIN Orders as o
    p.product_name,
    sum(o.unit) as unit
ON p.product_id=o.product_id
WHERE o.order_date like '2020-02%'
GROUP BY p.product_name
HAVING sum(o.unit) >= 100
