-- 1148. Article Views I
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/article-views-i/
-- 작성자: 전재민
-- 작성일: 2026. 02. 04. 21:44:34

SELECT distinct author_id as id
FROM Views
WHERE author_id = viewer_id
order by id asc;
