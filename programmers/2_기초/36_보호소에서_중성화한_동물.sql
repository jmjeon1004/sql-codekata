-- 보호소에서 중성화한 동물
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/59045
-- 작성자: 전재민
-- 작성일: 2026. 06. 02. 15:22:42

SELECT
    AI.ANIMAL_ID,
    AI.ANIMAL_TYPE,
    AI.NAME
FROM ANIMAL_INS AS AI
JOIN ANIMAL_OUTS AS AO
ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE (AI.SEX_UPON_INTAKE LIKE 'Intact%'
       AND AO.SEX_UPON_OUTCOME LIKE 'Spayed%')
       or (AI.SEX_UPON_INTAKE LIKE 'Intact%'
           AND AO.SEX_UPON_OUTCOME LIKE 'Neutered%')
