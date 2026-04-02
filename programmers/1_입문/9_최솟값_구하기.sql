-- 최솟값 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59038
-- 작성자: 전재민
-- 작성일: 2026. 04. 02. 09:26:36

-- 코드를 입력하세요
select datetime as '시간'
from animal_ins
order by datetime
limit 1;