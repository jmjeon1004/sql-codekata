-- 진료과별 총 예약 횟수 출력하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/132202
-- 작성자: 전재민
-- 작성일: 2026. 04. 09. 23:50:52

-- 코드를 입력하세요
select
    mcdp_cd as '진료과코드',
    count(pt_no) as '5월예약건수'
from appointment
where apnt_ymd like ('2022-05%')
group by mcdp_cd
order by
    5월예약건수,
    진료과코드