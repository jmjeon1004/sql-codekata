-- 흉부외과 또는 일반외과 의사 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132203
-- 작성자: 전재민
-- 작성일: 2026. 07. 11. 13:36:02

SELECT
    DR_NAME,
    DR_ID,
    MCDP_CD,
    HIRE_YMD
FROM DOCTOR
WHERE MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY
    HIRE_YMD DESC,
    DR_NAME ASC;