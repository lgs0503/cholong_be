create table POPUP_INFO
(
    IDX         NUMBER not null
        constraint POPUP_INFO_PK
            primary key,
    TITLE       VARCHAR2(200),
    TYPE        VARCHAR2(20),
    CONTENT     CLOB,
    FILE_IDX    NUMBER,
    URL         VARCHAR2(1000),
    START_DATE  DATE,
    END_DATE    DATE,
    X_POS       NUMBER,
    Y_POS       NUMBER,
    WIDTH       NUMBER,
    HEIGHT      NUMBER,
    Z_INDEX     NUMBER,
    USE_YN      VARCHAR2(10),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table POPUP_INFO is '팝업관리'
/

comment on column POPUP_INFO.IDX is '일련번호'
/

comment on column POPUP_INFO.TITLE is '제목'
/

comment on column POPUP_INFO.TYPE is '타입 (HTML 이면 CONTENT 이미지일때는 FILE_IDX)'
/

comment on column POPUP_INFO.CONTENT is '타입이 HTML 일경우 HTML로 작성'
/

comment on column POPUP_INFO.FILE_IDX is '타입이 IMAGE 일경우 파일일련번호'
/

comment on column POPUP_INFO.URL is '클릭시 이동 정보가 있을경우 링크주소'
/

comment on column POPUP_INFO.START_DATE is '시작일'
/

comment on column POPUP_INFO.END_DATE is '종료일'
/

comment on column POPUP_INFO.X_POS is 'X 좌표'
/

comment on column POPUP_INFO.Y_POS is 'Y 좌표'
/

comment on column POPUP_INFO.WIDTH is '너비'
/

comment on column POPUP_INFO.HEIGHT is '높이'
/

comment on column POPUP_INFO.Z_INDEX is '깊이'
/

comment on column POPUP_INFO.USE_YN is '사용여부'
/

comment on column POPUP_INFO.CREATE_USER is '생성자'
/

comment on column POPUP_INFO.CREATE_DATE is '생성일'
/

comment on column POPUP_INFO.UPDATE_USER is '수정자'
/

comment on column POPUP_INFO.UPDATE_DATE is '수정일'
/

