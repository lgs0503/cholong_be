create table BOARD_INFO
(
    IDX         NUMBER not null
        constraint BOARD_INFO_PK
            primary key,
    NAME        VARCHAR2(50),
    DESCRIPTION VARCHAR2(200),
    TYPE        VARCHAR2(20),
    USE_YN      VARCHAR2(10),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table BOARD_INFO is '게시판관리'
/

comment on column BOARD_INFO.IDX is '일련번호'
/

comment on column BOARD_INFO.NAME is '게시판명'
/

comment on column BOARD_INFO.DESCRIPTION is '설명'
/

comment on column BOARD_INFO.TYPE is '타입(BASIC/IMAGE)'
/

comment on column BOARD_INFO.USE_YN is '사용여부'
/

comment on column BOARD_INFO.CREATE_USER is '생성자'
/

comment on column BOARD_INFO.CREATE_DATE is '생성일'
/

comment on column BOARD_INFO.UPDATE_USER is '수정자'
/

comment on column BOARD_INFO.UPDATE_DATE is '수정일'
/

