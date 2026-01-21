-- 조건에 부합하는 중고거래 댓글 조회하기
-- 프로그래머스 기초 (⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164673
-- 작성자: 전재민
-- 작성일: 2026. 01. 21. 10:08:12

-- 코드를 입력하세요
SELECT
    ugb.title,
    ugb.board_id,
    ugr.reply_id,
    ugr.writer_id,
    ugr.contents,
    date_format(ugr.created_date, "%Y-%m-%d") as created_date
from used_goods_board as ugb
join used_goods_reply as ugr
    on ugb.board_id = ugr.board_id
where ugb.created_date like "2022-10%"
order by created_date asc, title asc