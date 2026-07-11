-- 경기도에 위치한 식품창고 목록 출력하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131114
-- 작성자: 전재민
-- 작성일: 2026. 07. 11. 13:28:38

SELECT
    WAREHOUSE_ID,
    WAREHOUSE_NAME,
    ADDRESS,
    CASE
        WHEN FREEZER_YN IS NULL THEN 'N'
        ELSE FREEZER_YN
    END AS FREEZER_YN
FROM FOOD_WAREHOUSE
WHERE ADDRESS LIKE ('경기도%')
ORDER BY WAREHOUSE_ID ASC;