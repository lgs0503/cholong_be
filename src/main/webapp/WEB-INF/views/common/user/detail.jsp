<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<body>
<jsp:include page="../../layouts/header.jsp"/>
<script>
    const mode = "${mode}";
    const idx = "${idx}";

    $(document).ready(() => {
        getUser();
    });

    const getUser = () => {
        if (mode === "detail"){
            jqueryAjaxSync("/common/user/getUser?idx=" + idx, "GET", (result) => {

                if (result) {
                    let birthday = result.birthday.replace(/(\d{4})(\d{2})(\d{2})/, "$1.$2.$3");
                    let phoneNum = result.phoneNum.replace(/(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,"$1-$2-$3");

                    $("#idx").text(result.idx);
                    $("#userId").text(result.userId);
                    $("#password").text(result.password);
                    $("#korName").text(result.korName);
                    $("#engName").text(result.engName);
                    $("#address").text(result.address);
                    $("#addressDtl").text(result.addressDtl);
                    $("#gender").text(result.gender);
                    $("#birthday").text(birthday);
                    $("#phoneNum").text(phoneNum);
                    $("#email").text(result.email);
                    $("#remark").text(result.remark);
                    $("#createDate").text(result.createDate);
                    $("#updateDate").text(result.updateDate);
                    $("#createUser").text(result.createUser);
                    $("#updateUser").text(result.updateUser);
                    $("#nickName").text(result.nickName);
                }
            });
        } else {
            jqueryAjaxSync("/common/user/getUser?idx=" + idx, "GET", (result) => {
                if (result) {
                    $("#idx").text(result.idx);
                    $("#userId").text(result.userId);
                    $("#password").text(result.password);
                    $("#korName").text(result.korName);
                    $("#engName").text(result.engName);
                    $("#address").text(result.address);
                    $("#addressDtl").text(result.addressDtl);
                    $("#gender").text(result.gender);
                    $("#birthday").text(result.birthday);
                    $("#phoneNum").text(result.phoneNum);
                    $("#email").text(result.email);
                    $("#remark").text(result.remark);
                    $("#createDate").text(result.createDate);
                    $("#updateDate").text(result.updateDate);
                    $("#createUser").text(result.createUser);
                    $("#updateUser").text(result.updateUser);
                    $("#nickName").text(result.nickName);
                }
            });
        }
    }
    /**
     * 수정
     */
    const saveUser = () => {
        window.confirm("저장하시겠습니까?")
    }
    /**
     * 삭제
     */
    const deleteUser = () => {
        window.confirm("삭제하시겠습니까?");
    }

</script>
<div class="layout-container">
    <jsp:include page="../../layouts/leftMenu.jsp"/>
    <section>
        <div class="layout-content">
            <div class="mgt10">
                <c:if test="${mode eq 'detail'}">
                    <button class="btn-primary float-right mgl10" onclick="history.back();">뒤로가기</button>
                    <button class="btn-primary float-right mgl10" onclick="deleteUser()">삭제</button>
                    <button class="btn-primary float-right" onclick="goPage('/common/user/userDetailPage?mode=update&idx=${idx}')">수정</button>
                </c:if>
                <c:if test="${mode eq 'update'}">
                    <button class="btn-primary float-right mgl10" onclick="history.back();">뒤로가기</button>
                    <button class="btn-primary float-right" onclick="saveUser()">저장</button>
                </c:if>
            </div>
            <div class="layout-content-title">
                <c:if test="${mode eq 'detail'}">
                    회원 상세
                </c:if>
                <c:if test="${mode eq 'update'}">
                    회원 수정
                </c:if>
            </div>
                <c:if test="${mode eq 'detail'}">
                    <div class="layout-card">
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">아이디</label>
                            <label class="layout-col" id="userId"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">이름</label>
                            <label class="layout-col width25p" id="korName"></label>
                            <label class="layout-col layout-col-head">영어이름</label>
                            <label class="layout-col width25p" id="engName"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">성별</label>
                            <label class="layout-col width25p" id="gender"></label>
                            <label class="layout-col layout-col-head">생년월일</label>
                            <label class="layout-col width25p" id="birthday"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">주소</label>
                            <label class="layout-col" id="address"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">상세주소</label>
                            <label class="layout-col" id="addressDtl"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">연락처</label>
                            <label class="layout-col" id="phoneNum"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">이메일</label>
                            <label class="layout-col" id="email"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">비고</label>
                            <label class="layout-col" id="remark"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">생성일</label>
                            <label class="layout-col width25p" id="createDate"></label>
                            <label class="layout-col layout-col-head">생성자</label>
                            <label class="layout-col width25p" id="createUser"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">수정일</label>
                            <label class="layout-col width25p" id="updateDate"></label>
                            <label class="layout-col layout-col-head">수정자</label>
                            <label class="layout-col width25p" id="updateUser"></label>
                        </div>
                    </div>
                </c:if>

                <c:if test="${mode eq 'update'}">

                    <div class="layout-card">
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">아이디</label>
                            <input class="" id="userId" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">이름</label>
                            <input class="width25p" id="korName" type="text"/>
                            <label class="layout-col layout-col-head">영어이름</label>
                            <input class="width25p" id="engName" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">성별</label>
                            <input class="width25p" id="gender" type="text"/>
                            <label class="layout-col layout-col-head">생년월일</label>
                            <input class="width25p" id="birthday" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">주소</label>
                            <input class="width75p" id="address" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">상세주소</label>
                            <input class="width75p" id="addressDtl" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">연락처</label>
                            <input class="" id="phoneNum" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">이메일</label>
                            <input class="" id="email" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">비고</label>
                            <input class="comm-input" id="remark" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">생성일</label>
                            <input class="width25p" id="createDate" type="text"/>
                            <label class="layout-col layout-col-head">생성자</label>
                            <input class="width25p" id="createUser" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">수정일</label>
                            <input class="width25p" id="updateDate" type="text"/>
                            <label class="layout-col layout-col-head">수정자</label>
                            <input class="width25p" id="updateUser" type="text"/>
                        </div>
                    </div>
                </c:if>
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>