-- 나이 정보가 없는 회원 수 구하기
-- 프로그래머스 입문 (⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131528
-- 작성자: 전재민
-- 작성일: 2026. 07. 11. 13:02:38

SELECT COUNT(USER_ID) AS USERS
FROM USER_INFO
WHERE AGE IS NULL;