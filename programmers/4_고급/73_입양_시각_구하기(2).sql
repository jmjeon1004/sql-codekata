-- 입양 시각 구하기(2)
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59413
-- 작성자: 전재민
-- 작성일: 2026. 01. 21. 10:25:11

-- 코드를 입력하세요
WITH RECURSIVE date AS (
    SELECT 0 as hour
    UNION ALL
    SELECT hour+1 
    from date 
    where hour < 23
)
SELECT
    d.hour,
    count(ao.animal_id) as count
from date as d
left join animal_outs as ao
    on d.hour = hour(ao.datetime)
group by d.hour
order by d.hour