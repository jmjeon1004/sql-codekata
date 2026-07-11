-- 특정 옵션이 포함된 자동차 리스트 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157343
-- 작성자: 전재민
-- 작성일: 2026. 07. 11. 14:03:23

SELECT *
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE ('%네비게이션%')
ORDER BY CAR_ID DESC;