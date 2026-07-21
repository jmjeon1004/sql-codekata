-- 1193. Monthly Transactions I
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/monthly-transactions-i/
-- 작성자: 전재민
-- 작성일: 2026. 07. 21. 18:24:01

SELECT
    date_format(trans_date, '%Y-%m') as month,
    country,
    count(*) as trans_count,
    sum(if(state='approved',1,0)) as approved_count,
    sum(amount) as trans_total_amount,
    sum(if(state='approved',amount,0)) as approved_total_amount
FROM Transactions
GROUP BY
    date_format(trans_date, '%Y-%m'),
    country
