<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
<jsp:include page="../../layouts/header.jsp"/>
<div class="layout-container">
    <jsp:include page="../../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="layout-content-title">
                My Page
                <button class="float-right">수정</button>
                <button class="float-right mgr10">비밀번호 변경</button>
            </div>
            <div class="layout-card shadow display-flex m-flex-warp">
                <div class="myPage-left">
                    <div class="myPage-image">
                        <img src="/resources/static/image/userimage.jpg">
                    </div>
                </div>
                <div class="myPage-right">
                    <div class="layout-row">
                        <div class="layout-col layout-col-head">아이디</div>
                        <div class="layout-col">lgs0503</div>
                    </div>
                    <div class="layout-row">
                        <div class="layout-col layout-col-head">이름</div>
                        <div class="layout-col">이광석</div>
                    </div>
                    <div class="layout-row">
                        <div class="layout-col layout-col-head">영어 이름</div>
                        <div class="layout-col">lee Gwang seok</div>
                    </div>
                    <div class="layout-row">
                        <div class="layout-col layout-col-head">닉네임</div>
                        <div class="layout-col">뭉탱이</div>
                    </div>
                    <div class="layout-row">
                        <div class="layout-col layout-col-head">성별</div>
                        <div class="layout-col">남자</div>
                    </div>
                    <div class="layout-row">
                        <div class="layout-col layout-col-head">생년월일</div>
                        <div class="layout-col">1995-05-31</div>
                    </div>
                    <div class="layout-row">
                        <div class="layout-col layout-col-head">주소</div>
                        <div class="layout-col">서천동로</div>
                    </div>
                    <div class="layout-row">
                        <div class="layout-col layout-col-head">상세주소</div>
                        <div class="layout-col">202호</div>
                    </div>
                    <div class="layout-row">
                        <div class="layout-col layout-col-head">비고</div>
                        <div class="layout-col"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>