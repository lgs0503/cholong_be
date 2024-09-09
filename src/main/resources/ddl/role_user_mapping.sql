create table ROLE_USER_MAPPING
(
    IDX         NUMBER not null
        constraint ROLE_USER_MAPPING_PK
            primary key,
    USER_IDX    NUMBER,
    ROLE_IDX    NUMBER,
    USE_YN      VARCHAR2(10),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table ROLE_USER_MAPPING is '권한별 유저 매핑'
/

comment on column ROLE_USER_MAPPING.IDX is '일련번호'
/

comment on column ROLE_USER_MAPPING.USER_IDX is '회원 일련번호'
/

comment on column ROLE_USER_MAPPING.ROLE_IDX is '권한 일련번호'
/

comment on column ROLE_USER_MAPPING.USE_YN is '사용여부'
/

comment on column ROLE_USER_MAPPING.CREATE_USER is '생성자'
/

comment on column ROLE_USER_MAPPING.CREATE_DATE is '생성일'
/

comment on column ROLE_USER_MAPPING.UPDATE_USER is '수정자'
/

comment on column ROLE_USER_MAPPING.UPDATE_DATE is '수정일'
/

