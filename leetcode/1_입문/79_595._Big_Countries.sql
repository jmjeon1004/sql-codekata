-- 595. Big Countries
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/big-countries/
-- 작성자: 전재민
-- 작성일: 2026. 01. 27. 23:24:00

# Write your MySQL query statement below
select
    name,
from world
    population,
    area
where area >= 3000000 or population >= 25000000
