-- 카테고리 별 상품 개수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131529
-- 작성자: 전재민
-- 작성일: 2026. 04. 08. 23:36:50

-- 코드를 입력하세요
select
    left(product_code, 2) as category,
    count(left(product_code, 2)) as products
from product
group by left(product_code, 2)
order by category