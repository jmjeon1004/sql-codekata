-- 없어진 기록 찾기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59042
-- 작성자: 전재민
-- 작성일: 2026. 06. 19. 15:26:52

SELECT
    AO.ANIMAL_ID,
    AO.NAME
FROM ANIMAL_OUTS AS AO
LEFT JOIN ANIMAL_INS AS AI
    ON AO.ANIMAL_ID=AI.ANIMAL_ID
WHERE AI.ANIMAL_ID IS NULL
ORDER BY AO.ANIMAL_ID;