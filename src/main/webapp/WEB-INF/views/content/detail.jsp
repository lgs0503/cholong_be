<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<jsp:include page="../layouts/header.jsp"/>
<script>
</script>
<div class="layout-container">
    <jsp:include page="../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="mgt10">
                <button class="btn-primary float-right mgl10" onclick="">뒤로가기</button>
                <button class="btn-primary float-right mgl10" onclick="">삭제</button>
                <button class="btn-primary float-right" onclick="">수정</button>
            </div>
            <div class="layout-content-title">
                컨텐츠 상세정보
            </div>
            <div class="layout-card">
                <div class="layout-row">
                    <label class="layout-col layout-col-head">컨텐츠 명</label>
                    <label class="layout-col"></label>
                </div>
                <div>
                    <div class="post-title">내용</div>
                    <div class="layout-col post-content"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">사용여부</label>
                    <div class="layout-col width25p"></div>
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
<jsp:include page="../layouts/footer.jsp"/>
</body>
