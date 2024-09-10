create table COMMON_CODE
(
    IDX         NUMBER       not null
        constraint COMMON_CODE_PK
            primary key,
    CODE        VARCHAR2(50) not null,
    CODE_NAME   VARCHAR2(50) not null,
    UPPER_CODE  VARCHAR2(50),
    USE_YN      VARCHAR2(10),
    DESCRIPTION VARCHAR2(200),
    REF1        VARCHAR2(50),
    REF2        VARCHAR2(50),
    REF3        VARCHAR2(50),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE,
    SORT        NUMBER
)
/

comment on table COMMON_CODE is '공통코드'
/

comment on column COMMON_CODE.IDX is '일련번호'
/

comment on column COMMON_CODE.CODE is '코드'
/

comment on column COMMON_CODE.CODE_NAME is '코드명'
/

comment on column COMMON_CODE.UPPER_CODE is '부모코드'
/

comment on column COMMON_CODE.USE_YN is '사용여부'
/

comment on column COMMON_CODE.DESCRIPTION is '설명'
/

comment on column COMMON_CODE.REF1 is '참조1'
/

comment on column COMMON_CODE.REF2 is '참조2'
/

comment on column COMMON_CODE.REF3 is '참조3'
/

comment on column COMMON_CODE.CREATE_USER is '생성자'
/

comment on column COMMON_CODE.CREATE_DATE is '생성일'
/

comment on column COMMON_CODE.UPDATE_USER is '수정자'
/

comment on column COMMON_CODE.UPDATE_DATE is '수정일'
/

comment on column COMMON_CODE.SORT is '정렬'
/

