-- 620. Not Boring Movies
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/not-boring-movies/
-- 작성자: 전재민
-- 작성일: 2026. 02. 11. 23:08:49

# Write your MySQL query statement below
select *
from Cinema
where id % 2 != 0 and description != 'boring'
order by rating desc
