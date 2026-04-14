-- 카테고리 별 도서 판매량 집계하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855
-- 작성자: 전재민
-- 작성일: 2026. 04. 14. 23:05:00

-- 코드를 입력하세요
select 
    b.category,
    sum(bs.sales) as total_sales
from book as b
join book_sales as bs
    on b.book_id = bs.book_id
where bs.sales_date like '2022-01%'
group by b.category
order by b.category asc;