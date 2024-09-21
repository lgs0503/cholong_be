create table LOGIN_HIS
(
    IDX         NUMBER not null
        constraint LOGIN_HIS_PK
            primary key,
    TYPE        VARCHAR2(20),
    USER_ID          VARCHAR2(50),
    HIS_DATE    DATE,
    IP_ADDRESS         VARCHAR2(500),
    USE_YN      VARCHAR2(10),
    CREATE_USER VARCHAR2(50) default 'ADMIN',
    CREATE_DATE DATE,
    UPDATE_USER VARCHAR2(50),
    UPDATE_DATE DATE
)
/

comment on table LOGIN_HIS is '로그인 이력'
/

comment on column LOGIN_HIS.IDX is '일련번호'
/

comment on column LOGIN_HIS.TYPE is '타입(LOGIN/LOGOUT)'
/

comment on column LOGIN_HIS.USER_ID is '아이디'
/

comment on column LOGIN_HIS.HIS_DATE is '이력 날짜 시간'
/

comment on column LOGIN_HIS.IP_ADDRESS is '접속아이피'
/

comment on column LOGIN_HIS.USE_YN is '사용여부'
/

comment on column LOGIN_HIS.CREATE_USER is '생성자'
/

comment on column LOGIN_HIS.CREATE_DATE is '생성일'
/

comment on column LOGIN_HIS.UPDATE_USER is '수정자'
/

comment on column LOGIN_HIS.UPDATE_DATE is '수정일'
/

