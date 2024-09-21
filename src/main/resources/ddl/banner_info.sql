create table BANNER_INFO
(
    IDX         NUMBER not null
        constraint BANNER_INFO_PK
            primary key,
    TITLE       VARCHAR2(200),
    TYPE        VARCHAR2(20),
    CONTENT     CLOB,
    FILE_IDX    NUMBER,
    URL         VARCHAR2(1000),
    USE_YN      VARCHAR2(10),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table BANNER_INFO is '배너관리'
/

comment on column BANNER_INFO.IDX is '일련번호'
/

comment on column BANNER_INFO.TITLE is '제목'
/

comment on column BANNER_INFO.TYPE is '타입 (HTML 이면 CONTENT 이미지일때는 FILE_IDX)'
/

comment on column BANNER_INFO.CONTENT is '타입이 HTML 일경우 HTML로 작성'
/

comment on column BANNER_INFO.FILE_IDX is '타입이 IMAGE 일경우 파일일련번호'
/

comment on column BANNER_INFO.URL is '클릭시 이동 정보가 있을경우 링크주소'
/

comment on column BANNER_INFO.USE_YN is '사용여부'
/

comment on column BANNER_INFO.CREATE_USER is '생성자'
/

comment on column BANNER_INFO.CREATE_DATE is '생성일'
/

comment on column BANNER_INFO.UPDATE_USER is '수정자'
/

comment on column BANNER_INFO.UPDATE_DATE is '수정일'
/

