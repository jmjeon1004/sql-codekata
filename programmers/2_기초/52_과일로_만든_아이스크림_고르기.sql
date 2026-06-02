-- 과일로 만든 아이스크림 고르기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/133025
-- 작성자: 전재민
-- 작성일: 2026. 06. 02. 17:06:14

SELECT 
    F.FLAVOR
FROM FIRST_HALF AS F
JOIN ICECREAM_INFO AS I
ON F.FLAVOR = I.FLAVOR
WHERE I.INGREDIENT_TYPE='fruit_based'
and F.total_order >= 3000
ORDER BY TOTAL_ORDER DESC;