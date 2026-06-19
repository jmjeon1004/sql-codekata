-- 년, 월, 성별 별 상품 구매 회원 수 구하기
-- 프로그래머스 중급 (⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131532
-- 작성자: 전재민
-- 작성일: 2026. 06. 19. 16:54:50

SELECT
    YEAR(OS.SALES_DATE) AS YEAR,
    MONTH(OS.SALES_DATE) AS MONTH,
    UI.GENDER,
    COUNT(DISTINCT UI.USER_ID) AS USERS
FROM USER_INFO AS UI
JOIN ONLINE_SALE AS OS
    ON UI.USER_ID = OS.USER_ID
WHERE UI.GENDER IS NOT NULL
GROUP BY
    YEAR,
    MONTH,
    UI.GENDER
ORDER BY
    YEAR,
    MONTH,
    UI.GENDER