-- 오랜 기간 보호한 동물(1)
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59044
-- 작성자: 전재민
-- 작성일: 2026. 06. 16. 17:39:06

SELECT
    NAME,
    DATETIME
FROM ANIMAL_INS AS AI
WHERE NOT EXISTS (
    SELECT ANIMAL_ID
    FROM ANIMAL_OUTS AS AO
    WHERE AI.ANIMAL_ID=AO.ANIMAL_ID)
ORDER BY DATETIME
LIMIT 3;