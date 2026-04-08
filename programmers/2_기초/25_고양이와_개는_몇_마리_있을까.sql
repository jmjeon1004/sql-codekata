-- 고양이와 개는 몇 마리 있을까
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040
-- 작성자: 전재민
-- 작성일: 2026. 04. 08. 23:43:20

-- 코드를 입력하세요
select
    animal_type,
    count(animal_type) as count
from animal_ins
group by animal_type
order by animal_type