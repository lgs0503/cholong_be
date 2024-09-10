create table ROLE_INFO
(
    IDX         NUMBER
        constraint ROLE_INFO_PK
            primary key,
    ROLE_NAME   VARCHAR2(50),
    USE_YN      VARCHAR2(10),
    CREATE_DATE DATE,
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    UPDATE_DATE DATE,
    UPDATE_USER VARCHAR2(50)
)
/

comment on table ROLE_INFO is '권한관라'
/

comment on column ROLE_INFO.IDX is '일련번호'
/

comment on column ROLE_INFO.ROLE_NAME is '권한명'
/

comment on column ROLE_INFO.USE_YN is '사용여부'
/

comment on column ROLE_INFO.CREATE_DATE is '생성일'
/

comment on column ROLE_INFO.CREATE_USER is '생성자'
/

comment on column ROLE_INFO.UPDATE_DATE is '수정일'
/

comment on column ROLE_INFO.UPDATE_USER is '수정자'
/

