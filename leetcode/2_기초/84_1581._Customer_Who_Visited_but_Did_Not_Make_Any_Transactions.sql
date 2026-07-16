-- 1581. Customer Who Visited but Did Not Make Any Transactions
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/
-- 작성자: 전재민
-- 작성일: 2026. 07. 16. 16:23:47

SELECT
FROM Visits as v
LEFT JOIN Transactions as t
ON v.visit_id = t.visit_id
    v.customer_id,
    count(v.visit_id) as count_no_trans
WHERE t.transaction_id is null
GROUP BY v.customer_id
