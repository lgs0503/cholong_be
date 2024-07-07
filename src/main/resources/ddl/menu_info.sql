create table MENU_INFO
(
    IDX            int
        constraint MENU_INFO_PK
            primary key,
    MENU_NAME      VARCHAR2(50),
    DESCRIPTION    VARCHAR2(200),
    UPPER_MENU_IDX int,
    MENU_TYPE      VARCHAR2(20),
    URL            VARCHAR2(500),
    MAPPING_IDX    int,
    ORD            int,
    USE_YN         VARCHAR2(20),
    CREATE_USER    VARCHAR(50) default 'ADMIN',
    CREATE_DATE    DATE,
    UPDATE_USER    VARCHAR2(50),
    UPDATE_DATE    DATE
)
/

comment on table MENU_INFO is '메뉴정보'
/

comment on column MENU_INFO.IDX is '일련번호'
/

comment on column MENU_INFO.MENU_NAME is '메뉴명'
/

comment on column MENU_INFO.DESCRIPTION is '설명'
/

comment on column MENU_INFO.UPPER_MENU_IDX is '부모메뉴 일련번호(트리구조)'
/

comment on column MENU_INFO.MENU_TYPE is '메뉴타입 URL/BOARD/CONTENT'
/

comment on column MENU_INFO.URL is '메뉴타입이 URL 일경우 작성'
/

comment on column MENU_INFO.MAPPING_IDX is '메뉴타입이 BOARD/CONTENT인 경우 매핑정보'
/

comment on column MENU_INFO.ORD is '정렬순번'
/

comment on column MENU_INFO.USE_YN is '사용여부'
/

comment on column MENU_INFO.CREATE_USER is '생성자'
/

comment on column MENU_INFO.CREATE_DATE is '생성일'
/

comment on column MENU_INFO.UPDATE_USER is '수정자'
/

