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

                    $("#idxDt").text(result.idx);
                    $("#userIdDt").text(result.userId);
                    $("#passwordDt").text(result.password);
                    $("#korNameDt").text(result.korName);
                    $("#engNameDt").text(result.engName);
                    $("#addressDt").text(result.address);
                    $("#addressDtlDt").text(result.addressDtl);
                    $("#genderDt").text(result.gender);
                    $("#birthdayDt").text(birthday);
                    $("#phoneNumDt").text(phoneNum);
                    $("#emailDt").text(result.email);
                    $("#remarkDt").text(result.remark);
                    $("#createDateDt").text(result.createDate);
                    $("#updateDateDt").text(result.updateDate);
                    $("#createUserDt").text(result.createUser);
                    $("#updateUserDt").text(result.updateUser);
                    $("#nickNameDt").text(result.nickName);
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

                    $("#idx").attr("value", result.idx);
                    $("#userId").attr("value", result.userId);
                    $("#password").attr("value", result.password);
                    $("#korName").attr("value", result.korName);
                    $("#engName").attr("value", result.engName);
                    $("#address").attr("value", result.address);
                    $("#addressDtl").attr("value", result.addressDtl);
                    $("#gender").attr("value", result.gender);
                    $("#birthday").attr("value", result.birthday);
                    $("#phoneNum").attr("value", result.phoneNum);
                    $("#email").attr("value", result.email);
                    $("#remark").attr("value", result.remark);
                    $("#createDate").attr("value", result.createDate);
                    $("#updateDate").attr("value", result.updateDate);
                    $("#createUser").attr("value", result.createUser);
                    $("#updateUser").attr("value", result.updateUser);
                    $("#nickName").attr("value", result.nickName);
                }
            });
        }
    }

    /**
     * 수정
     */
    const saveUser = () => {
        window.confirm("저장하시겠습니까?");
    }

    /**
     * 삭제
     */
    const deleteUser = () => {
        commonConfirm("삭제 하시겠습니까?", () => {
        jqueryAjax("/common/user/deleteUser", "POST", (result) => {
            if (result === 1) {
                commonAlert("삭제되었습니다.");

                goPage("/common/user/userMgrPage");
            }
        }, [idx]);
    });
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
                            <label class="layout-col" id="userIdDt"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">이름</label>
                            <label class="layout-col width25p" id="korNameDt"></label>
                            <label class="layout-col layout-col-head">영어이름</label>
                            <label class="layout-col width25p" id="engNameDt"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">성별</label>
                            <label class="layout-col width25p" id="genderDt"></label>
                            <label class="layout-col layout-col-head">생년월일</label>
                            <label class="layout-col width25p" id="birthdayDt"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">주소</label>
                            <label class="layout-col" id="addressDt"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">상세주소</label>
                            <label class="layout-col" id="addressDtlDt"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">연락처</label>
                            <label class="layout-col" id="phoneNumDt"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">이메일</label>
                            <label class="layout-col" id="emailDt"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">비고</label>
                            <label class="layout-col" id="remarkDt"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">생성일</label>
                            <label class="layout-col width25p" id="createDateDt"></label>
                            <label class="layout-col layout-col-head">생성자</label>
                            <label class="layout-col width25p" id="createUserDt"></label>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">수정일</label>
                            <label class="layout-col width25p" id="updateDateDt"></label>
                            <label class="layout-col layout-col-head">수정자</label>
                            <label class="layout-col width25p" id="updateUserDt"></label>
                        </div>
                    </div>
                </c:if>

                <c:if test="${mode eq 'update'}">

                    <div class="layout-card">
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">아이디</label>
                            <input class="width50p" id="userId" type="text"/>
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
                            <input class="width50p" id="address" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">상세주소</label>
                            <input class="width50p" id="addressDtl" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">연락처</label>
                            <input class="width50p" id="phoneNum" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">이메일</label>
                            <input class="width50p" id="email" type="text"/>
                        </div>
                        <div class="layout-row">
                            <label class="layout-col layout-col-head">비고</label>
                            <input class="width50p" id="remark" type="text"/>
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
        </div>
    </section>
</div>
<jsp:include page="../../layouts/footer.jsp"/>
</body>