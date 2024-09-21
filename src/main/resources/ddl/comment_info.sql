create table COMMENT_INFO
(
    IDX         NUMBER not null
        constraint COMMENT_INFO_PK
            primary key,
    POST_IDX       NUMBER,
    UPPER_IDX   NUMBER,
    CONTENT     VARCHAR2(500),
    USE_YN      VARCHAR2(10),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table COMMENT_INFO is '댓글관리'
/

comment on column COMMENT_INFO.IDX is '일련번호'
/

comment on column COMMENT_INFO.POST_IDX is '게시글일련번호'
/

comment on column COMMENT_INFO.UPPER_IDX is '부모댓글 일련번호(트리)'
/

comment on column COMMENT_INFO.CONTENT is '내용'
/

comment on column COMMENT_INFO.USE_YN is '사용여부'
/

comment on column COMMENT_INFO.CREATE_USER is '생성자'
/

comment on column COMMENT_INFO.CREATE_DATE is '생성일'
/

comment on column COMMENT_INFO.UPDATE_USER is '수정자'
/

comment on column COMMENT_INFO.UPDATE_DATE is '수정일'
/

