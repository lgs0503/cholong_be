create table USER_INFO
(
    IDX         INT
        constraint USER_INFO_PK
            primary key,
    USER_ID     VARCHAR2(50),
    PASSWORD    VARCHAR2(100),
    KOR_NAME    VARCHAR2(20),
    ENG_NAME    VARCHAR2(40),
    ADDRESS     VARCHAR2(300),
    ADDRESS_DTL VARCHAR2(1000),
    GENDER      VARCHAR2(10),
    BIRTHDAY    VARCHAR2(10),
    PHONE_NUM   VARCHAR(50),
    EMAIL       VARCHAR2(200),
    USE_YN      VARCHAR(10),
    FILE_NO     INT,
    REMARK      VARCHAR2(200),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    UPDATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    CREATE_DATE DATE         default SYSDATE
)
/

comment on table USER_INFO is '유저정보'
/

comment on column USER_INFO.IDX is '일련번호'
/

comment on column USER_INFO.USER_ID is '아이디'
/

comment on column USER_INFO.PASSWORD is '비밀번호
'
/

comment on column USER_INFO.KOR_NAME is '한글 이름'
/

comment on column USER_INFO.ENG_NAME is '영문이름'
/

comment on column USER_INFO.ADDRESS is '주소'
/

comment on column USER_INFO.ADDRESS_DTL is '상세주소'
/

comment on column USER_INFO.GENDER is '성별'
/

comment on column USER_INFO.BIRTHDAY is '생년월일'
/

comment on column USER_INFO.PHONE_NUM is '연락처'
/

comment on column USER_INFO.EMAIL is '이메일'
/

comment on column USER_INFO.USE_YN is '사용여부(Y/N)'
/

comment on column USER_INFO.FILE_NO is '파일번호(프로필사진)'
/

comment on column USER_INFO.REMARK is '비고'
/

comment on column USER_INFO.CREATE_USER is '생성자 아이디'
/

comment on column USER_INFO.UPDATE_DATE is '수정일'
/

comment on column USER_INFO.UPDATE_USER is '수정자아이디'
/

comment on column USER_INFO.CREATE_DATE is '생성일'
/

alter table USER_INFO
    add NICK_NAME VARCHAR2(30)
/

comment on column USER_INFO.NICK_NAME is '닉네임'
/

alter table USER_INFO
    add ZIP_CODE VARCHAR2(50)
/

comment on column USER_INFO.ZIP_CODE is '우편번호'
/

alter table USER_INFO
    add SMS_YN VARCHAR2(10)
/

comment on column USER_INFO.SMS_YN is 'SMS수신여부(Y/N)'
/

alter table USER_INFO
    add MAIL_YN VARCHAR2(10)
/

comment on column USER_INFO.MAIL_YN is '메일수신여부(Y/N)'
/

