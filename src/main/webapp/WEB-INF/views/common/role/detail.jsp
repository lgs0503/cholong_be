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
                <button class="btn-primary float-right mgl10" onclick="">뒤로가기</button>
                <button class="btn-primary float-right mgl10" onclick="">삭제</button>
                <button class="btn-primary float-right" onclick="">수정</button>
            </div>
            <div class="layout-content-title">
                권한 상세
            </div>
            <div class="layout-card">
                <div class="layout-row">
                    <label class="layout-col layout-col-head">권한명</label>
                    <label class="layout-col width25p"></label>
                    <label class="layout-col layout-col-head">사용여부</label>
                    <label class="layout-col width25p"></label>
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

            <div class="mgt20">
                <button class="btn-primary float-right mgl10" onclick="openModal('roleModal');">추가</button>
            </div>
            <div class="layout-content-title">
                권한 등록 계정
            </div>
            <div class="layout-card shadow">
                <div class="layout-table scrollbar">
                    <table>
                        <colgroup>
                            <col style="width:10px">
                            <col style="">
                            <col style="">
                            <col style="width:200px">
                            <col style="width:50px">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>아이디</th>
                                <th>이름</th>
                                <th>등록일</th>
                                <th>등록자</th>
                                <th>삭제</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>gs0503.lee</td>
                                <td>이광석</td>
                                <td>2024-08-23</td>
                                <td>ADMIN</td>
                                <td><button class="btn-primary pd2">삭제</button></td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>gs0503.lee3</td>
                                <td>이광석2</td>
                                <td>2024-08-23</td>
                                <td>ADMIN</td>
                                <td><button class="btn-primary pd2">삭제</button></td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>gs0503.lee2</td>
                                <td>이광석3</td>
                                <td>2024-08-23</td>
                                <td>ADMIN</td>
                                <td><button class="btn-primary pd2">삭제</button></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>


<jsp:include page="roleModal.jsp"/>
</body>
