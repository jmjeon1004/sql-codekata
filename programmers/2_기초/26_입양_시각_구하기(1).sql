-- 입양 시각 구하기(1)
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59412
-- 작성자: 전재민
-- 작성일: 2026. 04. 09. 23:46:28

-- 코드를 입력하세요
select
    hour(datetime) as hour,
    count(animal_id) as count
from animal_outs
where hour(datetime) between 9 and 19
group by hour(datetime)
order by hour(datetime)