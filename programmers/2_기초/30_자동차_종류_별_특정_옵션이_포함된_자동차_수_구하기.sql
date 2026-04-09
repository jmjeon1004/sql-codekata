-- 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/151137
-- 작성자: 전재민
-- 작성일: 2026. 04. 10. 00:00:21

-- 코드를 입력하세요
select
    car_type,
    count(car_id) as cars
from car_rental_company_car
where options like ("%통풍시트%") or options like ('%열선시트%') or options like ('%가죽시트%')
group by car_type
order by car_type