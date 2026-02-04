-- 1148. Article Views I
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/article-views-i/
-- 작성자: 전재민
-- 작성일: 2026. 02. 04. 21:44:34

# Write your MySQL query statement below
select
from views
where author_id = viewer_id
    distinct viewer_id as id
order by id
