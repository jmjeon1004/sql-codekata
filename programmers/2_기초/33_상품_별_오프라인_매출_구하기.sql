-- 상품 별 오프라인 매출 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131533
-- 작성자: 전재민
-- 작성일: 2026. 04. 14. 23:12:30

-- 코드를 입력하세요
select 
    p.product_code,
    sum(p.price * os.sales_amount) as sales
from product as p
inner join offline_sale as os
    on p.product_id = os.product_id
group by p.product_code
order by 
    sales desc,
    p.product_code asc;