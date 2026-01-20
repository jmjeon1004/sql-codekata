-- 중복 제거하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59408
-- 작성자: 전재민
-- 작성일: 2026. 01. 20. 15:52:40

-- 코드를 입력하세요
SELECT
    COUNT(distinct name) as count
from animal_ins;