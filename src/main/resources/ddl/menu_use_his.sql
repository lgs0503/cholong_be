create table MENU_USE_HIS
(
    IDX         NUMBER not null
        constraint MENU_USE_HIS_PK
            primary key,
    MENU_IDX        NUMBER,
    USER_ID          VARCHAR2(50),
    HIS_DATE    DATE,
    USE_YN      VARCHAR2(10),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table MENU_USE_HIS is '로그인 이력'
/

comment on column MENU_USE_HIS.IDX is '일련번호'
/

comment on column MENU_USE_HIS.MENU_IDX is '메뉴 일련번호'
/

comment on column MENU_USE_HIS.USER_ID is '아이디'
/

comment on column MENU_USE_HIS.HIS_DATE is '이력 날짜 시간'
/

comment on column MENU_USE_HIS.USE_YN is '사용여부'
/

comment on column MENU_USE_HIS.CREATE_USER is '생성자'
/

comment on column MENU_USE_HIS.CREATE_DATE is '생성일'
/

comment on column MENU_USE_HIS.UPDATE_USER is '수정자'
/

comment on column MENU_USE_HIS.UPDATE_DATE is '수정일'
/

