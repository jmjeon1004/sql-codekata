-- 1757. Recyclable and Low Fat Products
-- LeetCode 입문 (⭐)
-- 문제 링크: https://leetcode.com/problems/recyclable-and-low-fat-products/
-- 작성자: 전재민
-- 작성일: 2026. 01. 25. 19:56:49

# Write your MySQL query statement below
select product_id
from Products
where low_fats = 'Y' and recyclable = 'Y'
