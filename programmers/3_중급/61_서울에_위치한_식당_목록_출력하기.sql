-- 서울에 위치한 식당 목록 출력하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131118
-- 작성자: 전재민
-- 작성일: 2026. 06. 19. 17:34:44

SELECT
    RI.REST_ID,
    RI.REST_NAME,
    RI.FOOD_TYPE,
    RI.FAVORITES,
    RI.ADDRESS,
    ROUND(AVG(RR.REVIEW_SCORE),2) AS SCORE
FROM REST_INFO AS RI
JOIN REST_REVIEW AS RR
    ON RI.REST_ID = RR.REST_ID
WHERE RI.ADDRESS LIKE '서울%'
GROUP BY
    RI.REST_ID,
    RI.REST_NAME,
    RI.FOOD_TYPE,
    RI.FAVORITES,
    RI.ADDRESS
ORDER BY 
    SCORE DESC,
    RI.FAVORITES DESC;