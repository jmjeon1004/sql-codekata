-- 오랜 기간 보호한 동물(2)
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59411
-- 작성자: 전재민
-- 작성일: 2026. 06. 02. 14:57:25

-- 코드를 입력하세요
SELECT
    AO.ANIMAL_ID,
    AO.NAME
FROM ANIMAL_INS AS AI 
INNER JOIN ANIMAL_OUTS AS AO
ON AI.ANIMAL_ID=AO.ANIMAL_ID
ORDER BY AI.DATETIME-AO.DATETIME ASC
LIMIT 2;