-- 저자 별 카테고리 별 매출액 집계하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/144856
-- 작성자: 전재민
-- 작성일: 2026. 06. 20. 13:29:16

SELECT
    A.AUTHOR_ID,
    A.AUTHOR_NAME,
    B.CATEGORY,
    SUM(BS.SALES*B.PRICE) AS TOTAL_SALES
FROM BOOK AS B
JOIN BOOK_SALES AS BS
    ON B.BOOK_ID=BS.BOOK_ID
JOIN AUTHOR AS A
    ON A.AUTHOR_ID=B.AUTHOR_ID
WHERE BS.SALES_DATE LIKE '2022-01%'
GROUP BY 
    A.AUTHOR_NAME, 
    B.CATEGORY
ORDER BY
    A.AUTHOR_ID,
    B.CATEGORY DESC;