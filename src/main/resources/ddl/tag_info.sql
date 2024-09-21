create table TAG_INFO
(
    IDX         NUMBER not null
        constraint TAG_INFO_PK
            primary key,
    POST_IDX    NUMBER not null,
    TAG         VARCHAR2(50),
    USE_YN      VARCHAR2(10),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table TAG_INFO is '게시글 태그정보'
/

comment on column TAG_INFO.IDX is '일련번호'
/

comment on column TAG_INFO.POST_IDX is '게시글 일련번호'
/

comment on column TAG_INFO.TAG is '태그'
/

comment on column TAG_INFO.USE_YN is '사용여부'
/

comment on column TAG_INFO.CREATE_USER is '생성자'
/

comment on column TAG_INFO.CREATE_DATE is '생성일'
/

comment on column TAG_INFO.UPDATE_USER is '수정자'
/

comment on column TAG_INFO.UPDATE_DATE is '수정일'
/

