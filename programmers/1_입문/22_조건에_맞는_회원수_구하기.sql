-- 조건에 맞는 회원수 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535
-- 작성자: 전재민
-- 작성일: 2026. 07. 11. 13:42:25

SELECT COUNT(*)
FROM USER_INFO
WHERE JOINED LIKE ('2021%')
AND AGE BETWEEN 20 AND 29