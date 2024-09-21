create table POST_INFO
(
    IDX         NUMBER not null
        constraint POST_INFO_PK
            primary key,
    BOARD_IDX   NUMBER not null,
    TITLE       VARCHAR2(200),
    CONTENT     CLOB,
    FILE_IDX    NUMBER,
    NOTICE_YN   VARCHAR2(10),
    USE_YN      VARCHAR2(10),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table POST_INFO is '게시글관리'
/

comment on column POST_INFO.IDX is '일련번호'
/

comment on column POST_INFO.BOARD_IDX is '게시판 일련번호'
/

comment on column POST_INFO.TITLE is '제목'
/

comment on column POST_INFO.CONTENT is '내용 (HTML로 작성)'
/

comment on column POST_INFO.FILE_IDX is '파일 일련번호 (MASTER IDX)'
/

comment on column POST_INFO.NOTICE_YN is '공지여부(Y/N) 최상단위치'
/

comment on column POST_INFO.USE_YN is '사용여부'
/

comment on column POST_INFO.CREATE_USER is '생성자'
/

comment on column POST_INFO.CREATE_DATE is '생성일'
/

comment on column POST_INFO.UPDATE_USER is '수정자'
/

comment on column POST_INFO.UPDATE_DATE is '수정일'
/

