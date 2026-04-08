-- 동명 동물 수 찾기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59041
-- 작성자: 전재민
-- 작성일: 2026. 04. 08. 23:30:39

-- 코드를 입력하세요
select
    name,
    count(name) as count
from animal_ins
group by name
having count(name) >= 2 and name is not null
order by name