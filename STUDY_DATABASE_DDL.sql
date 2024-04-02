-- 데이터베이스 생성 
CREATE DATABASE STUDY_DATABASE ;

-- 테이블 생성 예시 
-- CREATE TABLE table_name (
--     column1 datatype,
--     column2 datatype,
--     column3 datatype,
--    ....
-- );

-- 테이블 생성
CREATE TABLE PERSONS (
	PERSONID VARCHAR(255)
    , AGE DECIMAL(3,0)
    , BIRTH_DATE DATETIME
) ;

-- 테이블 삭제
DROP TABLE PERSONS ;

-- 데이터베이스 삭제
-- DROP DATABASE STUDY_DATABASE ;