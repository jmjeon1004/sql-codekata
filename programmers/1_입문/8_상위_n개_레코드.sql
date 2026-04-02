-- 상위 n개 레코드
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59405
-- 작성자: 전재민
-- 작성일: 2026. 04. 02. 09:24:17

-- 코드를 입력하세요
select name
from animal_ins
order by datetime
limit 1;