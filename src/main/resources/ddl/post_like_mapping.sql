create table POST_LIKE_MAPPING
(
    IDX         NUMBER not null
        constraint POST_LIKE_MAPPING_PK
            primary key,
    POST_IDX        NUMBER,
    USER_ID          VARCHAR2(50),
    USE_YN      VARCHAR2(10),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table POST_LIKE_MAPPING is '게시글 좋아요'
/

comment on column POST_LIKE_MAPPING.IDX is '일련번호'
/

comment on column POST_LIKE_MAPPING.POST_IDX is '게시글 일련번호'
/

comment on column POST_LIKE_MAPPING.USER_ID is '아이디'
/

comment on column POST_LIKE_MAPPING.USE_YN is '사용여부'
/

comment on column POST_LIKE_MAPPING.CREATE_USER is '생성자'
/

comment on column POST_LIKE_MAPPING.CREATE_DATE is '생성일'
/

comment on column POST_LIKE_MAPPING.UPDATE_USER is '수정자'
/

comment on column POST_LIKE_MAPPING.UPDATE_DATE is '수정일'
/

