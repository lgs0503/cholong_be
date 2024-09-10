create table FILE_DETAIL
(
    IDX            NUMBER not null
        constraint FILE_DETAIL_PK
            primary key,
    MASTER_IDX     NUMBER,
    FILE_NAME      VARCHAR2(50),
    FILE_EXTENSION VARCHAR2(20),
    FILE_PATH      VARCHAR2(500),
    FILE_SIZE      NUMBER,
    USE_YN         VARCHAR2(10),
    CREATE_USER    VARCHAR2(50),
    CREATE_DATE    DATE,
    UPDATE_USER    VARCHAR2(50),
    UPDATE_DATE    DATE
)
/

comment on table FILE_DETAIL is '파일 상세'
/

comment on column FILE_DETAIL.IDX is '일련번호'
/

comment on column FILE_DETAIL.MASTER_IDX is '마스터 파일번호 N개'
/

comment on column FILE_DETAIL.FILE_NAME is '파일명'
/

comment on column FILE_DETAIL.FILE_EXTENSION is '파일 확장자'
/

comment on column FILE_DETAIL.FILE_PATH is '파일 위치'
/

comment on column FILE_DETAIL.FILE_SIZE is '파일사이즈'
/

comment on column FILE_DETAIL.USE_YN is '사용여부'
/

comment on column FILE_DETAIL.CREATE_USER is '생성자'
/

comment on column FILE_DETAIL.CREATE_DATE is '생성일'
/

comment on column FILE_DETAIL.UPDATE_USER is '수정자'
/

comment on column FILE_DETAIL.UPDATE_DATE is '수정일'
/

