-- 여러 기준으로 정렬하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59404
-- 작성자: 전재민
-- 작성일: 2026. 04. 06. 22:45:22

-- 코드를 입력하세요
select
    animal_id,
    name,
    datetime
from animal_ins
order by name, datetime desc
