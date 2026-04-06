-- 어린 동물 찾기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59037
-- 작성자: 전재민
-- 작성일: 2026. 04. 06. 22:43:10

-- 코드를 입력하세요
select
    animal_id,
    name
from animal_ins
where intake_condition != 'aged'
order by animal_id