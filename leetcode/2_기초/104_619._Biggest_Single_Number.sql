-- 619. Biggest Single Number
-- LeetCode 기초 (⭐⭐)
-- 문제 링크: https://leetcode.com/problems/biggest-single-number/
-- 작성자: 전재민
-- 작성일: 2026. 07. 21. 22:12:35

SELECT max(num) as num
FROM (
    select num
    from MyNumbers
    having count(num) = 1
    group by num
) as Num
