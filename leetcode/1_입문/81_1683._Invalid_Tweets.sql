-- 1683. Invalid Tweets
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/invalid-tweets/
-- 작성자: 전재민
-- 작성일: 2026. 02. 05. 23:40:54

# Write your MySQL query statement below
select tweet_id
from Tweets
where length(content) > 15
