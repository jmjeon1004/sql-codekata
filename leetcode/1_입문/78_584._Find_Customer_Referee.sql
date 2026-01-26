-- 584. Find Customer Referee
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/find-customer-referee/
-- 작성자: 전재민
-- 작성일: 2026. 01. 26. 21:27:48

# Write your MySQL query statement below
select name
from customer
where referee_id != 2 or referee_id is null
