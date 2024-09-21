create table CONTENT_INFO
(
    IDX         NUMBER not null
        constraint CONTENT_INFO_PK
            primary key,
    TITLE       VARCHAR2(200),
    CONTENT     CLOB,
    USE_YN      VARCHAR2(10),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table CONTENT_INFO is '컨텐츠관리'
/

comment on column CONTENT_INFO.IDX is '일련번호'
/


comment on column CONTENT_INFO.TITLE is '컨텐츠명'
/

comment on column CONTENT_INFO.CONTENT is '내용 (HTML로 작성)'
/

comment on column CONTENT_INFO.USE_YN is '사용여부'
/

comment on column CONTENT_INFO.CREATE_USER is '생성자'
/

comment on column CONTENT_INFO.CREATE_DATE is '생성일'
/

comment on column CONTENT_INFO.UPDATE_USER is '수정자'
/

comment on column CONTENT_INFO.UPDATE_DATE is '수정일'
/

