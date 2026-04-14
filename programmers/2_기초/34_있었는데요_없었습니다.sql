-- 있었는데요 없었습니다
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59043
-- 작성자: 전재민
-- 작성일: 2026. 04. 14. 23:24:33

-- 코드를 입력하세요
select
    ai.animal_id,
    ai.name
from animal_ins as ai
join animal_outs as ao
    on ai.animal_id = ao.animal_id
where ai.datetime > ao.datetime
order by ai.datetime asc;