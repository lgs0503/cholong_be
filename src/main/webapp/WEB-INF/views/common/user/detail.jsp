<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>

</script>
<div class="layout-container">
    <jsp:include page="../../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="mgt10">
                <button class="float-right mgl10">뒤로가기</button>
                <button class="float-right mgl10">삭제</button>
                <button class="float-right">수정</button>
            </div>
            <div class="layout-content-title">
                회원 상세
            </div>
            <div class="layout-card">
                <div class="layout-row">
                    <label class="layout-col layout-col-head">아이디</label>
                    <div class="layout-col"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">이름</label>
                    <div class="layout-col width25p"></div>
                    <label class="layout-col layout-col-head">영어이름</label>
                    <div class="layout-col width25p"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">성별</label>
                    <div class="layout-col width25p"></div>
                    <label class="layout-col layout-col-head">생년월일</label>
                    <div class="layout-col width25p"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">주소</label>
                    <div class="layout-col"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">상세주소</label>
                    <div class="layout-col"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">연락처</label>
                    <div class="layout-col"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">이메일</label>
                    <div class="layout-col"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">비고</label>
                    <div class="layout-col"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">생성일</label>
                    <div class="layout-col width25p" id="createDateDt"></div>
                    <label class="layout-col layout-col-head">생성자</label>
                    <div class="layout-col width25p" id="createUserDt"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">수정일</label>
                    <div class="layout-col width25p" id="updateDateDt"></div>
                    <label class="layout-col layout-col-head">수정자</label>
                    <div class="layout-col width25p" id="updateUserDt"></div>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>