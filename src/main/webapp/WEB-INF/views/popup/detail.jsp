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
                <button class="float-right mgl10" onclick="">뒤로가기</button>
                <button class="float-right mgl10" onclick="">삭제</button>
                <button class="float-right" onclick="">수정</button>
            </div>
            <div class="layout-content-title">
                팝업 상세정보
            </div>
            <div class="layout-card">
                <div class="layout-row">
                    <label class="layout-col layout-col-head">팝업 명</label>
                    <label class="layout-col"></label>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">팝업 타입</label>
                    <div class="layout-col width25p">HTML/IMAGE 둘중 선택</div>
                    <label class="layout-col layout-col-head">사용여부</label>
                    <div class="layout-col width25p"></div>
                </div>
                <div>
                    <div class="post-title">내용</div>
                    <div class="layout-col post-content">
                        수정일때 타입이 HTML 이면 에디터로
                        이미지 일땐 INPUT FILE로 이미지 업로드
                    </div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">URL</label>
                    <div class="layout-col">배너 클릭시 링크용으로 사용</div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">시작일</label>
                    <div class="layout-col width25p"></div>
                    <label class="layout-col layout-col-head">종료일</label>
                    <div class="layout-col width25p"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">X좌표</label>
                    <div class="layout-col width25p">0</div>
                    <label class="layout-col layout-col-head">Y좌표</label>
                    <div class="layout-col width25p">0</div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">너비 (width)</label>
                    <div class="layout-col width12p">200px</div>
                    <label class="layout-col layout-col-head">높이 (height)</label>
                    <div class="layout-col width12p">500px</div>
                    <label class="layout-col layout-col-head">깊이 (z-index)</label>
                    <div class="layout-col width12p">100</div>
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
