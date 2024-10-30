<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>

    const idx = "${idx}";

    $(document).ready(() => {

        jqueryAjax("/common/role/getRole?idx=${idx}", "GET", (result) => {
            if (result) {
                $("#roleName").text(result.roleName);
                $("#description").text(result.description);
                $("#useYn").text(result.useYn);
                $("#createDate").text(result.createDate);
                $("#createUser").text(result.createUser);
                $("#updateDate").text(result.updateDate);
                $("#updateUser").text(result.updateUser);
            }
        });

    });

    /**
     * 권한 삭제
     * **/
    const deleteRole = () => {
        if (confirm("삭제하시겠습니까?")) {

            jqueryAjax("/common/role/deleteRole", "POST", (result) => {
                if (result === 1) {
                    alert("삭제되었습니다.");
                    goPage("/common/role/roleMgrPage");
                }
            }, [idx]);
        }
    }
</script>
<div class="layout-container">
    <jsp:include page="../../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="mgt10">
                <button class="btn-primary float-right mgl10" onclick="goPage('/common/role/roleMgrPage')">뒤로가기</button>
                <button class="btn-primary float-right mgl10" onclick="deleteRole();">삭제</button>
                <button class="btn-primary float-right" onclick="goPage('/common/role/roleSavePage?mode=update&idx=${idx}')">수정</button>
            </div>
            <div class="layout-content-title">
                권한 상세
            </div>
            <div class="layout-card">
                <div class="layout-row">
                    <label class="layout-col layout-col-head">권한명</label>
                    <div class="layout-col width25p" id="roleName"></div>
                    <label class="layout-col layout-col-head">사용여부</label>
                    <label class="layout-col width25p" id="useYn"></label>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">설명</label>
                    <div class="layout-col" id="description"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">생성일</label>
                    <div class="layout-col width25p" id="createDate"></div>
                    <label class="layout-col layout-col-head">생성자</label>
                    <div class="layout-col width25p" id="createUser"></div>
                </div>
                <div class="layout-row">
                    <label class="layout-col layout-col-head">수정일</label>
                    <div class="layout-col width25p" id="updateDate"></div>
                    <label class="layout-col layout-col-head">수정자</label>
                    <div class="layout-col width25p" id="updateUser"></div>
                </div>
            </div>

            <div class="mgt20">
                <button class="btn-primary float-right mgl10" onclick="openModal('roleModal');">추가</button>
            </div>
            <div class="layout-content-title">
                권한 등록 계정
            </div>
            <div class="layout-card shadow">
                <div class="layout-table">
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
