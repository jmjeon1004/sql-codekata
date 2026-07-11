-- 최댓값 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59415
-- 작성자: 전재민
-- 작성일: 2026. 07. 11. 14:01:52

SELECT DATETIME AS '시간'
FROM ANIMAL_INS
WHERE DATETIME IN (
    SELECT MAX(DATETIME)
    FROM ANIMAL_INS
)