-- 특정 기간동안 대여 가능한 자동차들의 대여비용 구하기
-- 프로그래머스 심화 (⭐⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/157339
-- 작성자: 전재민
-- 작성일: 2026. 01. 22. 10:34:53

select
    cc.car_id,
    cc.car_type,
    round(cc.daily_fee* 30 * (1- dp.discount_rate/100)) as fee
from car_rental_company_car as cc
join car_rental_company_discount_plan as dp
    on cc.car_type = dp.car_type 
        and dp.duration_type = "30일 이상"
where cc.car_type in ("세단","SUV")
    and car_id not in (
        select car_id
        from car_rental_company_rental_history
        where start_date <= "2022-11-30" and end_date >= "2022-11-01"
    )
group by cc.car_id
having fee >= 500000 and fee < 2000000
order by 
    fee desc,
    cc.car_type asc,
    cc.car_id desc