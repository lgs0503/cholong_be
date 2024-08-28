<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>
</script>
<div class="layout-container">
    <jsp:include page="../../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="display-flex flex-space-between">
                <div class="layout-content-title">
                    메뉴 관리
                </div>
                <div class="mgb10 display-flex flex-end mgt20">
                    <button onclick="">추가</button>
                    <button class="mgl10" onclick="">저장</button>
                    <button class="mgl10" onclick="">삭제</button>
                </div>
            </div>
            <div class="display-flex">
                <div class="layout-card shadow menu-master mgr10">
                    <div>메뉴 트리</div>
                </div>
                <div class="layout-card shadow menu-detail">
                    <div class="sub-title mgb10">
                        상세 메뉴
                    </div>
                    <div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">메뉴명</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">영어메뉴명</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">부모메뉴명</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">설명</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">타입</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">URL</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">맵핑 인덱스</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">정렬순서</label>
                            <div class="layout-col"></div>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">사용여부</label>
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
                    <div class="display-flex flex-space-between">
                        <div class="sub-title mgt10 line-height35">
                            메뉴 권한
                        </div>
                        <div class="mgt10 mgb10 display-flex flex-end">
                            <button class="float-right mgl10" onclick="openModal('menuModal');">추가</button>
                        </div>
                    </div>
                    <div class="layout-table">
                        <table>
                            <colgroup>
                                <col style="width:10px">
                                <col style="">
                                <col style="">
                                <col style="width:200px">
                            </colgroup>
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>권한명</th>
                                <th>등록일</th>
                                <th>등록자</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>

<jsp:include page="menuModal.jsp"/>

<jsp:include page="../../layouts/footer.jsp"/>
</body>