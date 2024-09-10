create table FILE_MASTER
(
    IDX         NUMBER
        constraint FILE_MASTER_PK
            primary key,
    USE_YN      VARCHAR2(20),
    CREATE_USER VARCHAR2(50),
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table FILE_MASTER is '파일 마스터'
/

comment on column FILE_MASTER.IDX is '일련번호'
/

comment on column FILE_MASTER.USE_YN is '사용여부'
/

comment on column FILE_MASTER.CREATE_USER is '생성자'
/

comment on column FILE_MASTER.CREATE_DATE is '생성일'
/

comment on column FILE_MASTER.UPDATE_USER is '수정자'
/

comment on column FILE_MASTER.UPDATE_DATE is '수정일'
/

