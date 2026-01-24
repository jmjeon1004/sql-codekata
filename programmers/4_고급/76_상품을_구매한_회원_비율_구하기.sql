-- 상품을 구매한 회원 비율 구하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131534
-- 작성자: 전재민
-- 작성일: 2026. 01. 24. 16:08:26

-- 코드를 입력하세요
SELECT 
    year(sales_date) as year,
    month(sales_date) as month,
    count(distinct u.user_id) as purchased_users,
    round(count(distinct u.user_id) / 
(select count(*) from user_info where joined like "2021%"),1) as purchased_ratio
from USER_INFO as u
join ONLINE_SALE as o
    on u.user_id = o.user_id
where u.joined like "2021%"
group by year, month
order by year asc, month asc;