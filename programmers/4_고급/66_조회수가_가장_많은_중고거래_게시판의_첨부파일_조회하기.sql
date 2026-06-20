-- 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
-- 프로그래머스 고급 (⭐⭐⭐⭐)
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/164671
-- 작성자: 전재민
-- 작성일: 2026. 06. 20. 13:13:05

SELECT
    CONCAT('/home/grep/src/',UGF.BOARD_ID,'/',UGF.FILE_ID,UGF.FILE_NAME,UGF.FILE_EXT) AS FILE_PATH
FROM USED_GOODS_BOARD AS UGB
JOIN USED_GOODS_FILE AS UGF
    ON UGB.BOARD_ID=UGF.BOARD_ID
WHERE UGB.BOARD_ID = (
    SELECT UGB.BOARD_ID
    FROM USED_GOODS_BOARD AS UGB
    ORDER BY UGB.VIEWS DESC
    LIMIT 1
    )
ORDER BY 
    UGF.FILE_ID DESC;
